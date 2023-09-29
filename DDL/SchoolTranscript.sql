/* **********************************************
 * Simple Table Creation - Columns and Primary Keys
 *
 * School Transcript
 *  Version 1.0.0
 *
 * Author: Dan Gilleland
 ********************************************** */
-- Create the database
IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'SchoolTranscript')
BEGIN
    CREATE DATABASE [SchoolTranscript]
END
-- USE master
-- DROP DATABASE SchoolTranscript
GO

-- Switch execution context to the database
USE [SchoolTranscript] -- remaining SQL statements will run against the SchoolTranscript database
GO
-- We drop tables in the REVERSE order that we created them
DROP TABLE IF EXISTS StudentCourses
DROP TABLE IF EXISTS Courses
DROP TABLE IF EXISTS Students

-- Create Tables...
-- We create the "parent" tables before their "child" tables
-- A table is a child of another table if it has a FK relationship
CREATE TABLE Students
(
    -- Column Definitions as a 
    -- comma-separated list
    StudentID       int
        -- Identify this as a PK column
        CONSTRAINT PK_Students_StudentID
            PRIMARY KEY
            IDENTITY (20250001, 3)
                                    NOT NULL,
    GivenName       varchar(50)
        CONSTRAINT CK_Students_GivenName
            CHECK (LEN(GivenName) >= 2)
                                    NOT NULL,
    Surname         varchar(50)     NOT NULL,
    DateOfBirth     datetime
        CONSTRAINT CK_Student_DateOfBirth
            CHECK (DateOfBirth < GETDATE())
            --                   \_______/  <-- return the current date/time
                                    NOT NULL,
    Enrolled        bit             NOT NULL
)

CREATE TABLE Courses
(
    [Number]    varchar(10)
        CONSTRAINT PK_Courses_Number
            PRIMARY KEY
        CONSTRAINT CK_Courses_Number
            CHECK ([Number] LIKE '[a-z][a-z][a-z][a-z][- ][1-9][0-9][0-9][0-9]%')
            --  The following would be acceptable values for the course number
            --      'DMIT-1508', 'CPSC 1012', 'PROG-1255B'
                                    NOT NULL,
    [Name]      varchar(50)         NOT NULL,
    [Credits]   decimal(3, 1)
        CONSTRAINT CK_Courses_Credits
            CHECK (Credits = 3.0 OR Credits = 4.5 OR Credits = 6.0)
                                    NOT NULL,
    [Hours]     tinyint
        CONSTRAINT CK_Courses_Hours
            CHECK ([Hours] IN (60, 75, 90, 120))
                                    NOT NULL,
    [Active]    bit
        CONSTRAINT DF_Courses_Active
            DEFAULT (1) -- A default of 1 is equivalent to true
                                    NOT NULL,
    [Cost]      money
        CONSTRAINT CK_Courses_Cost
            CHECK (Cost >= 0)
                                    NOT NULL
)

CREATE TABLE StudentCourses
(
    StudentID       int
        CONSTRAINT FK_StudentCourses_Students
            FOREIGN KEY REFERENCES Students(StudentID)
                                    NOT NULL,
    CourseNumber    varchar(10)
        CONSTRAINT FK_StudentCourses_Courses
            FOREIGN KEY REFERENCES Courses([Number])
                                    NOT NULL,
    [Year]          smallint
        CONSTRAINT CK_StudentCourses_Year
            CHECK ([Year] BETWEEN 2000 AND 2299)
            --    ([Year] >= 2000 AND [Year] <= 2299)
                                    NOT NULL,
    Term            char(3)
        CONSTRAINT CK_StudentCourses_Term
            CHECK (Term IN ('SEP', 'JAN', 'MAY'))
            --    (Term = 'SEP' OR Term = 'JAN' OR Term = 'MAY')
                                    NOT NULL,
    FinalMark       tinyint             NULL,
    [Status]        char(1)         NOT NULL,
    -- Table-level constraint are typically put after
    -- all of the column definitions have been listed
    CONSTRAINT PK_StudentCourses_StudentID_CourseNumber
        PRIMARY KEY (StudentID, CourseNumber)
)
