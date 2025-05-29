# control or status of a Marine Internal Combustion Engine (MICE) shift and throttle

uint64 timestamp			    # time since system start (microseconds)

# Enums follow NMEA2000 definitions
uint8 GEAR_FORWARD = 0
uint8 GEAR_NEUTRAL = 1
uint8 GEAR_REVERSE = 2

uint8 gear               # gear position
float32 throttle_pct       # throttle in percent (0-100)

# Faults should be set in status topic only
uint8 danger_fault
uint8 warning_fault
uint8 shift_forward_motion_fault
uint8 shift_reverse_motion_fault
uint8 shift_neutral_motion_fault
uint8 throttle_down_motion_fault
uint8 throttle_up_motion_fault

# TOPICS mice_shift_throttle_control mice_shift_throttle_status
