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
