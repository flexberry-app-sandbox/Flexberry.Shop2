



CREATE TABLE [Document] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Number] INT  NOT NULL,

	 [CreateDate] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Product] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ProductCode] INT  NOT NULL,

	 [Measure] VARCHAR(255)  NULL,

	 [Name] VARCHAR(255)  NULL,

	 [Description] VARCHAR(255)  NULL,

	 [Price] FLOAT  NULL,

	 [Weight] FLOAT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Employee] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Number] INT  NOT NULL,

	 [LastName] VARCHAR(255)  NULL,

	 [FirstName] VARCHAR(255)  NULL,

	 [MiddleName] VARCHAR(255)  NULL,

	 [PhoneNumber] VARCHAR(255)  NULL,

	 [Email] VARCHAR(255)  NULL,

	 [Position] VARCHAR(9)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [InvoiceItem] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Amount] INT  NULL,

	 [Weight] FLOAT  NULL,

	 [Price] FLOAT  NULL,

	 [TotalSum] FLOAT  NULL,

	 [Product_m0] UNIQUEIDENTIFIER  NULL,

	 [Invoice_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Order] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ShipmentDate] DATETIME  NULL,

	 [Status] VARCHAR(10)  NULL,

	 [PaymentDate] DATETIME  NULL,

	 [TotalSum] FLOAT  NULL,

	 [Number] INT  NOT NULL,

	 [CreateDate] DATETIME  NULL,

	 [Manager_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [OrderItem] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Amount] INT  NULL,

	 [PriceWTaxes] FLOAT  NULL,

	 [TotalSum] FLOAT  NULL,

	 [Product_m0] UNIQUEIDENTIFIER  NULL,

	 [Order_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Invoice] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Status] VARCHAR(16)  NULL,

	 [ShipmentDateTime] DATETIME  NULL,

	 [TotalSum] FLOAT  NULL,

	 [TotalWeight] FLOAT  NULL,

	 [Note] VARCHAR(255)  NULL,

	 [CustomerName] VARCHAR(255)  NULL,

	 [Number] INT  NOT NULL,

	 [CreateDate] DATETIME  NULL,

	 [ResponsiblePerson_m0] UNIQUEIDENTIFIER  NULL,

	 [Order_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [StoreProduct] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Amount] INT  NULL,

	 [Product_m0] UNIQUEIDENTIFIER  NULL,

	 [Storehouse_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Storehouse] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Address] VARCHAR(255)  NULL,

	 [Number] INT  NOT NULL,

	 [Storekeeper_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))




