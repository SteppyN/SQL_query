--Вывести список: ФИО должника, название портфеля, дата рождения, количество полных однофамильцев (совпадение ФИО и даты рождения). Выводить только должников с заполненными датами рождения и количеством однофамильцев больше двух, но не более 5.


SELECT 
    p.LASTNAME, 
    p.FIRSTNAME, 
    p.MIDNAME, 
    po.Pare, 
    p.BDATE, 
    COUNT(*) AS SameNameBirthCount
FROM 
    portfolio po
JOIN 
    debt d ON po.ID = d.R_portfolio_id
JOIN 
    person p ON d.Parent_id = p.ID
WHERE 
    p.BDATE IS NOT NULL
    AND d.Ostat > 0
GROUP BY 
    p.LASTNAME, p.FIRSTNAME, p.MIDNAME, po.Pare, p.BDATE
HAVING 
    COUNT(*) > 2 AND COUNT(*) <= 5;

