-- Student Academic Performance Analysis
-- Author: Nuhaz
-- Description: Table creation for analyzing semester-wise performance

CREATE TABLE student_performance (
    Semester NUMBER,
    Module VARCHAR2(100),
    Grade VARCHAR2(5),
    Credits NUMBER,
    CA_Percentage NUMBER,
    Results VARCHAR2(5)
);
