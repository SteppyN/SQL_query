--Вывести список контактов за сегодня. Указать тип контакта, код оператора, ФИО должника, остаток по долгу и проценты. Отсортировать результат по указанным полям. Порядок сортировки совпадает с порядком полей.

SELECT c.Typ, c.Operator, p.LASTNAME, p.FIRSTNAME, p.MIDNAME, d.Ostat, d.Debt_sym
FROM contact_log c
JOIN debt d ON c.Parent_id = d.Parent_id
JOIN person p ON d.Parent_id = p.ID
WHERE c.Date = CURRENT_DATE
ORDER BY c.Typ, c.Operator, p.LASTNAME, p.FIRSTNAME, p.MIDNAME, d.Ostat, d.Debt_sym;
