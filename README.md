# Project Overview
This project involves analyzing employee and department data in a company using SQL queries. The dataset consists of employee details, job history, department information, and salary grades. The goal is to answer various business questions through data manipulation, aggregation, and filtering.

### Data Structure:
1. **Employee Table (`EMP`)**: Contains employee details such as employee number, name, job title, manager, hire date, salary, and department number.
2. **Department Table (`DEPT`)**: Contains department details including department number, name, and location.
3. **Salary Grade Table (`SALGRADE`)**: Contains salary ranges for each salary grade.
4. **Job History Table (`JOBHISTORY`)**: Records job titles, department numbers, and start and end dates for employees’ previous roles.

   
### SQL Queries:
The queries cover a variety of analysis tasks, including employee details, department-related insights, salary analysis, and employee job history.   

# Business Questions

1. **Display the details of those managers who do not have any person working under them.**

2. **Display the details of those employees who are in the sales department and have a grade of 3.**

3. **Display those employees whose names contain no fewer than 4 characters.**

4. **Display those departments whose names start with 'A' and locations end with 'K'.**

5. **Display those employees whose salary is more than 3000 after a 20% increment.**

6. **Display all employees along with their department names.**

7. **Display employees who are working in the sales department.**

8. **Display employee name, department name, salary, and commission for those employees whose salary is between 2000 and 5000 and location is 'Chicago'.**

9. **Display those employees whose salary is greater than their manager's salary.**

10. **Display grade and employee names for department numbers 10 or 30 where the grade is not 4 and they joined before 31-Dec-1982.**

11. **Update the salary of each employee by a 10% increment if they are not eligible for commission.**

12. **Display those employees who joined before 31-Dec-1982 and whose department location is New York or Chicago.**

13. **Display employee name, job, department name, and location for all who are working as managers.**

14. **List all employees' names, jobs, salaries, grades, and department names except 'CLERK'. Sort by salary in descending order.**

15. **Find the top 5 earners in the company.**

16. **Display those employees whose salary equals the maximum and minimum salaries.**

17. **Select the count of employees in each department where the count is greater than 3.**

18. **Display names of managers whose salary is more than the average salary of employees.**

19. **Display all employee names with the total salary of the company for each employee.**

## Key Insights Generated:
- **Managers with no subordinates**: Identifies managers without direct reports.
- **Sales employees with grade 3 salary**: Focuses on specific employees in the sales department.
- **Salary adjustments**: Analyzes salary increments for employees and checks for disparities in salary compared to managers.
- **Departmental insights**: Looks at departments with more than 3 employees, or those with high/low salaries.
- **Job history and position changes**: Tracks employee job history and career progressions.
