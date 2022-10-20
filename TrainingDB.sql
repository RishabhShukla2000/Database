

CREATE TABLE Category (
    CategoryID int NOT NULL PRIMARY KEY,
    CategoryName varchar(50) NOT NULL,
);

CREATE TABLE Book (
    BookID int NOT NULL PRIMARY KEY,
    BookReferenceNo nchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    NumberOfPages int NOT NULL,
    NumberOfVolume int NOT NULL,
	PublishDate date NOT NULL,
	CategoryID int FOREIGN KEY REFERENCES Category(CategoryID)
);

CREATE TABLE Author (
    AuthorID int NOT NULL PRIMARY KEY,
    AuthorName varchar(50) NOT NULL,
    Experience int NOT NULL,
	BookID int FOREIGN KEY REFERENCES Book(BookID)
);

CREATE TABLE SubCategory (
    SubCategoryID int NOT NULL PRIMARY KEY,
    SubCategoryName varchar(50) NOT NULL,
	CategoryID int FOREIGN KEY REFERENCES Book(BookID)
);

CREATE TABLE Role (
	RoleID int NOT NULL PRIMARY KEY,
	RoleName varchar(50) NOT NULL,
);

CREATE TABLE Users 
(
	UserID int NOT NULL PRIMARY KEY,
    UserName varchar(100) NOT NULL,
    MobileNo nchar(10) check(len(MobileNo==10) NOT NULL,
    Email  varchar(50) NOT NULL,
    Gender  varchar(20) NOT NULL,
	DateOfBirth  date NOT NULL,
	Hobbies  varchar(500) NOT NULL,
    ProfilePic  nvarchar(300) NOT NULL,
	PWord  varchar(50) NOT NULL,
	RoleID  int FOREIGN KEY REFERENCES Role(RoleID)
);

INSERT INTO Role
VALUES (1,'Admin');

INSERT INTO Role
VALUES (2,'User');

SELECT * From Role

