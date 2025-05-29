uint64 timestamp	# time since system start (microseconds)
uint8[223] data		# CAN message data already formatted
uint8 length		# Length of data in bytes
uint32 can_id		# CAN ID already formatted
uint8 can_interface	# interface to publish on/received from
uint32 pgn		# Just the PGN for easy lookup

uint8 MAX_NMEA_DATA_LENGTH = 223

# TOPICS nmea_outgoing_data nmea_incoming_data
