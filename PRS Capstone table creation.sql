/*
drop table Vendor

create table Vendor (
	Id int not null primary key identity(1,1),
	Code nvarchar(30) not null,
	Name nvarchar(255) not null,
	Address nvarchar(255) not null,
	City nvarchar(255) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsPreApproved bit not null default 0,
	Active bit not null default 1
	)

	select * from vendor

	create unique index uix_code on Vendor(code)
*/

/*

drop table product


create table product (
	Id int primary key not null identity(1,1),
	VendorId int not null foreign key references vendor(id),
	PartNumber nvarchar(50) not null,
	[Name] nvarchar(150) not null,
	Price decimal(10,2) not null,
	Unit nvarchar(25) not null,
	PhotoPath nvarchar(255),
	Active bit not null default 1
)

--create unique index uix_PartNumber on product(partnumber)
*/

--select * from [user]

/*insert [user]
(username, password, firstname, lastname, phone, email, isreviewer, isadmin, active)
values
('mlc', 'password123', 'Mitchell', 'Combs', '5135555555', 'Mlc@gmail', 1, 1, 1)

insert [user]
(username, password, firstname, lastname, phone, email, isreviewer, isadmin, active)
values
('TommyB', 'password123', 'Tom', 'Brady', '5135555556', 'Tbrady@gmail', 1, 0, 1)

insert [user]
(username, password, firstname, lastname, phone, email, isreviewer, isadmin, active)
values
('AndyD', 'password123', 'Andy', 'Dalton', '5135555557', 'ADalton@gmail', 0, 0, 1)

update [user] set
	username= 'Mlc'
		where firstname='mitchell'
*/

--Select * from vendor

--insert vendor
--(Code, name, address, city, state,  zip, phone, email, ispreapproved, active)
--values
--(1, 'Target', '555 Main', 'Cincinnati', 'OH',  '45000', '5130000000', 'Target@gmail', 0, 0)

--insert vendor
--(Code, name, address, city, state,  zip, phone, email, ispreapproved, active)
--values
--(2, 'Kroger', '556 Main', 'Cincinnati', 'OH',  '45001', '5130000001', 'Kroger@gmail', 1, 1)

--insert vendor
--(Code, name, address, city, state,  zip, phone, email, ispreapproved, active)
--values
--(3, 'Walmart', '557 Main', 'Cincinnati', 'OH',  '45002', '5130000002', 'Walmart@gmail', 1, 1)

--update vendor set
--	ispreapproved=1, active=1
--		where name='target'


--drop table purchaserequest

--create table PurchaseRequest (
--	Id int not null primary key identity(1,1),
--	UserId int not null foreign key references [user](id),
--	[Description] nvarchar(100) not null,
--	Justification nvarchar(255),
--	DeliveryMode nvarchar(25) not null,
--	Status nvarchar(10) not null default 'new',
--	Total decimal(10,2) not null default 0,
--	Active bit not null default 1,
--	ReasonForRejection nvarchar(100)
--)

--select * from PurchaseRequest


create table PurchaseRequestLineItem (
	Id int not null primary key identity(1,1),
	PurchaseId int not null foreign key references purchaserequest(id),
	ProductId int not null foreign key references product(id),
	Quantity int not null default 1,
	Active bit not null default 1
)

--select * from PurchaseRequestLineItem