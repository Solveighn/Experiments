Table A
Columns:
ID
STATUS
ERROR
DATE_TIME
 

Possible values for column STATUS: TobeProcessed, InProgress, Processed, Error

2) Table B
Columns:
ID (according to which the records of tables A and B are correlated)
NAME

Tasks:

1) Choose from table А record with ID=160188320
Select * from A where ID = ’160188320’;

2) Change 10 records in table A with STATUS ‘TobeProcessed’ to STATUS ‘Processed’
UPDATE A set STATUS = ‘Processed’ where STATUS = ‘TobeProcessed’
LIMIT 10;

3) Count quantity of records with all different STATUS values in table A
Select STATUS, count(*) as cnt from A GROUP BY STATUS;

4) Choose record with values STATUS = ’In Progress’ and NAME=’test’
Select 
A.STATUS as Status
B.NAME as Name
From A
INNER JOIN B ON B.ID = A. ID
Where A. STATUS = ’In Progress and B.NAME=’test’;
