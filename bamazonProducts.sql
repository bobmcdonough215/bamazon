CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  product_name  VARCHAR(30) NOT NULL,

  department_name VARCHAR (50), 

  price DECIMAL (10, 2),

  stock_quanity INT (30),

  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("iPhone", "tech", 400.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Lizard", "pets", 20.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Bread", "food", 4.00, 40);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Milk", "food", 4.00, 20);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Laptop", "tech", 1000.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Cat", "pets", 50.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Dog", "pets", 70.00, 50);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Tablet", "tech", 300.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Bird", "pets", 30.00, 20);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Bagel", "food", 3.00, 1000)

