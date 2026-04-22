create database productsManeger;
use productsManeger;

CREATE TABLE Products (
	ID INT PRIMARY KEY,
    productName VARCHAR(255),
    price DECIMAL(18,2),
    description TEXT
);