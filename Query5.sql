/*

5.	The university wants to know students in which degree has a higher GPA. 


From the analysis, we can know the graduate has highest average GPA. On the other hand, PHD students has lowest GPA.

Probably the coursework in PHD is too difficult, so students cannot get very high GPA. 
The undergraduate students may have more club events, so their average GPA is lower than the GPA of graduate students.
*/

SELECT s.Degree,ROUND(AVG(GPA),2) AS Average_GPA 
FROM Transcript t, Enrollment e, Student s
WHERE t.Transcriptid = e.Transcriptid
AND e.StudentID = s.StudentID
GROUP BY s.Degree
ORDER BY AVG(GPA) DESC;

