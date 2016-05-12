Drop database gefpis;
create database gefpis;
use gefpis;

CREATE TABLE member_t 
(
id_number INTEGER(6) NOT NULL,
 password VARCHAR(15) NOT NULL,
 first_name VARCHAR(15) NOT NULL,
 last_name VARCHAR(15) NOT NULL,
 middle_initial VARCHAR(2),
 email_address VARCHAR(30) NOT NULL,
 contact_no INTEGER(11) NOT NULL,
 attendance DATE NOT NULL,
 type VARCHAR(15) CHECK(type IN ('Admin', 'Modules', 'Tutors', 'Data Analysis')),
 committee VARCHAR(15) CHECK (committee IN ('EdOp', 'SA', 'SF', 'EdForm', 'Acad')),
 birthday DATE NOT NULL,
 year_course VARCHAR(12) NOT NULL,
 scholarship VARCHAR(15),
 CONSTRAINT member_pk PRIMARY KEY (id_number)
);

CREATE TABLE tutee_t 
(
tutee_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(15) NOT NULL,
 last_name VARCHAR(15) NOT NULL,
school VARCHAR(35) NOT NULL,
math_grade INT(2),
eng_grade INT(2),
address VARCHAR(30),
father_name VARCHAR(30),
father_occupation VARCHAR(10),
mother_name VARCHAR(30),
mother_occupation VARCHAR(10),
ambition VARCHAR(15),
fav_subject VARCHAR(10),
fav_food VARCHAR(8),
fav_color VARCHAR(10),
fav_movie VARCHAR(10),
attendance DATE,
current_module VARCHAR(20),
group INTEGER(2) NOT NULL,
 CONSTRAINT tutee_pk PRIMARY KEY (tutee_id)
),

CREATE TABLE module_t 
(
file_number INT NOT NULL AUTO_INCREMENT,
 file_name VARCHAR(20) NOT NULL,
 subject VARCHAR(20) CHECK (subject IN ('Math', 'English')),
 upload_date DATE NOT NULL,
 topic VARCHAR(20) NOT NULL,
uploader VARCHAR(30) NOT NULL,
 CONSTRAINT modules_pk PRIMARY KEY (file_number)
);

CREATE TABLE tpr_t 
(
tpr_id INT NOT NULL AUTO_INCREMENT,
week_no INTEGER(3) NOT NULL,
school VARCHAR(35) NOT NULL,
file_number INT NOT NULL AUTO_INCREMENT,
id_number INTEGER(6) NOT NULL,
tutee_id INT NOT NULL AUTO_INCREMENT,
strengths VARCHAR(20) NOT NULL,
weaknesses VARCHAR(20) NOT NULL,
actions VARCHAR(100) NOT NULL
 CONSTRAINT tpr_pk PRIMARY KEY (tpr_id),
 CONSTRAINT tpr_fk1 FOREIGN KEY (file_number) REFERENCES module_t(file_number),
 CONSTRAINT tpr_fk2 FOREIGN KEY (id_number) REFERENCES member_t(id_number),
CONSTRAINT tpr_fk3 FOREIGN KEY (tutee_id) REFERENCES tutee_t(tutee_id)
);
 
CREATE TABLE evaluation_t 
(
eval_id INT NOT NULL AUTO_INCREMENT,
 eval_name VARCHAR(15) NOT NULL,
 id_number INTEGER(6) NOT NULL,
tutoring_comments VARCHAR(100) NOT NULL,
math_module_comments VARCHAR(100) NOT NULL,
math_sw_comments VARCHAR(100) NOT NULL,
eng_comments VARCHAR(100) NOT NULL,
eng_sw_comments VARCHAR(100) NOT NULL,
suggestions VARCHAR(100) NOT NULL,
 CONSTRAINT evaluation_pk PRIMARY KEY (eval_id),
 CONSTRAINT evaluation_fk FOREIGN KEY (id_number) REFERENCES member_t(id_number)
);

CREATE TABLE worksheet_t
(
worksheet_id INT NOT NULL AUTO_INCREMENT,
file_number INT NOT NULL AUTO_INCREMENT,
id_number INTEGER(6) NOT NULL,
tutee_id INT NOT NULL AUTO_INCREMENT,
school VARCHAR(35) NOT NULL,
score INTEGER(3) NOT NULL,
reached_quota CHAR(1) NOT NULL,
CONSTRAINT worksheet_pk PRIMARY KEY (worksheet_id),
CONSTRAINT worksheet_fk1 FOREIGN KEY (file_number) REFERENCES module_t(file_number),
CONSTRAINT worksheet_fk2 FOREIGN KEY (id_number) REFERENCES member_t(id_number),
CONSTRAINT worksheet_fk3 FOREIGN KEY (tutee_id) REFERENCES tutee_t(tutee_id)
);