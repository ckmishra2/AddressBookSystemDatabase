
-- create database addressbookservice;
show databases;
-- First Requirement :- creating database
-- create database addressbookservice;
show databases;

-- Second Requirement: creating table
use addressbookservice;
create database addressbookservice;
show databases;
-- First Requirement :- creating database
create database addressbookservice;
show databases;

-- Second Requirement: creating table
use addressbookservice;
select database();
create table AddressBook
 ( 
 first_Name varchar(30) not null ,
 last_name varchar(30) not null,
 address varchar(50) not null,
 city varchar (30) not null ,
 state varchar (30) not null ,
 zip int not null ,
 phoneNumber long ,
 email varchar (50)
 );
 describe AddressBook;

 -- Third Requirement: Inserting data to table
 insert into AddressBook(first_Name , last_Name ,address , city , state ,zip , phoneNumber ,email) value
 ('Chandrakala' , 'mishra' , 'ballia' , 'Tikhampur' ,'uttarpradesh' , 274901 , 89998899988 ,'abc@gmail.com');
 insert into AddressBook(first_Name , last_Name ,address , city , state ,zip , phoneNumber ,email) value
 ('Anvi' , 'mishra' , 'ravet' , 'pune' ,'maharastra' , 233562 , 8254477889 ,'xyz@gmail.com');
 insert into AddressBook(first_Name , last_Name ,address , city , state ,zip , phoneNumber ,email) value
 ('Abhay' , 'mishra' , 'ravet' , 'pune' ,'maharastra' , 33362 , 9898989898 ,'pqr@gmail.com');
  select * from AddressBook;
-- Fourth Requirement : ability to edit existing contact using person's name
update AddressBook set city = 'ballabhGrah' where first_Name = 'Chandrakala' ;   
select * from AddressBook;

-- Fifth Requirement : ability to edit existing contact using person's name
delete from addressbook where first_Name = 'Chandrakala' ;

-- Sixth Requirement : ability to retrieve person belonging to a city or state
select * from  addressbook where city = 'pune' or state = 'maharastra';

-- Seventh Requirement: ability to understand size of the addressBook
select COUNT(city)  FROM addressbook where city = 'ballia' or state = 'uttarpradesh';
select * from AddressBook;

--Eigth Requirement: ability to sort alphabatically
select * from AddressBook order by first_Name;
