--Написать запрос для выведения данных без прямого обращения к таблицам баз данных. 

CREATE VIEW my_view AS
SELECT * FROM person;

SELECT 
    MAX(EXTRACT(year FROM AGE(CURRENT_DATE, BDATE))) AS old,
    MIN(EXTRACT(year FROM AGE(CURRENT_DATE, BDATE))) AS young
FROM my_view;
