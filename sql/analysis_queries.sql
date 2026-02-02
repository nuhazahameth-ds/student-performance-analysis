-- Student Academic Performance Analysis
-- Author: Nuhaz
-- Description: Table creation for analyzing semester-wise performance

---Student Academic Analysis 
CREATE TABLE STUDENT_PERFORMANCE (
    Semester NUMBER,
    Module VARCHAR2(100),
    Grade VARCHAR2(5),
    Credits NUMBER,
    CA_Percentage NUMBER,
    Results VARCHAR2(5)
);

--Insert values to the table
INSERT INTO STUDENT_PERFORMANCE
VALUES (1,'IP','A+',4,87.15,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (1,'MC','B',4,58,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (2,'OOC','B-',2,57.75,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (2,'ISDM','B+',4,83.66,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (3,'SE','C+',4,71.5,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (3,'OOP','C+',4,59.38,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (4,'PS','B-',4,70,'PASS');

INSERT INTO STUDENT_PERFORMANCE
VALUES (4,'DSA','A-',4,70,'PASS');

--View the all data tables values
SELECT *
FROM STUDENT_PERFORMANCE;

--View Data Cleanly
SELECT *
FROM STUDENT_PERFORMANCE
ORDER BY SEMESTER;

--Update the mistyped module 
UPDATE student_performance
SET SEMESTER=4
WHERE module = 'DSA';

--Average CA% per semester
SELECT
    semester,
    ROUND(AVG(ca_percentage), 2) AS avg_ca_percentage
FROM student_performance
GROUP BY semester
ORDER BY semester;

--Total Credits per Semester
SELECT
    semester,
    SUM(credits) AS total_credits
FROM student_performance
GROUP BY semester
ORDER BY semester;

--Pass vs Fail Count
SELECT
    results,
    COUNT(*) AS Module_count
FROM student_performance
GROUP BY results;

--Best & Worst Module (CA%)
--Best Case
SELECT Module, CA_Percentage
FROM student_performance
ORDER BY CA_Percentage DESC
FETCH FIRST 1 ROW ONLY;

--Worst case
SELECT Module, ca_percentage
FROM student_performance
ORDER BY ca_percentage
FETCH FIRST 1 ROW ONLY;



