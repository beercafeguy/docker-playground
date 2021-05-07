create table dbtest.Projects(

    task_id int(4),
    start_date date,
    end_date date
);


INSERT INTO dbtest.Projects(task_id , start_date, end_date)    
VALUES 
(1, '2015-10-01', '2015-10-02'),    
(2, '2015-10-02', '2015-10-03'), 
(3, '2015-10-03', '2015-10-04'), 
(4, '2015-10-13', '2015-10-14'),
(5, '2015-10-14', '2015-10-15'), 
(6, '2015-10-28', '2015-10-29'), 
(7, '2015-10-30', '2015-10-31')
;


select * from dbtest.Projects

SELECT Start_Date, MIN(End_Date)
FROM 
    (SELECT Start_Date FROM dbtest.Projects WHERE Start_Date NOT IN (SELECT End_Date FROM dbtest.Projects)) a,
    (SELECT end_date FROM dbtest.Projects WHERE end_date NOT IN (SELECT start_date FROM dbtest.Projects)) b
where start_date < end_date
GROUP BY start_date
ORDER BY datediff(start_date, MIN(end_date)) DESC, start_date

SELECT Start_Date, MIN(End_Date)
FROM 
    (SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) a,
    (SELECT end_date FROM Projects WHERE end_date NOT IN (SELECT start_date FROM Projects)) b
where start_date < end_date
GROUP BY start_date
ORDER BY datediff(start_date, MIN(end_date)) DESC, start_date

