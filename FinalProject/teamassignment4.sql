/** Aaron, Faiq, Forrest, Alec Team 03 Info-i 308 FA20*/

/* Drop tables if they exist. Add more DROP TABLE statements as you create more tables*/
/** Drop tables that use foreign keys first, then the primary keys */
DROP TABLE IF EXISTS PatientAppointment CASCADE;
DROP TABLE IF EXISTS AppointmentEmployee CASCADE;
DROP TABLE IF EXISTS ShiftSchedule CASCADE;
DROP TABLE IF EXISTS Bill CASCADE;
DROP TABLE IF EXISTS PatientPhone CASCADE;
DROP TABLE IF EXISTS DonorPhone CASCADE;
DROP TABLE IF EXISTS EmpPhone CASCADE;
DROP TABLE IF EXISTS Suppliers CASCADE;
DROP TABLE IF EXISTS MedEquipment CASCADE;
DROP TABLE IF EXISTS Room CASCADE;
DROP TABLE IF EXISTS Employee CASCADE;
DROP TABLE IF EXISTS Patient CASCADE;
DROP TABLE IF EXISTS Donor CASCADE;
DROP TABLE IF EXISTS Appointment CASCADE;
DROP TABLE IF EXISTS Department CASCADE;

/**All the create table functions */

/** Supliers */
create table Suppliers (
	supplierID INT auto_increment,
  name VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50),
  PRIMARY KEY (supplierID)
) ENGINE = innodb;

/** MedEquipment */
create table MedEquipment (
	equipmentID INT auto_increment,
	equipmentName VARCHAR(50),
	manufacturer VARCHAR(50),
	cost INT,
	quanity INT,
  PRIMARY KEY (equipmentID)
) ENGINE = innodb;

/** Employee */
create table Employee (
	empID INT auto_increment,
	firstName VARCHAR(50),
	middleName VARCHAR(50),
	lastName VARCHAR(50),
	street VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	zip INT,
	email VARCHAR(50),
	title VARCHAR(50),
	shift INT,
  PRIMARY KEY (empID)
) ENGINE = innodb;

/** Employee Phone */
create table EmpPhone (
	phone VARCHAR(50),
	type VARCHAR(50),
  empID INT,
	FOREIGN KEY (empID) REFERENCES Employee(empID)
) ENGINE = innodb;

/** Donor */
create table Donor (
	donorID INT auto_increment,
	firstName VARCHAR(50),
	middleName VARCHAR(50),
	lastName VARCHAR(50),
	street VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	zip INT,
	email VARCHAR(50),
	age INT,
	height VARCHAR(50),
	weight INT,
	donorType VARCHAR(50),
	bloodType VARCHAR(50),
  PRIMARY KEY (donorID)
) ENGINE = innodb;

/** Donor Phone */
create table DonorPhone (
	phone VARCHAR(50),
	type VARCHAR(50),
  donorID INT,
	FOREIGN KEY (donorID) REFERENCES Donor(donorID)
) ENGINE = innodb;

/** Paitent */
create table Patient (
	patientID INT auto_increment,
	firstName VARCHAR(50),
	middleName VARCHAR(50),
	lastName VARCHAR(50),
	street VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	zip INT,
	email VARCHAR(50),
	age INT,
	height VARCHAR(50),
	weight INT,
	gender VARCHAR(50),
  conditions VARCHAR(100),
  PRIMARY KEY (patientID)
) ENGINE = innodb;

/** Paitent Phone */
create table PatientPhone (
	phone VARCHAR(50),
	type VARCHAR(50),
  patientID INT,
	FOREIGN KEY (patientID) REFERENCES Patient(patientID)
) ENGINE = innodb;

/** Room */
create table Room (
	roomID INT auto_increment,
	type VARCHAR(50),
	capacity INT,
  PRIMARY KEY (roomID)
) ENGINE = innodb;

/** Department */
create table Department (
	depID INT auto_increment,
	name VARCHAR(50),
	description VARCHAR(100),
  PRIMARY KEY (depID)
) ENGINE = innodb;


/** Appointment */
create table Appointment (
	appointmentID INT auto_increment,
	type VARCHAR(50),
	date DATE,
	timeIn VARCHAR(50),
	timeOut VARCHAR(50),
  PRIMARY KEY (appointmentID)
) ENGINE = innodb;

/** AppointmentEmployee */
create table AppointmentEmployee (
  employeeName VARCHAR(50),
  empID INT,
  FOREIGN KEY (empID) REFERENCES Employee(empID)
) ENGINE = innodb;

/** PatientAppointment */
create table PatientAppointment (
  patientID INT,
  appointmentID INT,
	FOREIGN KEY (patientID) REFERENCES Patient(patientID),
  FOREIGN KEY (appointmentID) REFERENCES Appointment(appointmentID)
) ENGINE = innodb;

/** Shift Schedule */
create table ShiftSchedule (
	timeIn VARCHAR(50),
	timeOut VARCHAR(50),
  empID INT,
	FOREIGN KEY (empID) REFERENCES Employee(empID)
) ENGINE = innodb;

/** Bill */
create table Bill (
	billID INT auto_increment,
	amountPaid INT,
	date DATE,
	balance INT,
  patientID INT,
	FOREIGN Key (patientID) REFERENCES Patient(patientID),
  PRIMARY KEY (billID)
) ENGINE = innodb;

/** All the insert statements */

/** Supliers */
insert into Suppliers (supplierID, name, phone, email) values (1, 'Life Alert', '945-471-5394', 'abaggally0@lifealert.com');
insert into Suppliers (supplierID, name, phone, email) values (2, 'Jacob’s Resustiators', '566-498-1496', 'hgateman1@jacobsresusitators.edu');
insert into Suppliers (supplierID, name, phone, email) values (3, 'Medify First Aid', '157-295-6600', 'rweyland2@medify.com');
insert into Suppliers (supplierID, name, phone, email) values (4, 'Lazzy Medii', '298-551-4602', 'achaloner3@lazzy.com');
insert into Suppliers (supplierID, name, phone, email) values (5, 'Omba electronics', '377-869-6684', 'gmartineau4@omba.com');
insert into Suppliers (supplierID, name, phone, email) values (6, 'Yadel medtronics ', '805-351-0122', 'lgyppes5@yadel.com');
insert into Suppliers (supplierID, name, phone, email) values (7, 'Gabtype Labs', '436-399-7938', 'gbonsale6@gabtypelabs.com');
insert into Suppliers (supplierID, name, phone, email) values (8, 'IU South Clinic', '203-327-9918', 'hwhetson7@iu.edu');
insert into Suppliers (supplierID, name, phone, email) values (9, 'West Fort', '798-281-8389', 'wfort@java.com');
insert into Suppliers (supplierID, name, phone, email) values (10, 'Kraft', '373-371-1280', 'kraft@kraft.org');
insert into Suppliers (supplierID, name, phone, email) values (11, 'Enon Springs', '856-689-7833', 'esprings@gmail.com');
insert into Suppliers (supplierID, name, phone, email) values (12, 'Catalyst', '962-794-6394', 'ndeddumb@census.gov');
insert into Suppliers (supplierID, name, phone, email) values (13, 'Eli Lilly', '490-609-7958', 'ttaborc@elililly.com');
insert into Suppliers (supplierID, name, phone, email) values (14, 'Sony', '343-965-2058', 'dchristofed@sony.com');
insert into Suppliers (supplierID, name, phone, email) values (15, 'Microsoft', '333-242-3671', 'uarende@microsoft.com');
insert into Suppliers (supplierID, name, phone, email) values (16, 'North Carolina', '801-646-2106', 'nharryf@unc.edu');
insert into Suppliers (supplierID, name, phone, email) values (17, 'IU Health', '965-381-7358', 'sgenteryg@iu.edu');
insert into Suppliers (supplierID, name, phone, email) values (18, 'Pay Pal', '450-511-6676', 'scostah@paypal.com');
insert into Suppliers (supplierID, name, phone, email) values (19, 'General Motors', '303-565-0161', 'gmansueri@generalmotors.com');
insert into Suppliers (supplierID, name, phone, email) values (20, 'Spotify', '902-984-4136', 'roxenhamj@spotify.com');

