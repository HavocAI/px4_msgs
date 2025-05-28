# control or status of a Marine Internal Combustion Engine (MICE) shift and throttle

uint64 timestamp			    # time since system start (microseconds)

# Enums follow NMEA2000 definitions
uint8 GEAR_FORWARD = 0
uint8 GEAR_NEUTRAL = 1
uint8 GEAR_REVERSE = 2

uint8 gear               # gear position
uint8 throttle_pct       # throttle in percent (0-100)

# TOPICS mice_shift_throttle_control mice_shift_throttle_status
