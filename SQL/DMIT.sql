IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'My-DMIT')
BEGIN
    CREATE DATABASE [My-DMIT]
END
GO
USE [My-DMIT]
GO
SELECT DB_NAME() AS 'Active Database'
GO
/*
    Each Course must be evaluated through one or more EvaluationComponents.
    Each EvaluationComponent must be for one and only one Course.
 */
DROP TABLE IF EXISTS EvaluationComponents
DROP TABLE IF EXISTS Courses
CREATE TABLE Courses
(
    [Number]    char(9)
        CONSTRAINT PK_Courses_Number
            PRIMARY KEY         NOT NULL,
    [Name]      varchar(50)     NOT NULL
)

CREATE TABLE EvaluationGroup
(
    [EvaluationGroupId] int
        CONSTRAINT PK_EvaluationGroup_EvaluationGroupId
            PRIMARY KEY
            IDENTITY(1,1)       NOT NULL,
    [RequiredPass]      bit
        CONSTRAINT DF_EvaluationGroup_RequiredPass
            DEFAULT (0)         NOT NULL
)

CREATE TABLE EvaluationComponents
(
    [ComponentId]   int
        CONSTRAINT PK_EvaluationComponents_ComponentID
            PRIMARY KEY
            IDENTITY(1, 1)      NOT NULL,
    [CourseNumber]  char(9)
        CONSTRAINT FK_EvaluationComponents_CourseNumber
            FOREIGN KEY REFERENCES Courses([Number])
                                NOT NULL,
    [GroupId]       int
        CONSTRAINT FK_EvaluationComponents_GroupId
            FOREIGN KEY REFERENCES EvaluationGroup(EvaluationGroupId)
                                NOT NULL,
    [Weight]        decimal     NOT NULL,
    [Points]        decimal         NULL,
    [Earned]        decimal         NULL
)

