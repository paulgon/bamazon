DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products
(
    item_id INT NOT NULL
    AUTO_INCREMENT,
  product_name VARCHAR
    (50) NOT NULL,
  department_name VARCHAR
    (25) NOT NULL,
  price DECIMAL
    (10,2) NOT NULL,
  stock_quantity INT default 0,
  primary key
    (item_id)
);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Red Nikes", "Shoes", 35.60, 25);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Blue Nikes", "Shoes", 42.40, 10);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("iPhone", "Electronics", 799.00, 50);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("iPad", "Electronics", 560.00, 0);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Huawei Matebook", "Electronics", 800.00, 9);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("T-shirt", "Clothing", 15.50, 90);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Shorts", "Clothing", 20.00, 20);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Couch", "Furniture", 350.99, 10);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Table", "Furniture", 70.80, 2);

INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Backpack", "School Supplies", 65.70, 45);
    
INSERT INTO products
    (product_name,department_name,price,stock_quantity)
VALUES
    ("Pencils", "School Supplies", 2.50, 100);
