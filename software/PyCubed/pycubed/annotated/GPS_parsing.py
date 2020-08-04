def _parse_gpvgt (self, args)
    data = args.split(',')
    if data is None:
        return
    
    self.truetrack = data[0]
    self.tracknorth = data[1] #sh0uld be 'T'-relative to true north
    self.magnetictrack = data[2]
    self.magneticnorth = data[3] #should be 'M'-relative to magnetic north
    self.groundspeedn = data[4]
    self.knots = data[5] #should be 'N'-knots
    self.groundspeedk = data[6]
    self.kph = data[7] #should be 'K'-kilometers per hour

def _parse_zda(self,args)
    data = args.split(',')
    if data is none
        return

    # Parse fix time.
    time_utc = int(_parse_float(data[0]))
    if time_utc is not None:
        hours = time_utc // 10000
        mins = (time_utc // 100) % 100
        secs = time_utc % 100
        # Set or update time to a friendly python time struct.
        if self.timestamp_utc is not None:
            self.timestamp_utc = time.struct_time((
                self.timestamp_utc.tm_year, self.timestamp_utc.tm_mon,
                self.timestamp_utc.tm_mday, hours, mins, secs, 0, 0, -1))
        else:
            self.timestamp_utc = time.struct_time((0, 0, 0, hours, mins,
                                                   secs, 0, 0, -1))
    
    if data[2] is not None and len(data[2]) ==2:
        day = int(data[2])

    if data[3] is not None and len(data[3]) ==2:
        month = int(data[3])

    if data[4] is not None and len(data[4]) ==4:
        year = 2000 + int(data[4])           # Y2k bug, 2 digit year assumption.
                                             # This is a problem with the NMEA
                                             # spec and not this code.
		
	self.localzonehours = data[5]		#local zone hours and minutes
	self.localzoneminutes = data[6]		#may need to be changed


	def _parse_psti()
		if data is None
			return
		
		if data[0] != 1:
			return

		#sets antenna mode
		self.antenna_mode = data[1]


def _parse_gpgns(self, args)
    data = args.split(,)
    if data is None
        return 

    #set latitude and longitude
    self.latitude = _parse_degrees(data[1])
    if self.latitude is not None and \
       data[2] is not None and data[2].lower() == 's':
        self.latitude *= -1.0
    self.longitude = _parse_degrees(data[3])
    if self.longitude is not None and \
       data[4] is not None and data[4].lower() == 'w':
        self.longitude *= -1.0

    #mode indicator
    self.mode = data[5]

    #number of svs in use/number of satellites?
    self.svs = data[6]

    # Parse HDOP, horizontal dilution of precision
    self.hdop = _parse_float(data[7])

    #orthometric hieght in meters
    self.height_ortho = data[8]

    #geoidal seperation in meters
    self.height_geoid = data[9]