--Вычислить среднее количество результатов контакта на должника

SELECT AVG(c.result) AS Avg_Result_Per_Debtor
FROM contact_log c
JOIN debt d ON c.Parent_id = d.Parent_id
WHERE d.Sym_debt > 0;

--Если необходимо вычислить среднее количество результатов контакта на КАЖДОГО должника:
SELECT AVG(contact_count) AS Avg_Contacts_Per_Debtor
FROM (
    SELECT c.Parent_id, COUNT(*) AS contact_count
    FROM contact_log c
    JOIN debt d ON c.Parent_id = d.Parent_id
    WHERE d.Sym_debt > 0
    GROUP BY c.Parent_id
) sub;

