-- SQLite

-- Tarefa 18 funcionários que realizaram mais ou igual a 2 locações.

SELECT EMPLOYEES.NAME,
       COUNT(LOCATIONS.EMPLOYEE_ID) AS NUMBER_OF_LOCATIONS 
       FROM LOCATIONS
       LEFT JOIN EMPLOYEES ON LOCATIONS.EMPLOYEE_ID = EMPLOYEES.ID
       GROUP BY EMPLOYEE_ID
       HAVING NUMBER_OF_LOCATIONS >= 0;