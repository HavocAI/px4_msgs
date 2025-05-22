uint64 timestamp	# time since system start (microseconds)
uint8[8] data		# CAN message data already formatted
uint8 length		# Length of data in bytes
uint32 can_id		# CAN ID already formatted
uint8 can_interface
uint32 pgn		# Just the PGN for easy lookup
