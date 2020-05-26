/*

6.	Do students in different majors have lots of differences in their GPA performance?

From this analysis, to the university’s surprise, the highest average is the undergraduate students in the Financial department.
Also, graduate students in the Financial department also rank 3 in average GPA.

*/


SELECT s.Degree, s.Major, ROUND(AVG(GPA),2) AS Average_GPA 
FROM Transcript t, Enrollment e, Student s
WHERE t.Transcriptid = e.Transcriptid
AND e.StudentID = s.StudentID
GROUP BY s.Degree, s.Major
ORDER BY AVG(GPA) DESC;
