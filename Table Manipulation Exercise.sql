use mcrutger_FA24_kr818;
-- project is to create a table for employee addresses
-- drop statement
drop table if exists addresses;

-- create statement

create table `addresses`(
	address_id int  primary key auto_increment, 
	address varchar(500) not null, 
	address2 varchar(250),
	city varchar(150),
	state varchar(50),
	postal_code varchar(15)
);


-- insert statements
INSERT INTO mcrutger_FA24_kr818.addresses (address, address2, city, state, postal_code)
VALUES(
	'1 Main St', 
	'', 
	'New Brunswick',
	'NJ', 
	'08901'
);
INSERT INTO mcrutger_FA24_kr818.addresses (address, address2, city, state, postal_code)
VALUES(
	'1 Main St', 
	'', 
	'New Brunswick',
	'NJ', 
	'08901'
);

INSERT INTO mcrutger_FA24_kr818.addresses (address, address2, city, state, postal_code)
VALUES(
	'70 Halstead', 
	'APT 2	', 
	'Clinton',
	'NJ', 
	'08901'
);

INSERT INTO mcrutger_FA24_kr818.addresses (address, address2, city, state, postal_code)
VALUES(
	'57 Crestview', 
	'', 
	'Clinton',
	'NJ', 
	'08901'
);
INSERT INTO mcrutger_FA24_kr818.addresses (address, address2, city, state, postal_code)
VALUES(
	'Hardenburgh Hall', 
	'Room', 
	'Rutgers',
	'NJ', 
	'08901'
);

-- delete statements

delete from mcrutger_FA24_kr818.addresses 
where address_id = 4;

-- update statements

update mcrutger_FA24_kr818.addresses 
set address2 = '', address = '5 Maple Ave'
where address_id = 1;
-- where address_id in (1,2,3,5); selects specific ids
select address from mcrutger_FA24_kr818.addresses where address like '1 Main st';


  