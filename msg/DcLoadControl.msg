# control a DC load channel

uint64 timestamp			    # time since system start (microseconds)

# Enums follow NMEA2000 definitions for DC load control
uint8 CHANNEL_OFF = 0        # Off (high impedance)
uint8 CHANNEL_LOW = 1        # Low (connected to ground)
uint8 CHANNEL_HIGH = 2       # On (connected to supply)
uint8 CHANNEL_PWM = 4        # PWM controlled
uint8 CHANNEL_RESET = 192    # Reset the channel (e.g., to clear a fault)

uint8 command                # command to set the channel state
uint8 pwm_duty_cycle         # pwm duty cycle in percent (0-100) if command is CHANNEL_PWM

# TOPICS dc_load_control_starter dc_load_control_ignition dc_load_control_trim_up dc_load_control_trim_down dc_load_control_ais dc_load_control_radar dc_load_control_canbus1 dc_load_control_canbus2 dc_load_control_bilge_pump dc_load_control_vsc dc_load_control_steering dc_load_control_shift_and_throttle dc_load_control_havoc_kit
