[Reference slides: AURA Test Plan](https://docs.google.com/presentation/d/1mf0nDwovBbUGfo0Ir-egnI34lYEEwVsE_MaGivDuyI8/edit?slide=id.h63d96239c7b224b1_1_75#slide=id.h63d96239c7b224b1_1_75)

# AURA Test Plan

Initial measurements use VDD = 3.3V at room temperature.

## Measurement Setup

| Instrument | Connection / Purpose |
| --- | --- |
| Power Supply | VDD and GND, supply current measurement |
| Waveform Generator | Vin, sinusoid sweep and bursts |
| Adjustable DC Source | Vthreshold, comparator threshold |
| External Buffer and Oscilloscope | Vbpf and Venv (Venvelope), high input impedance and low loading |
| Microcontroller | 3.3V logic, SCL input, bidirectional SDA, Vtrigger observation, and en control |

Supply the external buffer and microcontroller separately so their current is not included in the chip measurement.

- **en = 1:** analog bypass, digital and internal clock disabled, registers reset to default. Vtrigger follows the comparator output
- **en = 0:** digital configuration and event detection enabled. Vtrigger is the processed event trigger

For initial bring-up, hold en = 1 and check the zero-input response and default output. Then hold en = 0 and check the digital configuration.

## Digital Configuration

I2C address = 0x50 (7-bit), write transactions only. Verify ACK response.

| Register | Function | Reset Value |
| --- | --- | --- |
| 0x00 | Event count threshold | 5 |
| 0x01 | Timeout using internal clock ticks | 160 |
| 0x02 | Capacitor bank switches, bits [2:0] | 000 |

Internal clock frequency is about 20–30 kHz, depending on the process corner.

## Analog Bypass Response

Hold en = 1.

- Apply a small sinusoid input (1–10 mVpp) and sweep the frequency (1–8 kHz). Record Vin and buffered Vbpf to get the default filter response
- Observe buffered Venv during the sweep to check the envelope response
- Use the envelope response to set Vthreshold, then check when Vtrigger is HIGH and LOW while sweeping the input. Adjust Vthreshold if needed
- Apply small bursts and record the envelope response and Vtrigger transition times
- Increase or decrease the input amplitude to check the system limitation

The measured analog path includes the LNA and on-chip output buffer. Compare the results with PEX simulations.

## Digital Response

Hold en = 0. Use the previous analog measurement to set Vthreshold and burst length. Each burst should produce one envelope rising edge and return below the threshold. Keep valid event intervals shorter than the timeout.

### Event Threshold

- Set event threshold = 3 and timeout = 255
- Apply 2 bursts and check that Vtrigger stays LOW. Apply the third burst and check the trigger pulse
- Repeat with event threshold = 5 and other threshold values

Wait longer than the timeout before starting each new sequence to reset the event counter.

### Timeout

- Set event threshold = 3 and timeout = 160
- Apply 2 bursts, then the third burst before the timeout. Check the trigger pulse
- Start a new sequence. Apply 2 bursts, wait longer than the timeout, then apply one more burst. Vtrigger should stay LOW
- Apply 2 additional bursts with short intervals and check the trigger after these 3 new events
- Sweep the burst interval and repeat with different timeout values to find the actual timeout boundary

Timeout is counted from the last detected event. Approximate timeout = register value / internal clock frequency. For 160 ticks and a 20–30 kHz clock, this is about 5.3–8 ms.

## Capacitor Bank Response

Hold en = 0.

- Sweep the input frequency and record buffered Vbpf for capacitor bank values 000–111 using register 0x02
- Record peak gain, peak frequency, and −3 dB bandwidth for each configuration. Keep the input amplitude and setup unchanged
- Check Venv at each measured peak frequency and compare the responses with simulation

## Power Measurement

- Measure chip supply current during bypass with zero input, digital enabled with zero input, repeated bursts, and I2C communication
- Use capacitor bank = 000 when comparing bypass and digital idle current
- Record average current during bursts while observing Vtrigger
- Calculate chip power using P = VDD × IDD and compare with simulation under the same conditions

## System Test

- Hold en = 0, apply the selected configuration and target burst pattern, then observe Vbpf, Venv, and Vtrigger together. Check the trigger after the required number of valid events
- Repeat with fewer bursts, longer intervals, frequencies outside the passband, zero input, and background noise. Vary the input amplitude and record correct, missed, and unwanted triggers
- After the sinusoid test, use a microphone front end with a suitable output level and bias for the acoustic demonstration

## Testing Records

Record device ID, temperature, VDD, input frequency and amplitude, burst timing, Vthreshold, register configuration, and measured waveforms. Repeat each test to check consistency.

Compare analog results with simulation under the same conditions. Check digital results against the expected event count and timeout behavior.
