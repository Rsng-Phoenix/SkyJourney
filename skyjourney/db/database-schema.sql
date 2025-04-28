-- Create Database
CREATE DATABASE IF NOT EXISTS skyjourney;
USE skyjourney;

-- Updated Cities Table
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    airport_name VARCHAR(150) NOT NULL,
    airport_code VARCHAR(10) NOT NULL
);

-- Insert all major cities and airports
INSERT INTO cities (name, airport_name, airport_code) VALUES
('Mumbai', 'Chhatrapati Shivaji Maharaj International Airport', 'BOM'),
('Delhi', 'Indira Gandhi International Airport', 'DEL'),
('Bangalore', 'Kempegowda International Airport', 'BLR'),
('Hyderabad', 'Rajiv Gandhi International Airport', 'HYD'),
('Chennai', 'Chennai International Airport', 'MAA'),
('Kolkata', 'Netaji Subhash Chandra Bose International Airport', 'CCU'),
('Pune', 'Pune Airport', 'PNQ'),
('Ahmedabad', 'Sardar Vallabhbhai Patel International Airport', 'AMD'),
('Goa', 'Goa International Airport (Dabolim Airport)', 'GOI'),
('Jaipur', 'Jaipur International Airport', 'JAI');

-- Flights Table (same as before)
CREATE TABLE IF NOT EXISTS flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(100) NOT NULL,
    flight_number VARCHAR(20) NOT NULL,
    from_city VARCHAR(100) NOT NULL,
    to_city VARCHAR(100) NOT NULL,
    departure_time VARCHAR(10) NOT NULL,
    arrival_time VARCHAR(10) NOT NULL,
    price INT NOT NULL
);

-- Insert some sample flights
-- Mumbai to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-201', 'Mumbai', 'Delhi', '06:00', '08:10', 3500),
('IndiGo', '6E-301', 'Mumbai', 'Delhi', '09:30', '11:40', 3700),
('Vistara', 'UK-401', 'Mumbai', 'Delhi', '14:00', '16:10', 3900);

-- Mumbai to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-211', 'Mumbai', 'Bangalore', '07:15', '09:30', 3600),
('Go First', 'G8-311', 'Mumbai', 'Bangalore', '10:00', '12:15', 3400),
('Air India', 'AI-411', 'Mumbai', 'Bangalore', '16:30', '18:40', 4000);

-- Mumbai to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-501', 'Mumbai', 'Hyderabad', '08:00', '10:00', 3300),
('IndiGo', '6E-601', 'Mumbai', 'Hyderabad', '11:30', '13:30', 3700),
('SpiceJet', 'SG-701', 'Mumbai', 'Hyderabad', '17:00', '19:00', 3900);

-- Mumbai to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-801', 'Mumbai', 'Chennai', '06:45', '09:15', 3200),
('Air India', 'AI-901', 'Mumbai', 'Chennai', '12:15', '14:45', 3600),
('Vistara', 'UK-1001', 'Mumbai', 'Chennai', '18:00', '20:30', 4000);

-- Mumbai to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-1101', 'Mumbai', 'Kolkata', '05:30', '08:15', 4100),
('IndiGo', '6E-1201', 'Mumbai', 'Kolkata', '13:00', '15:45', 4500),
('Air India', 'AI-1301', 'Mumbai', 'Kolkata', '20:30', '23:15', 4800);

-- Mumbai to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-1401', 'Mumbai', 'Pune', '07:00', '08:00', 3000),
('Vistara', 'UK-1501', 'Mumbai', 'Pune', '10:30', '11:30', 3200),
('IndiGo', '6E-1601', 'Mumbai', 'Pune', '18:00', '19:00', 3400);

-- Mumbai to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-1701', 'Mumbai', 'Ahmedabad', '08:15', '09:30', 3100),
('Go First', 'G8-1801', 'Mumbai', 'Ahmedabad', '13:45', '15:00', 3300),
('Air India', 'AI-1901', 'Mumbai', 'Ahmedabad', '19:30', '20:45', 3500);

