/*

2.	Some professors do not have lots of courses so they complain that if the university takes total student numbers into consideration, it’s not fair to them. Therefore, the university also wants to know the average student numbers of all sessions.

In the last scenario, we know Cody Holder has the most students.
However, if we look at the average students per session, Jane Beck, Cody Holder, and Steel Mayer have the same amount of average students. 

*/

SELECT DISTINCT p.professorid, p.professor_first_name, p.professor_last_name, A.total_students, B.total_sessions, (A.total_students/B.total_sessions) AS Average_Students
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
ORDER BY  (A.total_students/B.total_sessions) DESC;
