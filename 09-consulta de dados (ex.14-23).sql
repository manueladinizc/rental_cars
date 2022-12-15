-- SQLite
14 - Construa uma consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP

SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS
WHERE STATE ='SP';

15 - Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”

SELECT * FROM CARS WHERE STATUS='Liberado';


16 - Construa uma consulta capaz de exibir todos os automóveis do ano 2016.

SELECT * FROM CARS WHERE YEAR = 2016;

17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos

SELECT E.NAME AS 'NOME DO FUNCIONÁRIO',
P.DESCRIPTION AS 'CARGO'
FROM EMPLOYEES AS E
INNER JOIN POSITIONS AS P
ON POSITION_ID = P.ID;

18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.

SELECT  E.NAME, COUNT(L.EMPLOYEE_ID) AS 'LOCAÇÕES'

FROM LOCATIONS AS L
INNER JOIN EMPLOYEES AS E
ON L.EMPLOYEE_ID = E.ID
GROUP BY E.NAME
HAVING COUNT (L.EMPLOYEE_ID) >= 2;



19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.

SELECT  C.NAME, COUNT(L.CUSTOMER_ID) AS 'LOCAÇÕES'
FROM LOCATIONS AS L
INNER JOIN CUSTOMERS AS C
ON L.CUSTOMER_ID = C.ID
GROUP BY C.NAME
HAVING COUNT (L.CUSTOMER_ID) >= 2;

SELECT * FROM CUSTOMERS;


20 - Construa uma consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação

SELECT 
CR.NAME,
E.NAME,
C.NAME,
L.START_DATE,
L.END_DATE,
L.TOTAL
FROM LOCATIONS AS L
INNER JOIN EMPLOYEES AS E
  ON E.ID = L.EMPLOYEE_ID
INNER JOIN CUSTOMERS AS C
  ON C.ID = L.CUSTOMER_ID
INNER JOIN CARS AS CR
  ON CR.ID = L.CAR_ID;


21 - Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS

SELECT COUNT(*) AS 'NÚMEROS DE LOCAÇÕES'
FROM LOCATIONS;


22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.

SELECT *, MAX(TOTAL) AS 'TOTAL COM MAIOR VALOR'FROM LOCATIONS;


23 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”

SELECT *
FROM LOCATIONS AS L
WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25' AND L.END_DATE BETWEEN '2022-05-20' AND '2022-12-25';
