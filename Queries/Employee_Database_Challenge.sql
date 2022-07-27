--Deliverable 1 Requirements
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
--INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (re.emp_no) re.emp_no,
re.first_name,
re.last_name,
re. title

--INTO unique_titles
FROM retirement_titles as re
WHERE (to_date='9999-01-01') 
ORDER BY emp_no ASC, to_date DESC;

--# of employees by their most recent job title who are about to retire
SELECT COUNT(ut.emp_no),
ut.title
--INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

--Mentorship eligibility table
SELECT DISTINCT ON(e.emp_no)e.emp_no, e.first_name, e.last_name, e.birth_date, 
		de.from_date, de.to_date, 
		t.title
--INTO mentorship_eligibility
FROM employees as e
LEFT OUTER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no

-- Department Retirements
SELECT DISTINCT ON (e.emp_no)e.emp_no, e.first_name, e.last_name,
		dp.dept_no
INTO department_retirements
FROM employees as e
LEFT OUTER JOIN dept_emp as dp
ON (e.emp_no = dp.emp_no)

SELECT COUNT (ct.emp_no), dp.dept_name
FROM department_retirements as ct
LEFT JOIN dept_emp as de
on ct.emp_no = de.emp_no
LEFT JOIN departments as dp
on de.dept_no = dp.dept_no
GROUP BY dp.dept_name
ORDER BY dp.dept_name;

--Department Leadership
SELECT l.dept_no,
	   m.emp_no
--INTO leadership_vacuum
FROM dept_manager AS l
LEFT JOIN mentorship_eligibility AS m
ON (l.emp_no = m.emp_no)
ORDER BY l.dept_no;