-- a
SELECT c.*, l.first_name, l.last_name
FROM courses c
INNER JOIN lecturers l ON c.lecturer_id = l.lecturer_id;

-- b
SELECT c.*, l.first_name, l.last_name
FROM courses c
LEFT JOIN lecturers l ON c.lecturer_id = l.lecturer_id
WHERE l.lecturer_id IS NULL;

-- c
SELECT c.*, l.first_name, l.last_name
FROM courses c
LEFT JOIN lecturers l ON c.lecturer_id = l.lecturer_id;

-- d
SELECT l.*, c.course_name
FROM lecturers l
INNER JOIN courses c ON l.lecturer_id = c.lecturer_id;

-- e
SELECT l.*, c.course_name
FROM lecturers l
LEFT JOIN courses c ON l.lecturer_id = c.lecturer_id
WHERE c.lecturer_id IS NULL;

-- f
SELECT l.*, c.course_name
FROM lecturers l
LEFT JOIN courses c ON l.lecturer_id = c.lecturer_id;

-- g
SELECT c.*, l.first_name, l.last_name
FROM courses c
FULL JOIN lecturers l ON c.lecturer_id = l.lecturer_id;

-- h
SELECT l.first_name, l.last_name, c.course_name
FROM lecturers l
CROSS JOIN courses c ON l.lecturer_id = c.lecturer_id;