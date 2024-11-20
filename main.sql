CREATE TABLE supplier (
    SNO TEXT PRIMARY KEY,
    SNAME TEXT,
    AGE INTEGER,
    CITY TEXT
);

INSERT INTO supplier (SNO, SNAME, AGE, CITY) VALUES
    {'S1', 'Smith', 20, 'London'},
    {'S2', 'Jones', 21, 'Paris'},
    {'S3', 'Blake', 20, 'Brussels'},
    {'S4', 'Clarke', 18, 'Athens'};

SELECT * FROM supplier;



CREATE TABLE IF NOT EXISTS Salesman(
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Comission REAL
);

INSERT INTO Salesman(Salesman_id, name, city, Comission) VALUES
    ('5001', 'James', 'NY', 0.15)
    ('5002', 'Bartholemew', 'NY', 0.16)
    ('5007', 'Sigurd', 'Paris', 0.11)
    ('5003', 'Paul Adams', 'London', 0.10);

SELECT * from Salesman

CREATE TABLE IF NOT EXISTS Orders(
    ord_no TEXT PRIMARY KEY,
    purch_amt REAL,
    ord_date TEXT,
    customer_id TEXT,
    Salesman_id TEXT
);

INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, Salesman_id) VALUES
    ('70091',150.5,'2012-10-05', '3885','5002'),
    ('70092',127.5,'2012-09-05', '3882','5002'),
    ('70093',278.0,'2012-08-10', '3881','5002'),
    ('70096',948.5,'2012-04-23', '3885','5002'),
    ('70095',2400.5,'2012-12-16', '3887','5002');

SELECT * from Orders

SELECT name, Comission, city
FROM Orders
