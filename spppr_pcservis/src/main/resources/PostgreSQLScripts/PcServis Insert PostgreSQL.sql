-- computerBrand
INSERT INTO "computerBrand"("brandID", "brandName")
VALUES (nextval('computerBrand_seq'), 'Acer');
INSERT INTO "computerBrand"("brandID", "brandName")
VALUES (nextval('computerBrand_seq'), 'Lenovo');
INSERT INTO "computerBrand"("brandID", "brandName")
VALUES (nextval('computerBrand_seq'), 'Apple');
INSERT INTO "computerBrand"("brandID", "brandName")
VALUES (nextval('computerBrand_seq'), 'Hp');
INSERT INTO "computerBrand"("brandID", "brandName")
VALUES (nextval('computerBrand_seq'), 'Asus');


-- computerModel
INSERT INTO "computerModel"("modelID", "modelName")
VALUES (nextval('computerModel_seq'), 'Acer Aspire F15-537G');
INSERT INTO "computerModel"("modelID", "modelName")
VALUES (nextval('computerModel_seq'), 'Lenovo ThinkPad T460');
INSERT INTO "computerModel"("modelID", "modelName")
VALUES (nextval('computerModel_seq'), 'Apple MacBook Pro 13.3"');
INSERT INTO "computerModel"("modelID", "modelName")
VALUES (nextval('computerModel_seq'), 'HP Envy 15"');
INSERT INTO "computerModel"("modelID", "modelName")
VALUES (nextval('computerModel_seq'), 'Asus VivoBook 17"');


-- computerType
INSERT INTO "computerType"("typeID", "typeName")
VALUES (nextval('computerType_seq'), 'Laptop');
INSERT INTO "computerType"("typeID", "typeName")
VALUES (nextval('computerType_seq'), 'Laptop');
INSERT INTO "computerType"("typeID", "typeName")
VALUES (nextval('computerType_seq'), 'Desktop');
INSERT INTO "computerType"("typeID", "typeName")
VALUES (nextval('computerType_seq'), '2 In 1');
INSERT INTO "computerType"("typeID", "typeName")
VALUES (nextval('computerType_seq'), 'Tablet');


-- client
INSERT INTO "client"("clientID", "firstName", "lastName", "contact", "address", "username", "password")
VALUES (nextval('client_seq'), 'Marko', 'Stefanov', '+381659931414', 'Stefana Velikog 27', 'markoSTE11', 'markocar123');
INSERT INTO "client"("clientID", "firstName", "lastName", "contact", "address", "username", "password")
VALUES (nextval('client_seq'), 'John', 'Johnson', '+381677313414', '60th Street', 'jJohn3', 'posthamilton');
INSERT INTO "client"("clientID", "firstName", "lastName", "contact", "address", "username", "password")
VALUES (nextval('client_seq'), 'Gregory', 'Jezckewizvc', '+38165993224', 'PostStrasse 99', 'gregory', 'gregory88883');
INSERT INTO "client"("clientID", "firstName", "lastName", "contact", "address", "username", "password")
VALUES (nextval('client_seq'), 'Igor', 'Matin', '+381651131414', '9 Oktobar 22', 'nmvcastello', 'mmwcastelofr33');
INSERT INTO "client"("clientID", "firstName", "lastName", "contact", "address", "username", "password")
VALUES (nextval('client_seq'), 'Vishtun', 'Parashwuk', '+001659931414', 'Delhi Street', 'mnsootmulesof1', 'parashwunKeys');


-- computer
INSERT INTO "computer"("computerID", "modelNum", "spec", "client", "computerBrand", "computerModel", "computerType")
VALUES (nextval('computer_seq'), 'GH3321FKII12', 'AMD Ryzen 7 4700U', 1, 1, 2, 3);
INSERT INTO "computer"("computerID", "modelNum", "spec", "client", "computerBrand", "computerModel", "computerType")
VALUES (nextval('computer_seq'), 'FF889KKJ2123', 'Intel i-7 105100G', 2, 3, 3, 3);
INSERT INTO "computer"("computerID", "modelNum", "spec", "client", "computerBrand", "computerModel", "computerType")
VALUES (nextval('computer_seq'), 'GJKKKSIA88821', 'AMD Ryzen 3 3200U', 1, 1, 1, 1);
INSERT INTO "computer"("computerID", "modelNum", "spec", "client", "computerBrand", "computerModel", "computerType")
VALUES (nextval('computer_seq'), 'GH3321FKII12', 'AMD Ryzen 5 4600H', 4, 1, 4, 3);
INSERT INTO "computer"("computerID", "modelNum", "spec", "client", "computerBrand", "computerModel", "computerType")
VALUES (nextval('computer_seq'), 'GH3321FKII12', 'AMD Ryzen 7 4700U', 5, 5, 5, 1);


-- staff
INSERT INTO "staff"("staffID", "firstName", "lastName", "active", "pid", "address", "gender", "city", "username", "dob")
VALUES (nextval('staff_seq'), 'Luke', 'Smith', 'true', '2209112345691', 'Downtown road 3002', 'male', 'Cincinati', 'luke22', '01/01/1984');

-- repair
INSERT INTO "repair"("repairID", "staff", "partName", "partType", "amount", "repairPrice", "dor", "computer")
VALUES (nextval('repair_seq'), 1, 'Motherboard', 'A', 80, 150.84, '01/01/2020', 3);

-- sale
INSERT INTO "sale"("saleID", "pcName", "pcSpec", "pcPrice", "dos", "staff", "computer")
VALUES (nextval('sale_seq'), 'Acer Aspire F15', 'Intel i5 5200HQ', 850.99, '01/01/1984', 1, 4);