SELECT * FROM transactions;
SELECT COUNT(*) FROM transactions;

SELECT * FROM markets;

SELECT * FROM transactions WHERE market_code = 'Mark010';

SELECT COUNT(*) FROM transactions WHERE market_code = 'Mark010';

SELECT COUNT(*) FROM transactions WHERE currency <> 'INR';

SELECT currency, REPLACE(currency, '\r', '') FROM transactions WHERE currency <> 'INR';

-- Update the currency data
UPDATE transactions SET currency = REPLACE(currency, '\r', '');

SELECT * FROM transactions WHERE YEAR(order_date) = 2019;

SELECT SUM(sales_amount) FROM transactions
WHERE YEAR(order_date) = 2019 AND market_code = 'Mark010';

-- Converting the data to csv to load into Tableau Public
SELECT * FROM customers;
SELECT * FROM date;
SELECT * FROM markets;
SELECT * FROM products;
SELECT * FROM transactions;
