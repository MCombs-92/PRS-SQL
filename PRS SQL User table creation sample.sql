--create database PRSDatabase

--drop table [user]

create table [User] (
	ID int not null primary key identity(1,1),
	Username nvarchar(30) not null,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0,
	Active bit not null default 1
)

--select * from [user]

--create unique index uix_Username on [user](Username);