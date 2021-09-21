SELECT *
FROM customer;

UPDATE show
SET start_date = '2021-09-18'
WHERE start_date = '2021-09-17' AND show_id = 1;

DELETE FROM concession_sold
WHERE sold_id = 3;

ALTER TABLE customer
ADD email VARCHAR(150);

UPDATE customer
SET email = 'albert@codingtemple.com'
WHERE customer_id = 1;