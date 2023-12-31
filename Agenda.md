# Agenda

> These are my notes on what I plan to teach in each [upcoming class](#oct-4). For the timeline of where we are today, see [the current schedule](./README.md#schedule).
>
> ## *... Warn those who are idle ..., encourage the disheartened, help the weak, be patient with everyone.*
>
> > My philosophy of teaching, taken from [the source](https://www.bible.com/bible/111/1TH.5.14.NIV)

----


## Sep 1

- [x] Instructor Introduction
- [x] GitHub Signup
- [x] Student Workbook

## Sep 5, 6

- [x] Course Overview + grade distribution
- [x] Software Installation
- [x] Intro to Version Control & git
- [x] Terminal Commands
- [x] Practice Assignment

## Sep 8

- [x] git + Markdown

## Sep 11

- [x] Introduction to Databases

## Sep 13

- [x] Entity Relationship Diagrams

## Sep 15

- [ ] Normalization
  - [ ] Theory/Notes
    - List the reasons why we go through the process of "normalizing" metadata
    - Identify the "normal forms" up to and including 3NF
    - Describe the "normal forms" up to and including 3NF
    - Explain what is meant by **0NF** and why your instructor requires this step in your normalization process
    - Analyze source documents to distinguish between meta-data and data
      - > Review the [ESP-1-Specs](/Design/ESP-1-Specs.pdf) as a sample
 - [ ] [PowerPoint Presentation](/Design/ESP-1-Normalization.pptx)

## Sep 19

- [ ] Normalization & ERDs
 - [ ] Practice
    - Analyze a form to identify metadata (0NF) and create a list of the metadata
    - Remove repeating groups, if any, by isolating them into their own distinct entity (1NF) (while maintaining relationships)
    - Check for partial dependencies, if any (2NF)
    - Check for transitive dependencies, if any (3NF)
    - List key questions to ask yourself when checking whether you've correctly processed meta-data through 1NF to 3NF.
    - Create ERDs

## Sep 20

- [ ] Normalization & ERDs
  - [ ] Practice
  - [ ] Intro to LucidChart for ERDs

## Sep 22

- [ ] Creating VS Code Profiles
  - Press the <kbd>F1</kbd> key to open the Command Palette
  - Type `Create Profile` and press <kbd>Enter</kbd>
  - You might want to choose a theme (again, press <kbd>F1</kbd> to get started)
  - Again, using the <kbd>F1</kbd>, enter "Show Recommended Extensions" and then install the Workspace Recommendations.
- [ ] Documenting Your Lab
  - [ ] Writing normalization steps in Markdown
  - [ ] Referencing ERD images in Markdown

## Sep 26

- [ ] Intro to SQL
  - Note how to read a physical ERD for data types and optional (`NULL`) attributes
- [ ] Work Period

## Sep 27

- [ ] DDL
  - Connecting to the Database in VS Code
  - Create/Drop Databases
  - Create/Drop simple Tables
    - Column names/types + null/not null

## Sep 29

- [ ] DDL
  - Constraints: PK/FK, Check, Default

## Oct 3

- [ ] Lab 2A - Intro & Setup
- [ ] Alter Table
- [ ] Create Index
- ***Note:** For those who are using a Macintosh computer, you will need to connect to the database server using `localhost` as the server name and `SQL` for the authentication type (using the `sa` username and the password you set up when you installed MS SQL Server on Docker).*
  - See [this article](https://dev.to/ijason/ms-sql-server-on-macos-with-docker-and-vs-code-2fpe) for details.


## Oct 4

- [ ] Answer to *SchoolTranscript.sql* `ALTER TABLE` and `CREATE INDEX` problems
- [ ] Intro to SQL Queries