-- Mumbai to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-2001', 'Mumbai', 'Goa', '05:50', '07:00', 3200),
('IndiGo', '6E-2101', 'Mumbai', 'Goa', '14:20', '15:30', 3400),
('SpiceJet', 'SG-2201', 'Mumbai', 'Goa', '20:10', '21:20', 3700);

-- Mumbai to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-2301', 'Mumbai', 'Jaipur', '07:10', '09:20', 3600),
('Air India', 'AI-2401', 'Mumbai', 'Jaipur', '11:50', '14:00', 3800),
('Vistara', 'UK-2501', 'Mumbai', 'Jaipur', '17:20', '19:30', 4000);




-- Delhi to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-2601', 'Delhi', 'Mumbai', '06:20', '08:30', 3500),
('Go First', 'G8-2701', 'Delhi', 'Mumbai', '12:10', '14:20', 3700),
('Air India', 'AI-2801', 'Delhi', 'Mumbai', '17:45', '19:55', 4000);

-- Delhi to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-2901', 'Delhi', 'Bangalore', '07:00', '09:20', 3600),
('Vistara', 'UK-3001', 'Delhi', 'Bangalore', '11:30', '13:50', 3800),
('SpiceJet', 'SG-3101', 'Delhi', 'Bangalore', '18:00', '20:20', 3900);

-- Delhi to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-3201', 'Delhi', 'Hyderabad', '05:45', '08:00', 3300),
('Air India', 'AI-3301', 'Delhi', 'Hyderabad', '13:00', '15:15', 3600),
('Vistara', 'UK-3401', 'Delhi', 'Hyderabad', '19:30', '21:45', 3900);

-- Delhi to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-3501', 'Delhi', 'Chennai', '06:30', '09:00', 3400),
('SpiceJet', 'SG-3601', 'Delhi', 'Chennai', '12:15', '14:45', 3700),
('Go First', 'G8-3701', 'Delhi', 'Chennai', '17:50', '20:20', 3900);

-- Delhi to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-3801', 'Delhi', 'Kolkata', '07:20', '09:50', 4000),
('Vistara', 'UK-3901', 'Delhi', 'Kolkata', '13:30', '16:00', 4200),
('IndiGo', '6E-4001', 'Delhi', 'Kolkata', '18:10', '20:40', 4400);

-- Delhi to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-4101', 'Delhi', 'Pune', '08:00', '10:20', 3300),
('Go First', 'G8-4201', 'Delhi', 'Pune', '14:15', '16:35', 3500),
('Air India', 'AI-4301', 'Delhi', 'Pune', '19:40', '22:00', 3800);

-- Delhi to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-4401', 'Delhi', 'Ahmedabad', '06:50', '08:10', 3100),
('Vistara', 'UK-4501', 'Delhi', 'Ahmedabad', '12:30', '13:50', 3300),
('SpiceJet', 'SG-4601', 'Delhi', 'Ahmedabad', '18:00', '19:20', 3500);

-- Delhi to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-4701', 'Delhi', 'Goa', '07:10', '09:30', 3700),
('Air India', 'AI-4801', 'Delhi', 'Goa', '13:20', '15:40', 3900),
('Vistara', 'UK-4901', 'Delhi', 'Goa', '19:50', '22:10', 4100);

-- Delhi to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-5001', 'Delhi', 'Jaipur', '05:30', '06:30', 3000),
('SpiceJet', 'SG-5101', 'Delhi', 'Jaipur', '11:00', '12:00', 3200),
('Go First', 'G8-5201', 'Delhi', 'Jaipur', '17:30', '18:30', 3400);





-- Bangalore to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-5301', 'Bangalore', 'Mumbai', '06:30', '08:10', 3500),
('IndiGo', '6E-5401', 'Bangalore', 'Mumbai', '11:00', '12:40', 3700),
('Vistara', 'UK-5501', 'Bangalore', 'Mumbai', '17:30', '19:10', 3900);

