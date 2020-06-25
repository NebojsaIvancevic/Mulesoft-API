DROP TABLE IF EXISTS computer CASCADE;
DROP TABLE IF EXISTS sale CASCADE;
DROP TABLE IF EXISTS repair CASCADE;
DROP TABLE IF EXISTS staff CASCADE;
DROP TABLE IF EXISTS client CASCADE;
DROP TABLE IF EXISTS "computerBrand" CASCADE;
DROP TABLE IF EXISTS "computerModel" CASCADE;
DROP TABLE IF EXISTS "computerType" CASCADE;

DROP SEQUENCE IF EXISTS computer_seq;
DROP SEQUENCE IF EXISTS sale_seq;
DROP SEQUENCE IF EXISTS repair_seq;
DROP SEQUENCE IF EXISTS staff_seq;
DROP SEQUENCE IF EXISTS client_seq;
DROP SEQUENCE IF EXISTS computerBrand_seq;
DROP SEQUENCE IF EXISTS computerModel_seq;
DROP SEQUENCE IF EXISTS computerType_seq;

CREATE TABLE "computerBrand"(
	"brandID" integer not null,
    "brandName" varchar(30) not null
);

CREATE TABLE "computerModel"(
	"modelID" integer not null,
    "modelName" varchar(30) not null
);

CREATE TABLE "computerType"(
	"typeID" integer not null,
    "typeName" varchar(30) not null
);

CREATE TABLE client(
	"clientID" integer not null,
        "firstName" varchar(20) not null,
	"lastName" varchar(30) not null,
	contact varchar(30) not null,
	address varchar(30),
	username varchar(30) not null,
	password varchar(50) not null
);

CREATE TABLE staff(
	"staffID" integer not null,
        "firstName" varchar(20) not null,
	"lastName" varchar(30) not null,
	active boolean not null,
	pid varchar(13) not null,
	address varchar(20),
	gender varchar(10) not null,
	city varchar(10) not null,
	username varchar(30) not null,
	dob date not null
);

CREATE TABLE repair(
	"repairID" integer not null,
	staff integer not null,
	"partName" varchar(20) not null,
	"partType" char(1) not null,
	amount integer not null, 
	"repairPrice" numeric not null,
	dor date not null,
	computer integer not null
);

CREATE TABLE sale(
	"saleID" integer not null,
        "pcName" varchar(20) not null,
	"pcSpec" varchar(30) not null,
	"pcPrice" numeric not null,
	dos date not null,
	staff integer not null,
	computer integer not null
);

CREATE TABLE computer(
	"computerID" integer not null,
        "modelNum" varchar(20) not null,
	spec varchar(20) not null,
	client integer not null,
	"computerBrand" integer not null,
	"computerModel" integer not null,
	"computerType" integer not null
);


-- primary keys
ALTER TABLE computer ADD CONSTRAINT
PK_Computer PRIMARY KEY("computerID");
ALTER TABLE client ADD CONSTRAINT
PK_Client PRIMARY KEY("clientID");
ALTER TABLE staff ADD CONSTRAINT
PK_Staff PRIMARY KEY("staffID");
ALTER TABLE sale ADD CONSTRAINT
PK_Sale PRIMARY KEY("saleID");
ALTER TABLE repair ADD CONSTRAINT
PK_Repair PRIMARY KEY("repairID");
ALTER TABLE "computerType" ADD CONSTRAINT
PK_ComputerType PRIMARY KEY("typeID");
ALTER TABLE "computerBrand" ADD CONSTRAINT
PK_ComputerBrand PRIMARY KEY("brandID");
ALTER TABLE "computerModel" ADD CONSTRAINT
PK_ComputerModel PRIMARY KEY("modelID");


-- business logic constraints
ALTER TABLE repair ADD CONSTRAINT
CK_Repair_PartType CHECK ("partType" IN ('A', 'B', 'C'));
ALTER TABLE staff ADD CONSTRAINT
CK_Staff_Gender CHECK (gender IN ('male', 'female'));
ALTER TABLE staff ADD CONSTRAINT
CK_Staff_Active CHECK (active IN ('true', 'false'));


-- foreign keys computer
ALTER TABLE computer ADD CONSTRAINT
FK_Computer_Client FOREIGN KEY(client) REFERENCES client("clientID");
ALTER TABLE computer ADD CONSTRAINT
FK_Computer_ComputerBrand FOREIGN KEY("computerBrand") REFERENCES "computerBrand"("brandID");
ALTER TABLE computer ADD CONSTRAINT
FK_Computer_ComputerModel FOREIGN KEY("computerModel") REFERENCES "computerModel"("modelID");
ALTER TABLE computer ADD CONSTRAINT
FK_Computer_ComputerType FOREIGN KEY("computerType") REFERENCES "computerType"("typeID");


-- foreign keys sale
ALTER TABLE sale ADD CONSTRAINT
FK_Sale_Staff FOREIGN KEY(staff) REFERENCES staff("staffID");
ALTER TABLE sale ADD CONSTRAINT
FK_Sale_Computer FOREIGN KEY(computer) REFERENCES computer("computerID");


-- foreign keys repair
ALTER TABLE repair ADD CONSTRAINT
FK_Repair_Staff FOREIGN KEY(staff) REFERENCES staff("staffID");
ALTER TABLE repair ADD CONSTRAINT
FK_Repair_Computer FOREIGN KEY(computer) REFERENCES computer("computerID");




CREATE SEQUENCE computerBrand_seq
INCREMENT 1;
CREATE SEQUENCE computerModel_seq
INCREMENT 1;
CREATE SEQUENCE computerType_seq
INCREMENT 1;
CREATE SEQUENCE staff_seq
INCREMENT 1;
CREATE SEQUENCE client_seq
INCREMENT 1;
CREATE SEQUENCE repair_seq
INCREMENT 1;
CREATE SEQUENCE sale_seq
INCREMENT 1;
CREATE SEQUENCE computer_seq
INCREMENT 1;