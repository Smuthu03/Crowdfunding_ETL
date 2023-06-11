-- create category table
create table category (
category_id VARCHAR(25) Primary Key,
category VARCHAR(25));

select * from category;

-- create subcategory table
create table subcategory (
subcategory_id VARCHAR(25) Primary Key,
subcategory VARCHAR(25));

select * from subcategory;

-- create contacts table
create table contacts (
contact_id INT Primary Key,
first_name VARCHAR(25),
last_name VARCHAR(25),
email VARCHAR(50));	

select * from contacts;

drop table campaign;
-- create campaign table
create table campaign (
cf_id INT Primary Key,
contact_id INT,	
Foreign Key (contact_id) references contacts(contact_id),
company_name VARCHAR(50),
description VARCHAR(200),
goal DECIMAL,
pledged DECIMAL,
outcome VARCHAR (25),	
backers_count INT,
country CHAR(2),
currency CHAR(3),
launched_date DATE,
end_date DATE,
category_id VARCHAR(25),	
Foreign Key (category_id) references category(category_id),
subcategory_id VARCHAR(25),
Foreign Key (subcategory_id) references subcategory(subcategory_id));

select * from campaign;
