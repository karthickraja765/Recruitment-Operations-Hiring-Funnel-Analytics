-- ==========================================
-- STUDENTS DATA
-- ==========================================

INSERT INTO Students VALUES
(1001,'Karthick Raja','Male','Computer Science',8.75,2026,'karthick@example.com','9876543210','ABC Engineering College','Chennai'),
(1002,'Priya Sharma','Female','Information Technology',9.10,2026,'priya@example.com','9876543211','ABC Engineering College','Chennai'),
(1003,'Arjun Kumar','Male','Electronics',7.85,2026,'arjun@example.com','9876543212','ABC Engineering College','Coimbatore'),
(1004,'Meera Nair','Female','Computer Science',8.20,2026,'meera@example.com','9876543213','ABC Engineering College','Bangalore'),
(1005,'Rahul Verma','Male','Mechanical',7.95,2026,'rahul@example.com','9876543214','XYZ Institute','Chennai'),
(1006,'Sneha Iyer','Female','Computer Science',9.25,2026,'sneha@example.com','9876543215','XYZ Institute','Madurai'),
(1007,'Vikram Singh','Male','Information Technology',8.60,2026,'vikram@example.com','9876543216','XYZ Institute','Coimbatore'),
(1008,'Anjali Menon','Female','Electronics',8.40,2026,'anjali@example.com','9876543217','ABC Engineering College','Kochi'),
(1009,'Rohit Gupta','Male','Computer Science',7.70,2026,'rohit@example.com','9876543218','ABC Engineering College','Hyderabad'),
(1010,'Divya Krishnan','Female','Information Technology',8.95,2026,'divya@example.com','9876543219','XYZ Institute','Chennai'),
(1011,'Amit Patel','Male','Mechanical',7.80,2026,'amit@example.com','9876543220','XYZ Institute','Ahmedabad'),
(1012,'Neha Reddy','Female','Computer Science',9.05,2026,'neha@example.com','9876543221','ABC Engineering College','Hyderabad'),
(1013,'Kiran Rao','Male','Electronics',8.15,2026,'kiran@example.com','9876543222','ABC Engineering College','Bangalore'),
(1014,'Pooja Nair','Female','Information Technology',8.85,2026,'pooja@example.com','9876543223','XYZ Institute','Kochi'),
(1015,'Manoj Kumar','Male','Computer Science',8.10,2026,'manoj@example.com','9876543224','ABC Engineering College','Chennai'),
(1016,'Lavanya S','Female','Computer Science',9.30,2026,'lavanya@example.com','9876543225','ABC Engineering College','Madurai'),
(1017,'Suresh Babu','Male','Mechanical',7.60,2026,'suresh@example.com','9876543226','XYZ Institute','Coimbatore'),
(1018,'Keerthana R','Female','Electronics',8.70,2026,'keerthana@example.com','9876543227','ABC Engineering College','Chennai'),
(1019,'Harish Kumar','Male','Information Technology',8.35,2026,'harish@example.com','9876543228','XYZ Institute','Bangalore'),
(1020,'Nivetha P','Female','Computer Science',9.15,2026,'nivetha@example.com','9876543229','ABC Engineering College','Chennai');

-- ==========================================
-- COMPANIES DATA
-- ==========================================

INSERT INTO Companies VALUES
(101,'TCS','IT Services','Large','Mumbai','hr@tcs.com','Ramesh Kumar','Active'),
(102,'Infosys','IT Services','Large','Bangalore','hr@infosys.com','Priya Menon','Active'),
(103,'Wipro','IT Services','Large','Bangalore','hr@wipro.com','Arun Nair','Active'),
(104,'HCLTech','IT Services','Large','Noida','hr@hcl.com','Deepa Sharma','Active'),
(105,'Cognizant','IT Services','Large','Chennai','hr@cognizant.com','Vikram Rao','Active'),
(106,'Accenture','Consulting','Large','Dublin','hr@accenture.com','Sneha Iyer','Active'),
(107,'Capgemini','Consulting','Large','Paris','hr@capgemini.com','Rahul Verma','Active'),
(108,'Zoho','Software','Medium','Chennai','hr@zoho.com','Karthik S','Active'),
(109,'Freshworks','Software','Medium','Chennai','hr@freshworks.com','Meera Nair','Active'),
(110,'Amazon','E-Commerce','Large','Seattle','hr@amazon.com','John Smith','Active');

-- ==========================================
-- RECRUITERS DATA
-- ==========================================

