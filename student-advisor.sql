SELECT roll_number,name
FROM student_information s
INNER JOIN faculty_information f
ON s.advisor = f.employee_ID
WHERE (s.gender = 'M' and f.salary>15000) or (s.gender = 'F' and f.salary>20000);
