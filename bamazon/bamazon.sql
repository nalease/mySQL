DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NULL,
    price INT(20) NULL,
    department_name VARCHAR(100) NULL,
    stock_quantity INT(20) NULL, 
   PRIMARY KEY (id)
);

INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Headphones","Electronics","7","25");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Hot Pockets","Frozen Goods","2.18","100");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Rap Snacks","Snacks","1","35");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Insents","Home Frangrance","6","12");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Water","Beverages","0.50","1,000");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Sketchers","Sneakers","12","5");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Advil","Medicine","4","30");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Tires","Auto Service","125","$30");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Chip Ahoy","Snacks","3","25");
INSERT INTO products (product_name,department_name,price,stock_quantity) VALUES ("Pizza Rolls","Frozen Goods","3","100");

SELECT * FROM products ;