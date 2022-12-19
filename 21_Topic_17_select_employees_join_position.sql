-- SQLite

-- Tarefa 17 exibir todos os funcionários e seus respectivos cargos
SELECT EMPLOYEES.ID,
       EMPLOYEES.NAME,
       POSITIONS.DESCRIPTION AS 'POSITION'
       FROM EMPLOYEES
       JOIN POSITIONS ON (EMPLOYEES.POSITION_ID = POSITIONS.ID);