
Таблица Person
| ID | LASTNAME | FIRSTNAME| MIDNAME | POL|  BDATE | BYEAR|
|----|----------|----------|---------|----|--------|------|
|INTEGER|VARCHAR|VARCHAR|VARCHAR|VARCHAR| VARCHAR|VARCHAR|

<details>
<summary>Описание Person</summary>
ID -	Код должника,<br>
LASTNAME -	Фамилия,<br>
FIRSTNAME -	Имя,<br>
MIDNAME	- Отчество,<br> 
POL	- Пол: 1-М, 2-Ж,<br>  
BDATE	- Дата рождения,<br>
BYEAR -	Год рождения    
</details>


Таблица debt
| ID | Parent_id | Ostat| Time_lab | Sym_debt|  Debt_sym | R_portfolio_id|
|----|----------|-------|----------|---------|-----------|---------------|
|INTEGER|VARCHAR|VARCHAR|VARCHAR|VARCHAR| VARCHAR|VARCHAR|

<details>
<summary>Описание debt</summary>
ID 	- Код долга,<br>
Parent_id	- ID_должника,<br>
Ostat -	Остаток,<br>
Time_lab	- Часовой пояс,<br>
Sym_debt	- Остаток просроченной задолженности,<br>
Debt_sym	- Проценты,<br>
R_portfolio_id -	ID портфеля
</details>


Таблица portfolio
| ID | Pare |
|----|------|
|INTEGER|VARCHAR|

<details>
<summary>Описание portfolio</summary>
ID - id портфеля,<br>
Pare	- Название портфеля
</details>


Таблица contact_log
| ID | result | Date| Type | Operator|  Parent_id |
|----|--------|-----|------|---------|------------|
|INTEGER|VARCHAR|VARCHAR|VARCHAR|VARCHAR| VARCHAR|

<details>
<summary>Описание contact_log</summary>
ID -	id лога,<br>
result	- Результат контакта,<br>
Date	- Дата контакта,<br>
Type - 	Тип контакта,<br>
Operator -	Оператор, зарегистрировавший контакт,<br>
Parent_id	- ID долга
</details>