-- Bangalore to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-5601', 'Bangalore', 'Delhi', '07:10', '09:40', 4000),
('Go First', 'G8-5701', 'Bangalore', 'Delhi', '13:00', '15:30', 4200),
('Air India', 'AI-5801', 'Bangalore', 'Delhi', '19:20', '21:50', 4400);

-- Bangalore to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-5901', 'Bangalore', 'Hyderabad', '06:20', '07:50', 3100),
('Vistara', 'UK-6001', 'Bangalore', 'Hyderabad', '12:00', '13:30', 3300),
('SpiceJet', 'SG-6101', 'Bangalore', 'Hyderabad', '18:30', '20:00', 3500);

-- Bangalore to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-6201', 'Bangalore', 'Chennai', '05:45', '07:00', 3000),
('Air India', 'AI-6301', 'Bangalore', 'Chennai', '11:15', '12:30', 3200),
('Vistara', 'UK-6401', 'Bangalore', 'Chennai', '17:45', '19:00', 3400);

-- Bangalore to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-6501', 'Bangalore', 'Kolkata', '07:30', '10:15', 4300),
('Go First', 'G8-6601', 'Bangalore', 'Kolkata', '13:00', '15:45', 4500),
('IndiGo', '6E-6701', 'Bangalore', 'Kolkata', '19:15', '22:00', 4700);

-- Bangalore to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-6801', 'Bangalore', 'Pune', '06:30', '08:00', 3300),
('Vistara', 'UK-6901', 'Bangalore', 'Pune', '12:30', '14:00', 3500),
('SpiceJet', 'SG-7001', 'Bangalore', 'Pune', '18:00', '19:30', 3700);

-- Bangalore to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-7101', 'Bangalore', 'Ahmedabad', '05:30', '07:30', 3400),
('Air India', 'AI-7201', 'Bangalore', 'Ahmedabad', '11:00', '13:00', 3600),
('Vistara', 'UK-7301', 'Bangalore', 'Ahmedabad', '17:30', '19:30', 3800);

-- Bangalore to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-7401', 'Bangalore', 'Goa', '07:20', '08:30', 3200),
('Go First', 'G8-7501', 'Bangalore', 'Goa', '13:10', '14:20', 3400),
('Air India', 'AI-7601', 'Bangalore', 'Goa', '19:40', '20:50', 3600);

-- Bangalore to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-7701', 'Bangalore', 'Jaipur', '06:10', '08:40', 3700),
('Vistara', 'UK-7801', 'Bangalore', 'Jaipur', '12:50', '15:20', 3900),
('SpiceJet', 'SG-7901', 'Bangalore', 'Jaipur', '18:20', '20:50', 4100);





-- Hyderabad to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-8001', 'Hyderabad', 'Mumbai', '06:40', '08:10', 3300),
('SpiceJet', 'SG-8101', 'Hyderabad', 'Mumbai', '11:00', '12:30', 3500),
('Go First', 'G8-8201', 'Hyderabad', 'Mumbai', '17:20', '18:50', 3700);

-- Hyderabad to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-8301', 'Hyderabad', 'Delhi', '07:10', '09:30', 3800),
('IndiGo', '6E-8401', 'Hyderabad', 'Delhi', '13:00', '15:20', 4000),
('Vistara', 'UK-8501', 'Hyderabad', 'Delhi', '19:10', '21:30', 4200);

-- Hyderabad to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-8601', 'Hyderabad', 'Bangalore', '06:15', '07:30', 3100),
('Go First', 'G8-8701', 'Hyderabad', 'Bangalore', '12:00', '13:15', 3300),
('Air India', 'AI-8801', 'Hyderabad', 'Bangalore', '18:20', '19:35', 3500);

-- Hyderabad to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-8901', 'Hyderabad', 'Chennai', '05:30', '06:45', 3000),
('Vistara', 'UK-9001', 'Hyderabad', 'Chennai', '11:15', '12:30', 3200),
('SpiceJet', 'SG-9101', 'Hyderabad', 'Chennai', '17:40', '18:55', 3400);

