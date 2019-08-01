CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name  VARCHAR(30) NOT NULL,

  department_name VARCHAR (50), 

  price DECIMAL (10, 2),

  stock_quanity INT (30),

  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("iPhone", tech, 400, 100);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Jacob",true,"Misty",10);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Jacob",true,"Misty",10);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Jacob",true,"Misty",10);

INSERT INTO products (name, has_pet, pet_name, pet_age)
VALUES ("Jacob",true,"Misty",10);