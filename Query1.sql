/*
1.	The university wants to know which teacher is the most and least popular among students in order to take this into consideration the raise range in their salary. 

From the query result, we know the most popular professor is Cody Holder with 10 students.
Carl Lawrence, Sacha Mcclure, Amity Gordon, Uriah Mccall, and Farrah Washington are the least popular professors with only 2 students.
*/

SELECT DISTINCT p.professorid, p.professor_first_name, p.professor_last_name, A.total_students
FROM professor p, SessionDetail sd,
(SELECT s.professorid, COUNT(e.StudentID) AS total_students
FROM Enrollment e,session s
WHERE s.SessionNo = e.SessionNo 
GROUP BY s.professorID) A
WHERE sd.professorid  = s.professorid
AND sd.professorid = p.professorid
ORDER BY A.total_students DESC;
