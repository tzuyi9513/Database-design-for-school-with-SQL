/*

3.	The professors spend lots of time on teaching. Do those professors with more students have more salary as well?

From our analysis, we can know salary has no relationship to total students or average students.

*/


SELECT DISTINCT p.professorid, p.professor_first_name, p.professor_last_name, A.total_students, B.total_sessions, (A.total_students/B.total_sessions) AS Average_Students, p.salary
FROM professor p, SessionDetail sd,
(SELECT s.professorid, COUNT(e.StudentID) AS total_students
FROM Enrollment e,session s
WHERE s.SessionNo = e.SessionNo 
GROUP BY s.professorID) A,
(SELECT professorid, COUNT(professorID) AS total_sessions
FROM Session
GROUP BY professorid) B
WHERE sd.professorid  = s.professorid
AND sd.professorid = p.professorid
AND A.professorid = B.professorid
ORDER BY (A.total_students/B.total_sessions) DESC;
