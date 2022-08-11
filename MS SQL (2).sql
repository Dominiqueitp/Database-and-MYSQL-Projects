Create DATABASE ORG;
CREATE TABLE Worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
                   (001, 'Monika', 'Arora', 100 000, '2014-02-20 09:00:00', 'HR'),
                   (002, 'Niharika', 'Verma', 80 000, '2014-06-11 09:00:00', 'Admin'),
                   (003, 'Vishal', 'Singhal', 300 000, '2014-02-20 09:00:00', 'HR'),
                   (004, 'Amitabh', 'Singh', 500 000, '2014-02-20 09:00:00', 'Admin'),
                   (005, 'Vivek', 'Bhati', 500 000), '2014-02-20 09:00:00','Admin')
                   );
                   
 CREATE TABLE BONUS(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE)
                   (001, 5 000, '2016-02-20'),
                   (002, 3 000, '2016-06-11'),
                   (003, 4 000, '2016-02-20'),
                   (004, 4 500, '2016-02-20'),
                   (005, 3 500, '2016-06-11')
                   );
 
 CREATE TABLE TITLE(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
                   (001, 'Manager', '2016-02-20 00:00:00'),
                   (002, 'Executive', '2016-06-11 00:00:00'),
                   (003, 'Lead', '2016-06-11 00:00:00'),
                   (004, 'Asst.Manager', '2016-06-11 00:00:00'),
                   (005, 'Manager', '2016-06-11 00:00:00')
                   
SELECT *
FROM Worker
WHERE SUBSTR(FIRST_NAME, 6,2) = 'Vipul';

SELECT *
FROM Worker 
WHERE SUBSTR(FIRST_NAME, 7,2) = 'Satish';

SELECT *
FROM Worker
WHERE SALARY >= 100 000 AND SALARY =< 500 000;

SELECT FIRST_NAME  *
FROM Worker
GROUP BY FIRST_NAME 
HAVING  JOINING_DATE = '02-2014';

SELECT FIRST_NAME COUNT *
FROM Worker
GROUP BY FIRST_NAME 
HAVING DEPARTMENT = 'Admin';

