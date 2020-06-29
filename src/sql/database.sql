CREATE database demoCaseStudy;
use demoCaseStudy;
CREATE TABLE products(
    id INT primary key,
    code NVARCHAR(100) unique not null ,
    name NVARCHAR(200) Not Null ,
    category NVARCHAR(100) NOT NULL ,
    quantity INT NOT NULL ,
    price DOUBLE NOT NULL ,
    pathImage NVARCHAR(200) NOT NULL

);
ALTER TABLE products MODIFY COLUMN id INT AUTO_INCREMENT;
insert into products (code,name,category,quantity,price,pathImage) VALUES ('vay1','vay xoe','dress',20,250000,'view/img/product/vay1.png');
SELECT * from products where name like '%vay%';
SELECT * from products where code = 'vay1';
SELECT * from products where category='dress';
SELECT * FROM products order by price ASC ;

CREATE TABLE users(
    id INT primary key,
    userName NVARCHAR(100) UNIQUE NOT NULL ,
    password NVARCHAR(100) NOT NULL ,
    email NVARCHAR(200) NOT NULL ,
    address NVARCHAR(200) NOT NULL
);
ALTER TABLE users ADD COLUMN role NVARCHAR(50) NOT NULL DEFAULT 'user';
ALTER TABLE users ADD COLUMN phoneNumber INT NOT NULL ;
ALTER TABLE users MODIFY COLUMN id INT AUTO_INCREMENT;
INSERT INTO users(userName, password, email, address,role) VALUES ('admin','admin','admin@gamil.com','Ho tung Mau','admin');
INSERT INTO users(userName, password, email, address) VALUES ('vu','vu','vu@gamil.com','Ha noi');
INSERT INTO users (userName, password, email, address,phoneNumber) VALUES ('vu','vu','vu@gamil.com','ha noi','123456789');

