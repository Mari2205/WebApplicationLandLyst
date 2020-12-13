USE LandLystDB;


CREATE TABLE HotelServices
(
	ServiceName VARCHAR(30) PRIMARY KEY,
	Price INTEGER NOT NULL
);

CREATE TABLE Room
(
	RoomNo INTEGER PRIMARY KEY,
	Cleaned BIT NOT NULL,
	Price INTEGER NOT NULL
);

CREATE TABLE RoomServices
(	
	SerName VARCHAR(30),
	RoomNo INTEGER,

	CONSTRAINT FKRoomNo FOREIGN KEY (RoomNo)
	REFERENCES Room,
	CONSTRAINT FKServiceName FOREIGN KEY(SerName)
	REFERENCES HotelServices,
	CONSTRAINT PKGroup PRIMARY KEY (RoomNo,SerName)
);

CREATE TABLE ZipCode
(
	ZipCode INTEGER PRIMARY KEY,
	City VARCHAR(30) NOT NULL
);

CREATE TABLE Guests
(
	GuestsID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ForeName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Address VARCHAR(30) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	TelephoneNo INTEGER NOT NULL,
	ZipCode INTEGER,
	CONSTRAINT FKZipCode FOREIGN KEY (ZipCode)
	REFERENCES ZipCode
);

CREATE TABLE Booking
(
	BookingNo INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CheckIn DATE NOT NULL,
	CheckOut DATE NOT NULL,
	GuestsID INTEGER,
	RoomNo INTEGER,
	CONSTRAINT FkGuestsID FOREIGN KEY (GuestsID)
	REFERENCES Guests,
	CONSTRAINT FkRoomID FOREIGN KEY (RoomNo)
	REFERENCES Room
	
	
);

--CREATE TABLE RoomQuantity
--(
--	RoomNo INTEGER,
--	BookingNo INTEGER,
	
--	CONSTRAINT FKRoomNumber FOREIGN KEY (RoomNo)
--	REFERENCES Room,
--	CONSTRAINT FKBookingNo FOREIGN KEY (BookingNo)
--	REFERENCES Booking,
	
--	CONSTRAINT PK_usrgroup PRIMARY KEY (RoomNo,BookingNo)
--);