-- Hyderabad to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-9201', 'Hyderabad', 'Kolkata', '07:40', '10:10', 4200),
('Air India', 'AI-9301', 'Hyderabad', 'Kolkata', '13:30', '16:00', 4400),
('IndiGo', '6E-9401', 'Hyderabad', 'Kolkata', '19:30', '22:00', 4600);

-- Hyderabad to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-9501', 'Hyderabad', 'Pune', '06:10', '07:40', 3300),
('SpiceJet', 'SG-9601', 'Hyderabad', 'Pune', '12:30', '14:00', 3500),
('Go First', 'G8-9701', 'Hyderabad', 'Pune', '18:50', '20:20', 3700);

-- Hyderabad to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-9801', 'Hyderabad', 'Ahmedabad', '07:00', '08:30', 3400),
('IndiGo', '6E-9901', 'Hyderabad', 'Ahmedabad', '13:15', '14:45', 3600),
('Vistara', 'UK-10001', 'Hyderabad', 'Ahmedabad', '19:30', '21:00', 3800);

-- Hyderabad to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-10101', 'Hyderabad', 'Goa', '05:50', '07:00', 3200),
('Go First', 'G8-10201', 'Hyderabad', 'Goa', '12:20', '13:30', 3400),
('Air India', 'AI-10301', 'Hyderabad', 'Goa', '18:10', '19:20', 3600);

-- Hyderabad to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-10401', 'Hyderabad', 'Jaipur', '07:30', '09:40', 3700),
('Vistara', 'UK-10501', 'Hyderabad', 'Jaipur', '13:10', '15:20', 3900),
('SpiceJet', 'SG-10601', 'Hyderabad', 'Jaipur', '19:40', '21:50', 4100);





-- Chennai to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-10701', 'Chennai', 'Mumbai', '06:20', '08:30', 3300),
('Air India', 'AI-10801', 'Chennai', 'Mumbai', '12:00', '14:10', 3500),
('Vistara', 'UK-10901', 'Chennai', 'Mumbai', '18:00', '20:10', 3700);

-- Chennai to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-11001', 'Chennai', 'Delhi', '07:30', '10:00', 3900),
('IndiGo', '6E-11101', 'Chennai', 'Delhi', '13:20', '15:50', 4100),
('Go First', 'G8-11201', 'Chennai', 'Delhi', '19:40', '22:10', 4300);

-- Chennai to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-11301', 'Chennai', 'Bangalore', '05:30', '06:40', 3100),
('Vistara', 'UK-11401', 'Chennai', 'Bangalore', '11:00', '12:10', 3300),
('SpiceJet', 'SG-11501', 'Chennai', 'Bangalore', '17:30', '18:40', 3500);

-- Chennai to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-11601', 'Chennai', 'Hyderabad', '06:50', '08:00', 3000),
('Air India', 'AI-11701', 'Chennai', 'Hyderabad', '12:20', '13:30', 3200),
('IndiGo', '6E-11801', 'Chennai', 'Hyderabad', '18:30', '19:40', 3400);

-- Chennai to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-11901', 'Chennai', 'Kolkata', '07:10', '09:40', 4200),
('SpiceJet', 'SG-12001', 'Chennai', 'Kolkata', '13:00', '15:30', 4400),
('Go First', 'G8-12101', 'Chennai', 'Kolkata', '19:20', '21:50', 4600);

-- Chennai to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-12201', 'Chennai', 'Pune', '05:40', '07:30', 3200),
('IndiGo', '6E-12301', 'Chennai', 'Pune', '12:10', '14:00', 3400),
('Vistara', 'UK-12401', 'Chennai', 'Pune', '18:00', '19:50', 3600);

-- Chennai to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-12501', 'Chennai', 'Ahmedabad', '06:30', '08:40', 3500),
('Go First', 'G8-12601', 'Chennai', 'Ahmedabad', '13:00', '15:10', 3700),
('Air India', 'AI-12701', 'Chennai', 'Ahmedabad', '19:00', '21:10', 3900);

