




CREATE TABLE Document (
 primaryKey UUID NOT NULL,
 Number INT NOT NULL,
 CreateDate TIMESTAMP(3) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Product (
 primaryKey UUID NOT NULL,
 ProductCode INT NOT NULL,
 Measure VARCHAR(255) NULL,
 Name VARCHAR(255) NULL,
 Description VARCHAR(255) NULL,
 Price DOUBLE PRECISION NULL,
 Weight DOUBLE PRECISION NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Employee (
 primaryKey UUID NOT NULL,
 Number INT NOT NULL,
 LastName VARCHAR(255) NULL,
 FirstName VARCHAR(255) NULL,
 MiddleName VARCHAR(255) NULL,
 PhoneNumber VARCHAR(255) NULL,
 Email VARCHAR(255) NULL,
 Position VARCHAR(9) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE InvoiceItem (
 primaryKey UUID NOT NULL,
 Amount INT NULL,
 Weight DOUBLE PRECISION NULL,
 Price DOUBLE PRECISION NULL,
 TotalSum DOUBLE PRECISION NULL,
 Product_m0 UUID NULL,
 Invoice_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE "Order" (
 primaryKey UUID NOT NULL,
 ShipmentDate TIMESTAMP(3) NULL,
 Status VARCHAR(10) NULL,
 PaymentDate TIMESTAMP(3) NULL,
 TotalSum DOUBLE PRECISION NULL,
 Number INT NOT NULL,
 CreateDate TIMESTAMP(3) NULL,
 Manager_m0 UUID NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE OrderItem (
 primaryKey UUID NOT NULL,
 Amount INT NULL,
 PriceWTaxes DOUBLE PRECISION NULL,
 TotalSum DOUBLE PRECISION NULL,
 Product_m0 UUID NULL,
 Order_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Invoice (
 primaryKey UUID NOT NULL,
 Status VARCHAR(16) NULL,
 ShipmentDateTime TIMESTAMP(3) NULL,
 TotalSum DOUBLE PRECISION NULL,
 TotalWeight DOUBLE PRECISION NULL,
 Note VARCHAR(255) NULL,
 CustomerName VARCHAR(255) NULL,
 Number INT NOT NULL,
 CreateDate TIMESTAMP(3) NULL,
 ResponsiblePerson_m0 UUID NULL,
 Order_m0 UUID NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE StoreProduct (
 primaryKey UUID NOT NULL,
 Amount INT NULL,
 Product_m0 UUID NULL,
 Storehouse_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Storehouse (
 primaryKey UUID NOT NULL,
 Address VARCHAR(255) NULL,
 Number INT NOT NULL,
 Storekeeper_m0 UUID NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (
 LockKey VARCHAR(300) NOT NULL,
 UserName VARCHAR(300) NOT NULL,
 LockDate TIMESTAMP(3) NULL,
 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (
 primaryKey UUID NOT NULL,
 Module VARCHAR(1000) NULL,
 Name VARCHAR(255) NULL,
 Value TEXT NULL,
 "User" VARCHAR(255) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (
 primaryKey UUID NOT NULL,
 "User" VARCHAR(255) NULL,
 Published BOOLEAN NULL,
 Module VARCHAR(255) NULL,
 Name VARCHAR(255) NULL,
 Value TEXT NULL,
 HotKeyData INT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (
 primaryKey UUID NOT NULL,
 Name VARCHAR(255) NOT NULL,
 DataObjectView VARCHAR(255) NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (
 primaryKey UUID NOT NULL,
 Name VARCHAR(255) NOT NULL,
 "Order" INT NOT NULL,
 PresentView VARCHAR(255) NOT NULL,
 DetailedView VARCHAR(255) NOT NULL,
 FilterSetting_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (
 primaryKey UUID NOT NULL,
 Caption VARCHAR(255) NOT NULL,
 DataObjectView VARCHAR(255) NOT NULL,
 ConnectMasterProp VARCHAR(255) NOT NULL,
 OwnerConnectProp VARCHAR(255) NULL,
 FilterSetting_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (
 primaryKey UUID NOT NULL,
 DataObjectType VARCHAR(255) NOT NULL,
 Container VARCHAR(255) NULL,
 ContainerTag VARCHAR(255) NULL,
 FieldsToView VARCHAR(255) NULL,
 FilterSetting_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (
 primaryKey UUID NOT NULL,
 AppName VARCHAR(256) NULL,
 UserName VARCHAR(512) NULL,
 UserGuid UUID NULL,
 ModuleName VARCHAR(1024) NULL,
 ModuleGuid UUID NULL,
 SettName VARCHAR(256) NULL,
 SettGuid UUID NULL,
 SettLastAccessTime TIMESTAMP(3) NULL,
 StrVal VARCHAR(256) NULL,
 TxtVal TEXT NULL,
 IntVal INT NULL,
 BoolVal BOOLEAN NULL,
 GuidVal UUID NULL,
 DecimalVal DECIMAL(20,10) NULL,
 DateTimeVal TIMESTAMP(3) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (
 primaryKey UUID NOT NULL,
 Category VARCHAR(64) NULL,
 EventId INT NULL,
 Priority INT NULL,
 Severity VARCHAR(32) NULL,
 Title VARCHAR(256) NULL,
 Timestamp TIMESTAMP(3) NULL,
 MachineName VARCHAR(32) NULL,
 AppDomainName VARCHAR(512) NULL,
 ProcessId VARCHAR(256) NULL,
 ProcessName VARCHAR(512) NULL,
 ThreadName VARCHAR(512) NULL,
 Win32ThreadId VARCHAR(128) NULL,
 Message VARCHAR(2500) NULL,
 FormattedMessage TEXT NULL,
 PRIMARY KEY (primaryKey));



 ALTER TABLE InvoiceItem ADD CONSTRAINT FK6b13f8e141474c8fa2be524d580728c36cb4adce FOREIGN KEY (Product_m0) REFERENCES Product; 
CREATE INDEX Index6b13f8e141474c8fa2be524d580728c36cb4adce on InvoiceItem (Product_m0); 

 ALTER TABLE InvoiceItem ADD CONSTRAINT FK956de1376853dbd72c90b4fc77b34a1065a7b353 FOREIGN KEY (Invoice_m0) REFERENCES Invoice; 
CREATE INDEX Index956de1376853dbd72c90b4fc77b34a1065a7b353 on InvoiceItem (Invoice_m0); 

 ALTER TABLE "Order" ADD CONSTRAINT FK019345231d820c33559edebf1e86bd5d4bd53c74 FOREIGN KEY (Manager_m0) REFERENCES Employee; 
CREATE INDEX Index019345231d820c33559edebf1e86bd5d4bd53c74 on "Order" (Manager_m0); 

 ALTER TABLE OrderItem ADD CONSTRAINT FK18fea1ee9a731e52489114855ff118548798e10c FOREIGN KEY (Product_m0) REFERENCES Product; 
CREATE INDEX Index18fea1ee9a731e52489114855ff118548798e10c on OrderItem (Product_m0); 

 ALTER TABLE OrderItem ADD CONSTRAINT FKff800bd0bec1ed8a9fe70239b2d0fc6ef9f2bc4c FOREIGN KEY (Order_m0) REFERENCES "Order"; 
CREATE INDEX Indexff800bd0bec1ed8a9fe70239b2d0fc6ef9f2bc4c on OrderItem (Order_m0); 

 ALTER TABLE Invoice ADD CONSTRAINT FKc95925f454f81c0a29c7c2c9e43414b66c99656e FOREIGN KEY (ResponsiblePerson_m0) REFERENCES Employee; 
CREATE INDEX Indexc95925f454f81c0a29c7c2c9e43414b66c99656e on Invoice (ResponsiblePerson_m0); 

 ALTER TABLE Invoice ADD CONSTRAINT FKef621d158f537998a10cc64f9edd24b3f8e864c3 FOREIGN KEY (Order_m0) REFERENCES "Order"; 
CREATE INDEX Indexef621d158f537998a10cc64f9edd24b3f8e864c3 on Invoice (Order_m0); 

 ALTER TABLE StoreProduct ADD CONSTRAINT FK81df1790d937ae4e083b80d9132881c97aecad6f FOREIGN KEY (Product_m0) REFERENCES Product; 
CREATE INDEX Index81df1790d937ae4e083b80d9132881c97aecad6f on StoreProduct (Product_m0); 

 ALTER TABLE StoreProduct ADD CONSTRAINT FKdca45c3915edd46590c360503f2fc14b4218cb35 FOREIGN KEY (Storehouse_m0) REFERENCES Storehouse; 
CREATE INDEX Indexdca45c3915edd46590c360503f2fc14b4218cb35 on StoreProduct (Storehouse_m0); 

 ALTER TABLE Storehouse ADD CONSTRAINT FK30e94b582607ad98cbd78e77e97a1555a7f12a3b FOREIGN KEY (Storekeeper_m0) REFERENCES Employee; 
CREATE INDEX Index30e94b582607ad98cbd78e77e97a1555a7f12a3b on Storehouse (Storekeeper_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKc4378e39870eb056aec84088683297a01d2a6200 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK921d16269835017e2a0d0e29ad6fb175454a70d0 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKce38ef0db3f01a53acaa49fed8853fb941ad47ba FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

