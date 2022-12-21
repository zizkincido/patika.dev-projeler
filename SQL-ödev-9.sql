SELECT COUNTRY.COUNTRY, CITY.CITY
FROM COUNTRY
INNER JOIN CITY
ON COUNTRY.COUNTRY_ID = CITY.COUNTRY_ID;

------------------------------------------------------------------------

SELECT PAYMENT.PAYMENT_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME 
FROM CUSTOMER
INNER JOIN PAYMENT
ON PAYMENT.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID;

------------------------------------------------------------------------

SELECT RENTAL.RENTAL_ID,CUSTOMER.FIRST_NAME,CUSTOMER.LAST_NAME
FROM CUSTOMER
INNER JOIN RENTAL
ON CUSTOMER.CUSTOMER_ID = RENTAL.CUSTOMER_ID;