-- Chennai to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-12801', 'Chennai', 'Goa', '05:50', '07:30', 3300),
('Vistara', 'UK-12901', 'Chennai', 'Goa', '12:30', '14:10', 3500),
('SpiceJet', 'SG-13001', 'Chennai', 'Goa', '18:30', '20:10', 3700);

-- Chennai to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-13101', 'Chennai', 'Jaipur', '07:20', '09:40', 3900),
('Air India', 'AI-13201', 'Chennai', 'Jaipur', '13:10', '15:30', 4100),
('Vistara', 'UK-13301', 'Chennai', 'Jaipur', '19:40', '22:00', 4300);





-- Kolkata to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-13401', 'Kolkata', 'Mumbai', '06:00', '08:30', 3500),
('Go First', 'G8-13501', 'Kolkata', 'Mumbai', '12:20', '14:50', 3700),
('Air India', 'AI-13601', 'Kolkata', 'Mumbai', '18:30', '21:00', 4000);

-- Kolkata to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-13701', 'Kolkata', 'Delhi', '07:10', '09:30', 3600),
('Vistara', 'UK-13801', 'Kolkata', 'Delhi', '13:00', '15:20', 3800),
('SpiceJet', 'SG-13901', 'Kolkata', 'Delhi', '19:10', '21:30', 3900);

-- Kolkata to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-14001', 'Kolkata', 'Bangalore', '06:40', '09:10', 3700),
('Air India', 'AI-14101', 'Kolkata', 'Bangalore', '12:10', '14:40', 3900),
('IndiGo', '6E-14201', 'Kolkata', 'Bangalore', '18:40', '21:10', 4100);

-- Kolkata to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-14301', 'Kolkata', 'Hyderabad', '05:50', '08:20', 3500),
('SpiceJet', 'SG-14401', 'Kolkata', 'Hyderabad', '13:20', '15:50', 3700),
('Go First', 'G8-14501', 'Kolkata', 'Hyderabad', '19:20', '21:50', 3900);

-- Kolkata to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-14601', 'Kolkata', 'Chennai', '07:30', '10:00', 3400),
('IndiGo', '6E-14701', 'Kolkata', 'Chennai', '13:30', '16:00', 3600),
('Vistara', 'UK-14801', 'Kolkata', 'Chennai', '20:00', '22:30', 3800);

-- Kolkata to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-14901', 'Kolkata', 'Pune', '06:10', '08:40', 3200),
('Go First', 'G8-15001', 'Kolkata', 'Pune', '12:40', '15:10', 3400),
('Air India', 'AI-15101', 'Kolkata', 'Pune', '19:10', '21:40', 3600);

-- Kolkata to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-15201', 'Kolkata', 'Ahmedabad', '05:30', '07:50', 3300),
('Vistara', 'UK-15301', 'Kolkata', 'Ahmedabad', '12:00', '14:20', 3500),
('SpiceJet', 'SG-15401', 'Kolkata', 'Ahmedabad', '18:30', '20:50', 3700);

-- Kolkata to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-15501', 'Kolkata', 'Goa', '07:20', '09:50', 3700),
('Air India', 'AI-15601', 'Kolkata', 'Goa', '13:10', '15:40', 3900),
('IndiGo', '6E-15701', 'Kolkata', 'Goa', '19:40', '22:10', 4100);

-- Kolkata to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-15801', 'Kolkata', 'Jaipur', '06:00', '08:10', 3000),
('SpiceJet', 'SG-15901', 'Kolkata', 'Jaipur', '12:30', '14:40', 3200),
('Go First', 'G8-16001', 'Kolkata', 'Jaipur', '18:50', '21:00', 3400);






-- Pune to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-16101', 'Pune', 'Mumbai', '06:00', '07:00', 3100),
('Vistara', 'UK-16201', 'Pune', 'Mumbai', '12:00', '13:00', 3300),
('SpiceJet', 'SG-16301', 'Pune', 'Mumbai', '18:00', '19:00', 3500);