INSERT INTO Recruiters VALUES
(201,'Ramesh Kumar',101,'ramesh@tcs.com','9876500001','Senior Recruiter'),
(202,'Priya Menon',102,'priya@infosys.com','9876500002','Recruitment Lead'),
(203,'Arun Nair',103,'arun@wipro.com','9876500003','HR Manager'),
(204,'Deepa Sharma',104,'deepa@hcl.com','9876500004','Recruitment Lead'),
(205,'Vikram Rao',105,'vikram@cognizant.com','9876500005','Senior Recruiter'),
(206,'Sneha Iyer',106,'sneha@accenture.com','9876500006','Talent Acquisition'),
(207,'Rahul Verma',107,'rahul@capgemini.com','9876500007','Recruitment Manager'),
(208,'Karthik S',108,'karthik@zoho.com','9876500008','HR Executive'),
(209,'Meera Nair',109,'meera@freshworks.com','9876500009','Talent Acquisition'),
(210,'John Smith',110,'john@amazon.com','9876500010','Senior Recruiter');

-- ==========================================
-- JOBS DATA
-- ==========================================

INSERT INTO Jobs VALUES
(301,101,201,'Software Engineer','Backend Development','Chennai',7.50,7.00,'2026-01-01','2026-02-15','Open'),
(302,102,202,'Data Analyst','Analytics','Bangalore',8.00,7.50,'2026-01-05','2026-02-20','Open'),
(303,103,203,'System Engineer','Infrastructure','Hyderabad',6.50,7.00,'2026-01-10','2026-02-25','Open'),
(304,104,204,'Software Developer','Full Stack','Noida',8.50,8.00,'2026-01-15','2026-03-01','Open'),
(305,105,205,'Programmer Analyst','Application Development','Chennai',7.20,7.00,'2026-01-20','2026-03-05','Open'),
(306,106,206,'Business Analyst','Consulting','Bangalore',9.00,8.00,'2026-01-25','2026-03-10','Open'),
(307,107,207,'Associate Consultant','Consulting','Mumbai',8.20,7.50,'2026-02-01','2026-03-15','Open'),
(308,108,208,'Software Engineer','Product Development','Chennai',10.00,8.50,'2026-02-05','2026-03-20','Open'),
(309,109,209,'Data Engineer','Data Platform','Chennai',11.00,8.50,'2026-02-10','2026-03-25','Open'),
(310,110,210,'SDE-1','Software Development','Bangalore',15.00,8.50,'2026-02-15','2026-03-30','Open');

INSERT INTO Applications VALUES
(401,1001,301,'2026-01-10','Applied'),
(402,1002,302,'2026-01-11','Shortlisted'),
(403,1003,303,'2026-01-12','Rejected'),
(404,1004,304,'2026-01-13','Shortlisted'),
(405,1005,305,'2026-01-14','Applied'),
(406,1006,306,'2026-01-15','Shortlisted'),
(407,1007,307,'2026-01-16','Applied'),
(408,1008,308,'2026-01-17','Shortlisted'),
(409,1009,309,'2026-01-18','Rejected'),
(410,1010,310,'2026-01-19','Shortlisted'),
(411,1011,301,'2026-01-20','Applied'),
(412,1012,302,'2026-01-21','Shortlisted'),
(413,1013,303,'2026-01-22','Applied'),
(414,1014,304,'2026-01-23','Shortlisted'),
(415,1015,305,'2026-01-24','Applied');

INSERT INTO Interviews VALUES
(501,402,'2026-02-01','Technical','Passed',8.5),
(502,404,'2026-02-02','Technical','Passed',8.0),
(503,406,'2026-02-03','Technical','Passed',9.0),
(504,408,'2026-02-04','Technical','Failed',6.5),
(505,410,'2026-02-05','Technical','Passed',8.8),
(506,412,'2026-02-06','Technical','Passed',8.6),
(507,414,'2026-02-07','Technical','Passed',8.2);

INSERT INTO Offers VALUES
(601,402,'2026-02-15',8.00,'Accepted'),
(602,404,'2026-02-16',8.50,'Accepted'),
(603,406,'2026-02-17',9.00,'Accepted'),
(604,410,'2026-02-18',15.00,'Accepted'),
(605,412,'2026-02-19',8.00,'Rejected'),
(606,414,'2026-02-20',8.50,'Accepted');

INSERT INTO Hires VALUES
(701,601,'2026-03-01','Joined'),
(702,602,'2026-03-02','Joined'),
(703,603,'2026-03-03','Joined'),
(704,604,'2026-03-04','Joined'),
(705,606,'2026-03-05','Joined');

