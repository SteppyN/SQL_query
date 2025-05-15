--Вычислить вторую максимальную дату рождения в таблице должников (Есть повторяющиеся ФИО и даты рождения, id уникальный) (Использовать 2 варианта)

-- 1 cпособ:
SELECT MAX(p.BDATE) AS Second_Max_BDATE
FROM person p
JOIN debt d ON p.ID = d.Parent_id
WHERE p.BDATE < (
    SELECT MAX(p2.BDATE)
    FROM person p2
    JOIN debt d2 ON p2.ID = d2.Parent_id
    WHERE d2.Ostat > 0
)
AND d.Ostat > 0;

--2 cпособ:
SELECT MAX(p.BDATE) AS Second_Max_BDATE
FROM person p
JOIN debt d ON p.ID = d.Parent_id
WHERE p.BDATE < (
    SELECT MAX(p2.BDATE)
    FROM person p2
    JOIN debt d2 ON p2.ID = d2.Parent_id
    WHERE d2.Sym_debt > 0
)
AND d.Sym_debt > 0;0;