-- Pune to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-16401', 'Pune', 'Delhi', '07:20', '09:40', 3700),
('Air India', 'AI-16501', 'Pune', 'Delhi', '13:10', '15:30', 3900),
('IndiGo', '6E-16601', 'Pune', 'Delhi', '19:30', '21:50', 4100);

-- Pune to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-16701', 'Pune', 'Bangalore', '05:40', '07:00', 3200),
('SpiceJet', 'SG-16801', 'Pune', 'Bangalore', '12:10', '13:30', 3400),
('Go First', 'G8-16901', 'Pune', 'Bangalore', '18:20', '19:40', 3600);

-- Pune to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-17001', 'Pune', 'Hyderabad', '06:10', '07:30', 3000),
('IndiGo', '6E-17101', 'Pune', 'Hyderabad', '11:50', '13:10', 3200),
('Vistara', 'UK-17201', 'Pune', 'Hyderabad', '17:30', '18:50', 3400);

-- Pune to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-17301', 'Pune', 'Chennai', '06:50', '08:30', 3700),
('Go First', 'G8-17401', 'Pune', 'Chennai', '13:30', '15:10', 3900),
('Air India', 'AI-17501', 'Pune', 'Chennai', '19:50', '21:30', 4100);

-- Pune to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-17601', 'Pune', 'Kolkata', '07:00', '09:30', 4200),
('Vistara', 'UK-17701', 'Pune', 'Kolkata', '13:20', '15:50', 4400),
('SpiceJet', 'SG-17801', 'Pune', 'Kolkata', '20:00', '22:30', 4600);

-- Pune to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-17901', 'Pune', 'Ahmedabad', '06:30', '08:00', 3100),
('Air India', 'AI-18001', 'Pune', 'Ahmedabad', '12:20', '13:50', 3300),
('IndiGo', '6E-18101', 'Pune', 'Ahmedabad', '18:30', '20:00', 3500);

-- Pune to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-18201', 'Pune', 'Goa', '07:10', '08:20', 3200),
('SpiceJet', 'SG-18301', 'Pune', 'Goa', '13:10', '14:20', 3400),
('Go First', 'G8-18401', 'Pune', 'Goa', '19:20', '20:30', 3600);

-- Pune to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-18501', 'Pune', 'Jaipur', '06:40', '08:50', 3700),
('IndiGo', '6E-18601', 'Pune', 'Jaipur', '12:30', '14:40', 3900),
('Vistara', 'UK-18701', 'Pune', 'Jaipur', '18:50', '21:00', 4100);






-- Ahmedabad to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-18801', 'Ahmedabad', 'Mumbai', '06:00', '07:00', 3100),
('Go First', 'G8-18901', 'Ahmedabad', 'Mumbai', '12:00', '13:00', 3300),
('Air India', 'AI-19001', 'Ahmedabad', 'Mumbai', '18:00', '19:00', 3500);

-- Ahmedabad to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-19101', 'Ahmedabad', 'Delhi', '07:10', '09:10', 3600),
('Vistara', 'UK-19201', 'Ahmedabad', 'Delhi', '13:10', '15:10', 3800),
('SpiceJet', 'SG-19301', 'Ahmedabad', 'Delhi', '19:10', '21:10', 4000);

-- Ahmedabad to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-19401', 'Ahmedabad', 'Bangalore', '06:30', '08:50', 3700),
('Air India', 'AI-19501', 'Ahmedabad', 'Bangalore', '12:30', '14:50', 3900),
('IndiGo', '6E-19601', 'Ahmedabad', 'Bangalore', '18:30', '20:50', 4100);

-- Ahmedabad to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-19701', 'Ahmedabad', 'Hyderabad', '05:45', '07:45', 3400),
('SpiceJet', 'SG-19801', 'Ahmedabad', 'Hyderabad', '12:20', '14:20', 3600),
('Go First', 'G8-19901', 'Ahmedabad', 'Hyderabad', '18:20', '20:20', 3800);

