# Capacitor Control System via I2C

## Summary
A capacitor control system has been added to the AURA digital module. This system enables capacitor configuration through the I2C interface.

## File Changes

### 1. `i2c_slave_config.v`
- **New output**: `capacitor_ctrl_reg [7:0]` - 8-bit register for capacitor control
- **Register address map** expanded from 1-bit to 2-bit to support up to 4 registers:
  - `0x00`: threshold_reg (default: 0x05)
  - `0x01`: timeout_reg (default: 0xA0)
  - `0x02`: capacitor_ctrl_reg (default: 0x00) - **NEW**
  - `0x03`: reserved for future use

### 2. `top.v`
- **New output port**: `capacitor_ctrl [7:0]` - 8-bit output for capacitor control
- This port is directly connected to the `capacitor_ctrl_reg` output from the I2C module
- Can be used to control capacitor banks in the analog section

### 3. `tb/tb_i2c_slave_config.v`
- Testbench updated to test capacitor control register
- New test cases:
  - Write value 0x55 to capacitor register (address 0x02)
  - Write value 0xAA to capacitor register
  - Verify all registers after testing

## Usage

### Writing to Capacitor Control Register via I2C

To set the capacitor value, perform the following I2C transaction:

```
START
Send slave address: 0xA0 (0x50 << 1 | 0)
Send register address: 0x02
Send data: <capacitor_value>
STOP
```

### Usage Example

```verilog
// In top-level module or analog interface
module analog_interface (
    input wire [7:0] capacitor_ctrl,
    // ... other ports
);

// Use capacitor_ctrl to control:
// - Variable capacitor banks
// - Frequency tuning
// - Gain control
// - Filter configuration
// etc.

endmodule
```

## Capacitor Control Register Data Format

8-bit register `capacitor_ctrl_reg` can be used for:
- **Bit [7:0]**: Capacitor control value (0x00 - 0xFF)
  - Specific interpretation depends on analog implementation
  - Can be used for discrete capacitor selection
  - Can be used for DAC control that adjusts variable capacitors
  - Can be used for other multi-bit encoding

## Testing

To run the testbench (requires Icarus Verilog):

```bash
cd src/digital/tb
iverilog -o i2c_sim.vvp ../i2c_slave_config.v tb_i2c_slave_config.v
vvp i2c_sim.vvp
gtkwave i2c_sim.vcd
```

Expected output:
```
=== START SIMULATION I2C WRITE ===
ACK Received for byte: 0xA0
ACK Received for byte: 0x00
ACK Received for byte: 0x0A
SUCCESS: threshold register updated correctly to 0x0A

=== START SIMULATION I2C WRITE (TIMEOUT REG) ===
...
SUCCESS: timeout register successfully updated to 0xFF

=== START SIMULATION I2C WRITE (CAPACITOR CTRL REG) ===
...
SUCCESS: Capacitor Control register successfully updated to 0x55
SUCCESS: Capacitor Control register successfully updated to 0xAA
```

## Integration with Analog Section

The `capacitor_ctrl` output from `top.v` module can be connected to:
1. **Digital-to-Analog Converter (DAC)** to control varactor/variable capacitor
2. **Decoder** to select capacitors from capacitor bank
3. **Switch Matrix** for capacitor array configuration
4. **Control Logic** for filter or oscillator tuning

## Implementation Notes

- Capacitor control register is reset to 0x00 when enable=1 (bypass mode)
- Value changes only occur during valid I2C write transactions
- Register is read-write accessible through I2C
- For read-back implementation, I2C read logic needs to be added (currently only supports write)
