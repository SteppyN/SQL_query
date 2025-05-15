-- Создать и заполнить данными перечисленные выше таблицы

CREATE TABLE person (
    ID INT PRIMARY KEY,
    LASTNAME VARCHAR(50) NOT NULL,
    FIRSTNAME VARCHAR(50) NOT NULL,
    MIDNAME VARCHAR(50),
    POL SMALLINT,
    BDATE DATE,
    BYEAR INT
);

-- Пример вставки данных:
INSERT INTO person (ID, LASTNAME, FIRSTNAME, MIDNAME, POL, BDATE, BYEAR) VALUES (1, 'Ivanov', 'Ivan', 'Ivanovich', 1, '1990-01-01', 1990);

CREATE TABLE debt (
    ID INT PRIMARY KEY,
    Parent_id INT NOT NULL,
    Ostat INT,
    Time_lab INT,
    Sym_debt FLOAT,
    Debt_sym FLOAT,
    R_portfolio_id INT
);

-- Пример вставки данных:
INSERT INTO debt (ID, Parent_id, Ostat, Time_lab, Sym_debt, Debt_sym, R_portfolio_id) VALUES (1, 1, 100, 5, 200.5, 300.75, 1);

CREATE TABLE portfolio (
    ID INT PRIMARY KEY,
    Pare VARCHAR(50)
);

-- Пример вставки данных:
INSERT INTO portfolio (ID, Pare) VALUES (1, 'Portfolio Name');

CREATE TABLE contact_log (
    ID INT PRIMARY KEY,
    result INT,
    Date DATE,
    Typ VARCHAR(50),
    Operator VARCHAR(50),
    Parent_id INT NOT NULL
);

-- Пример вставки данных:
INSERT INTO contact_log (ID, result, Date, Typ, Operator, Parent_id) VALUES (1, 0, '2023-10-01', 'call', 'OperatorName', 1);8. Написать запрос на обновление, удаление данных (30% от общего объёма строк)
UPDATE debt
SET Ostat = 0
