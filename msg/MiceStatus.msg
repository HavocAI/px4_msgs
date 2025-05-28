# The status of a Marine Internal Combustion Engine (MICE)
# This is a rollup of the content in NMEA2000 PGNs 127488 (Engine Parameters, Dynamic),
# 127489 (Engine Parameters, Static), and 127493 (Transmission Parameters, Dynamic)

uint64 timestamp			    # time since system start (microseconds)

# Enums follow NMEA2000 definitions
uint8 GEAR_FORWARD = 0
uint8 GEAR_NEUTRAL = 1
uint8 GEAR_REVERSE = 2

uint16 engine_rpm
uint8 transmission_gear		 # transmission gear position (see GEAR_* above)
uint8 throttle_pct               # throttle in percent (0-100)
int8 tilt_trim_pct    	         # tilt trim in percent (-100 to 100)

float32 oil_pressure_pa          # oil pressure in Pa (if reported)
float32 oil_temp_degc            # oil temperature in degrees Celsius (if reported)
float32 engine_temp_degc         # engine temperature in degrees Celsius (if reported)
float32 alternator_voltage_v     # alternator voltage in volts (if reported)
float32 fuel_rate_lpm	         # fuel rate in liters per minute (if reported)
uint16 total_engine_hours        # total engine hours (if reported)
float32 coolant_pressure_pa      # coolant pressure in Pa (if reported)
float32 fuel_pressure_pa         # fuel pressure in Pa (if reported)

# Fault bit assignments (from NMEA2000 PGN 127489)
uint32 FAULT_CHECK_ENGINE = 1
uint32 FAULT_OVER_TEMP = 2
uint32 FAULT_LOW_OIL_PRESSURE = 4
uint32 FAULT_LOW_OIL_LEVEL = 8
uint32 FAULT_LOW_FUEL_PRESSURE = 16
uint32 FAULT_LOW_SYSTEM_VOLTAGE = 32
uint32 FAULT_LOW_COOLANT_LEVEL = 64
uint32 FAULT_WATER_FLOW = 128
uint32 FAULT_WATER_IN_FUEL = 256
uint32 FAULT_CHARGE_INDICATOR = 512
uint32 FAULT_PREHEAT_INDICATOR = 1024
uint32 FAULT_HIGH_BOOST_PRESSURE = 2048
uint32 FAULT_REV_LIMIT_EXCEEDED = 4096
uint32 FAULT_EGR_SYSTEM = 8192
uint32 FAULT_THROTTLE_POSITION_SENSOR = 16384
uint32 FAULT_EMERGENCY_STOP_MODE = 32768
uint32 FAULT_WARNING_LEVEL_1 = 65536
uint32 FAULT_WARNING_LEVEL_2 = 131072
uint32 FAULT_POWER_REDUCTION = 262144
uint32 FAULT_MAINTENANCE_NEEDED = 524288
uint32 FAULT_COMM_ERROR = 1048576
uint32 FAULT_SUB_THROTTLE = 2097152
uint32 FAULT_NEUTRAL_START_PROTECT = 4194304
uint32 FAULT_ENGINE_SHUTTING_DOWN = 8388608

# Fault bitfield (see above for bit assignments)
uint32 faults

float32 engine_load_pct          # engine load in percent (if reported)
float32 engine_torque_pct        # engine torque in percent (if reported)

float32 trip_fuel_used_l	 # trip fuel used in liters (if reported)
