# Employees with the Longest Tenure
Select EmpID,Age ,YearsAtCompany from updated_hr_analytics_sql_ready
Group by EmpID,Age,YearsAtCompany
Order by YearsAtCompany Desc
Limit 10;