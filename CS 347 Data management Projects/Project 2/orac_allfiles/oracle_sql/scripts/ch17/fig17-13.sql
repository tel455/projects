-- use the EX connection
CONNECT ex/ex;

SELECT NUMTOYMINTERVAL(2, 'YEAR') FROM dual;
SELECT NUMTOYMINTERVAL(1.25, 'YEAR') FROM dual;
SELECT NUMTOYMINTERVAL(2, 'MONTH') FROM dual;
SELECT NUMTOYMINTERVAL(1.25, 'MONTH') FROM dual;

SELECT NUMTODSINTERVAL(30, 'DAY') FROM dual;
SELECT NUMTODSINTERVAL(30, 'HOUR') FROM dual;
SELECT NUMTODSINTERVAL(30, 'MINUTE') FROM dual;
SELECT NUMTODSINTERVAL(30, 'SECOND') FROM dual;
SELECT NUMTODSINTERVAL(90, 'SECOND') FROM dual;
SELECT NUMTODSINTERVAL(30.123, 'SECOND') FROM dual;

SELECT TO_YMINTERVAL('01-03') FROM dual;
SELECT TO_YMINTERVAL('1-3') FROM dual;

SELECT TO_DSINTERVAL('1 06:00:00.00') FROM dual;
SELECT TO_DSINTERVAL('1 6:0:0') FROM dual;

SELECT NUMTODSINTERVAL(payment_date - invoice_date, 'DAY') AS payment_interval
FROM invoices
WHERE payment_date IS NOT NULL