-- Ahmedabad to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-20001', 'Ahmedabad', 'Chennai', '06:20', '08:50', 3500),
('IndiGo', '6E-20101', 'Ahmedabad', 'Chennai', '13:00', '15:30', 3700),
('Vistara', 'UK-20201', 'Ahmedabad', 'Chennai', '19:00', '21:30', 3900);

-- Ahmedabad to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-20301', 'Ahmedabad', 'Kolkata', '07:30', '10:30', 4200),
('Go First', 'G8-20401', 'Ahmedabad', 'Kolkata', '13:30', '16:30', 4400),
('Air India', 'AI-20501', 'Ahmedabad', 'Kolkata', '19:30', '22:30', 4600);

-- Ahmedabad to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-20601', 'Ahmedabad', 'Pune', '06:10', '07:30', 3100),
('Vistara', 'UK-20701', 'Ahmedabad', 'Pune', '12:20', '13:40', 3300),
('SpiceJet', 'SG-20801', 'Ahmedabad', 'Pune', '18:20', '19:40', 3500);

-- Ahmedabad to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-20901', 'Ahmedabad', 'Goa', '07:00', '08:30', 3200),
('Air India', 'AI-21001', 'Ahmedabad', 'Goa', '13:10', '14:40', 3400),
('IndiGo', '6E-21101', 'Ahmedabad', 'Goa', '19:10', '20:40', 3600);

-- Ahmedabad to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-21201', 'Ahmedabad', 'Jaipur', '06:40', '08:00', 3000),
('SpiceJet', 'SG-21301', 'Ahmedabad', 'Jaipur', '12:40', '14:00', 3200),
('Go First', 'G8-21401', 'Ahmedabad', 'Jaipur', '18:40', '20:00', 3400);





-- Goa to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-30001', 'Goa', 'Mumbai', '06:10', '07:20', 3100),
('IndiGo', '6E-30002', 'Goa', 'Mumbai', '12:30', '13:40', 3300),
('Vistara', 'UK-30003', 'Goa', 'Mumbai', '18:50', '20:00', 3500);

-- Goa to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-30004', 'Goa', 'Delhi', '07:00', '09:30', 3700),
('Go First', 'G8-30005', 'Goa', 'Delhi', '13:30', '16:00', 3900),
('Air India', 'AI-30006', 'Goa', 'Delhi', '20:00', '22:30', 4100);

-- Goa to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-30007', 'Goa', 'Bangalore', '05:45', '07:00', 3000),
('Vistara', 'UK-30008', 'Goa', 'Bangalore', '12:15', '13:30', 3200),
('SpiceJet', 'SG-30009', 'Goa', 'Bangalore', '18:30', '19:45', 3400);

-- Goa to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-30010', 'Goa', 'Hyderabad', '06:30', '08:00', 3200),
('Air India', 'AI-30011', 'Goa', 'Hyderabad', '13:30', '15:00', 3400),
('IndiGo', '6E-30012', 'Goa', 'Hyderabad', '20:00', '21:30', 3600);

-- Goa to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-30013', 'Goa', 'Chennai', '07:20', '09:40', 3600),
('SpiceJet', 'SG-30014', 'Goa', 'Chennai', '13:50', '16:10', 3800),
('Go First', 'G8-30015', 'Goa', 'Chennai', '19:30', '21:50', 4000);

-- Goa to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-30016', 'Goa', 'Kolkata', '06:00', '09:00', 4300),
('IndiGo', '6E-30017', 'Goa', 'Kolkata', '12:20', '15:20', 4500),
('Vistara', 'UK-30018', 'Goa', 'Kolkata', '18:40', '21:40', 4700);

-- Goa to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-30019', 'Goa', 'Pune', '05:30', '06:30', 3100),
('Go First', 'G8-30020', 'Goa', 'Pune', '11:50', '12:50', 3300),
('Air India', 'AI-30021', 'Goa', 'Pune', '18:00', '19:00', 3500);

