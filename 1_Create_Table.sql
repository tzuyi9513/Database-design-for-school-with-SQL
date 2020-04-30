/* We create tables after Normalization. */

CREATE TABLE CourseDetail (
CourseName VARCHAR(50) NOT NULL,
Degree  VARCHAR(50) NOT NULL,
Subject_Information  VARCHAR(5000) NOT NULL,
Prerequisite VARCHAR(3000) NOT NULL,
Major_requirement VARCHAR(1000) NOT NULL,
Department VARCHAR(30) NOT NULL,
Units INT NOT NULL
);

CREATE TABLE Course(
CourseID VARCHAR(30) NOT NULL,
CourseName varchar(50) NOT NULL,
Degree varchar(50) NOT NULL
);


CREATE TABLE Session(
SessionNo VARCHAR(50) NOT NULL,
Day_of_Week  VARCHAR(10) NOT NULL,
Start_Time TIME NOT NULL,
End_Time TIME NOT NULL,
ProfessorID VARCHAR(10) NOT NULL
);


CREATE TABLE SessionDetail(
Day_of_Week  VARCHAR(10) NOT NULL,
Start_Time TIME NOT NULL,
End_Time TIME NOT NULL,
ProfessorID VARCHAR(10) NOT NULL,
ClassroomID VARCHAR(15) NOT NULL,
CourseID VARCHAR(30) NOT NULL,
Semester_term VARCHAR(8) NOT NULL,
Status VARCHAR(10) NOT NULL,
Capacity INT NOT NULL,
InstructionMod varchar (10) NOT NULL
);



CREATE TABLE Student (
   StudentID  varchar(8) NOT NULL UNIQUE,
   StudentFirstName  Varchar(50) NOT NULL,
   StudentLastName Varchar(50) NOT NULL,
   Degree varchar(50) NOT NULL,
   Major varchar (30) NOT NULL,
   ProgramType  varchar(15) NOT NULL
);


CREATE TABLE Classroom(
     ClassroomID VARCHAR(15) NOT NULL UNIQUE,
     Classroom_Type VARCHAR(15) NOT NULL,
     MaxCapacity INT NOT NULL
);
  

CREATE TABLE Transcript(
TranscriptID VARCHAR(10) NOT NULL,
 GPA VARCHAR(10) NOT NULL,
 TotalCredit VARCHAR(10) NOT NULL
);

  

CREATE TABLE professor (
	professorid VARCHAR(10) NOT NULL UNIQUE,
professor_first_name  VARCHAR (50) NOT NULL,
professor_last_name  VARCHAR (50) NOT NULL,
professor_type VARCHAR(8) NOT NULL,
salary INT NOT NULL
);

CREATE TABLE enrollment (
	StudentID VARCHAR(8) NOT NULL UNIQUE,
SessionNo  VARCHAR (50) NOT NULL,
TranscriptID  VARCHAR (10) NOT NULL
);
