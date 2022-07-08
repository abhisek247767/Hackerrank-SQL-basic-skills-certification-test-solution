SELECT roll_number,name
FROM student_information s
INNER JOIN faculty_information f
ON s.advisor = f.employee_ID
WHERE (f.gender = 'M' and f.salary>15000) or (f.gender = 'F' and f.salary>20000);
