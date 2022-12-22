SELECT COUNT(*) FROM FILM WHERE LENGTH > (SELECT AVG(LENGTH) FROM FILM)

---------------------------------------------------------------------------------

SELECT COUNT(*) FROM FILM WHERE RENTAL_RATE = (SELECT MAX(RENTAL_RATE) FROM FILM)

---------------------------------------------------------------------------------

SELECT * FROM FILM
WHERE rental_rate = (SELECT MIN(rental_rate) FROM FILM)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM FILM)
ORDER BY rental_rate, replacement_cost

---------------------------------------------------------------------------------

SELECT PAYMENT.AMOUNT, CUSTOMER FROM CUSTOMER 
JOIN PAYMENT
ON CUSTOMER.CUSTOMER_ID = PAYMENT.CUSTOMER_ID
WHERE PAYMENT.AMOUNT = (SELECT MAX(AMOUNT) FROM PAYMENT)
