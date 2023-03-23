CREATE TABLE Reps
(
    rep_code    INTEGER(6) NOT NULL PRIMARY KEY,
    rep_name    VARCHAR(255)    NOT NULL,
    working_area    VARCHAR(255),
    phone       VARCHAR(15) NOT NULL,
    address     VARCHAR(255) NOT NULL,
    city        VARCHAR(255) NOT NULL,
    state       VARCHAR(255) NOT NULL,
    country     VARCHAR(255) NOT NULL    
);

CREATE TABLE  Customer
   (    cust_code INTEGER(6) NOT NULL PRIMARY KEY, 
	cust_name VARCHAR(255) NOT NULL,
    phone       VARCHAR(15) NOT NULL,
    address     VARCHAR(255) NOT NULL,
    city        VARCHAR(255) NOT NULL,
    state       VARCHAR(255) NOT NULL,
    country     VARCHAR(255) NOT NULL, 
	working_area VARCHAR(255), 
	rep_code INTEGER(6) NOT NULL,
    FOREIGN KEY (rep_code) REFERENCES Reps(rep_code)
);   

CREATE TABLE  Orders
   (
    order_num INTEGER(6) NOT NULL PRIMARY KEY, 
	order_amount DECIMAL(7,2) NOT NULL, 
	order_date DATE NOT NULL, 
	cust_code INTEGER(6) NOT NULL,
	rep_code INTEGER(6) NOT NULL,
	order_desc VARCHAR(255) NULL,
    FOREIGN KEY (cust_code) REFERENCES Customer(cust_code),
    FOREIGN KEY (rep_code) REFERENCES Reps(rep_code)
   );

