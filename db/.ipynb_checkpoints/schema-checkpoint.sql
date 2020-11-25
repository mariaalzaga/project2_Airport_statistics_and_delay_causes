--
Add flight table
-- create flights_metadata table

CREATE TABLE airport_delays (
    uid varchar(6) PRIMARY KEY,
    flight_year int,
    flight_month int,
    carrier varchar(5),
    carrier_name varchar(45),
    locationID varchar(5),
    airport_name varchar(120),
    arr_flights int,
    arr_del15 int,
    carrier_ct float,
    security_ct float,
    late_aircraft_ct float,
    arr_cancelled int,
    arr_diverted int,
    weather_delay int,
    nas_delay int,
    security_delay int,
    late_aircraft_delay int
);

CREATE TABLE airport_codes (
    continent varchar(10),
    locationID varchar(5) references airport_delays(locationID),
    Latitude DECIMAL(10,5),
    Longitude DECIMAL(11, 5)
);

-- create airport_codes table - old version
CREATE TABLE airport_codes (
    continent varchar(5),
    locationID varchar(5) references airport_delays(locationID),
    Latitude decimal(10,8),
    Longitude decimal(11, 8)
);
  
-- create topairports table
CREATE TABLE topairports_metadata (
    blank varchar(6) PRIMARY KEY,
    flight_date date,
    flight_year year,
    carrier varchar(5),
    carrier_name varchar(45),
    airport varchar(5),
    airport_name varchar(60),
    arr_flights int,
    arr_del15 int,
    carrier_ct int,
    weather_ct int,
    nas_ct int,
    security_ct int,
    late_aircraft_ct int,
    arr_cancelled int,
    arr_diverted int
    arr_delay int,
    carrier_delay int,
    weather_delay int,
    nas_delay int,
    security_delay int,
    late_aircraft_delay int
);

CREATE TABLE airport_delays (
    uid varchar(6),
    flight_year integer,
    flight_month integer,
    carrier varchar(5),
    carrier_name varchar(45),
    locationID varchar(5) PRIMARY KEY,
    airport_name varchar(60),
    arr_flights int,
    arr_del15 int,
    carrier_ct float,
    weather_ct int,
    nas_ct float,
    security_ct float,
    late_aircraft_ct float,
    arr_cancelled int,
    arr_diverted int,
    arr_delay int,
    carrier_delay int,
    weather_delay int,
    nas_delay int,
    security_delay int,
    late_aircraft_delay int
);

-- create airport_codes table
CREATE TABLE airport_codes (
    locationID varchar(5) references flights_metadata(airport),
    Latitude float(7,4),
    Longitude float(6,4)
);
