/* After creating tables, we add primary key for each table. */

ALTER TABLE CourseDetail
ADD CONSTRAINT pk_CourseDetail
PRIMARY KEY (CourseName, Degree);

ALTER TABLE Course
ADD CONSTRAINT pk_Course
PRIMARY KEY (CourseID);


ALTER TABLE student
ADD CONSTRAINT pk_student
PRIMARY KEY (StudentID);

ALTER TABLE SessionDetail
ADD CONSTRAINT pk_sessiondetail
PRIMARY KEY(Day_of_Week, Start_Time, End_Time, ProfessorID);

ALTER TABLE Session
ADD CONSTRAINT pk_session
PRIMARY KEY(SessionNo);


ALTER TABLE Classroom
ADD CONSTRAINT pk_Classroom
PRIMARY KEY (ClassroomID);

ALTER TABLE Transcript
ADD CONSTRAINT pk_Transcript
PRIMARY KEY (TranscriptID);

ALTER TABLE professor
ADD CONSTRAINT pk_professor
PRIMARY KEY (professorid);

ALTER TABLE enrollment
ADD CONSTRAINT pk_enrollment
PRIMARY KEY (StudentID, SessionNo);
