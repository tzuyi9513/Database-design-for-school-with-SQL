/* We add foreign key for each table to create relationship for this database. */

ALTER TABLE Session
ADD CONSTRAINT fk_session_sessiondetail
FOREIGN KEY (Day_of_Week, Start_Time, End_Time, ProfessorID)
REFERENCES SessionDetail (Day_of_Week, Start_Time, End_Time, ProfessorID)

ALTER TABLE SessionDetail
ADD CONSTRAINT fk_sessiondetail_course
FOREIGN KEY (CourseID)
REFERENCES Course (CourseID)

ALTER TABLE SessionDetail
ADD CONSTRAINT fk_sessiondetail_professor
FOREIGN KEY (ProfessorID)
REFERENCES Professor (ProfessorID)

ALTER TABLE SessionDetail
ADD CONSTRAINT fk_sessiondetail_classroom
FOREIGN KEY (ClassroomID)
REFERENCES Classroom (ClassroomID)

AlTER TABLE Course
ADD CONSTRAINT fk_CourseDetail_Course
FOREIGN KEY (CourseName, Degree)
REFERENCES CourseDetail (CourseName, Degree)

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_student
FOREIGN KEY (StudentID)
REFERENCES Student (StudentID);

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_session
FOREIGN KEY (SessionNo)
REFERENCES Session (SessionNo);

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_transcript
FOREIGN KEY (TranscriptID)
REFERENCES Transcript (TranscriptID);


ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_transcript
FOREIGN KEY (TranscriptID)
REFERENCES Transcript (TranscriptID);