/** MedEquipment */
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (1, 'Masks', 'Feedspan INC', 8, 10000000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (2, 'Small Gloves', 'Mulberry LLC', 1, 1000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (3, 'Medium Gloves', 'Mulberry LLC', 1, 1000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (4, 'Large Gloves', 'Mulberry LLC', 1, 1000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (5, 'Bedspread', 'Aimbu fabrics', 20, 100);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (6, 'Syringes', 'Agimba medical tools', 2, 50000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (7, 'IV Fluid', 'Aimbu Fluids inc', 500, 10000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (8, 'IV Machine', 'Avamb Medtronics', 5000, 50);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (9, 'Ambulance', 'Oyondu Motors', 200420, 25);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (10, 'Surgeon tool', 'Vitners', 15, 1000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (11, 'Cast', 'Minyx', 200, 5000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (12, 'Socket holder', 'Quimm', 50, 5000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (13, 'Wheelchair', 'He', 500, 500);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (14, 'Crutches', 'Swing LLC', 150, 1000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (15, 'Stretcher', 'Muscle INC', 5000, 1000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (16, 'Blood identifier', 'Pure LLC', 100, 100);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (17, 'Morphine', 'Pure LLC', 100, 10000);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (18, 'X-ray' , 'Jax Medics', 1000, 25);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (19, 'knee brace', 'Linklinks', 100, 500);
insert into MedEquipment (equipmentID, equipmentName, manufacturer, cost, quanity) values (20, 'MRI scanNER', 'Middle Medics', 1000000, 15);

/** Employee */
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (1, 'Edith', 'Valentine', 'Dilnot', '37 Thompson Drive', 'Denton', 'TX', 11805, 'vdilnot0@msn.com', 'Nurse', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (2, 'Leticia', 'Delmor', 'Iffe', '64561 Briar Crest Street', 'Milwaukee', 'WI', 44923, 'diffe1@apple.com', 'Esthetician', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (3, 'Gabriello', 'Dex', 'Fetherby', '9 8th Point', 'Lancaster', 'PA', 23039, 'dfetherby2@cbslocal.com', 'ER Supervisor', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (4, 'Osbourne', 'Reggi', 'Rideout', '930 Schurz Avenue', 'New Orleans', 'LA', 32846, 'rrideout3@vimeo.com', 'Gift Shop Manager', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (5, 'Nissy', 'Ruthe', 'Norridge', '49 Northview Circle', 'Huntington', 'WV', 21709, 'rnorridge4@simplemachines.org', 'Nurse Practitioner', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (6, 'Tracey', 'Mimi', 'Frodsam', '1 Schurz Lane', 'Hayward', 'CA', 18831, 'mfrodsam5@webs.com', 'Gift Shop Specialist', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (7, 'Gwendolen', 'Shane', 'Grason', '3713 Schmedeman Road', 'Greensboro', 'NC', 34540, 'sgrason6@abc.net.au', 'Physical Therapy Assistant', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (8, 'Orelle', 'Hadrian', 'Stubbings', '471 Lotheville Center', 'Eugene', 'OR', 38479, 'hstubbings7@chron.com', 'Legal Advisor', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (9, 'Rae', 'Claribel', 'Whitaker', '4684 Dahle Pass', 'Chicago', 'IL', 67865, 'cwhitaker8@princeton.edu', 'Accounts Executive', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (10, 'Trumaine', 'Rozalie', 'Cleugh', '47 Cascade Court', 'Whittier', 'CA', 84080, 'rcleugh9@sogou.com', 'Payroll Coordinator', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (11, 'Kristian', 'Douglass', 'Rodder', '94 Sherman Street', 'Boston', 'MA', 63339, 'droddera@storify.com', 'System Administrator', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (12, 'Jobyna', 'Rania', 'Boule', '99 Utah Pass', 'Mount Vernon', 'NY', 57401, 'rbouleb@devhub.com', 'Information Systems Manager', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (13, 'Rhoda', 'Pauly', 'Bullman', '7483 Eastlawn Terrace', 'Orange', 'CA', 17591, 'pbullmanc@utexas.edu', 'Nurse', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (14, 'Sher', 'Julius', 'Duckworth', '726 Old Gate Parkway', 'Burbank', 'CA', 62823, 'jduckworthd@utexas.edu', 'Gynecologist', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (15, 'Lou', 'Ainslee', 'Easter', '03 Michigan Court', 'Spokane', 'WA', 81491, 'aeastere@seesaa.net', 'Custodian', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (16, 'Ruddie', 'Ingeborg', 'Jedrychowski', '8 Boyd Hill', 'Topeka', 'KS', 56367, 'ijedrychowskif@webs.com', 'Cafeteria server', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (17, 'Ginevra', 'Shea', 'Hinksen', '036 Bay Plaza', 'Wichita', 'KS', 10791, 'shinkseng@salon.com', 'Cafeteria manager', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (18, 'Helyn', 'Sanson', 'Probey', '36 Colorado Plaza', 'Philadelphia', 'PA', 26832, 'sprobeyh@omniture.com', 'Cafeteria server', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (19, 'Fan', 'Carolin', 'Riall', '216 Eliot Pass', 'Roanoke', 'VA', 66352, 'crialli@hugedomains.com', 'Cafeteria server', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (20, 'Cicely', 'Taylor', 'Giannazzo', '4155 Clarendon Avenue', 'Chattanooga', 'TN', 72215, 'tgiannazzoj@archive.org', 'Social Worker', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (21, 'Caleb', 'Willy', 'Chanders', '586 Miller Avenue', 'Columbus', 'OH', 62518, 'wchandersk@slideshare.net', 'Resident Assistant', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (22, 'Krispin', 'Jaymee', 'Kernocke', '83 Sage Parkway', 'Washington', 'DC', 54029, 'jkernockel@imdb.com', 'Internal Auditor', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (23, 'Bernette', 'Giuseppe', 'Chillistone', '8231 Glacier Hill Crossing', 'Houston', 'TX', 90614, 'gchillistonem@state.gov', 'Pediatrician', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (24, 'Marlie', 'Bobby', 'Lenaghen', '6568 Del Sol Pass', 'Richmond', 'VA', 20494, 'blenaghenn@ucsd.edu', 'Oncologist', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (25, 'Kiley', 'Bernette', 'Pembery', '7720 Lake View Parkway', 'Tallahassee', 'FL', 45942, 'bpemberyo@europa.eu', 'Chief Executive Officer', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (26, 'Theodosia', 'Heath', 'Varfolomeev', '8829 Parkside Parkway', 'Scottsdale', 'AZ', 63507, 'hvarfolomeevp@cam.ac.uk', 'EMT', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (27, 'Cleon', 'Bettina', 'Withnall', '5 Eliot Crossing', 'Honolulu', 'HI', 92766, 'bwithnallq@angelfire.com', 'EMT', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (28, 'Anne', 'Carmelina', 'Playle', '80 Atwood Alley', 'Daytona Beach', 'FL', 52907, 'cplayler@wp.com', 'EMT', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (29, 'Orsola', 'Ward', 'Sandon', '393 Kenwood Junction', 'Manassas', 'VA', 58654, 'wsandons@linkedin.com', 'ER Nurse', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (30, 'Ebenezer', 'Mag', 'Sherwen', '4 Thompson Hill', 'Portland', 'OR', 91382, 'msherwent@weebly.com', 'ER Doctor', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (31, 'Francoise', 'Lorena', 'Gerred', '11610 Vernon Street', 'Joliet', 'IL', 48509, 'lgerredu@huffingtonpost.com', 'Maintenance Supervisor', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (32, 'Elfie', 'Dillie', 'Guage', '0488 Springview Lane', 'El Paso', 'TX', 15594, 'dguagev@newsvine.com', 'Secretary', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (33, 'Rosalind', 'Lindsey', 'Hedling', '25 Cascade Terrace', 'Silver Spring', 'MD', 61265, 'lhedlingw@uol.com.br', 'Help Desk Operator', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (34, 'Kale', 'Anthiathia', 'Loveredge', '258 Linden Plaza', 'San Antonio', 'TX', 65152, 'aloveredgex@cyberchimps.com', 'BIohazard nurse', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (35, 'Pavlov', 'Selena', 'Dakhov', '51 Bunting Junction', 'Los Angeles', 'CA', 32313, 'sdakhovy@tinypic.com', 'Maintenance Staff', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (36, 'Wesley', 'Kenton', 'Fahrenbacher', '150 Derek Lane', 'El Paso', 'TX', 21499, 'kfahrenbacherz@dedecms.com', 'Medical Intern', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (37, 'Smitty', 'Alanson', 'Eubank', '2929 Northwestern Way', 'Bridgeport', 'CT', 26977, 'aeubank10@amazon.co.jp', 'MRI Specialist', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (38, 'Magdalene', 'Merna', 'Davidesco', '625 Jana Hill', 'Houston', 'TX', 65110, 'mdavidesco11@twitpic.com', 'X Ray Developer II', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (39, 'Fleur', 'Gretal', 'MacTeague', '81 Towne Plaza', 'Monticello', 'MN', 91467, 'gmacteague12@reddit.com', 'Doctors Assistant', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (40, 'Jennette', 'Erin', 'Shears', '39 Lunder Park', 'Tampa', 'FL', 41144, 'eshears13@cnbc.com', 'Nurse', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (41, 'Virge', 'Charmaine', 'Newlands', '7 Kenwood Way', 'Newark', 'DE', 26241, 'cnewlands14@diigo.com', 'Janitor', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (42, 'Kiele', 'Lila', 'Stonman', '488 Coolidge Alley', 'Stockton', 'CA', 76660, 'lstonman15@taobao.com', 'Security', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (43, 'Lefty', 'Lek', 'Knapman', '02154 Fordem Way', 'Portland', 'OR', 10216, 'lknapman16@vimeo.com', 'Tool cleaner', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (44, 'Diarmid', 'Thaxter', 'Prestige', '69 Nobel Road', 'San Jose', 'CA', 88420, 'tprestige17@biglobe.ne.jp', 'Bone specialist', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (45, 'Alonzo', 'Danni', 'Whitmore', '96 New Castle Street', 'San Francisco', 'CA', 48817, 'dwhitmore18@rambler.ru', 'Medical Systems Engineer', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (46, 'Saunder', 'Katharine', 'Belk', '7816 Russell Way', 'Fort Worth', 'TX', 95456, 'kbelk19@illinois.edu', 'Medical Engineer', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (47, 'Christen', 'Toby', 'Gregori', '64 Norway Maple Trail', 'Denver', 'CO', 24422, 'tgregori1a@nyu.edu', 'Medical Intern', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (48, 'Charley', 'Phylis', 'McWhan', '5194 Dawn Pass', 'Columbus', 'OH', 54420, 'pmcwhan1b@reference.com', 'Janitor', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (49, 'Jonathon', 'Fenelia', 'Pendlebery', '0253 Esch Pass', 'Rochester', 'NY', 72312, 'fpendlebery1c@netvibes.com', 'Doctors Assistant', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (50, 'Elinor', 'Terrance', 'Carloni', '53042 Declaration Point', 'Fresno', 'CA', 59844, 'tcarloni1d@cnbc.com', 'Pharmacist', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (51, 'Wilfred', 'Carol', 'Janaszkiewicz', '1278 Briar Crest Street', 'Saint Petersburg', 'FL', 34929, 'cjanaszkiewicz1e@spiegel.de', 'Pharmacist Assistant', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (52, 'Edita', 'Darleen', 'Walsham', '81524 Corben Terrace', 'Albany', 'GA', 91614, 'dwalsham1f@t-online.de', 'Physician', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (53, 'Norine', 'Garfield', 'Galpen', '8732 Melody Crossing', 'Raleigh', 'NC', 73898, 'ggalpen1g@trellian.com', 'Physician Assistant', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (54, 'Joella', 'Graehme', 'Crutchley', '2 Nova Avenue', 'San Francisco', 'CA', 56394, 'gcrutchley1h@dion.ne.jp', 'Medical System Technician', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (55, 'Kakalina', 'Collete', 'Bassford', '3587 Porter Point', 'Pensacola', 'FL', 37752, 'cbassford1i@shareasale.com', 'Health Service Manager', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (56, 'Georgianna', 'Lenee', 'Lyver', '8 Cody Point', 'Toledo', 'OH', 34560, 'llyver1j@ehow.com', 'Surgeon Assistant', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (57, 'Kathlin', 'Ursuline', 'Blackney', '75228 Eastwood Alley', 'Orlando', 'FL', 40065, 'ublackney1k@canalblog.com', 'Optometrists', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (58, 'Julianna', 'Kasper', 'Bestman', '3965 Mockingbird Plaza', 'Boston', 'MA', 27276, 'kbestman1l@usnews.com', 'MRI Technologists', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (59, 'Carmelita', 'Dael', 'Treske', '05696 Marcy Plaza', 'El Paso', 'TX', 27380, 'dtreske1m@sourceforge.net', 'X Ray Photo Developer', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (60, 'Marcos', 'Adoree', 'Yurchishin', '362 Mallory Point', 'San Diego', 'CA', 45711, 'ayurchishin1n@ehow.com', 'X Ray Technologists', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (61, 'Afton', 'Gelya', 'Botha', '2775 Corben Road', 'Charleston', 'WV', 34776, 'gbotha1o@wiley.com', 'Respiratory therapists', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (62, 'Cary', 'Matti', 'Timblett', '6 Packers Center', 'Norfolk', 'VA', 18464, 'mtimblett1p@reuters.com', 'Bionic Medical Engineer', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (63, 'Mattias', 'Carmelle', 'O''Dunneen', '767 Iowa Hill', 'Boulder', 'CO', 49360, 'codunneen1q@smh.com.au', 'Therapist', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (64, 'Noella', 'Harri', 'Neill', '553 Harbort Trail', 'Port Charlotte', 'FL', 92247, 'hneill1r@sakura.ne.jp', 'Translator', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (65, 'Joy', 'Linnell', 'Langridge', '86391 Florence Place', 'Jackson', 'MS', 20969, 'llangridge1s@g.co', 'Counselor', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (66, 'Dory', 'Garvey', 'Beams', '94031 Aberg Park', 'Jefferson City', 'MO', 93216, 'gbeams1t@yahoo.co.jp', 'Hospital Executive', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (67, 'Zelma', 'Arman', 'Bleything', '0555 Killdeer Trail', 'Wichita', 'KS', 21507, 'ableything1u@dmoz.org', 'Chief Technical Officer', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (68, 'Amery', 'Moshe', 'O''Shields', '2 Duke Alley', 'Hayward', 'CA', 20190, 'moshields1v@time.com', 'Chief Financial Officer', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (69, 'Joleen', 'Yolanda', 'Skeels', '0782 Glacier Hill Road', 'Saint Louis', 'MO', 34603, 'yskeels1w@pcworld.com', 'Chief Marketing Officer', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (70, 'Shelden', 'Marcelo', 'Reckless', '0 Pearson Point', 'Raleigh', 'NC', 45271, 'mreckless1x@uiuc.edu', 'Philanthropy funds manager', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (71, 'Wayne', 'Rockwell', 'Allsobrook', '12 Duke Center', 'Raleigh', 'NC', 78693, 'rallsobrook1y@rakuten.co.jp', 'DIshwasher - Cafeteria', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (72, 'Abbey', 'Thornton', 'MacGow', '08172 Monument Center', 'Baltimore', 'MD', 58223, 'tmacgow1z@hud.gov', 'Nurse', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (73, 'Meghan', 'Steffi', 'Berrill', '8017 2nd Terrace', 'Charlotte', 'NC', 12985, 'sberrill20@unc.edu', 'Security Officer', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (74, 'Buddie', 'Robinet', 'Rhodes', '784 Browning Lane', 'Houston', 'TX', 83016, 'rrhodes21@vk.com', 'Security Officer', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (75, 'Shaine', 'Sibby', 'Botton', '1 Tennyson Court', 'Fresno', 'CA', 41394, 'sbotton22@google.nl', 'Security Officer', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (76, 'Lin', 'Grethel', 'Vanichev', '24528 Continental Hill', 'Roanoke', 'VA', 84783, 'gvanichev23@devhub.com', 'Occupational Therapist', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (77, 'Leona', 'Karlotta', 'Gallelli', '5 Division Park', 'San Francisco', 'CA', 32896, 'kgallelli24@telegraph.co.uk', 'Security Manager', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (78, 'Dorette', 'Laure', 'Kemston', '44280 Johnson Street', 'Washington', 'DC', 61392, 'lkemston25@examiner.com', 'Insurance Coordinator', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (79, 'Bennie', 'Blisse', 'Petlyura', '5609 Karstens Road', 'Melbourne', 'FL', 83438, 'bpetlyura26@un.org', 'Nurse', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (80, 'Saleem', 'Faythe', 'Finlay', '06 Melrose Circle', 'Denver', 'CO', 24156, 'ffinlay27@berkeley.edu', 'Pharmacy Assistant', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (81, 'Estella', 'Gisella', 'Moyle', '2060 Sunbrook Lane', 'Syracuse', 'NY', 48164, 'gmoyle28@aboutads.info', 'Pharmacy Assistant', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (82, 'Nonnah', 'Ezra', 'Josebury', '61426 Stoughton Road', 'Lexington', 'KY', 90649, 'ejosebury29@imdb.com', 'Pharmacy Assistant', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (83, 'Jodie', 'Evania', 'Culleford', '20891 Lien Lane', 'San Bernardino', 'CA', 69988, 'eculleford2a@vimeo.com', 'Pharmacy Assistant', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (84, 'Penn', 'Theresita', 'Biddwell', '196 Sullivan Hill', 'Cleveland', 'OH', 35214, 'tbiddwell2b@bandcamp.com', 'Physical Therapy Assistant', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (85, 'Aylmer', 'Ray', 'Fronks', '2030 Westridge Lane', 'Saint Paul', 'MN', 66916, 'rfronks2c@wired.com', 'Pharmacist Tech', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (86, 'Bradan', 'Trumaine', 'Beneteau', '638 1st Court', 'Chattanooga', 'TN', 59019, 'tbeneteau2d@psu.edu', 'Secretary to CEO', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (87, 'Ninnetta', 'Nani', 'Ridd', '857 Macpherson Circle', 'Irvine', 'CA', 45039, 'nridd2e@networksolutions.com', 'Legal Assistant', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (88, 'Delmor', 'Babbie', 'Cumberledge', '66 Bay Way', 'Sacramento', 'CA', 45822, 'bcumberledge2f@bloglines.com', 'Health Coach II', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (89, 'Bar', 'Torrence', 'Witchell', '8864 Ohio Park', 'El Paso', 'TX', 12233, 'twitchell2g@blogspot.com', 'Nurse', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (90, 'Granville', 'Nicole', 'Gillum', '01911 Park Meadow Center', 'Chula Vista', 'CA', 73388, 'ngillum2h@histats.com', 'EPIC System engineer', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (91, 'Calida', 'Nariko', 'Glasgow', '6376 Trailsway Pass', 'Billings', 'MT', 97600, 'nglasgow2i@irs.gov', 'Speech Pathologist', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (92, 'Aurilia', 'Lawry', 'Sawers', '08 Bultman Street', 'Torrance', 'CA', 99735, 'lsawers2j@squidoo.com', 'Custodian', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (93, 'Wyndham', 'Dasie', 'Harlett', '4 Heffernan Alley', 'San Diego', 'CA', 97612, 'dharlett2k@wisc.edu', 'Social Worker', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (94, 'Madge', 'Brett', 'McCaw', '9 Corben Crossing', 'Minneapolis', 'MN', 33156, 'bmccaw2l@bing.com', 'Human Resources Manager', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (95, 'Marlyn', 'Ransell', 'Martusewicz', '8 Glacier Hill Avenue', 'Pompano Beach', 'FL', 91768, 'rmartusewicz2m@booking.com', 'Human Resources Assistant', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (96, 'Nealy', 'Mella', 'Speaks', '1 Thompson Parkway', 'Mobile', 'AL', 43069, 'mspeaks2n@flavors.me', 'Internal Medicine Doctor', 1);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (97, 'Rhianna', 'Parke', 'Wathey', '709 Nobel Place', 'Albany', 'NY', 62764, 'pwathey2o@furl.net', 'Nefrologist', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (98, 'Heloise', 'Otis', 'Nortunen', '6 Fallview Pass', 'Boise', 'ID', 58972, 'onortunen2p@google.nl', 'Urologist', 2);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (99, 'Harry', 'Eirena', 'Whiteford', '04 Mosinee Terrace', 'Des Moines', 'IA', 10049, 'ewhiteford2q@slideshare.net', 'Social Worker', 3);
insert into Employee (empID, firstName, middleName, lastName, street, city, state, zip, email, title, shift) values (100, 'Devi', 'Lynnet', 'De Courtney', '4 Saint Paul Center', 'Columbia', 'SC', 14013, 'ldecourtney2r@hp.com', 'Clinical Researcher', 3);


/** Emp Phone */
insert into EmpPhone (phone, type, empID) values ('628-132-3855', 'Home', 1);
insert into EmpPhone (phone, type, empID) values ('837-852-2146', 'Work', 2);
insert into EmpPhone (phone, type, empID) values ('255-549-8721', 'Work', 3);
insert into EmpPhone (phone, type, empID) values ('103-468-8612', 'Home', 4);
insert into EmpPhone (phone, type, empID) values ('345-526-5455', 'Work', 5);
insert into EmpPhone (phone, type, empID) values ('292-676-8564', 'Home', 6);
insert into EmpPhone (phone, type, empID) values ('802-446-3337', 'Work', 7);
insert into EmpPhone (phone, type, empID) values ('283-650-9585', 'Home', 8);
insert into EmpPhone (phone, type, empID) values ('354-450-5286', 'Work', 9);
insert into EmpPhone (phone, type, empID) values ('295-828-9185', 'Work', 10);
insert into EmpPhone (phone, type, empID) values ('193-468-7718', 'Work', 11);
insert into EmpPhone (phone, type, empID) values ('780-524-8631', 'Home', 12);
insert into EmpPhone (phone, type, empID) values ('307-751-7244', 'Work', 13);
insert into EmpPhone (phone, type, empID) values ('309-856-3818', 'Home', 14);
insert into EmpPhone (phone, type, empID) values ('814-123-7354', 'Home', 15);
insert into EmpPhone (phone, type, empID) values ('414-545-9273', 'Home', 16);
insert into EmpPhone (phone, type, empID) values ('911-723-8003', 'Home', 17);
insert into EmpPhone (phone, type, empID) values ('906-820-2677', 'Work', 18);
insert into EmpPhone (phone, type, empID) values ('178-919-8644', 'Home', 19);
insert into EmpPhone (phone, type, empID) values ('187-139-3706', 'Home', 20);
insert into EmpPhone (phone, type, empID) values ('242-754-6187', 'Work', 21);
insert into EmpPhone (phone, type, empID) values ('793-600-9435', 'Work', 22);
insert into EmpPhone (phone, type, empID) values ('179-971-7605', 'Work', 23);
insert into EmpPhone (phone, type, empID) values ('167-511-3644', 'Home', 24);
insert into EmpPhone (phone, type, empID) values ('179-415-3951', 'Home', 25);
insert into EmpPhone (phone, type, empID) values ('733-604-4796', 'Home', 26);
insert into EmpPhone (phone, type, empID) values ('831-914-9048', 'Home', 27);
insert into EmpPhone (phone, type, empID) values ('208-341-9192', 'Home', 28);
insert into EmpPhone (phone, type, empID) values ('457-565-6767', 'Home', 29);
insert into EmpPhone (phone, type, empID) values ('377-170-9841', 'Home', 30);
insert into EmpPhone (phone, type, empID) values ('237-875-2898', 'Home', 31);
insert into EmpPhone (phone, type, empID) values ('374-339-6908', 'Home', 32);
insert into EmpPhone (phone, type, empID) values ('297-616-7423', 'Home', 33);
insert into EmpPhone (phone, type, empID) values ('115-659-6531', 'Home', 34);
insert into EmpPhone (phone, type, empID) values ('655-882-5898', 'Home', 35);
insert into EmpPhone (phone, type, empID) values ('296-563-3280', 'Work', 36);
insert into EmpPhone (phone, type, empID) values ('788-214-8448', 'Work', 37);
insert into EmpPhone (phone, type, empID) values ('399-366-5363', 'Work', 38);
insert into EmpPhone (phone, type, empID) values ('467-114-2237', 'Home', 39);
insert into EmpPhone (phone, type, empID) values ('448-697-7645', 'Work', 40);
insert into EmpPhone (phone, type, empID) values ('810-409-8931', 'Work', 41);
insert into EmpPhone (phone, type, empID) values ('552-161-5306', 'Work', 42);
insert into EmpPhone (phone, type, empID) values ('738-244-1504', 'Work', 43);
insert into EmpPhone (phone, type, empID) values ('105-624-8527', 'Home', 44);
insert into EmpPhone (phone, type, empID) values ('131-681-5317', 'Work', 45);
insert into EmpPhone (phone, type, empID) values ('199-336-4072', 'Work', 46);
insert into EmpPhone (phone, type, empID) values ('764-137-2855', 'Home', 47);
insert into EmpPhone (phone, type, empID) values ('920-489-9480', 'Home', 48);
insert into EmpPhone (phone, type, empID) values ('302-865-8895', 'Work', 49);
insert into EmpPhone (phone, type, empID) values ('535-986-6070', 'Home', 50);
insert into EmpPhone (phone, type, empID) values ('883-164-1124', 'Work', 51);
insert into EmpPhone (phone, type, empID) values ('912-694-6793', 'Work', 52);
insert into EmpPhone (phone, type, empID) values ('960-614-9085', 'Work', 53);
insert into EmpPhone (phone, type, empID) values ('339-359-2908', 'Home', 54);
insert into EmpPhone (phone, type, empID) values ('753-148-1521', 'Home', 55);
insert into EmpPhone (phone, type, empID) values ('541-878-3103', 'Work', 56);
insert into EmpPhone (phone, type, empID) values ('575-757-7674', 'Work', 57);
insert into EmpPhone (phone, type, empID) values ('514-525-9505', 'Home', 58);
insert into EmpPhone (phone, type, empID) values ('576-518-6671', 'Work', 59);
insert into EmpPhone (phone, type, empID) values ('819-138-5787', 'Work', 60);
insert into EmpPhone (phone, type, empID) values ('241-882-3141', 'Home', 61);
insert into EmpPhone (phone, type, empID) values ('761-654-9051', 'Home', 62);
insert into EmpPhone (phone, type, empID) values ('992-237-3973', 'Work', 63);
insert into EmpPhone (phone, type, empID) values ('361-808-3804', 'Home', 64);
insert into EmpPhone (phone, type, empID) values ('286-973-5780', 'Work', 65);
insert into EmpPhone (phone, type, empID) values ('820-682-4360', 'Work', 66);
insert into EmpPhone (phone, type, empID) values ('434-133-2144', 'Home', 67);
insert into EmpPhone (phone, type, empID) values ('664-947-6916', 'Work', 68);
insert into EmpPhone (phone, type, empID) values ('379-705-1987', 'Work', 69);
insert into EmpPhone (phone, type, empID) values ('626-157-2919', 'Home', 70);
insert into EmpPhone (phone, type, empID) values ('282-882-7468', 'Home', 71);
insert into EmpPhone (phone, type, empID) values ('978-237-7344', 'Work', 72);
insert into EmpPhone (phone, type, empID) values ('364-318-5120', 'Home', 73);
insert into EmpPhone (phone, type, empID) values ('236-345-4637', 'Work', 74);
insert into EmpPhone (phone, type, empID) values ('806-788-1012', 'Home', 75);
insert into EmpPhone (phone, type, empID) values ('475-335-7027', 'Work', 76);
insert into EmpPhone (phone, type, empID) values ('939-461-0004', 'Work', 77);
insert into EmpPhone (phone, type, empID) values ('289-369-5663', 'Work', 78);
insert into EmpPhone (phone, type, empID) values ('525-295-9332', 'Home', 79);
insert into EmpPhone (phone, type, empID) values ('177-126-7026', 'Work', 80);
insert into EmpPhone (phone, type, empID) values ('478-756-0607', 'Home', 81);
insert into EmpPhone (phone, type, empID) values ('106-554-6943', 'Work', 82);
insert into EmpPhone (phone, type, empID) values ('967-467-7077', 'Home', 83);
insert into EmpPhone (phone, type, empID) values ('197-708-2182', 'Home', 84);
insert into EmpPhone (phone, type, empID) values ('504-411-0577', 'Home', 85);
insert into EmpPhone (phone, type, empID) values ('722-657-6947', 'Work', 86);
insert into EmpPhone (phone, type, empID) values ('309-396-3676', 'Work', 87);
insert into EmpPhone (phone, type, empID) values ('148-606-2540', 'Work', 88);
insert into EmpPhone (phone, type, empID) values ('555-629-2716', 'Work', 89);
insert into EmpPhone (phone, type, empID) values ('133-809-7641', 'Home', 90);
insert into EmpPhone (phone, type, empID) values ('235-774-1706', 'Home', 91);
insert into EmpPhone (phone, type, empID) values ('835-561-9888', 'Home', 92);
insert into EmpPhone (phone, type, empID) values ('201-712-4838', 'Home', 93);
insert into EmpPhone (phone, type, empID) values ('334-237-9835', 'Work', 94);
insert into EmpPhone (phone, type, empID) values ('610-576-5219', 'Work', 95);
insert into EmpPhone (phone, type, empID) values ('490-124-2086', 'Home', 96);
insert into EmpPhone (phone, type, empID) values ('172-972-2892', 'Work', 97);
insert into EmpPhone (phone, type, empID) values ('516-291-7861', 'Home', 98);
insert into EmpPhone (phone, type, empID) values ('281-478-0834', 'Work', 99);
insert into EmpPhone (phone, type, empID) values ('866-172-5187', 'Home', 100);

/** Donor */
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (1, 'Chastity', 'Ana', 'Ennor', '9585 Sutteridge Street', 'Fort Worth', 'TX', 57175, 'aennor0@last.fm', 46, '58', 293, 'Blood', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (2, 'Ali', 'Ainslie', 'Boullin', '16 Nancy Crossing', 'Great Neck', 'NY', 40704, 'aboullin1@vimeo.com', 51, '69', 231, 'Organ', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (3, 'Muriel', 'Julieta', 'Piatti', '20 Nancy Parkway', 'Lynn', 'MA', 24690, 'jpiatti2@scribd.com', 71, '58', 275, 'Blood', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (4, 'Querida', 'Korie', 'MacGahy', '972 Dorton Junction', 'Amarillo', 'TX', 77844, 'kmacgahy3@shinystat.com', 36, '54', 136, 'Plasma', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (5, 'Arly', 'Devinne', 'Node', '903 Hauk Road', 'Omaha', 'NE', 83091, 'dnode4@ning.com', 47, '58', 123, 'Liver', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (6, 'Darrelle', 'Flore', 'Portal', '58632 Service Circle', 'Corpus Christi', 'TX', 21195, 'fpordal5@odnoklassniki.ru', 57, '58', 122, 'Kidney', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (7, 'Guthry', 'Fin', 'Rubenfeld', '6406 Chive Lane', 'Greensboro', 'NC', 34830, 'frubenfeld6@homestead.com', 64, '99', 280, 'Kidney', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (8, 'Tam', 'Milton', 'Arrigo', '76 4th Avenue', 'Phoenix', 'AZ', 39398, 'marrigo7@github.io', 39, '46', 161, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (9, 'Benny', 'Ardys', 'Hush', '246 Judy Street', 'Chattanooga', 'TN', 40600, 'ahush8@intel.com', 60, '35', 208, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (10, 'Budd', 'Vittorio', 'Jakubczyk', '67 Everett Lane', 'Cincinnati', 'OH', 29304, 'vjakubczyk9@sciencedirect.com', 31, '69', 194, 'Blood', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (11, 'Gwenneth', 'Merrily', 'Pirri', '62 Cambridge Center', 'Miami', 'FL', 87159, 'mpirria@hhs.gov', 41, '45', 116, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (12, 'Donalt', 'Sal', 'Noah', '64 Quincy Avenue', 'Boynton Beach', 'FL', 98577, 'snoahb@tuttocitta.it', 46, '45', 301, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (13, 'Mariejeanne', 'Rozalie', 'Ramsdale', '9 Kennedy Drive', 'Saint Paul', 'MN', 51709, 'rramsdalec@jigsy.com', 72, '44', 105, 'Blood', 'AB-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (14, 'Sibley', 'Cherice', 'Ghion', '3 Monica Lane', 'San Luis Obispo', 'CA', 78608, 'cghiond@mlb.com', 75, '58', 109, 'Blood', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (15, 'Evey', 'Christi', 'Lanbertoni', '71 Portage Crossing', 'San Diego', 'CA', 60838, 'clanbertonie@shareasale.com', 29, '58', 149, 'Blood', '58');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (16, 'Sergeant', 'Munmro', 'Hayhurst', '9 Corben Terrace', 'Kansas City', 'MO', 31675, 'mhayhurstf@vimeo.com', 54, '69', 105, 'Blood', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (17, 'Darcey', 'Lonni', 'Ramble', '059 Mitchell Terrace', 'Fort Wayne', 'IN', 60593, 'lrambleg@scientificamerican.com', 66, '58', 206, 'Blood', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (18, 'Britta', 'Winnie', 'McGinty', '7575 Westend Trail', 'Norfolk', 'VA', 63765, 'wmcgintyh@cisco.com', 45, '66', 232, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (19, 'Ross', 'Alain', 'Gossipin', '46 Merrick Trail', 'Harrisburg', 'PA', 29094, 'agossipini@themeforest.net', 26, '46', 266, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (20, 'Fanchette', 'Issy', 'Riggert', '43 Marquette Lane', 'Oklahoma City', 'OK', 83025, 'iriggertj@house.gov', 57, '58', 199, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (21, 'Bartel', 'Fields', 'Phelipeau', '56982 Loeprich Point', 'Houston', 'TX', 37624, 'fphelipeauk@phoca.cz', 78, '58', 168, 'Blood', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (22, 'Maria', 'Glennis', 'Bizzey', '48 Sommers Center', 'Alexandria', 'VA', 51902, 'gbizzeyl@google.co.uk', 28, '34', 297, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (23, 'Benita', 'Gilligan', 'Hardiker', '48554 Browning Way', 'Warren', 'OH', 83935, 'ghardikerm@rakuten.co.jp', 46, '69', 209, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (24, 'Darice', 'Dana', 'Wale', '0 Lerdahl Park', 'Honolulu', 'HI', 63501, 'dwalen@examiner.com', 47, '69', 290, 'Blood', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (25, 'Karl', 'Avram', 'Grece', '69482 Shelley Lane', 'Dallas', 'TX', 32295, 'agreceo@sogou.com', 43, '61', 284, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (26, 'Sadella', 'Trudy', 'Dobson', '08 Muir Crossing', 'Santa Barbara', 'CA', 82265, 'tdobsonp@sfgate.com', 70, '68', 194, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (27, 'Grissel', 'Mable', 'Coot', '24787 Bultman Trail', 'Athens', 'GA', 33261, 'mcootq@list-manage.com', 32, '58', 105, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (28, 'Cara', 'Truda', 'Corker', '642 Pine View Plaza', 'Madison', 'WI', 41779, 'tcorkerr@comsenz.com', 57, '34', 303, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (29, 'Renard', 'Simone', 'Steadman', '18738 High Crossing Court', 'Houston', 'TX', 68272, 'ssteadmans@eventbrite.com', 44, '58', 297, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (30, 'Winne', 'Bekki', 'Brickhill', '35351 Hanover Junction', 'Tampa', 'FL', 69601, 'bbrickhillt@earthlink.net', 54, '53', 268, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (31, 'Brady', 'Ive', 'Huguet', '2074 1st Terrace', 'Shreveport', 'LA', 94515, 'ihuguetu@soundcloud.com', 74, '58', 294, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (32, 'Dulcinea', 'Goldie', 'Simon', '03962 Chive Terrace', 'Phoenix', 'AZ', 24214, 'gsimoniv@vistaprint.com', 38, '69',  '188', 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (33, 'Brit', 'Chastity', 'Grisedale', '734 Stuart Street', 'Minneapolis', 'MN', 20505, 'cgrisedalew@earthlink.net', 66, '58', 205, 'Blood', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (34, 'Glenda', 'Shelley', 'Idwal Evans', '75 Spenser Lane', 'Toledo', 'OH', 69287, 'sidwalevansx@twitpic.com', 37, '88', 160, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (35, 'Pascal', 'Valdemar', 'Attwooll', '59386 Springs Street', 'Canton', 'OH', 10132, 'vattwoolly@unesco.org', 60, '64', 279, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (36, 'Sherwynd', 'Adrian', 'Duling', '906 Ryan Point', 'Olympia', 'WA', 80818, 'adulingz@technorati.com', 45, '69', 319, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (37, 'Laurence', 'Cliff', 'Mabone', '0381 East Hill', 'Long Beach', 'CA', 64304, 'cmabone10@last.fm', 75, '54', 316, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (38, 'Lynne', 'Viv', 'McGeachie', '2 Reinke Terrace', 'Lawrenceville', 'GA', 41875, 'vmcgeachie11@marketwatch.com', 75, '66', 260, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (39, 'Regen', 'Leland', 'McKellen', '086 Loeprich Junction', 'Lakeland', 'FL', 18860, 'lmckellen12@myspace.com', 51, '54', 289, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (40, 'Burty', 'Dorie', 'Tall', '05093 Holmberg Avenue', 'Las Vegas', 'NV', 72920, 'dtall13@microsoft.com', 24, '58', 114, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (41, 'Gayle', 'Carolynn', 'Guihen', '41754 Rockefeller Lane', 'Des Moines', 'IA', 88901, 'cguihen14@google.cn', 27, '58', 185, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (42, 'Rosy', 'Lanie', 'Balma', '2 Eagle Crest Trail', 'Terre Haute', 'IN', 28052, 'lbalma15@yahoo.co.jp', 38, '46', 169, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (43, 'Mar', 'Giraud', 'Chrystal', '42630 Bay Point', 'San Jose', 'CA', 18083, 'gchrystal16@youtu.be', 61, '74', 179, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (44, 'Jacquie', 'Dorree', 'Legonidec', '8018 Garrison Road', 'Houston', 'TX', 29031, 'dlegonidec17@bravesites.com', 59, '34', 345, 'Blood', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (45, 'Harwell', 'Bondy', 'Idale', '893 Superior Terrace', 'Metairie', 'LA', 90807, 'bidale18@newyorker.com', 64, '45', 109, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (46, 'Adore', 'Bobby', 'Brightling', '9 Gina Circle', 'Minneapolis', 'MN', 52163, 'bbrightling19@biglobe.ne.jp', 54, '58', 157, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (47, 'Ailbert', 'Jarvis', 'Rays', '2013 Reindahl Trail', 'Lexington', 'KY', 80885, 'jrays1a@smh.com.au', 62, '69', 236, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (48, 'Sheila', 'Caresse', 'Quantrell', '26 Cardinal Crossing', 'Pittsburgh', 'PA', 24636, 'cquantrell1b@flickr.com', 79, '64', 343, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (49, 'Ebeneser', 'Justus', 'McEvay', '15 Hollow Ridge Crossing', 'Washington', 'DC', 48714, 'jmcevay1c@fda.gov', 53, '87', 150, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (50, 'Raychel', 'Nanci', 'Patershall', '487 Toban Center', 'Portsmouth', 'NH', 33999, 'npatershall1d@cnbc.com', 50, '58', 267, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (51, 'Brew', 'Octavius', 'Sheekey', '82 Mosinee Park', 'Las Vegas', 'NV', 69016, 'osheekey1e@mayoclinic.com', 21, '58', 273, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (52, 'Annabel', 'Trina', 'Pharoah', '862 Forest Crossing', 'Las Vegas', 'NV', 19696, 'tpharoah1f@cnet.com', 58, '58', 101, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (53, 'Vincenz', 'Jeremiah', 'Cowap', '62 Service Alley', 'Lexington', 'KY', 39576, 'jcowap1g@goo.ne.jp', 75, '67', 117, 'Blood', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (54, 'Shawna', 'Willie', 'Fairhall', '6 Bartillon Circle', 'Sacramento', 'CA', 20764, 'wfairhall1h@bbc.co.uk', 45, '52', 306, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (55, 'Wiatt', 'Lazaro', 'Tregea', '978 Corben Park', 'Watertown', 'MA', 67856, 'ltregea1i@google.com.au', 34, '46', 179, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (56, 'Padgett', 'Farlee', 'Whittles', '8 Crownhardt Alley', 'Colorado Springs', 'CO', 47789, 'fwhittles1j@census.gov', 73, '46', 273, 'Blood', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (57, 'Sallee', 'Mommy', 'Wessell', '5819 Schiller Lane', 'Charlotte', 'NC', 52581, 'mwessell1k@over-blog.com', 41, '46', 184, 'Blood', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (58, 'Elspeth', 'Elysha', 'Roze', '02112 Dunning Center', 'Columbia', 'SC', 38245, 'eroze1l@tripadvisor.com', 71, '35', 260, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (59, 'Brittan', 'Maura', 'Cloughton', '80409 Tony Parkway', 'Sioux Falls', 'SD', 20318, 'mcloughton1m@nsw.gov.au', 63, '69', 208, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (60, 'Zed', 'Dalis', 'Rawll', '038 Macpherson Parkway', 'Indianapolis', 'IN', 98870, 'drawll1n@parallels.com', 71, '75', 122, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (61, 'Ebeneser', 'Emanuele', 'Biggin', '8244 Iowa Center', 'Richmond', 'CA', 27701, 'ebiggin1o@shutterfly.com', 23, '54', 202, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (62, 'Suzette', 'Cordelie', 'Philippsohn', '3917 Golf View Lane', 'Boulder', 'CO', 70492, 'cphilippsohn1p@discuz.net', 28, '47', 286, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (63, 'Felicio', 'Jermain', 'Scrammage', '54 Jana Lane', 'Kansas City', 'MO', 99865, 'jscrammage1q@icq.com', 21, '59', 345, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (64, 'Arnoldo', 'Tirrell', 'Linzee', '2 Farmco Circle', 'Columbia', 'SC', 57694, 'tlinzee1r@bing.com', 34, '69', 240, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (65, 'Edeline', 'Tilly', 'Doore', '300 Welch Avenue', 'New York City', 'NY', 72506, 'tdoore1s@icio.us', 31, '65', 156, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (66, 'Rock', 'Mateo', 'Ollivier', '348 Comanche Trail', 'Tucson', 'AZ', 75748, 'mollivier1t@nih.gov', 22, '65', 200, 'Blood', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (67, 'Malanie', 'Valry', 'Kaubisch', '5 Schlimgen Lane', 'Escondido', 'CA', 55386, 'vkaubisch1u@jiathis.com', 69, '46', 312, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (68, 'Felic', 'Putnem', 'Thring', '594 Hoard Avenue', 'Houston', 'TX', 59089, 'pthring1v@dell.com', 63, '53', 323, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (69, 'Letta', 'Riva', 'Van Arsdalen', '8 1st Center', 'El Paso', 'TX', 67829, 'rvanarsdalen1w@constantcontact.com', 60, '69', 282, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (70, 'Barbey', 'Dannie', 'Gazzard', '11 Lakewood Gardens Terrace', 'Littleton', 'CO', 70438, 'dgazzard1x@meetup.com', 39, '77', 193, 'Blood', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (71, 'Dick', 'Bernarr', 'Kalinsky', '8873 Hanover Way', 'Dallas', 'TX', 82735, 'bkalinsky1y@state.tx.us', 70, '45', 277, 'Blood', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (72, 'Delia', 'Doro', 'Bottoms', '51395 Memorial Drive', 'Reno', 'NV', 73167, 'dbottoms1z@mysql.com', 67, '46', 281, 'Blood', '45');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (73, 'Delphine', 'Kellyann', 'Lennard', '41602 Sunnyside Alley', 'Fort Pierce', 'FL', 17797, 'klennard20@sakura.ne.jp', 74, '48', 172, 'Plasma', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (74, 'Roberto', 'Barris', 'Lorenc', '0 Kennedy Pass', 'Tampa', 'FL', 45393, 'blorenc21@nytimes.com', 36, '67', 221, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (75, 'Artus', 'Harbert', 'Couroy', '31221 Hoepker Court', 'Jacksonville', 'FL', 28060, 'hcouroy22@linkedin.com', 44, '35', 162, 'Blood', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (76, 'Merci', 'Cissiee', 'Halsho', '30 Prairieview Trail', 'Wichita', 'KS', 43303, 'chalsho23@mtv.com', 73, '49', 281, 'Plasma', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (77, 'Niki', 'Davie', 'Mapledoram', '1 Tony Junction', 'Amarillo', 'TX', 70581, 'dmapledoram24@netscape.com', 19, '56', 338, 'Blood', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (78, 'Arty', 'Andrew', 'Cattrell', '07 East Park', 'Orlando', 'FL', 66291, 'acattrell25@gnu.org', 74, '53', 317, 'Bone Marrow', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (79, 'Pincus', 'Gar', 'Jiggle', '7 Shoshone Plaza', 'Milwaukee', 'WI', 35313, 'gjiggle26@ft.com', 61, '47', 287, 'Plasma', 'AB-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (80, 'Etienne', 'Micheal', 'Harken', '2882 Village Street', 'Colorado Springs', 'CO', 90805, 'mharken27@dyndns.org', 32, '88', 267, 'Kidney', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (81, 'Nanette', 'Vikki', 'Greenhall', '597 Hooker Crossing', 'Birmingham', 'AL', 21526, 'vgreenhall28@java.com', 45, '44', 319, 'Lung', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (82, 'Duky', 'Sebastien', 'O''Farris', '45 Judy Junction', 'Miami', 'FL', 56616, 'sofarris29@pcworld.com', 44, '55', 223, 'Organ', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (83, 'Solomon', 'Dud', 'Collison', '4995 Sugar Street', 'El Paso', 'TX', 28565, 'dcollison2a@noaa.gov', 65, '70', 267, 'Blood', 'O+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (84, 'Stern', 'Tomaso', 'Szwarc', '89066 Melrose Terrace', 'New York City', 'NY', 52281, 'tszwarc2b@ning.com', 74, '68', 309, 'Blood', 'AB-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (85, 'Pauly', 'Ray', 'Bamlet', '6838 Bay Crossing', 'Garland', 'TX', 74279, 'rbamlet2c@slashdot.org', 28, '74', 146, 'Hair', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (86, 'Gabey', 'Crystie', 'Walasik', '92058 Kenwood Crossing', 'Montgomery', 'AL', 53675, 'cwalasik2d@com.com', 53, '40', 216, 'Brain', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (87, 'Merwyn', 'Natal', 'Remer', '12736 Myrtle Place', 'Stamford', 'CT', 52245, 'nremer2e@epa.gov', 25, '54', 123, 'Leg', 'B-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (88, 'Francesco', 'Tabby', 'Stannard', '2 Esker Parkway', 'Sacramento', 'CA', 54434, 'tstannard2f@noaa.gov', 31, '66', 262, 'Organ', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (89, 'Perri', 'Edyth', 'Jerrolt', '7495 Marquette Court', 'Oklahoma City', 'OK', 97927, 'ejerrolt2g@t-online.de', 72, 'A', 170, 'Blood', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (90, 'Maurie', 'Dorey', 'Firsby', '90760 Dayton Pass', 'El Paso', 'TX', 11181, 'dfirsby2h@sogou.com', 21, '12', 186, 'Kidney', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (91, 'Ulrika', 'Kassia', 'Hunnicot', '6 Pepper Wood Plaza', 'Charleston', 'WV', 24167, 'khunnicot2i@51.la', 41, '20', 247, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (92, 'Innis', 'Weider', 'Pickervance', '117 Dovetail Court', 'Flushing', 'NY', 64165, 'wpickervance2j@buzzfeed.com', 70, '40', 277, 'Blood', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (93, 'Dixie', 'Robbin', 'Kettel', '36775 Thierer Street', 'Des Moines', 'IA', 78990, 'rkettel2k@wp.com', 45, '28', 183, 'Plasma', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (94, 'Maybelle', 'Anett', 'Marrion', '946 Waubesa Parkway', 'Albany', 'NY', 50608, 'amarrion2l@cdc.gov', 34, '27', 121, 'Blood', 'AB+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (95, 'Jill', 'Lyssa', 'Coatts', '7099 Blackbird Junction', 'Naperville', 'IL', 16908, 'lcoatts2m@narod.ru', 44, '27', 179, 'Blood', 'A-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (96, 'Darlleen', 'Jennica', 'Duester', '3 Coleman Terrace', 'Denver', 'CO', 49434, 'jduester2n@abc.net.au', 68, '40', 216, 'Blood', 'AB-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (97, 'Olenolin', 'Sim', 'Marciskewski', '96242 Drewry Park', 'Jamaica', 'NY', 52914, 'smarciskewski2o@wsj.com', 76, '50', 287, 'Plasma', 'B+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (98, 'Jenifer', 'Fawne', 'Robelin', '21348 Anhalt Drive', 'Macon', 'GA', 45505, 'frobelin2p@weebly.com', 28, '70', 246, 'Blood', 'A+');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (99, 'Joey', 'Betti', 'Randlesome', '47 Pepper Wood Terrace', 'Houston', 'TX', 94895, 'brandlesome2q@phoca.cz', 43, '68', 244, 'Blood', 'O-');
insert into Donor (donorID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, donorType, bloodType) values (100, 'Uriel', 'Gardiner', 'Edsall', '18082 Sachs Junction', 'Trenton', 'NJ', 32715, 'gedsall2r@rakuten.co.jp', 31, '69', 149, 'Blood', 'O+');

/** Donor Phone */
insert into DonorPhone (phone, type, donorID) values ('145-200-2408', 'Cell', 1);
insert into DonorPhone (phone, type, donorID) values ('415-752-9242', 'Home', 2);
insert into DonorPhone (phone, type, donorID) values ('167-862-3498', 'Cell', 3);
insert into DonorPhone (phone, type, donorID) values ('399-287-0056', 'Cell', 4);
insert into DonorPhone (phone, type, donorID) values ('348-795-3416', 'Home', 5);
insert into DonorPhone (phone, type, donorID) values ('214-849-8572', 'Cell', 6);
insert into DonorPhone (phone, type, donorID) values ('591-257-2283', 'Cell', 7);
insert into DonorPhone (phone, type, donorID) values ('679-245-2272', 'Cell', 8);
insert into DonorPhone (phone, type, donorID) values ('907-127-3503', 'Cell', 9);
insert into DonorPhone (phone, type, donorID) values ('672-775-6206', 'Home', 10);
insert into DonorPhone (phone, type, donorID) values ('511-536-1606', 'Home', 11);
insert into DonorPhone (phone, type, donorID) values ('786-536-6539', 'Home', 12);
insert into DonorPhone (phone, type, donorID) values ('662-629-1926', 'Home', 13);
insert into DonorPhone (phone, type, donorID) values ('949-508-6515', 'Home', 14);
insert into DonorPhone (phone, type, donorID) values ('157-463-6485', 'Home', 15);
insert into DonorPhone (phone, type, donorID) values ('974-224-8754', 'Cell', 16);
insert into DonorPhone (phone, type, donorID) values ('756-262-3692', 'Cell', 17);
insert into DonorPhone (phone, type, donorID) values ('385-773-1449', 'Cell', 18);
insert into DonorPhone (phone, type, donorID) values ('479-611-4323', 'Cell', 19);
insert into DonorPhone (phone, type, donorID) values ('823-898-7274', 'Home', 20);
insert into DonorPhone (phone, type, donorID) values ('218-535-6631', 'Home', 21);
insert into DonorPhone (phone, type, donorID) values ('995-570-7136', 'Home', 22);
insert into DonorPhone (phone, type, donorID) values ('221-516-2188', 'Home', 23);
insert into DonorPhone (phone, type, donorID) values ('651-731-7587', 'Cell', 24);
insert into DonorPhone (phone, type, donorID) values ('507-470-3400', 'Cell', 25);
insert into DonorPhone (phone, type, donorID) values ('489-204-5357', 'Cell', 26);
insert into DonorPhone (phone, type, donorID) values ('370-634-2329', 'Cell', 27);
insert into DonorPhone (phone, type, donorID) values ('964-703-5823', 'Home', 28);
insert into DonorPhone (phone, type, donorID) values ('244-552-8262', 'Cell', 29);
insert into DonorPhone (phone, type, donorID) values ('760-958-7277', 'Home', 30);
insert into DonorPhone (phone, type, donorID) values ('461-441-4801', 'Home', 31);
insert into DonorPhone (phone, type, donorID) values ('395-887-8903', 'Cell', 32);
insert into DonorPhone (phone, type, donorID) values ('697-697-0166', 'Home', 33);
insert into DonorPhone (phone, type, donorID) values ('930-818-9634', 'Home', 34);
insert into DonorPhone (phone, type, donorID) values ('506-862-7553', 'Home', 35);
insert into DonorPhone (phone, type, donorID) values ('997-347-3553', 'Cell', 36);
insert into DonorPhone (phone, type, donorID) values ('755-428-0680', 'Cell', 37);
insert into DonorPhone (phone, type, donorID) values ('238-862-9045', 'Home', 38);
insert into DonorPhone (phone, type, donorID) values ('986-362-9769', 'Home', 39);
insert into DonorPhone (phone, type, donorID) values ('244-212-5177', 'Home', 40);
insert into DonorPhone (phone, type, donorID) values ('295-660-3447', 'Home', 41);
insert into DonorPhone (phone, type, donorID) values ('504-816-7701', 'Home', 42);
insert into DonorPhone (phone, type, donorID) values ('876-790-3836', 'Cell', 43);
insert into DonorPhone (phone, type, donorID) values ('682-504-9017', 'Home', 44);
insert into DonorPhone (phone, type, donorID) values ('318-486-9572', 'Home', 45);
insert into DonorPhone (phone, type, donorID) values ('811-254-0127', 'Cell', 46);
insert into DonorPhone (phone, type, donorID) values ('337-360-0382', 'Home', 47);
insert into DonorPhone (phone, type, donorID) values ('159-692-4041', 'Cell', 48);
insert into DonorPhone (phone, type, donorID) values ('560-766-0729', 'Home', 49);
insert into DonorPhone (phone, type, donorID) values ('282-759-3152', 'Home', 50);
insert into DonorPhone (phone, type, donorID) values ('657-775-3317', 'Home', 51);
insert into DonorPhone (phone, type, donorID) values ('416-941-3873', 'Home', 52);
insert into DonorPhone (phone, type, donorID) values ('148-690-9030', 'Home', 53);
insert into DonorPhone (phone, type, donorID) values ('152-750-3513', 'Cell', 54);
insert into DonorPhone (phone, type, donorID) values ('872-845-9365', 'Home', 55);
insert into DonorPhone (phone, type, donorID) values ('693-799-7371', 'Cell', 56);
insert into DonorPhone (phone, type, donorID) values ('263-236-5532', 'Cell', 57);
insert into DonorPhone (phone, type, donorID) values ('132-220-2963', 'Home', 58);
insert into DonorPhone (phone, type, donorID) values ('272-241-1355', 'Cell', 59);
insert into DonorPhone (phone, type, donorID) values ('136-290-7770', 'Cell', 60);
insert into DonorPhone (phone, type, donorID) values ('932-520-5003', 'Cell', 61);
insert into DonorPhone (phone, type, donorID) values ('651-645-6070', 'Home', 62);
insert into DonorPhone (phone, type, donorID) values ('214-756-0589', 'Home', 63);
insert into DonorPhone (phone, type, donorID) values ('319-873-7294', 'Home', 64);
insert into DonorPhone (phone, type, donorID) values ('187-544-3389', 'Cell', 65);
insert into DonorPhone (phone, type, donorID) values ('862-209-2767', 'Home', 66);
insert into DonorPhone (phone, type, donorID) values ('275-385-2814', 'Cell', 67);
insert into DonorPhone (phone, type, donorID) values ('875-502-9476', 'Home', 68);
insert into DonorPhone (phone, type, donorID) values ('979-225-4703', 'Home', 69);
insert into DonorPhone (phone, type, donorID) values ('510-237-3989', 'Cell', 70);
insert into DonorPhone (phone, type, donorID) values ('159-857-5878', 'Cell', 71);
insert into DonorPhone (phone, type, donorID) values ('325-771-3360', 'Home', 72);
insert into DonorPhone (phone, type, donorID) values ('772-998-7326', 'Cell', 73);
insert into DonorPhone (phone, type, donorID) values ('667-913-7121', 'Home', 74);
insert into DonorPhone (phone, type, donorID) values ('321-816-5939', 'Cell', 75);
insert into DonorPhone (phone, type, donorID) values ('199-406-5759', 'Home', 76);
insert into DonorPhone (phone, type, donorID) values ('312-888-7644', 'Cell', 77);
insert into DonorPhone (phone, type, donorID) values ('981-322-1804', 'Home', 78);
insert into DonorPhone (phone, type, donorID) values ('592-135-0490', 'Cell', 79);
insert into DonorPhone (phone, type, donorID) values ('693-213-1868', 'Home', 80);
insert into DonorPhone (phone, type, donorID) values ('475-391-6629', 'Home', 81);
insert into DonorPhone (phone, type, donorID) values ('608-520-8466', 'Cell', 82);
insert into DonorPhone (phone, type, donorID) values ('337-139-4155', 'Cell', 83);
insert into DonorPhone (phone, type, donorID) values ('355-829-4196', 'Home', 84);
insert into DonorPhone (phone, type, donorID) values ('174-415-2364', 'Home', 85);
insert into DonorPhone (phone, type, donorID) values ('909-333-7680', 'Home', 86);
insert into DonorPhone (phone, type, donorID) values ('940-474-1295', 'Cell', 87);
insert into DonorPhone (phone, type, donorID) values ('206-131-9263', 'Home', 88);
insert into DonorPhone (phone, type, donorID) values ('966-332-6002', 'Home', 89);
insert into DonorPhone (phone, type, donorID) values ('444-133-8001', 'Home', 90);
insert into DonorPhone (phone, type, donorID) values ('994-963-9205', 'Home', 91);
insert into DonorPhone (phone, type, donorID) values ('627-722-3487', 'Home', 92);
insert into DonorPhone (phone, type, donorID) values ('184-645-5085', 'Cell', 93);
insert into DonorPhone (phone, type, donorID) values ('872-158-8404', 'Cell', 94);
insert into DonorPhone (phone, type, donorID) values ('757-420-5513', 'Home', 95);
insert into DonorPhone (phone, type, donorID) values ('954-747-0933', 'Home', 96);
insert into DonorPhone (phone, type, donorID) values ('265-192-7001', 'Home', 97);
insert into DonorPhone (phone, type, donorID) values ('923-989-6459', 'Home', 98);
insert into DonorPhone (phone, type, donorID) values ('394-464-1373', 'Cell', 99);
insert into DonorPhone (phone, type, donorID) values ('763-752-4144', 'Home', 100);

/** Patient */
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (1, 'Joannes', 'Filippa', 'Osgar', '5 Novick Junction', 'Portland', 'OR', 44265, 'fosgar0@ftc.gov', 53, '69', 460, 'Male', 'AIDS');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (2, 'Constantina', 'Bellina', 'Dabourne', '6 Corry Lane', 'Montgomery', 'AL', 76762, 'bdabourne1@paginegialle.it', 49, '78', 477, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (3, 'Madge', 'Cilka', 'Christophers', '8 Carioca Junction', 'Lubbock', 'TX', 88319, 'cchristophers2@si.edu', 114, '88', 211, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (4, 'Morty', 'Lawton', 'Casolla', '758 Jana Road', 'Saint Louis', 'MO', 42142, 'lcasolla3@ibm.com', 72, '101', 309, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (5, 'Zorana', 'Lee', 'Raynton', '0 Moland Circle', 'Atlanta', 'GA', 60867, 'lraynton4@symantec.com', 7, '89', 8, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (6, 'Cathee', 'Naomi', 'Van der Beken', '338 Spenser Center', 'Van Nuys', 'CA', 89861, 'nvanderbeken5@mit.edu', 82, '42', 226, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (7, 'Markos', 'Hunfredo', 'Phalp', '889 Mendota Terrace', 'Pinellas Park', 'FL', 67514, 'hphalp6@artisteer.com', 84, '68', 33, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (8, 'Berti', 'Fitz', 'Stamps', '7911 Ramsey Way', 'El Paso', 'TX', 94841, 'fstamps7@oakley.com', 31, '82', 497, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (9, 'Morrie', 'Cammy', 'Lantiffe', '7 Manufacturers Street', 'Rochester', 'NY', 20165, 'clantiffe8@free.fr', 13, '85', 84, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (10, 'Julie', 'Prissie', 'Yockley', '9 Schurz Park', 'Roanoke', 'VA', 69900, 'pyockley9@theguardian.com', 82, '71', 176, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (11, 'Lana', 'Sheila-kathryn', 'Shorthouse', '21 Harper Terrace', 'Ridgely', 'MD', 41721, 'sshorthousea@smh.com.au', 39, '64', 209, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (12, 'Auberon', 'Neddy', 'Shilstone', '20 Ludington Place', 'New Orleans', 'LA', 55575, 'nshilstoneb@abc.net.au', 110, '81', 43, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (13, 'Delano', 'Ringo', 'Polson', '0966 Dixon Alley', 'Brockton', 'MA', 95737, 'rpolsonc@nsw.gov.au', 26, '69', 393, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (14, 'Tarrance', 'Skipp', 'Acres', '1 Ohio Junction', 'North Las Vegas', 'NV', 70441, 'sacresd@mapquest.com', 98, '88', 185, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (15, 'Janine', 'Giana', 'Idwal Evans', '9 Hanover Park', 'El Paso', 'TX', 81823, 'gidwalevanse@bigcartel.com', 93, '95', 36, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (16, 'Vito', 'Bastian', 'Corzon', '23 Utah Point', 'Albuquerque', 'NM', 43164, 'bcorzonf@google.com', 113, '41', 299, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (17, 'Bibi', 'Natasha', 'Broadhead', '38484 Meadow Valley Park', 'Wilmington', 'NC', 85985, 'nbroadheadg@netlog.com', 50, '51', 495, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (18, 'Ronny', 'Marci', 'Piddock', '0185 Chinook Alley', 'New York City', 'NY', 72324, 'mpiddockh@thetimes.co.uk', 79, '72', 9, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (19, 'Mimi', 'Debbie', 'Whapham', '92689 Loeprich Trail', 'Washington', 'DC', 23376, 'dwhaphami@rambler.ru', 112, '86', 321, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (20, 'Maddie', 'Heloise', 'Shafe', '45 Leroy Road', 'Washington', 'DC', 91425, 'hshafej@mayoclinic.com', 85, 'Male', 375, '42', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (21, 'Phillipe', 'Claudius', 'Shaughnessy', '9628 Sachs Hill', 'Memphis', 'TN', 72842, 'cshaughnessyk@weibo.com', 103, '80', 219, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (22, 'Filmer', 'D''arcy', 'Edy', '7 Bunker Hill Way', 'Greensboro', 'NC', 48475, 'dedyl@ameblo.jp', 22, '60', 464, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (23, 'Faulkner', 'Dale', 'Bernardino', '1994 Hoard Junction', 'Alexandria', 'VA', 29836, 'dbernardinom@dailymail.co.uk', 106, '65', 229, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (24, 'Willie', 'Jo ann', 'Coskerry', '2017 Mcbride Crossing', 'Mobile', 'AL', 60016, 'jcoskerryn@ezinearticles.com', 25, '78', 55, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (25, 'Filberto', 'Rustin', 'Housbey', '521 Moland Way', 'Reno', 'NV', 23471, 'rhousbeyo@shop-pro.jp', 46, '56', 208, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (26, 'Cissiee', 'Paloma', 'Terrington', '036 American Ash Hill', 'Columbia', 'SC', 62928, 'pterringtonp@freewebs.com', 49, '39', 329, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (27, 'Starlin', 'Estell', 'Watson', '19325 La Follette Pass', 'Hartford', 'CT', 96608, 'ewatsonq@sphinn.com', 109, 'Female', 469, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (28, 'Berthe', 'Aigneis', 'Milesap', '13 Melody Drive', 'Washington', 'DC', 51440, 'amilesapr@clickbank.net', 80, '50', 313, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (29, 'Sax', 'Carlie', 'Huison', '16 Morningstar Street', 'Cedar Rapids', 'IA', 47384, 'chuisons@virginia.edu', 36, '85', 186, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (30, 'Skip', 'Forrest', 'Setchfield', '903 Comanche Park', 'Fort Lauderdale', 'FL', 27386, 'fsetchfieldt@exblog.jp', 45, '75', 278, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (31, 'Cindi', 'Janice', 'Gilby', '4 Lunder Pass', 'Minneapolis', 'MN', 38648, 'jgilbyu@si.edu', 40, '85', 154, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (32, 'Moses', 'Aldrich', 'Scamel', '8 Raven Place', 'Springfield', 'IL', 59096, 'ascamelv@photobucket.com', 61, '88', 347, 'Female', 'Heart Disease');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (33, 'Nevins', 'Kent', 'Ferreira', '589 Scoville Road', 'Greensboro', 'NC', 85512, 'kferreiraw@csmonitor.com', 55, '78', 220, 'Male', 'Lung Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (34, 'Carlotta', 'Germain', 'de Voiels', '0 Hazelcrest Plaza', 'Baton Rouge', 'LA', 62509, 'gdevoielsx@foxnews.com', 86, '36', 206, 'Male', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (35, 'Ciel', 'Jaquelin', 'Tonge', '36784 Bunting Avenue', 'Glendale', 'AZ', 51806, 'jtongey@angelfire.com', 115, '45', 228, 'Female', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (36, 'Meredeth', 'Roi', 'Busek', '80 Maple Wood Park', 'Lincoln', 'NE', 12800, 'rbusekz@usa.gov', 11, '45', 111, 'Male', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (37, 'Salmon', 'Drud', 'Kennet', '77 Duke Street', 'Saint Paul', 'MN', 30837, 'dkennet10@microsoft.com', 63, '55', 253, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (38, 'Archibaldo', 'Dermot', 'Shoppee', '29138 Summit Crossing', 'Saint Joseph', 'MO', 18374, 'dshoppee11@unblog.fr', 6, '22', 51, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (39, 'Hussein', 'Roderick', 'Joubert', '36 Kennedy Lane', 'Wichita', 'KS', 97196, 'rjoubert12@pagesperso-orange.fr', 109, '22', 12, 'Male', 'Lung Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (40, 'Germana', 'Alyse', 'Laydel', '16 Kinsman Alley', 'South Bend', 'IN', 10442, 'alaydel13@reuters.com', 19, '45', 240, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (41, 'Brenn', 'Gipsy', 'Twiggs', '9869 Clemons Alley', 'Huntington', 'WV', 86166, 'gtwiggs14@fda.gov', 18, '42', 155, 'Male', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (42, 'Liza', 'Tyne', 'Marchelli', '7048 Division Circle', 'Shawnee Mission', 'KS', 31504, 'tmarchelli15@disqus.com', 44, '43', 210, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (43, 'Liuka', 'Winni', 'Emson', '750 Stoughton Terrace', 'Miami', 'FL', 75810, 'wemson16@prnewswire.com', 52, '86', 238, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (44, 'Gilbertina', 'Polly', 'Reppaport', '66 Luster Junction', 'Largo', 'FL', 59807, 'preppaport17@so-net.ne.jp', 48, '84', 151, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (45, 'Judye', 'Max', 'Jeffreys', '778 Paget Street', 'Jersey City', 'NJ', 86055, 'mjeffreys18@cnet.com', 38, '40', 131, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (46, 'Adrea', 'Lorena', 'Lindsley', '573 Menomonie Point', 'Loretto', 'MN', 52324, 'llindsley19@github.io', 24, '44', 159, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (47, 'Shep', 'Erwin', 'Lovelock', '28 Jackson Drive', 'Whittier', 'CA', 20230, 'elovelock1a@ox.ac.uk', 86, '52', 169, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (48, 'Becky', 'Tiffie', 'Trolley', '0 Washington Trail', 'Ashburn', 'VA', 78988, 'ttrolley1b@fastcompany.com', 24, '80', 185, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (49, 'Alison', 'Larissa', 'Proctor', '7206 Cardinal Lane', 'Miami', 'FL', 65925, 'lproctor1c@lulu.com', 27, '96', 297, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (50, 'Kile', 'Keary', 'Fairbourn', '2 Blackbird Place', 'Pasadena', 'CA', 21419, 'kfairbourn1d@slashdot.org', 38, '72', 498, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (51, 'Lorilee', 'Dennie', 'Bootton', '27818 Meadow Ridge Terrace', 'Las Vegas', 'NV', 20920, 'dbootton1e@xinhuanet.com', 94, '47', 249, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (52, 'Petronilla', 'Celesta', 'Harden', '342 Arrowood Crossing', 'San Diego', 'CA', 71540, 'charden1f@blog.com', 110, '45', 225, 'Female', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (53, 'Tyne', 'Lia', 'Sorton', '80921 Roxbury Court', 'Fort Wayne', 'IN', 86309, 'lsorton1g@tripadvisor.com', 17, '47', 190, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (54, 'Kenton', 'Elvin', 'Alps', '2 Northfield Trail', 'Fort Smith', 'AR', 89728, 'ealps1h@howstuffworks.com', 108, '41', 193, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (55, 'Ring', 'Agosto', 'Truman', '60389 Elmside Plaza', 'Houston', 'TX', 53665, 'atruman1i@google.nl', 70, '85', 400, 'Male', 'Heart Disease');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (56, 'Carolann', 'Daria', 'Negri', '57803 Dapin Circle', 'Oklahoma City', 'OK', 19251, 'dnegri1j@cbc.ca', 107, '85', 473, 'Female', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (57, 'Beitris', 'Doll', 'Cranham', '5 Pleasure Street', 'El Paso', 'TX', 25881, 'dcranham1k@homestead.com', 90, '42', 169, 'Male', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (58, 'Ikey', 'Micheil', 'Wybron', '77 Mayfield Hill', 'Syracuse', 'NY', 79871, 'mwybron1l@soup.io', 62, '45', 276, 'Female', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (59, 'Anastassia', 'Erin', 'Fantin', '6318 Claremont Road', 'Milwaukee', 'WI', 21892, 'efantin1m@ehow.com', 91, '45', 179, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (60, 'Godwin', 'Pat', 'Izod', '3682 Packers Alley', 'Charleston', 'SC', 98684, 'pizod1n@creativecommons.org', 19, '58', 188, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (61, 'Kata', 'Tisha', 'Drew', '56982 Dorton Point', 'Sioux Falls', 'SD', 76033, 'tdrew1o@cbsnews.com', 52, '62', 212, 'Female', 'Down Syndrome');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (62, 'Kitty', 'Flor', 'Fabler', '93 Farwell Parkway', 'San Francisco', 'CA', 85875, 'ffabler1p@oaic.gov.au', 59, '76', 222, 'Male', 'Substance Abuse');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (63, 'Jermaine', 'Ev', 'Hefferan', '330 Algoma Circle', 'Louisville', 'KY', 81532, 'ehefferan1q@webnode.com', 45, '69', 193, 'Female', 'Substance Abuse');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (64, 'Walsh', 'Winfred', 'Hardan', '9347 Jenifer Terrace', 'Buffalo', 'NY', 76716, 'whardan1r@cbc.ca', 21, '79', 319, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (65, 'Gwenni', 'Julie', 'Esmond', '575 Arrowood Hill', 'Cincinnati', 'OH', 10388, 'jesmond1s@google.ru', 71, '48', 282, 'Male', 'Herpes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (66, 'Jonah', 'Lisle', 'Ivashev', '30 Crescent Oaks Junction', 'Hot Springs National Park', 'AR', 19182, 'livashev1t@patch.com', 10, '23', 110, 'Female', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (67, 'Agathe', 'Filippa', 'Pirnie', '8 Glacier Hill Alley', 'Peoria', 'IL', 35520, 'fpirnie1u@last.fm', 82, '63', 191, 'Female', 'AIDS');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (68, 'Boyce', 'Waldon', 'Skellington', '1 Graedel Terrace', 'Cleveland', 'OH', 30581, 'wskellington1v@ft.com', 53, '52', 139, 'Male', 'UTI');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (69, 'Genia', 'Jessalin', 'Bulley', '0 Schurz Circle', 'Tulsa', 'OK', 13914, 'jbulley1w@who.int', 71, '85', 244, 'Male', 'Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (70, 'Cinnamon', 'Aleta', 'Hagston', '1 Del Sol Circle', 'Waco', 'TX', 83480, 'ahagston1x@posterous.com', 37, '69', 246, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (71, 'Penelope', 'Ynes', 'Joreau', '2 Canary Road', 'Honolulu', 'HI', 70107, 'yjoreau1y@diigo.com', 31, '45', 209, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (72, 'Marijn', 'Pavel', 'O''Caine', '2 Pearson Center', 'Sioux City', 'IA', 91481, 'pocaine1z@uol.com.br', 31, '65', 217, 'Female', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (73, 'Petra', 'Lainey', 'Bootton', '10306 Packers Crossing', 'Birmingham', 'AL', 73972, 'lbootton20@vk.com', 87, '32', 111, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (74, 'Riccardo', 'Fleming', 'Whinray', '320 Shasta Circle', 'Los Angeles', 'CA', 42646, 'fwhinray21@yahoo.co.jp', 34, '61', 167, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (75, 'Jody', 'Lissi', 'Waterworth', '75980 Little Fleur Circle', 'Lynchburg', 'VA', 86794, 'lwaterworth22@ftc.gov', 73, '54', 288, 'Male', 'High Blood Pressure');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (76, 'Lisha', 'Elly', 'Busek', '95 Fair Oaks Hill', 'Dallas', 'TX', 67486, 'ebusek23@technorati.com', 52, '45', 276, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (77, 'Vonnie', 'Davida', 'Real', '2965 Calypso Avenue', 'Tallahassee', 'FL', 42332, 'dreal24@skyrock.com', 79, '48', 200, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (78, 'Catharina', 'Nike', 'Eschelle', '5821 Charing Cross Road', 'Birmingham', 'AL', 59046, 'neschelle25@howstuffworks.com', 41, '61', 141, 'Female', 'Lung Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (79, 'Arturo', 'Aguste', 'Giraudy', '18 Grayhawk Court', 'San Jose', 'CA', 53818, 'agiraudy26@unicef.org', 71, '85', 323, 'Male', 'Testicular Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (80, 'Fraser', 'Silvan', 'Stovin', '1906 Crownhardt Road', 'Fort Wayne', 'IN', 27430, 'sstovin27@tumblr.com', 31, '85', 257, 'Male', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (81, 'Saba', 'Gratiana', 'Midghall', '858 Michigan Junction', 'Pittsburgh', 'PA', 17124, 'gmidghall28@pagesperso-orange.fr', 23, '66', 243, 'Female', 'Gouts');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (82, 'Mano', 'Brook', 'Torel', '8838 Holmberg Alley', 'Orlando', 'FL', 29466, 'btorel29@shareasale.com', 72, '45', 248, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (83, 'Nollie', 'Dilan', 'Tuddall', '3 Jenna Lane', 'Washington', 'DC', 28871, 'dtuddall2a@storify.com', 14, '55', 143, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (84, 'Jasun', 'Staffard', 'Pine', '28961 Vahlen Parkway', 'Jefferson City', 'MO', 68347, 'spine2b@globo.com', 64, '54', 146, 'Male', 'Herpes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (85, 'Alon', 'Bernie', 'Bescoby', '7 Eliot Terrace', 'Kansas City', 'MO', 84399, 'bbescoby2c@mapquest.com', 64, '50', 192, 'Female', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (86, 'Aidan', 'Erina', 'Scipsey', '8102 Thompson Parkway', 'Shawnee Mission', 'KS', 12501, 'escipsey2d@canalblog.com', 39, '85', 308, 'Female', 'Herpes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (87, 'Leona', 'Clem', 'Gothliff', '8233 Hauk Place', 'Orange', 'CA', 35440, 'cgothliff2e@cornell.edu', 12, '58', 186, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (88, 'Violet', 'Caria', 'Ivushkin', '543 Pierstorff Crossing', 'Garland', 'TX', 26570, 'civushkin2f@fda.gov', 95, '45', 120, 'Female', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (89, 'Reynolds', 'Shane', 'Jesse', '58464 Oneill Pass', 'El Paso', 'TX', 54447, 'sjesse2g@mayoclinic.com', 100, '41', 156, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (90, 'Lisle', 'Gustaf', 'Schaffler', '24 Rowland Avenue', 'Huntsville', 'AL', 43681, 'gschaffler2h@usgs.gov', 24, '85', 272, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (91, 'Marco', 'Lemuel', 'Sigg', '105 Sutteridge Alley', 'Metairie', 'LA', 46656, 'lsigg2i@t-online.de', 79, '75', 224, 'Female', 'Gouts');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (92, 'Denni', 'Laurie', 'Burgne', '7 Vernon Pass', 'Little Rock', 'AR', 21325, 'lburgne2j@de.vu', 100, '65', 213, 'Female', 'Bipolar');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (93, 'Hodge', 'Gregory', 'Lindenbluth', '94 Glacier Hill Crossing', 'Tulsa', 'OK', 26797, 'glindenbluth2k@flickr.com', 109, '85', 291, 'Male', 'ADHD');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (94, 'Jereme', 'Robbie', 'Spavon', '8 Oak Avenue', 'Carson City', 'NV', 42881, 'rspavon2l@zdnet.com', 16, '61', 218, 'Male', 'Parkinsons');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (95, 'Pip', 'Mattias', 'Kliche', '10536 Paget Avenue', 'New York City', 'NY', 73145, 'mkliche2m@wisc.edu', 28, '61', 201, 'Female', 'Alzhimers');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (96, 'Stearn', 'Hakim', 'Akerman', '71 Bartelt Point', 'Palo Alto', 'CA', 42234, 'hakerman2n@tinyurl.com', 16, '58', 195, 'Female', 'Breast Cancer');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (97, 'Steward', 'Bronson', 'Ameer-Beg', '91 Ilene Hill', 'North Port', 'FL', 29500, 'bameerbeg2o@a8.net', 94, '12', 111, 'Male', 'Diabetes');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (98, 'Jenifer', 'Andrei', 'Purry', '6 Haas Avenue', 'Washington', 'DC', 14318, 'apurry2p@google.it', 96, '65', 276, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (99, 'Arv', 'Clevie', 'Aime', '3364 Homewood Alley', 'Oklahoma City', 'OK', 43439, 'caime2q@vinaora.com', 110, '63', 175, 'Male', 'COVID-19');
insert into Patient (patientID, firstName, middleName, lastName, street, city, state, zip, email, age, height, weight, gender, conditions) values (100, 'Yasmeen', 'Fionnula', 'Wesgate', '710 Mendota Park', 'Fresno', 'CA', 54184, 'fwesgate2r@github.io', '72', '69', 176, 'Female','COVID-19');


/** Patient Phone */
insert into PatientPhone (phone, type, patientID) values ('810-655-9752', 'Cell', 1);
insert into PatientPhone (phone, type, patientID) values ('991-806-6214', 'Cell', 2);
insert into PatientPhone (phone, type, patientID) values ('962-192-8123', 'Cell', 3);
insert into PatientPhone (phone, type, patientID) values ('429-613-8529', 'Cell', 4);
insert into PatientPhone (phone, type, patientID) values ('706-231-5941', 'Cell', 5);
insert into PatientPhone (phone, type, patientID) values ('867-760-7801', 'Cell', 6);
insert into PatientPhone (phone, type, patientID) values ('642-378-8937', 'Cell', 7);
insert into PatientPhone (phone, type, patientID) values ('716-985-1013', 'Home', 8);
insert into PatientPhone (phone, type, patientID) values ('455-381-6400', 'Cell', 9);
insert into PatientPhone (phone, type, patientID) values ('186-768-5757', 'Home', 10);
insert into PatientPhone (phone, type, patientID) values ('502-542-1068', 'Cell', 11);
insert into PatientPhone (phone, type, patientID) values ('380-122-6341', 'Home', 12);
insert into PatientPhone (phone, type, patientID) values ('621-162-0931', 'Home', 13);
insert into PatientPhone (phone, type, patientID) values ('151-804-0973', 'Home', 14);
insert into PatientPhone (phone, type, patientID) values ('751-312-3299', 'Cell', 15);
insert into PatientPhone (phone, type, patientID) values ('648-261-4469', 'Home', 16);
insert into PatientPhone (phone, type, patientID) values ('556-410-4355', 'Cell', 17);
insert into PatientPhone (phone, type, patientID) values ('719-533-8270', 'Cell', 18);
insert into PatientPhone (phone, type, patientID) values ('694-700-1500', 'Home', 19);
insert into PatientPhone (phone, type, patientID) values ('141-557-8699', 'Cell', 20);
insert into PatientPhone (phone, type, patientID) values ('640-633-8524', 'Home', 21);
insert into PatientPhone (phone, type, patientID) values ('928-323-9382', 'Cell', 22);
insert into PatientPhone (phone, type, patientID) values ('649-669-6484', 'Home', 23);
insert into PatientPhone (phone, type, patientID) values ('283-125-1142', 'Cell', 24);
insert into PatientPhone (phone, type, patientID) values ('860-298-3800', 'Cell', 25);
insert into PatientPhone (phone, type, patientID) values ('674-422-0394', 'Home', 26);
insert into PatientPhone (phone, type, patientID) values ('466-320-4541', 'Cell', 27);
insert into PatientPhone (phone, type, patientID) values ('462-189-5040', 'Home', 28);
insert into PatientPhone (phone, type, patientID) values ('705-882-2691', 'Cell', 29);
insert into PatientPhone (phone, type, patientID) values ('549-376-3553', 'Cell', 30);
insert into PatientPhone (phone, type, patientID) values ('900-751-8130', 'Home', 31);
insert into PatientPhone (phone, type, patientID) values ('741-439-2892', 'Home', 32);
insert into PatientPhone (phone, type, patientID) values ('846-107-8017', 'Home', 33);
insert into PatientPhone (phone, type, patientID) values ('726-805-4775', 'Cell', 34);
insert into PatientPhone (phone, type, patientID) values ('691-620-1469', 'Home', 35);
insert into PatientPhone (phone, type, patientID) values ('982-493-2218', 'Cell', 36);
insert into PatientPhone (phone, type, patientID) values ('916-311-9846', 'Home', 37);
insert into PatientPhone (phone, type, patientID) values ('632-943-9477', 'Cell', 38);
insert into PatientPhone (phone, type, patientID) values ('771-717-1992', 'Cell', 39);
insert into PatientPhone (phone, type, patientID) values ('299-164-4339', 'Home', 40);
insert into PatientPhone (phone, type, patientID) values ('503-865-3313', 'Cell', 41);
insert into PatientPhone (phone, type, patientID) values ('247-122-0025', 'Cell', 42);
insert into PatientPhone (phone, type, patientID) values ('359-305-0411', 'Cell', 43);
insert into PatientPhone (phone, type, patientID) values ('604-248-2215', 'Cell', 44);
insert into PatientPhone (phone, type, patientID) values ('457-671-7899', 'Cell', 45);
insert into PatientPhone (phone, type, patientID) values ('404-222-3503', 'Home', 46);
insert into PatientPhone (phone, type, patientID) values ('664-872-1850', 'Cell', 47);
insert into PatientPhone (phone, type, patientID) values ('340-920-5437', 'Home', 48);
insert into PatientPhone (phone, type, patientID) values ('271-705-4450', 'Cell', 49);
insert into PatientPhone (phone, type, patientID) values ('559-616-7789', 'Home', 50);
insert into PatientPhone (phone, type, patientID) values ('785-924-4253', 'Cell', 51);
insert into PatientPhone (phone, type, patientID) values ('778-131-0391', 'Home', 52);
insert into PatientPhone (phone, type, patientID) values ('688-624-2136', 'Home', 53);
insert into PatientPhone (phone, type, patientID) values ('578-861-9477', 'Home', 54);
insert into PatientPhone (phone, type, patientID) values ('824-482-6910', 'Home', 55);
insert into PatientPhone (phone, type, patientID) values ('366-391-0563', 'Cell', 56);
insert into PatientPhone (phone, type, patientID) values ('882-108-8585', 'Home', 57);
insert into PatientPhone (phone, type, patientID) values ('433-194-1577', 'Cell', 58);
insert into PatientPhone (phone, type, patientID) values ('140-354-4420', 'Home', 59);
insert into PatientPhone (phone, type, patientID) values ('979-494-3729', 'Cell', 60);
insert into PatientPhone (phone, type, patientID) values ('215-331-7989', 'Home', 61);
insert into PatientPhone (phone, type, patientID) values ('741-873-6140', 'Home', 62);
insert into PatientPhone (phone, type, patientID) values ('257-805-1071', 'Cell', 63);
insert into PatientPhone (phone, type, patientID) values ('106-788-5585', 'Cell', 64);
insert into PatientPhone (phone, type, patientID) values ('511-362-2213', 'Cell', 65);
insert into PatientPhone (phone, type, patientID) values ('947-814-5928', 'Home', 66);
insert into PatientPhone (phone, type, patientID) values ('250-818-5613', 'Cell', 67);
insert into PatientPhone (phone, type, patientID) values ('326-301-4440', 'Home', 68);
insert into PatientPhone (phone, type, patientID) values ('515-981-6200', 'Home', 69);
insert into PatientPhone (phone, type, patientID) values ('410-933-8042', 'Cell', 70);
insert into PatientPhone (phone, type, patientID) values ('359-970-7518', 'Cell', 71);
insert into PatientPhone (phone, type, patientID) values ('129-548-9585', 'Home', 72);
insert into PatientPhone (phone, type, patientID) values ('441-283-4876', 'Home', 73);
insert into PatientPhone (phone, type, patientID) values ('991-954-5263', 'Cell', 74);
insert into PatientPhone (phone, type, patientID) values ('782-758-1137', 'Cell', 75);
insert into PatientPhone (phone, type, patientID) values ('336-277-6044', 'Cell', 76);
insert into PatientPhone (phone, type, patientID) values ('243-564-2914', 'Cell', 77);
insert into PatientPhone (phone, type, patientID) values ('700-653-9914', 'Home', 78);
insert into PatientPhone (phone, type, patientID) values ('697-728-5145', 'Home', 79);
insert into PatientPhone (phone, type, patientID) values ('417-643-7979', 'Home', 80);
insert into PatientPhone (phone, type, patientID) values ('212-959-6113', 'Home', 81);
insert into PatientPhone (phone, type, patientID) values ('432-147-6573', 'Cell', 82);
insert into PatientPhone (phone, type, patientID) values ('965-402-7216', 'Home', 83);
insert into PatientPhone (phone, type, patientID) values ('321-281-4178', 'Home', 84);
insert into PatientPhone (phone, type, patientID) values ('494-808-3677', 'Home', 85);
insert into PatientPhone (phone, type, patientID) values ('922-430-9116', 'Home', 86);
insert into PatientPhone (phone, type, patientID) values ('570-744-4878', 'Cell', 87);
insert into PatientPhone (phone, type, patientID) values ('793-914-7876', 'Cell', 88);
insert into PatientPhone (phone, type, patientID) values ('211-358-8150', 'Home', 89);
insert into PatientPhone (phone, type, patientID) values ('310-580-3354', 'Home', 90);
insert into PatientPhone (phone, type, patientID) values ('504-127-5979', 'Cell', 91);
insert into PatientPhone (phone, type, patientID) values ('207-236-7244', 'Home', 92);
insert into PatientPhone (phone, type, patientID) values ('259-913-9492', 'Cell', 93);
insert into PatientPhone (phone, type, patientID) values ('149-881-9842', 'Home', 94);
insert into PatientPhone (phone, type, patientID) values ('168-430-8087', 'Cell', 95);
insert into PatientPhone (phone, type, patientID) values ('982-426-2483', 'Cell', 96);
insert into PatientPhone (phone, type, patientID) values ('425-721-3355', 'Home', 97);
insert into PatientPhone (phone, type, patientID) values ('906-914-5271', 'Home', 98);
insert into PatientPhone (phone, type, patientID) values ('766-165-8702', 'Cell', 99);
insert into PatientPhone (phone, type, patientID) values ('907-439-3900', 'Cell', 100);

/** Room */
insert into Room (roomID, type, capacity) values (1, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (2, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (3, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (4, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (5, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (6, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (7, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (8, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (9, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (10, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (11, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (12, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (13, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (14, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (15, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (16, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (17, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (18, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (19, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (20, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (21, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (22, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (23, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (24, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (25, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (26, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (27, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (28, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (29, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (30, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (31, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (32, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (33, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (34, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (35, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (36, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (37, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (38, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (39, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (40, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (41, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (42, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (43, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (44, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (45, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (46, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (47, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (48, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (49, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (50, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (51, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (52, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (53, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (54, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (55, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (56, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (57, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (58, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (59, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (60, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (61, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (62, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (63, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (64, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (65, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (66, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (67, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (68, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (69, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (70, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (71, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (72, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (73, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (74, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (75, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (76, 'Surgery', 12);
insert into Room (roomID, type, capacity) values (77, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (78, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (79, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (80, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (81, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (82, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (83, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (84, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (85, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (86, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (87, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (88, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (89, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (90, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (91, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (92, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (93, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (94, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (95, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (96, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (97, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (98, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (99, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (100, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (101, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (102, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (103, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (104, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (105, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (106, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (107, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (108, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (109, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (110, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (111, 'Surgery', 12);
insert into Room (roomID, type, capacity) values (112, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (113, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (114, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (115, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (116, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (117, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (118, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (119, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (120, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (121, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (122, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (123, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (124, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (125, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (126, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (127, 'Surgery', 12);
insert into Room (roomID, type, capacity) values (128, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (129, 'Surgery', 12);
insert into Room (roomID, type, capacity) values (130, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (131, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (132, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (133, 'Surgery', 12);
insert into Room (roomID, type, capacity) values (134, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (135, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (136, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (137, 'Waiting Room', 50);
insert into Room (roomID, type, capacity) values (138, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (139, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (140, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (141, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (142, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (143, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (144, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (145, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (146, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (147, 'Bathroom', 16);
insert into Room (roomID, type, capacity) values (148, 'Janitor Closet', 4);
insert into Room (roomID, type, capacity) values (149, 'Patient Room', 8);
insert into Room (roomID, type, capacity) values (150, 'Surgery', 12);

/** Department */
insert into Department (depID, name, description) values (1, 'Covid-19', 'For Coronavirus Patients');
insert into Department (depID, name, description) values (2, 'Pharmacy', 'For delivery of post diagnosis medicine and prescriptions');
insert into Department (depID, name, description) values (3, 'General Surgery', 'For General surgery purposes');
insert into Department (depID, name, description) values (4, 'Emergency', 'For emergency and accidental purposes');
insert into Department (depID, name, description) values (5, 'Critical Care', 'Department for patients in critical condition');
insert into Department (depID, name, description) values (6, 'Gastroenterology', 'Intestinal and gastrological needs department');
insert into Department (depID, name, description) values (7, 'Cardiology', 'Department that deals with cardiovascular system');
insert into Department (depID, name, description) values (8, 'Burn Center', 'Department dealing with Burns');
insert into Department (depID, name, description) values (9, 'Anesthetics', 'Sedatives given to the patients for operations.');
insert into Department (depID, name, description) values (10, 'Executive', 'Management of the organization, including the CEO.');
insert into Department (depID, name, description) values (11, 'Discharge Lounge', 'Department for people that are going to be discharged');
insert into Department (depID, name, description) values (12, 'Finance', 'Keeps track of all expenses and income of the hospital.');
insert into Department (depID, name, description) values (13, 'Gynecology', 'Pregnancy doctor who checks on female patients over the 9 month term of their pregnancy.');
insert into Department (depID, name, description) values (14, 'General Services', 'Department for general civilian inquiries');
insert into Department (depID, name, description) values (15, 'Infection Control', 'Patients who have infectious diseases are housed here.');
insert into Department (depID, name, description) values (16, 'Neurology', 'Operations on the brain and any type of treatment for brain related issues.');
insert into Department (depID, name, description) values (17, 'Occupational Therapy', 'M');
insert into Department (depID, name, description) values (18, 'Orthopedics', 'Injuries related to bones are taken care of in this department.');
insert into Department (depID, name, description) values (19, 'Pain Management',  'Pain treatment using medicine, acupuncture, etc.');
insert into Department (depID, name, description) values (20, 'Radiology', 'Providing scans for patients ranging from CAT to X-Rays.');


/** Appointment */
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (1, 'Covid Testing', '2020-07-03', '6:51 AM', '2:55 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (2, 'COVID-19 Testing', '2019-10-29', '2:11 PM', '10:51 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (3, 'COVID-19 Testing', '2019-11-21', '7:28 AM', '5:36 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (4, 'check-up', '2020-08-19', '3:50 PM', '9:06 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (5, 'check-up', '2020-06-03', '5:57 PM', '8:21 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (6, 'COVID-19 Testing', '2020-10-22', '5:29 PM', '11:37 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (7, 'COVID-19 Testing', '2020-01-31', '7:09 PM', '3:26 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (8, 'check-up', '2020-03-07', '8:00 AM', '2:09 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (9, 'check-up', '2020-10-02', '1:26 PM', '10:21 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (10, 'COVID-19 Testing', '2020-06-23', '9:01 AM', '1:56 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (11, 'check-up', '2020-07-01', '9:43 AM', '8:37 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (12, 'check-up', '2020-07-26', '3:32 AM', '9:46 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (13, 'check-up', '2019-12-18', '9:19 AM', '1:30 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (14, 'COVID-19 Testing', '2020-10-12', '12:52 AM', '12:37 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (15, 'check-up', '2020-06-16', '9:25 AM', '9:57 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (16, 'check-up', '2019-11-26', '10:33 PM', '5:05 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (17, 'check-up', '2020-10-25', '7:35 PM', '7:03 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (18, 'check-up', '2020-04-02', '4:55 AM', '11:06 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (19, 'COVID-19 Testing', '2020-10-06', '2:21 AM', '7:44 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (20, 'COVID-19 Testing', '2020-06-01', '2:48 PM', '7:33 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (21, 'COVID-19 Testing', '2020-07-10', '5:58 PM', '12:44 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (22, 'check-up', '2020-09-14', '5:02 PM', '5:46 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (23, 'COVID-19 Testing', '2020-03-13', '6:18 PM', '8:14 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (24, 'check-up', '2020-09-12', '4:05 AM', '5:56 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (25, 'check-up', '2019-10-31', '7:15 PM', '5:46 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (26, 'COVID-19 Testing', '2020-03-19', '2:36 AM', '6:18 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (27, 'check-up', '2020-08-20', '6:31 AM', '8:25 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (28, 'COVID-19 Testing', '2020-08-13', '5:20 PM', '7:48 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (29, 'check-up', '2020-07-30', '10:37 AM', '8:12 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (30, 'COVID-19 Testing', '2020-10-13', '12:51 AM', '11:46 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (31, 'COVID-19 Testing', '2020-03-25', '2:16 AM', '12:24 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (32, 'check-up', '2020-06-26', '12:56 PM', '3:00 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (33, 'COVID-19 Testing', '2020-01-20', '1:15 AM', '4:48 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (34, 'check-up', '2020-08-05', '7:49 PM', '3:22 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (35, 'check-up', '2020-04-23', '3:20 PM', '6:57 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (36, 'COVID-19 Testing', '2019-12-19', '12:09 AM', '12:04 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (37, 'check-up', '2020-07-25', '8:40 AM', '3:44 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (38, 'check-up', '2020-07-02', '3:15 AM', '6:45 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (39, 'check-up', '2020-07-25', '4:34 AM', '12:11 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (40, 'COVID-19 Testing', '2020-03-20', '10:26 AM', '7:23 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (41, 'check-up', '2020-08-13', '9:41 AM', '8:40 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (42, 'check-up', '2020-02-27', '7:53 AM', '11:29 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (43, 'check-up', '2020-07-26', '5:57 PM', '4:58 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (44, 'check-up', '2020-05-02', '6:08 AM', '8:30 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (45, 'check-up', '2019-11-27', '3:16 AM', '1:16 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (46, 'COVID-19 Testing', '2020-10-03', '3:57 PM', '5:48 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (47, 'COVID-19 Testing', '2020-08-28', '8:20 AM', '4:39 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (48, 'COVID-19 Testing', '2020-08-23', '8:14 AM', '9:04 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (49, 'check-up', '2020-09-07', '8:22 PM', '8:40 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (50, 'COVID-19 Testing', '2019-11-22', '11:40 PM', '10:12 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (51, 'check-up', '2019-12-04', '10:40 PM', '4:19 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (52, 'check-up', '2020-05-04', '3:15 AM', '7:32 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (53, 'COVID-19 Testing', '2019-11-08', '8:42 PM', '5:15 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (54, 'COVID-19 Testing', '2019-09-26', '11:17 AM', '1:53 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (55, 'COVID-19 Testing', '2019-12-10', '2:45 AM', '8:39 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (56, 'check-up', '2020-05-17', '8:02 PM', '1:07 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (57, 'COVID-19 Testing', '2020-06-01', '2:43 PM', '1:15 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (58, 'check-up', '2020-01-15', '3:54 AM', '10:48 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (59, 'check-up', '2020-03-29', '12:38 PM', '10:18 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (60, 'COVID-19 Testing', '2019-12-22', '12:05 AM', '9:51 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (61, 'COVID-19 Testing', '2020-01-02', '4:43 AM', '9:09 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (62, 'check-up', '2019-11-26', '2:02 AM', '3:08 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (63, 'check-up', '2020-01-22', '1:46 AM', '3:35 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (64, 'check-up', '2019-11-17', '3:53 PM', '10:36 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (65, 'check-up', '2019-12-01', '11:46 AM', '8:09 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (66, 'check-up', '2020-08-12', '10:06 PM', '4:55 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (67, 'COVID-19 Testing', '2019-11-22', '6:55 AM', '5:38 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (68, 'check-up', '2020-09-16', '7:51 AM', '6:21 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (69, 'COVID-19 Testing', '2020-05-24', '7:03 PM', '1:49 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (70, 'check-up', '2020-12-29', '2:00 AM', '3:45 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (71, 'COVID-19 Testing', '2020-07-10', '9:41 PM', '2:16 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (72, 'COVID-19 Testing', '202003-25', '6:02 AM', '3:22 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (73, 'COVID-19 Testing', '2020-04-01', '4:59 AM', '4:31 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (74, 'COVID-19 Testing', '2019-11-23', '12:04 PM', '6:50 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (75, 'check-up', '2020-10-22', '8:35 AM', '12:00 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (76, 'check-up', '2020-06-16', '8:05 PM', '10:50 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (77, 'COVID-19 Testing', '2020-07-23', '9:58 PM', '7:12 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (78, 'COVID-19 Testing', '2020-05-09', '9:59 AM', '8:56 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (79, 'COVID-19 Testing', '2020-01-18', '6:48 PM', '7:25 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (80, 'COVID-19 Testing', '2020-02-26', '1:41 AM', '7:35 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (81, 'COVID-19 Testing', '2020-09-18', '7:06 AM', '1:03 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (82, 'COVID-19 Testing', '2020-03-05', '11:24 PM', '3:23 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (83, 'COVID-19 Testing', '2020-09-14', '9:48 AM', '7:33 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (84, 'COVID-19 Testing', '2019-12-02', '6:57 PM', '3:19 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (85, 'COVID-19 Testing', '2020-08-08', '10:36 AM', '6:21 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (86, 'COVID-19 Testing', '2020-03-01', '7:57 PM', '2:27 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (87, 'COVID-19 Testing', '2020-04-15', '9:41 AM', '1:27 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (88, 'COVID-19 Testing', '2020-07-28', '1:28 PM', '3:30 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (89, 'COVID-19 Testing', '2020-10-07', '3:20 PM', '2:38 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (90, 'COVID-19 Testing', '2020-03-10', '6:03 PM', '11:00 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (91, 'COVID-19 Testing', '2019-11-21', '7:15 AM', '3:46 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (92, 'COVID-19 Testing', '2020-04-30', '11:14 AM', '3:37 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (93, 'check-up', '2020-09-11', '12:02 AM', '9:28 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (94, 'COVID-19 Testing', '2020-01-20', '2:18 PM', '6:36 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (95, 'COVID-19 Testing', '2020-05-08', '5:22 AM', '5:51 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (96, 'check-up', '2020-09-30', '2:27 AM', '11:49 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (97, 'check-up', '2020-01-04', '2:11 PM', '5:10 PM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (98, 'COVID-19 Testing', '2019-11-17', '2:50 PM', '8:11 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (99, 'COVID-19 Testing', '2020-10-23', '7:56 PM', '7:39 AM');
insert into Appointment (appointmentID, type, date, timeIn, timeOut) values (100, 'COVID-19 Testing', '2019-11-24', '2:18 AM', '3:07 AM');


/** AppointmentEmployee */
insert into AppointmentEmployee (employeeName, empID) values ('Edith', 1);
insert into AppointmentEmployee (employeeName, empID) values ('Leticia', 2);
insert into AppointmentEmployee (employeeName, empID) values ('Gabriello', 3);
insert into AppointmentEmployee (employeeName, empID) values ('Osbourne', 4);
insert into AppointmentEmployee (employeeName, empID) values ('Nissy', 5);
insert into AppointmentEmployee (employeeName, empID) values ('Tracey', 6);
insert into AppointmentEmployee (employeeName, empID) values ('Gwendolen', 7);
insert into AppointmentEmployee (employeeName, empID) values ('Orelle', 8);
insert into AppointmentEmployee (employeeName, empID) values ('Rae', 9);
insert into AppointmentEmployee (employeeName, empID) values ('Trumaine', 9);
insert into AppointmentEmployee (employeeName, empID) values ('Kristian', 10);
insert into AppointmentEmployee (employeeName, empID) values ('Jobyna', 11);
insert into AppointmentEmployee (employeeName, empID) values ('Rhoda', 12);
insert into AppointmentEmployee (employeeName, empID) values ('Sher', 13);
insert into AppointmentEmployee (employeeName, empID) values ('Lou', 14);
insert into AppointmentEmployee (employeeName, empID) values ('Ruddie', 15);
insert into AppointmentEmployee (employeeName, empID) values ('Ginevra', 16);
insert into AppointmentEmployee (employeeName, empID) values ('Helyn', 17);
insert into AppointmentEmployee (employeeName, empID) values ('Fan', 18);
insert into AppointmentEmployee (employeeName, empID) values ('Cicely', 19);
insert into AppointmentEmployee (employeeName, empID) values ('Caleb', 20);
insert into AppointmentEmployee (employeeName, empID) values ('Krispin', 21);
insert into AppointmentEmployee (employeeName, empID) values ('Bernette', 22);
insert into AppointmentEmployee (employeeName, empID) values ('Marlie', 23);
insert into AppointmentEmployee (employeeName, empID) values ('Kiley', 24);
insert into AppointmentEmployee (employeeName, empID) values ('Theodosia', 25);
insert into AppointmentEmployee (employeeName, empID) values ('Cleon', 26);
insert into AppointmentEmployee (employeeName, empID) values ('Anne', 27);
insert into AppointmentEmployee (employeeName, empID) values ('Orsola', 28);
insert into AppointmentEmployee (employeeName, empID) values ('Ebenezer', 29);
insert into AppointmentEmployee (employeeName, empID) values ('Francoise', 30);
insert into AppointmentEmployee (employeeName, empID) values ('Elfie', 31);
insert into AppointmentEmployee (employeeName, empID) values ('Rosalind', 32);
insert into AppointmentEmployee (employeeName, empID) values ('Kale', 33);
insert into AppointmentEmployee (employeeName, empID) values ('Pavlov', 34);
insert into AppointmentEmployee (employeeName, empID) values ('Wesley', 35);
insert into AppointmentEmployee (employeeName, empID) values ('Smitty', 36);
insert into AppointmentEmployee (employeeName, empID) values ('Magdalene', 37);
insert into AppointmentEmployee (employeeName, empID) values ('Fleur', 38);
insert into AppointmentEmployee (employeeName, empID) values ('Jennette', 39);
insert into AppointmentEmployee (employeeName, empID) values ('Virge', 40);
insert into AppointmentEmployee (employeeName, empID) values ('Kiele', 41);
insert into AppointmentEmployee (employeeName, empID) values ('Lefty', 42);
insert into AppointmentEmployee (employeeName, empID) values ('Diarmid', 43);
insert into AppointmentEmployee (employeeName, empID) values ('Alonzo', 44);
insert into AppointmentEmployee (employeeName, empID) values ('Saunder', 45);
insert into AppointmentEmployee (employeeName, empID) values ('Christen', 46);
insert into AppointmentEmployee (employeeName, empID) values ('Charley', 47);
insert into AppointmentEmployee (employeeName, empID) values ('Jonathon', 48);
insert into AppointmentEmployee (employeeName, empID) values ('Elinor', 49);
insert into AppointmentEmployee (employeeName, empID) values ('Wilfred', 50);
insert into AppointmentEmployee (employeeName, empID) values ('Edita', 51);
insert into AppointmentEmployee (employeeName, empID) values ('Norine', 52);
insert into AppointmentEmployee (employeeName, empID) values ('Joella', 53);
insert into AppointmentEmployee (employeeName, empID) values ('Kakalina', 54);
insert into AppointmentEmployee (employeeName, empID) values ('Georgianna', 55);
insert into AppointmentEmployee (employeeName, empID) values ('Kathlin', 56);
insert into AppointmentEmployee (employeeName, empID) values ('Julianna', 57);
insert into AppointmentEmployee (employeeName, empID) values ('Carmelita', 58);
insert into AppointmentEmployee (employeeName, empID) values ('Marcos', 59);
insert into AppointmentEmployee (employeeName, empID) values ('Afton', 60);
insert into AppointmentEmployee (employeeName, empID) values ('Cary', 61);
insert into AppointmentEmployee (employeeName, empID) values ('Mattias', 62);
insert into AppointmentEmployee (employeeName, empID) values ('Noella', 63);
insert into AppointmentEmployee (employeeName, empID) values ('Joy', 64);
insert into AppointmentEmployee (employeeName, empID) values ('Dory', 65);
insert into AppointmentEmployee (employeeName, empID) values ('Zelma', 66);
insert into AppointmentEmployee (employeeName, empID) values ('Amery', 67);
insert into AppointmentEmployee (employeeName, empID) values ('Joleen', 68);
insert into AppointmentEmployee (employeeName, empID) values ('Shelden', 69);
insert into AppointmentEmployee (employeeName, empID) values ('Wayne', 70);
insert into AppointmentEmployee (employeeName, empID) values ('Abbey', 71);
insert into AppointmentEmployee (employeeName, empID) values ('Meghan', 72);
insert into AppointmentEmployee (employeeName, empID) values ('Buddie', 73);
insert into AppointmentEmployee (employeeName, empID) values ('Shaine', 74);
insert into AppointmentEmployee (employeeName, empID) values ('Lin', 75);
insert into AppointmentEmployee (employeeName, empID) values ('Leona', 76);
insert into AppointmentEmployee (employeeName, empID) values ('Dorette', 77);
insert into AppointmentEmployee (employeeName, empID) values ('Bennie', 78);
insert into AppointmentEmployee (employeeName, empID) values ('Saleem', 79);
insert into AppointmentEmployee (employeeName, empID) values ('Estella', 80);
insert into AppointmentEmployee (employeeName, empID) values ('Nonnah', 81);
insert into AppointmentEmployee (employeeName, empID) values ('Jodie', 82);
insert into AppointmentEmployee (employeeName, empID) values ('Penn', 83);
insert into AppointmentEmployee (employeeName, empID) values ('Aylmer', 84);
insert into AppointmentEmployee (employeeName, empID) values ('Braden', 85);
insert into AppointmentEmployee (employeeName, empID) values ('Ninnetta', 86);
insert into AppointmentEmployee (employeeName, empID) values ('Delmor', 87);
insert into AppointmentEmployee (employeeName, empID) values ('Bar', 88);
insert into AppointmentEmployee (employeeName, empID) values ('Granville', 89);
insert into AppointmentEmployee (employeeName, empID) values ('Calida', 90);
insert into AppointmentEmployee (employeeName, empID) values ('Aurilla', 91);
insert into AppointmentEmployee (employeeName, empID) values ('Wyndham', 92);
insert into AppointmentEmployee (employeeName, empID) values ('Madge', 93);
insert into AppointmentEmployee (employeeName, empID) values ('Marlyn', 94);
insert into AppointmentEmployee (employeeName, empID) values ('Nealy', 95);
insert into AppointmentEmployee (employeeName, empID) values ('Rhianna', 96);
insert into AppointmentEmployee (employeeName, empID) values ('Heloise', 97);
insert into AppointmentEmployee (employeeName, empID) values ('Heloise', 98);
insert into AppointmentEmployee (employeeName, empID) values ('Harry', 99);
insert into AppointmentEmployee (employeeName, empID) values ('Devi', 100);


/** PatientAppointment */
insert into PatientAppointment (patientID, appointmentID) values (1, 1);
insert into PatientAppointment (patientID, appointmentID) values (2, 2);
insert into PatientAppointment (patientID, appointmentID) values (3, 3);
insert into PatientAppointment (patientID, appointmentID) values (4, 4);
insert into PatientAppointment (patientID, appointmentID) values (5, 5);
insert into PatientAppointment (patientID, appointmentID) values (6, 6);
insert into PatientAppointment (patientID, appointmentID) values (7, 7);
insert into PatientAppointment (patientID, appointmentID) values (8, 8);
insert into PatientAppointment (patientID, appointmentID) values (9, 9);
insert into PatientAppointment (patientID, appointmentID) values (10, 10);
insert into PatientAppointment (patientID, appointmentID) values (11, 11);
insert into PatientAppointment (patientID, appointmentID) values (12, 12);
insert into PatientAppointment (patientID, appointmentID) values (13, 13);
insert into PatientAppointment (patientID, appointmentID) values (14, 14);
insert into PatientAppointment (patientID, appointmentID) values (15, 15);
insert into PatientAppointment (patientID, appointmentID) values (16, 16);
insert into PatientAppointment (patientID, appointmentID) values (17, 17);
insert into PatientAppointment (patientID, appointmentID) values (18, 18);
insert into PatientAppointment (patientID, appointmentID) values (19, 19);
insert into PatientAppointment (patientID, appointmentID) values (20, 20);
insert into PatientAppointment (patientID, appointmentID) values (21, 21);
insert into PatientAppointment (patientID, appointmentID) values (22, 22);
insert into PatientAppointment (patientID, appointmentID) values (23, 23);
insert into PatientAppointment (patientID, appointmentID) values (24, 24);
insert into PatientAppointment (patientID, appointmentID) values (25, 25);
insert into PatientAppointment (patientID, appointmentID) values (26, 26);
insert into PatientAppointment (patientID, appointmentID) values (27, 27);
insert into PatientAppointment (patientID, appointmentID) values (28, 28);
insert into PatientAppointment (patientID, appointmentID) values (29, 29);
insert into PatientAppointment (patientID, appointmentID) values (30, 30);
insert into PatientAppointment (patientID, appointmentID) values (31, 31);
insert into PatientAppointment (patientID, appointmentID) values (32, 32);
insert into PatientAppointment (patientID, appointmentID) values (33, 33);
insert into PatientAppointment (patientID, appointmentID) values (34, 34);
insert into PatientAppointment (patientID, appointmentID) values (35, 35);
insert into PatientAppointment (patientID, appointmentID) values (36, 36);
insert into PatientAppointment (patientID, appointmentID) values (37, 37);
insert into PatientAppointment (patientID, appointmentID) values (38, 38);
insert into PatientAppointment (patientID, appointmentID) values (39, 39);
insert into PatientAppointment (patientID, appointmentID) values (40, 40);
insert into PatientAppointment (patientID, appointmentID) values (41, 41);
insert into PatientAppointment (patientID, appointmentID) values (42, 42);
insert into PatientAppointment (patientID, appointmentID) values (43, 43);
insert into PatientAppointment (patientID, appointmentID) values (44, 44);
insert into PatientAppointment (patientID, appointmentID) values (45, 45);
insert into PatientAppointment (patientID, appointmentID) values (46, 46);
insert into PatientAppointment (patientID, appointmentID) values (47, 47);
insert into PatientAppointment (patientID, appointmentID) values (48, 48);
insert into PatientAppointment (patientID, appointmentID) values (49, 49);
insert into PatientAppointment (patientID, appointmentID) values (50, 50);
insert into PatientAppointment (patientID, appointmentID) values (51, 51);
insert into PatientAppointment (patientID, appointmentID) values (52, 52);
insert into PatientAppointment (patientID, appointmentID) values (53, 53);
insert into PatientAppointment (patientID, appointmentID) values (54, 54);
insert into PatientAppointment (patientID, appointmentID) values (55, 55);
insert into PatientAppointment (patientID, appointmentID) values (56, 56);
insert into PatientAppointment (patientID, appointmentID) values (57, 57);
insert into PatientAppointment (patientID, appointmentID) values (58, 58);
insert into PatientAppointment (patientID, appointmentID) values (59, 59);
insert into PatientAppointment (patientID, appointmentID) values (60, 60);
insert into PatientAppointment (patientID, appointmentID) values (61, 61);
insert into PatientAppointment (patientID, appointmentID) values (62, 62);
insert into PatientAppointment (patientID, appointmentID) values (63, 63);
insert into PatientAppointment (patientID, appointmentID) values (64, 64);
insert into PatientAppointment (patientID, appointmentID) values (65, 65);
insert into PatientAppointment (patientID, appointmentID) values (66, 66);
insert into PatientAppointment (patientID, appointmentID) values (67, 67);
insert into PatientAppointment (patientID, appointmentID) values (68, 68);
insert into PatientAppointment (patientID, appointmentID) values (69, 69);
insert into PatientAppointment (patientID, appointmentID) values (70, 70);
insert into PatientAppointment (patientID, appointmentID) values (71, 71);
insert into PatientAppointment (patientID, appointmentID) values (72, 72);
insert into PatientAppointment (patientID, appointmentID) values (73, 73);
insert into PatientAppointment (patientID, appointmentID) values (74, 74);
insert into PatientAppointment (patientID, appointmentID) values (75, 75);
insert into PatientAppointment (patientID, appointmentID) values (76, 76);
insert into PatientAppointment (patientID, appointmentID) values (77, 77);
insert into PatientAppointment (patientID, appointmentID) values (78, 78);
insert into PatientAppointment (patientID, appointmentID) values (79, 79);
insert into PatientAppointment (patientID, appointmentID) values (80, 80);
insert into PatientAppointment (patientID, appointmentID) values (81, 81);
insert into PatientAppointment (patientID, appointmentID) values (82, 82);
insert into PatientAppointment (patientID, appointmentID) values (83, 83);
insert into PatientAppointment (patientID, appointmentID) values (84, 84);
insert into PatientAppointment (patientID, appointmentID) values (85, 85);
insert into PatientAppointment (patientID, appointmentID) values (86, 86);
insert into PatientAppointment (patientID, appointmentID) values (87, 87);
insert into PatientAppointment (patientID, appointmentID) values (88, 88);
insert into PatientAppointment (patientID, appointmentID) values (89, 89);
insert into PatientAppointment (patientID, appointmentID) values (90, 90);
insert into PatientAppointment (patientID, appointmentID) values (91, 91);
insert into PatientAppointment (patientID, appointmentID) values (92, 92);
insert into PatientAppointment (patientID, appointmentID) values (93, 93);
insert into PatientAppointment (patientID, appointmentID) values (94, 94);
insert into PatientAppointment (patientID, appointmentID) values (95, 95);
insert into PatientAppointment (patientID, appointmentID) values (96, 96);
insert into PatientAppointment (patientID, appointmentID) values (97, 97);
insert into PatientAppointment (patientID, appointmentID) values (98, 98);
insert into PatientAppointment (patientID, appointmentID) values (99, 99);
  insert into PatientAppointment (patientID, appointmentID) values (100, 100);

/** Shift Schedule */
insert into ShiftSchedule (timeIn, timeOut, empID) values ('5:19 PM', '1:31 PM', 1);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:41 AM', '4:40 AM', 2);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:51 AM', '12:56 PM', 3);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:16 PM', '1:45 AM', 4);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('6:16 AM', '2:00 AM', 5);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:50 PM', '12:35 PM', 6);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:57 AM', '10:24 AM', 7);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:13 PM', '1:29 PM', 8);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:20 AM', '7:20 AM', 9);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:40 AM', '1:06 PM', 10);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:25 PM', '5:50 PM', 11);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:48 PM', '9:56 PM', 12);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:06 AM', '10:41 AM', 13);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:31 PM', '9:33 PM', 14);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('1:46 AM', '8:47 PM', 15);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('1:33 AM', '8:13 AM', 16);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:05 AM', '5:33 AM', 17);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:05 AM', '4:40 PM', 18);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:25 AM', '4:51 AM', 19);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:44 AM', '4:21 PM', 20);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:54 PM', '4:53 AM', 21);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('5:50 PM', '10:49 AM', 22);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:32 PM', '5:05 AM', 23);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('5:07 AM', '5:56 PM', 24);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:15 AM', '3:19 AM', 25);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:26 AM', '11:57 PM', 26);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:38 AM', '6:04 PM', 27);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:17 PM', '3:25 AM', 28);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('1:24 AM', '7:21 AM', 29);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:57 AM', '8:14 PM', 30);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:54 PM', '2:43 PM', 31);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:14 AM', '3:35 AM', 32);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('6:46 AM', '3:18 AM', 33);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:31 AM', '12:28 PM', 34);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:04 AM', '11:17 PM', 35);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:10 AM', '12:08 AM', 36);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:55 PM', '4:03 PM', 37);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:25 AM', '11:40 PM', 38);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:23 AM', '10:36 AM', 39);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:48 AM', '11:28 PM', 40);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:33 PM', '3:08 AM', 41);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('6:16 PM', '8:23 AM', 42);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:48 AM', '11:34 AM', 43);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:19 AM', '6:06 PM', 44);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:08 PM', '3:08 PM', 45);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('9:27 PM', '3:46 PM', 46);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('5:54 PM', '12:38 AM', 47);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:32 PM', '6:50 AM', 48);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:37 AM', '12:01 PM', 49);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:12 PM', '5:45 AM', 50);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('6:24 PM', '3:38 PM', 51);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('1:30 AM', '10:11 PM', 52);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:11 PM', '2:09 AM', 53);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:16 PM', '6:59 PM', 54);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:23 PM', '6:01 PM', 55);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:17 AM', '6:41 PM', 56);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:38 AM', '5:10 PM', 57);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:04 AM', '8:19 PM', 58);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:04 PM', '2:23 AM', 59);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('1:53 PM', '4:17 PM', 60);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:00 PM', '6:42 PM', 61);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:16 AM', '7:33 PM', 62);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:53 AM', '8:14 PM', 63);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('9:54 PM', '2:33 PM', 64);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('9:36 PM', '8:17 AM', 65);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:20 PM', '7:28 AM', 66);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:36 AM', '9:28 PM', 67);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:42 PM', '12:05 PM', 68);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:03 PM', '4:51 PM', 69);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:22 AM', '8:56 AM', 70);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:37 AM', '2:02 AM', 71);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:51 AM', '2:39 AM', 72);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('5:42 PM', '6:07 AM', 73);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:46 AM', '9:14 PM', 74);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:21 PM', '10:13 PM', 75);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:23 PM', '9:42 PM', 76);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:00 AM', '11:26 AM', 77);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:52 AM', '12:25 AM', 78);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:43 PM', '6:00 AM', 79);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:16 AM', '6:48 PM', 80);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:02 AM', '6:17 AM', 81);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('3:06 PM', '3:37 PM', 82);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:29 PM', '6:24 PM', 83);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('5:32 PM', '5:20 AM', 84);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('9:02 PM', '3:18 PM', 85);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:32 AM', '10:23 AM', 86);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:52 PM', '6:37 PM', 87);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:45 PM', '5:47 PM', 88);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:16 PM', '2:38 PM', 89);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:35 PM', '9:37 PM', 90);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('10:20 PM', '5:03 PM', 91);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('8:08 PM', '5:17 AM', 92);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('6:59 PM', '12:57 PM', 93);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:58 PM', '10:16 AM', 94);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('11:32 AM', '5:10 AM', 95);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('7:22 PM', '10:30 PM', 96);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('4:39 PM', '12:38 PM', 97);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('12:31 PM', '1:52 PM', 98);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('2:36 AM', '10:04 PM', 99);
insert into ShiftSchedule (timeIn, timeOut, empID) values ('9:50 AM', '12:11 PM', 100);


/** Bill */
insert into Bill (billID, amountPaid, date, balance, patientID) values (1, 4562, '2020-04-09', 10272, 1);
insert into Bill (billID, amountPaid, date, balance, patientID) values (2, 5330, '2020-06-25', 13273, 2);
insert into Bill (billID, amountPaid, date, balance, patientID) values (3, 18172.27, '2019-12-01', 8018, 3);
insert into Bill (billID, amountPaid, date, balance, patientID) values (4, 24565.24, '2020-10-12', 12460, 4);
insert into Bill (billID, amountPaid, date, balance, patientID) values (5, 21604.61, '2020-05-27', 15732, 5);
insert into Bill (billID, amountPaid, date, balance, patientID) values (6, 10222, '2020-10-17', 13197, 6);
insert into Bill (billID, amountPaid, date, balance, patientID) values (7, 13343, '2019-12-17', 10061, 7);
insert into Bill (billID, amountPaid, date, balance, patientID) values (8, 9281, '2019-11-27', 602, 8);
insert into Bill (billID, amountPaid, date, balance, patientID) values (9, 13116, '2020-03-23', 20713, 9);
insert into Bill (billID, amountPaid, date, balance, patientID) values (10, 7033, '2020-06-13', 20873, 10);
insert into Bill (billID, amountPaid, date, balance, patientID) values (11, 16572, '2020-01-10', 3796, 11);
insert into Bill (billID, amountPaid, date, balance, patientID) values (12, 23948, '2020-06-30', 9055, 12);
insert into Bill (billID, amountPaid, date, balance, patientID) values (13, 23122, '2020-06-23', 23429, 13);
insert into Bill (billID, amountPaid, date, balance, patientID) values (14, 1051, '2020-05-04', 9262, 14);
insert into Bill (billID, amountPaid, date, balance, patientID) values (15, 10738, '2020-04-15', 15618, 15);
insert into Bill (billID, amountPaid, date, balance, patientID) values (16, 20522, '2020-10-14', 14706, 16);
insert into Bill (billID, amountPaid, date, balance, patientID) values (17, 9940, '2020-05-10', 1268, 17);
insert into Bill (billID, amountPaid, date, balance, patientID) values (18, 19612, '2020-01-10', 16316, 18);
insert into Bill (billID, amountPaid, date, balance, patientID) values (19, 14110, '2019-10-28', 8040, 19);
insert into Bill (billID, amountPaid, date, balance, patientID) values (20, 6523, '2020-04-05', 5924, 20);
insert into Bill (billID, amountPaid, date, balance, patientID) values (21, 14365, '2020-01-16', 7537, 21);
insert into Bill (billID, amountPaid, date, balance, patientID) values (22, 3663, '2020-07-23', 4409, 22);
insert into Bill (billID, amountPaid, date, balance, patientID) values (23, 2112, '2020-10-08', 23719, 23);
insert into Bill (billID, amountPaid, date, balance, patientID) values (24, 1443, '2019-11-19', 23414, 24);
insert into Bill (billID, amountPaid, date, balance, patientID) values (25, 20592, '2020-06-09', 7116, 25);
insert into Bill (billID, amountPaid, date, balance, patientID) values (26, 3469, '2020-08-31', 5654, 26);
insert into Bill (billID, amountPaid, date, balance, patientID) values (27, 22397, '2019-12-29', 4475, 27);
insert into Bill (billID, amountPaid, date, balance, patientID) values (28, 24694, '2020-09-17', 13852, 28);
insert into Bill (billID, amountPaid, date, balance, patientID) values (29, 16864, '2020-02-01', 17356, 29);
insert into Bill (billID, amountPaid, date, balance, patientID) values (30, 2684, '2020-05-15', 16061, 30);
insert into Bill (billID, amountPaid, date, balance, patientID) values (31, 15104, '2020-03-17', 24333, 31);
insert into Bill (billID, amountPaid, date, balance, patientID) values (32, 12671, '2019-11-10', 4893, 32);
insert into Bill (billID, amountPaid, date, balance, patientID) values (33, 21029, '2020-07-12', 16335, 33);
insert into Bill (billID, amountPaid, date, balance, patientID) values (34, 10385, '2019-10-27', 21891, 34);
insert into Bill (billID, amountPaid, date, balance, patientID) values (35, 9925, '2020-09-05', 22023, 35);
insert into Bill (billID, amountPaid, date, balance, patientID) values (36, 24736, '2020-03-19', 2307, 36);
insert into Bill (billID, amountPaid, date, balance, patientID) values (37, 296, '2020-04-05', 15997, 37);
insert into Bill (billID, amountPaid, date, balance, patientID) values (38, 3551, '2020-09-20', 5941, 38);
insert into Bill (billID, amountPaid, date, balance, patientID) values (39, 22278, '2020-02-01', 9559, 39);
insert into Bill (billID, amountPaid, date, balance, patientID) values (40, 16521, '2020-19-02', 14895, 40);
insert into Bill (billID, amountPaid, date, balance, patientID) values (41, 21540, '2020-30-05', 22960, 41);
insert into Bill (billID, amountPaid, date, balance, patientID) values (42, 11564, '2020-21-04', 8718, 42);
insert into Bill (billID, amountPaid, date, balance, patientID) values (43, 11326, '2020-05-01', 14987, 43);
insert into Bill (billID, amountPaid, date, balance, patientID) values (44, 17382, '2019-03-31', 20760, 44);
insert into Bill (billID, amountPaid, date, balance, patientID) values (45, 17205, '2020-04-22', 7614, 45);
insert into Bill (billID, amountPaid, date, balance, patientID) values (46, 9686, '2020-10-14', 22437, 46);
insert into Bill (billID, amountPaid, date, balance, patientID) values (47, 8366, '2020-07-28', 18861, 47);
insert into Bill (billID, amountPaid, date, balance, patientID) values (48, 8629, '2019-12-12', 17110, 48);
insert into Bill (billID, amountPaid, date, balance, patientID) values (49, 24514, '2020-05-20', 15967, 49);
insert into Bill (billID, amountPaid, date, balance, patientID) values (50, 11235, '2020-04-26', 21214, 50);
insert into Bill (billID, amountPaid, date, balance, patientID) values (51, 254, '2020-08-01', 15108, 51);
insert into Bill (billID, amountPaid, date, balance, patientID) values (52, 21820, '2020-01-24', 5398, 52);
insert into Bill (billID, amountPaid, date, balance, patientID) values (53, 19806, '2020-09-23', 11952, 53);
insert into Bill (billID, amountPaid, date, balance, patientID) values (54, 17029, '2020-04-30', 14143, 54);
insert into Bill (billID, amountPaid, date, balance, patientID) values (55, 4759, '2019-12-12', 3647, 55);
insert into Bill (billID, amountPaid, date, balance, patientID) values (56, 16153, '2020-05-20', 14509, 56);
insert into Bill (billID, amountPaid, date, balance, patientID) values (57, 17991, '2020-05-18', 8217, 57);
insert into Bill (billID, amountPaid, date, balance, patientID) values (58, 12716, '2020-03-30', 619, 58);
insert into Bill (billID, amountPaid, date, balance, patientID) values (59, 24631, '2020-01-17', 9805, 59);
insert into Bill (billID, amountPaid, date, balance, patientID) values (60, 17702, '2020-01-30', 18252, 60);
insert into Bill (billID, amountPaid, date, balance, patientID) values (61, 24728, '2020-10-04', 24798, 61);
insert into Bill (billID, amountPaid, date, balance, patientID) values (62, 16016, '2019-11-27', 13537, 62);
insert into Bill (billID, amountPaid, date, balance, patientID) values (63, 18571, '2020-04-30', 23224, 63);
insert into Bill (billID, amountPaid, date, balance, patientID) values (64, 2499, '2019-11-28', 21387, 64);
insert into Bill (billID, amountPaid, date, balance, patientID) values (65, 1148, '2019-11-25', 20841, 65);
insert into Bill (billID, amountPaid, date, balance, patientID) values (66, 3329, '2019-11-05', 6568, 66);
insert into Bill (billID, amountPaid, date, balance, patientID) values (67, 24887, '2020-08-25', 1742, 67);
insert into Bill (billID, amountPaid, date, balance, patientID) values (68, 4086, '2020-08-08', 2410, 68);
insert into Bill (billID, amountPaid, date, balance, patientID) values (69, 6522, '2020-01-03', 18981, 69);
insert into Bill (billID, amountPaid, date, balance, patientID) values (70, 22127, '2020-08-26', 540, 70);
insert into Bill (billID, amountPaid, date, balance, patientID) values (71, 10270, '2020-10-04', 12209, 71);
insert into Bill (billID, amountPaid, date, balance, patientID) values (72, 12967, '2020-10-08', 9750, 72);
insert into Bill (billID, amountPaid, date, balance, patientID) values (73, 7356, '2019-12-10', 24072, 73);
insert into Bill (billID, amountPaid, date, balance, patientID) values (74, 8214, '2020-01-25', 8094, 74);
insert into Bill (billID, amountPaid, date, balance, patientID) values (75, 5487, '2020-07-31', 11362, 75);
insert into Bill (billID, amountPaid, date, balance, patientID) values (76, 863, '2020-04-04', 1560, 76);
insert into Bill (billID, amountPaid, date, balance, patientID) values (77, 21254, '2020-03-10', 17987, 77);
insert into Bill (billID, amountPaid, date, balance, patientID) values (78, 17555, '2020-01-29', 7705.22, 78);
insert into Bill (billID, amountPaid, date, balance, patientID) values (79, 13483, '2019-11-04', 1142, 79);
insert into Bill (billID, amountPaid, date, balance, patientID) values (80, 1145.36, '2020-09-29', 18997, 80);
insert into Bill (billID, amountPaid, date, balance, patientID) values (81, 11404, '2020-02-25', 7939, 81);
insert into Bill (billID, amountPaid, date, balance, patientID) values (82, 24471, '2020-05-13', 19605, 82);
insert into Bill (billID, amountPaid, date, balance, patientID) values (83, 20974, '2020-07-01', 13507, 83);
insert into Bill (billID, amountPaid, date, balance, patientID) values (84, 18370, '2020-05-09', 16455, 84);
insert into Bill (billID, amountPaid, date, balance, patientID) values (85, 23743, '2020-01-21', 6506, 85);
insert into Bill (billID, amountPaid, date, balance, patientID) values (86, 6557, '2020-05-25-', 8075, 86);
insert into Bill (billID, amountPaid, date, balance, patientID) values (87, 7521, '2019-11-24', 7454, 87);
insert into Bill (billID, amountPaid, date, balance, patientID) values (88, 9380, '2020-02-23', 23062, 88);
insert into Bill (billID, amountPaid, date, balance, patientID) values (89, 1220, '2019-11-21', 13084, 89);
insert into Bill (billID, amountPaid, date, balance, patientID) values (90, 17161, '2020-02-01', 2139, 90);
insert into Bill (billID, amountPaid, date, balance, patientID) values (91, 16543, '2020-03-31', 2445, 91);
insert into Bill (billID, amountPaid, date, balance, patientID) values (92, 20455, '2020-03-17', 14795, 92);
insert into Bill (billID, amountPaid, date, balance, patientID) values (93, 18355, '2020-10-23', 16728, 93);
insert into Bill (billID, amountPaid, date, balance, patientID) values (94, 18178, '2019-01-09', 4576, 94);
insert into Bill (billID, amountPaid, date, balance, patientID) values (95, 5784, '2020-01-12', 24910, 95);
insert into Bill (billID, amountPaid, date, balance, patientID) values (96, 1349, '2019-11-29', 7124, 96);
insert into Bill (billID, amountPaid, date, balance, patientID) values (97, 11555, '2020-02-18', 14060, 97);
insert into Bill (billID, amountPaid, date, balance, patientID) values (98, 21384, '2020-04-26', 20940, 98);
insert into Bill (billID, amountPaid, date, balance, patientID) values (99, 15565, '2020-05-27', 14650, 99);
insert into Bill (billID, amountPaid, date, balance, patientID) values (100, 20607, '2019-11-07', 18615, 100);

/** Select Queries */

/** Selecting all of the patients who have covid-19 and who have a covid-19 testing appointment */
SELECT CONCAT(p.firstName, ' ',p.lastName) AS fullname, p.age AS age
FROM Patient as p
JOIN PatientAppointment as ap on p.patientID = ap.patientID
JOIN Appointment as a on ap.patientID = a.appointmentID
WHERE p.conditions = 'COVID-19' && a.type = "COVID-19 Testing"
ORDER BY p.age;

/* Finds the average age of people who have covid */
SELECT ROUND(AVG(age),0) AS AvgAge
FROM Patient as p
JOIN PatientAppointment as ap on p.patientID = ap.patientID
JOIN Appointment as a on ap.patientID = a.appointmentID
WHERE p.conditions = 'COVID-19' && a.type = "COVID-19 Testing"
ORDER BY p.age;

/** Selecting all of the patients who are blood donors and have O blood type */
SELECT CONCAT(d.firstName, ' ',d.lastName) as fullname
FROM Donor AS d
JOIN DonorPhone as dp on d.donorID = dp.donorID
WHERE d.donorType = "Blood" && (d.bloodType = 'O+' or d.bloodType = 'O-')
ORDER BY dp.phone;

/* Selects all of the patients who have a balance that is greater than 0 */
SELECT CONCAT(p.firstName, ' ',p.lastName) AS fullname, SUM(b.balance - b.amountPaid) as AmountOwed
FROM Patient as p
JOIN Bill as b on p.patientID = b.patientID
GROUP BY p.patientID
HAVING AmountOwed > 0;

/* Selects all of the patients who have Covid-19 and displays their billing info */
SELECT CONCAT(p.firstName, ' ',p.lastName) AS fullname, b.balance as Balance, b.amountPaid amountPaid, Sum(b.balance - b.amountPaid) as AmountOwed
FROM Bill as b
JOIN Patient as p on b.patientID = p.patientID
WHERE p.conditions = 'COVID-19'
GROUP BY p.patientID;

/* Subquery: Selecting all of the patients who don't have Covid-19 */
SELECT p.patientID, CONCAT(p.firstName, ' ', p.lastName) as Fullname
FROM Patient as p
JOIN PatientAppointment AS pa on pa.patientID = p.patientID
WHERE p.patientID NOT IN
(SELECT p1.patientID
FROM Patient as p1
WHERE p1.conditions = 'COVID-19'
)
GROUP BY p.patientID;
