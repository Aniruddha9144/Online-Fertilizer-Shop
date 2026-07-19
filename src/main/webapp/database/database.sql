
create database fertilizerproject;
use fertilizerproject;

create table user_register
(
user_id int auto_increment primary key,
username nvarchar(200),
email nvarchar(200) unique,
address nvarchar(200),
password nvarchar(200)
);

create table add_product
(
product_id int auto_increment primary key,
product_name nvarchar(200),
category nvarchar(200),
price nvarchar(200),
Quantity nvarchar(200),
description nvarchar(2000),
image nvarchar(200)
);

create table user_payment(
product_id int auto_increment primary key,
customer_name nvarchar(200),
mobile_number nvarchar(200),
product nvarchar(200),
amount nvarchar(200),
payment_method nvarchar(2000)
);

CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(200),
    email VARCHAR(200),
    product VARCHAR(200),
    rating VARCHAR(200),
    message VARCHAR(200),
    c_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table contact
(
product_id int auto_increment primary key,
name nvarchar(200),
email nvarchar(200),
subject nvarchar(200),
message nvarchar(200)
);


create table user_checkout
(
product_id int auto_increment primary key,
fullname nvarchar(200),
email nvarchar(200),
phone nvarchar(200),
address nvarchar(200),
city nvarchar(200),
pincode nvarchar(200)
);


create table edit_product
(
product_id int auto_increment primary key,
product_name nvarchar(200),
price nvarchar(200),
quantity nvarchar(200),
description nvarchar(200),
image nvarchar(200)
);


create table shipping_address
(
product_id int auto_increment primary key,
full_name nvarchar(200),
mobile nvarchar(200),
email nvarchar(200),
address nvarchar(200),
city nvarchar(200),
state nvarchar(200),
pincode nvarchar(200),
country nvarchar(200)
);

create table edit_profile
(
product_id int auto_increment primary key,
name nvarchar(200),
mobile_no nvarchar(200),
email_id nvarchar(200),
dob nvarchar(200)
);

create table cart (
cart_id int auto_increment primary key,
user_id int,
product_name nvarchar(100),
product_image nvarchar(100),
price nvarchar(100), 
quantity int,
total bigint
);



create table user_order (
order_id int auto_increment primary key,
user_id int,
product_name nvarchar(100),
product_image nvarchar(100),
price nvarchar(100), 
quantity int,
total varchar(200),
full_name varchar(200),
mobile varchar(200), 
email varchar(200), 
address varchar(200),
status varchar(200),
pay_date varchar(200),
delevery_date varchar(200)
);




