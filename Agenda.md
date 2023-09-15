# Agenda

> These are my notes on what I plan to teach in each upcoming class. For the timeline of where we are today, see [the current schedule](./README.md#schedule).

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
 - [ ] Practice
    - Analyze a form to identify metadata (0NF) and create a list of the metadata
    - Remove repeating groups, if any, by isolating them into their own distinct entity (1NF) (while maintaining relationships)
    - Check for partial dependencies, if any (2NF)
    - Check for transitive dependencies, if any (3NF)
    - List key questions to ask yourself when checking whether you've correctly processed meta-data through 1NF to 3NF.

