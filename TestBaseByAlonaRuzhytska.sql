-- creating new database
create database TestBase 



use TestBase

-- creating  table UserLogins
create table UserLogins
(
	UserId int NOT NULL,
	Login varchar(50) NOT NULL,
	Password varchar(20) NOT NULL
) 

insert into UserLogins
values(1, 'Lady', '1234'),
(2, 'Lacky', 'qwerty'),
(3, 'Chaoz', 'zaqxsw'),
(4, 'Lampa', 'zxcvbn'),
(5, 'Mouse', 'mousE'),
(6, 'Puppy', 'yppup'),
(7, 'NoLogin', 'NoPassword'),
(8, 'logii', 'passs'),
(9, 'Helen', 'fktyf'),
(10, 'Alex','1qaz2wsx')


select * from UserLogins




-- creating  table UserDetails


create table UserDetails
(
	UserId int NOT NULL,
	FirstName varchar(50), 
	LastName varchar(50), 
	CityId int NOT NULL
)


insert into UserDetails 
values (1, 'Alona', 'Ruzh', 1),
(2, 'Alex', 'Pooh', 5),
(3, '', 'White', 4),
(4, 'Illya', 'Sand', 1),
(5, 'Lana', 'Sand', 1),
(6, 'Bob', '', 2),
(7, 'Ron', 'Black', 5),
(8, 'Sarah', 'Bush', 8),
(9, 'ELLY', 'Linch', 5),
(10, 'Mike', 'Rush', 6),
(11, 'Ron', 'RICH', 5),
(12, '', 'Moon', 1),
(13, 'andy', 'Apple', 9)


select * from UserDetails



-- creating  table Cities

create table Cities
(
	CityId int NOT NULL,
	CityName varchar(50) NOT NULL
)
	
	
insert into Cities (CityId, CityName)
values 
(1, 'Kiev'),
(2, 'London'),
(3, 'Paris'),
(4, 'Milan'),
(5, 'Shpola'),
(6, 'Lviv'),
(7, 'Belgrade' ),
(8, 'Rome')


select * from Cities 




-- selection from one table

use TestBase
select Login from UserLogins
where Login like 'L%'



-- selection from few tables
use TestBase
select UserDetails.FirstName, UserLogins.Login, Cities.CityName from UserLogins  inner join UserDetails on UserLogins.UserId=UserDetails.UserID inner join Cities on Cities.CityId=UserDetails.CityId
where UserDetails.FirstName like '%n%'



-- counting rows in the table
use TestBase
select count(*) from UserDetails
select count(distinct FirstName) from UserDetails









