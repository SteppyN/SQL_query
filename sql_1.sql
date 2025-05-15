--Отобрать должников, у которых дата рождения между 01.01.2000 и 01.02.2001. Указать ФИО, пол и дату рождения (Использовать 2 варианта)

--Предполагается, что в таблице Person могут быть должники уже с погашенной задолженностью, поэтому в запросах делается проверка на наличие задолженности

--1 способ:
SELECT   p. LASTNAME, p.FIRSTNAME, p.MIDNAME, p.POL,  BDATE
FROM Person p JOIN debt d
ON p.ID = d.Parent_id 
WHERE d.Ostat  > 0 and (BDATE BETWEEN ‘01-01-2000’ AND ’02-01-2001’);

--2 способ:
SELECT   p. LASTNAME, p.FIRSTNAME, p.MIDNAME, p.POL, BDATE
FROM person p JOIN debt d
ON p.ID = d.Parent_id 
WHERE d.Sym_debt  > 0 AND (p.BDATE BETWEEN ‘01-01-2000’ AND ‘02-01-2001’)
