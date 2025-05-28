# the status of a DC load channel

uint64 timestamp			    # time since system start (microseconds)

# Enums follow NMEA2000 definitions for DC load control
uint8 CHANNEL_OFF = 0        # Off (high impedance)
uint8 CHANNEL_LOW = 1        # Low (connected to ground)
uint8 CHANNEL_HIGH = 2       # On (connected to supply)
uint8 CHANNEL_TRIPPED = 3    # Tripped (overcurrent, overtemperature, etc.)
uint8 CHANNEL_PWM = 4        # Connection is PWM controlled
uint8 CHANNEL_FAULT = 128    # Internal fault, circuit is off

uint8 state
uint8 pwm_duty_cycle         # duty cycle in percent (100 = on, 0 = off)
float32 dc_voltage           # DC voltage in volts (if reported)
float32 dc_current           # DC current in amps (if reported)

# TOPICS dc_load_status_starter dc_load_status_ignition dc_load_status_trim_up dc_load_status_trim_down dc_load_status_ais dc_load_status_radar dc_load_status_canbus1 dc_load_status_canbus2 dc_load_status_bilge_pump dc_load_status_vsc dc_load_status_steering dc_load_status_shift_and_throttle dc_load_status_havoc_kit
