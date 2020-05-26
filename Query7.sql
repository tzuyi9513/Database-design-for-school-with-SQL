/*

7.	An alumnus wants to sponsor scholarship to students with the highest GPA in each department and degree. 
Therefore, the university needs to generate the student lists and give them scholarships.

*/

SELECT M.StudentID, M.Degree, M.Major, M.StudentFirstName, M.StudentLastName, M.GPA
FROM (SELECT DISTINCT g.StudentID, s.Degree, s.Major, s.StudentFirstName, s.StudentLastName, g.GPA
FROM student s,
(SELECT DISTINCT e.StudentID, t.GPA
FROM enrollment e
INNER JOIN Transcript t
ON e.TranscriptID = t.TranscriptID) g
WHERE g.StudentID = s.StudentID
ORDER BY s.Degree, s.Major, g.GPA DESC) M
INNER JOIN
(SELECT A.DEGREE, A.MAJOR, Max(A.GPA) AS MaxOfGPA
FROM (SELECT DISTINCT g.StudentID, s.Degree, s.Major, s.StudentFirstName, s.StudentLastName, g.GPA
FROM student s,
(SELECT DISTINCT e.StudentID, t.GPA
FROM enrollment e
INNER JOIN Transcript t
ON e.TranscriptID = t.TranscriptID) g
WHERE g.StudentID = s.StudentID
ORDER BY s.Degree, s.Major, g.GPA DESC)  AS A
GROUP BY A.DEGREE, A.MAJOR) N
ON M.DEGREE=N.DEGREE AND M.MAJOR=N.MAJOR AND M.GPA=N.MaxOfGPA
ORDER BY M.Degree, M.Major;

