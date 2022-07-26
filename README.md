# Pewlett-Hackard-Analysis

## Challenge Overview
#### Pewlett Hackard is a large company with several thousand employees. The company is looking toward the future by 1) offering retirement packages for those who meet certain criteria and 2) starting to think about which positions will need to be filled in the near future. An HR analyst has asked for assistance using SQL to examine six csv files containing the company’s employee data. Below is a Quick Database Diagram of those csv files:

![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/92842ec2240c56c59a540caf02ed6ca3edff7637/Resources/EmployeeDB.png)

## Challenge Results
## Part 1 - Identify the Number of Retiring Employees by Title

- A total of 90,399 current employees are eligible for retirement. To determine this number, the list of employees was narrowed to those born between 1 January 1952 and 31 December 1955. A query was then written and executed that contained the employee number, first and last names, and most recent title. A sample of those employees is provided below:

![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/c1188a9d52a0997f5d97fa59c33d069cda35c5b8/Resources/Unique_Titles.png) 

-	A query was then run to determine the titles of retirement eligible employees. The largest eligible groups are senior engineers and senior staff. Below is the complete list:

![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/c1188a9d52a0997f5d97fa59c33d069cda35c5b8/Resources/Retiring_Titles.png) 

## Part 2 - Identify the Employees Eligible for the Mentorship Program

- Approximately 1,550 employees are eligible to participate in the company’s mentorship program. 

- This pool of candidates was narrowed to include only those current employees born between 1 January 1965 and 31 December 1965. The following table highlights a sample of those employees:

![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/c1188a9d52a0997f5d97fa59c33d069cda35c5b8/Resources/Mentorship_Eligibility.png)

## Part 3 - Challenge Summary

#### Pewlett Hackard has several thousand (90,399) employees eligible for retirement in the near future and will need to make plans in order to mitigate the impact of those company departures. The development of the mentorship program is a great step in helping retain institutional knowledge and expertise. Pewlett Hackard is well positioned to train the next cadre of leaders and senior employees with nearly 1,550 employees eligible to participate as mentors.

-	The total count of retirement eligible employees per department may be a helpful resource for allotting mentoring resources. The table below highlights most of the  employees will be departing from Development and Production. The company may want to focus on these departments to ensure continuity of operations.

![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/b7ab3c2e368c9d185e7d23e5e3d33e92f08f90fa/Resources/Retirements_by_Dept.png)
![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/12dadcfbe93bc6fdb2fb0befca576a28a437fd59/Resources/Mentor%20Dept%20Count.png)

-	One additional search the company may want to keep an eye on is the department managers and their corresponding retirement dates. Fortunately for Pewlett Hackard, none of the current department heads are retiring. The table below searched each department manager employee number with eligible mentor employee numbers.

![](https://github.com/AB3478/Pewlett-Hackard-Analysis/blob/fbff2cbbef8b5cb5bd80568793e291792cf50e6c/Resources/Dept_Managers.png)
