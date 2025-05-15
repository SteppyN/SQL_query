--Написать запрос на обновление, удаление данных (30% от общего объёма строк)

UPDATE debt
SET Ostat = 0
WHERE Debt_sym = 0 AND ID IN (SELECT ID FROM debt LIMIT (SELECT COUNT(*) * 0.3 FROM debt));

DELETE FROM Person
WHERE ID IN (SELECT ID FROM debt
				WHERE Ostat = 0
				GROUP BY ID
LIMIT (SELECT COUNT(*) * 0.3 FROM debt));
 