-- Goa to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-30022', 'Goa', 'Ahmedabad', '07:10', '08:40', 3200),
('Vistara', 'UK-30023', 'Goa', 'Ahmedabad', '13:30', '15:00', 3400),
('SpiceJet', 'SG-30024', 'Goa', 'Ahmedabad', '19:30', '21:00', 3600);

-- Goa to Jaipur
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-30025', 'Goa', 'Jaipur', '06:50', '09:10', 3800),
('Air India', 'AI-30026', 'Goa', 'Jaipur', '12:40', '15:00', 4000),
('IndiGo', '6E-30027', 'Goa', 'Jaipur', '19:00', '21:20', 4200);





-- Jaipur to Mumbai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-31001', 'Jaipur', 'Mumbai', '06:10', '08:00', 3400),
('Go First', 'G8-31002', 'Jaipur', 'Mumbai', '12:20', '14:10', 3600),
('Air India', 'AI-31003', 'Jaipur', 'Mumbai', '18:30', '20:20', 3800);

-- Jaipur to Delhi
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-31004', 'Jaipur', 'Delhi', '07:00', '08:00', 3000),
('Vistara', 'UK-31005', 'Jaipur', 'Delhi', '13:00', '14:00', 3200),
('SpiceJet', 'SG-31006', 'Jaipur', 'Delhi', '19:00', '20:00', 3400);

-- Jaipur to Bangalore
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-31007', 'Jaipur', 'Bangalore', '06:30', '09:00', 3700),
('Air India', 'AI-31008', 'Jaipur', 'Bangalore', '12:30', '15:00', 3900),
('IndiGo', '6E-31009', 'Jaipur', 'Bangalore', '18:30', '21:00', 4100);

-- Jaipur to Hyderabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-31010', 'Jaipur', 'Hyderabad', '05:50', '08:10', 3500),
('SpiceJet', 'SG-31011', 'Jaipur', 'Hyderabad', '13:00', '15:20', 3700),
('Go First', 'G8-31012', 'Jaipur', 'Hyderabad', '19:00', '21:20', 3900);

-- Jaipur to Chennai
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Air India', 'AI-31013', 'Jaipur', 'Chennai', '07:10', '09:40', 3600),
('IndiGo', '6E-31014', 'Jaipur', 'Chennai', '13:30', '16:00', 3800),
('Vistara', 'UK-31015', 'Jaipur', 'Chennai', '20:00', '22:30', 4000);

-- Jaipur to Kolkata
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('SpiceJet', 'SG-31016', 'Jaipur', 'Kolkata', '06:00', '08:30', 4300),
('Go First', 'G8-31017', 'Jaipur', 'Kolkata', '12:30', '15:00', 4500),
('Air India', 'AI-31018', 'Jaipur', 'Kolkata', '19:00', '21:30', 4700);

-- Jaipur to Pune
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('IndiGo', '6E-31019', 'Jaipur', 'Pune', '07:20', '09:00', 3100),
('Vistara', 'UK-31020', 'Jaipur', 'Pune', '13:50', '15:30', 3300),
('SpiceJet', 'SG-31021', 'Jaipur', 'Pune', '19:20', '21:00', 3500);

-- Jaipur to Ahmedabad
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Go First', 'G8-31022', 'Jaipur', 'Ahmedabad', '06:40', '08:10', 3200),
('Air India', 'AI-31023', 'Jaipur', 'Ahmedabad', '12:40', '14:10', 3400),
('IndiGo', '6E-31024', 'Jaipur', 'Ahmedabad', '18:40', '20:10', 3600);

-- Jaipur to Goa
INSERT INTO flights (airline, flight_number, from_city, to_city, departure_time, arrival_time, price) VALUES
('Vistara', 'UK-31025', 'Jaipur', 'Goa', '07:10', '09:30', 3700),
('SpiceJet', 'SG-31026', 'Jaipur', 'Goa', '13:10', '15:30', 3900),
('Go First', 'G8-31027', 'Jaipur', 'Goa', '19:10', '21:30', 4100);
