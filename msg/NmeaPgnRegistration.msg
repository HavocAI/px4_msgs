# nmea pgn registration: for registering which PGNs should be received and passed along to the incoming NMEA traffic
uint64 timestamp 		# time since system start (microseconds)
uint32[32] pgns			# list of the PGNs to listen for
uint8 num_pgns
