-- SQLite

-- Tarefa 19 clientes que realizaram mais ou igual a 2 locações.

SELECT CUSTOMERS.NAME,
       COUNT(LOCATIONS.CUSTOMER_ID) AS NUMBER_OF_LOCATIONS 
       FROM LOCATIONS
       LEFT JOIN CUSTOMERS ON LOCATIONS.CUSTOMER_ID = CUSTOMERS.ID
       GROUP BY CUSTOMER_ID
       HAVING NUMBER_OF_LOCATIONS >= 2;