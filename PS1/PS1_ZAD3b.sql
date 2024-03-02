CREATE FUNCTION GetProfitByYear (year IN NUMBER(4))
    profit number;
    BEGIN
        SELECT SUM(QUANTITY * PAIDEACH)
        INTO profit
        FROM ORDERS o, ORDERITEMS oi
        WHERE o.order# = oi.order# AND EXTRACT(year from ORDERDATE) = year
        GROUP BY EXTRACT(year from ORDERDATE)


SELECT SUM(QUANTITY * PAIDEACH)
FROM ORDERS o, ORDERITEMS oi
WHERE o.order# = oi.order# AND EXTRACT(year from ORDERDATE) = 2005
GROUP BY EXTRACT(year from ORDERDATE)