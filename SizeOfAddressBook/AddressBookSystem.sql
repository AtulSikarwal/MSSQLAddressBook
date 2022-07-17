create database AddressBookService;

create table AddressBook(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);

insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Atul','Sikarwal','NEB','Alwar','Rajasthan',301001,9983922916,'atulsikarwal5@gmail.com'),
('Karan','Kumar','vimlacolony','jaipur','Rajasthan',302020,7076855485,'ks@gmail.com'),
('Akash','Rajput','60foot','Agra','UP',234567,7976065986,'akash@gmail.com'),
('chunnu','panwar','churimarket','ajmer','Rajasthan',342675,4456546734,'chunnu@gmail.com');

update AddressBook set State='MP' where FirstName='Karan';
delete AddressBook where FirstName='chunnu';
select * from AddressBook where City = 'Alwar' or State = 'MP'; 

select * from AddressBook;

select COUNT(*) as StateCount, State from AddressBook group by State;
select COUNT(*) as StateCount, City from AddressBook group by City;