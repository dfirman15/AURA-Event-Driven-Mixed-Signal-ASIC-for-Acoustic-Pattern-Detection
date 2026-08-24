# Enable Signal Logic

## Overview
The `en` (enable) signal in the AURA digital system uses **active-low logic** for normal operation:
- **`en = 0`**: All digital blocks ACTIVE (normal operation mode)
- **`en = 1`**: All digital blocks OFF (bypass mode)

## Operation Modes

### Mode 1: Digital Processing (en = 0)
When `en = 0`, the system operates with full digital processing:
```
signal_in (comparator) → Pulse Generator → Event Counter → trigger_out
                                        ↓
                                  Timeout Counter
                                        ↓
                              I2C Configuration
```

**Process:**
1. **Pulse Generator**: Detects rising edge from comparator output
2. **Event Counter**: Counts the number of pulses received
3. **Timeout Counter**: Resets counter if timeout is reached
4. **I2C Config**: Configures threshold and timeout via I2C
5. **Output**: `trigger_out` is active when event count reaches threshold

### Mode 2: Bypass Mode (en = 1)
When `en = 1`, the system enters bypass mode:
```
signal_in (comparator) → [BYPASS] → trigger_out
```

**Characteristics:**
- All digital blocks are reset to initial state
- Clock continues running but is not processed by digital logic
- Output `trigger_out` is directly connected to `signal_in`
- I2C configuration is reset to default values
- Ideal for direct analog frontend testing
- Minimal power consumption from digital blocks

## Module Implementation

### 1. pulse_generator.v:10
```verilog
always @(posedge clk or posedge en) begin
    if (en) begin
        // Reset when en=1 (bypass mode)
        signal_d1 <= 1'b0;
        signal_d2 <= 1'b0;  
    end else begin
        // Normal operation when en=0
        signal_d1 <= signal_in; 
        signal_d2 <= signal_d1; 
    end
end
```

### 2. main_event_counter.v:19
```verilog
always @(posedge clk or posedge en) begin
    if (en) begin
        // Reset counter when en=1
        current_count <= 8'h00;
    end else begin
        // Normal counting when en=0
        if (timeout_rst || auto_reset) begin
            current_count <= 8'h00;
        end else if (pulse_in) begin
            current_count <= current_count + 1'b1;
        end
    end
end
```

### 3. timeout_counter.v:13
```verilog
always @(posedge clk or posedge en) begin
    if (en) begin
        // Reset timer when en=1
        timer_count <= 8'h00;
    end else begin
        // Normal timing when en=0
        if (pulse_in || auto_reset) begin
            timer_count <= 8'h00;
        end else begin
            timer_count <= timer_count + 1'b1;
        end
    end
end
```

### 4. i2c_slave_config.v:16, 40, 138, 160
All always blocks in the I2C module use the same pattern:
```verilog
always @(posedge clk or posedge en) begin
    if (en) begin
        // Reset to default values
        threshold_int      <= 8'h05; 
        timeout_int        <= 8'hA0;
        capacitor_ctrl_int <= 8'h00;
    end else begin
        // Normal I2C operation
        // ...
    end
end
```

### 5. top.v:67 (Bypass Logic)
```verilog
// Bypass Logic
// When en=1: bypass mode, output directly from comparator (signal_in)
// When en=0: normal mode, output from digital processing (trigger_internal)
assign trigger_out = en ? signal_in : trigger_internal;
```

## Use Cases

### Use Case 1: Normal Operation
```verilog
// Set en=0 for normal operation
en = 1'b0;

// Configure via I2C
// - Set threshold = 10 events
// - Set timeout = 160 clock cycles
// - Set capacitor control = 0x55

// System will:
// - Count pulses from comparator
// - Trigger output when 10 events are reached
// - Reset if timeout is reached before threshold
```

### Use Case 2: Bypass/Direct Testing
```verilog
// Set en=1 for bypass mode
en = 1'b1;

// Output trigger_out directly follows signal_in
// Useful for:
// - Testing analog frontend without digital processing
// - Low-latency direct output
// - Debugging comparator
// - Power saving mode (digital blocks idle)
```

### Use Case 3: Quick Reset
```verilog
// Pulse en high for quick reset of all digital blocks
en = 1'b1; #100;
en = 1'b0;

// All registers return to default values:
// - threshold = 0x05
// - timeout = 0xA0
// - capacitor_ctrl = 0x00
// - counters = 0x00
```

## Timing Characteristics

### Asynchronous Reset
All modules use asynchronous reset with `posedge en`:
- Reset occurs **immediately** when en transitions 0→1
- Does not wait for clock edge
- Timing critical for ASIC implementation

### Reset to Active Transition
```
      ___     ___     ___     ___
clk _|   |___|   |___|   |___|   |___
         _______________________
en  ____|                       |_____
                                  ↓
                            Digital blocks
                            start operating
```

Minimum delay after en→0 before system is stable: **1 clock cycle**

## Power Consumption

| Mode | Active Blocks | Estimated Power |
|------|---------------|-----------------|
| en=0 (Normal) | Pulse Gen + Counters + I2C | 100% |
| en=1 (Bypass) | Only bypass mux | ~5-10% |

Bypass mode significantly saves power because:
- No toggling on flip-flops
- Counter does not increment
- State machine stays in IDLE
- Only leakage current

## Testing

Testbench has been updated to use the new enable logic:
```verilog
// Init with en=1 (reset state)
clk = 0; en = 1; 
#100 en = 0; #100;  // Activate digital blocks

// Test sequence...
```

See updated testbench files:
- `tb/tb_i2c_slave_config.v:68`
- `tb/tb_pulse_generator.v` (if exists)
- `tb/tb_main_event_counter.v` (if exists)
- `tb/tb_timeout_counter.v` (if exists)
- `tb/tb_top.v` (if exists)

## Migration Notes

Changes from previous enable logic:
- **Before**: `en=1` active, `en=0` reset
- **Now**: `en=0` active, `en=1` reset/bypass

If you have existing testbench or wrapper, make sure to:
1. Invert enable signal
2. Update initial values
3. Verify timing
