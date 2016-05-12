DELETE FROM member_t;
DELETE FROM tutee_t;
DELETE FROM module_t;
DELETE FROM tpr_t;
DELETE FROM evaluation_t;
DELETE FROM worksheet_t;

INSERT INTO member_t
VALUES (123456, 'pass1234', 'Kanye', 'West', 'L', 'westkanye@gmail.com', 09178888888, 05/02/2016 13:45:56, 'Admin', 'EdOp', 01/01/1997, 'No Scholarhsip');

INSERT INTO tutee_t
VALUES (1, 'North', 'West', 'Marikina Elementary School', 89, 87, '247 Brgy. Barangka, Marikina', 'Kanye West', 'Artist', 'Kim Kardashian-West',  'Housewife', 'Policeman', 'Science', 'Chicken', 'Blue', 'Civil War', 05/09/2016 11:44:32, 'Math-Module-3', 1);

INSERT INTO module_t
VALUES (1, 'Math-Module-1', 'Math', 05/12/2016 17:02:18, 'Multiplication', 'Kanye West');

INSERT INTO tpr_t
VALUES (1, 1, 'Marikina Elementary School', 1, 123456, 1, 'Math', 'English', 'More english exercises needed );

INSERT INTO evaluation_t
VALUES (1, 'Evaluation-1', '123456', 'Perfect pace for tutee, keep it up!', 'Raise difficulty', 'Tutee finished early', 'Lower difficulty', 'Tutee had a hard time completing complex sentences.', 'More SV agreement exercises');

INSERT INTO worksheet_t
VALUES (1, 1, 123456, 1, 'Marikina Elementary School', 67, 'N');

UPDATE member_t
-> SET
-> contact_no = 09173422289
-> WHERE member_id = 123456;

UPDATE tutee_t
-> SET
-> math_grade = 91
-> WHERE tutee_id = 1;

DELETE FROM tpr_t
-> WHERE tpr_id = 1;

DELETE FROM module_t
-> WHERE module_id = 1;

SELECT * FROM member_t;

SELECT first_name, last_name
-> FROM tutee_t;

SELECT file_number, file_name
-> WHERE subject = 'Math'
-> FROM module_t;

SELECT tpr_t.tpr_id, 
-> tutee_t.first_name, tutee_t.last_name
-> FROM tpr_t, tutee_t
->WHERE tutee_t.tutee_id = tpr_t.tutee_id;

SELECT evaluation_t.eval_id, evaluation_t.eval_name,
-> worksheet_t.worksheet_id, worksheet_t.file_number,
->member_t.first_name, member_t.last_name
FROM evaluation_t e, worksheet_t w, member_t m
WHERE e.id_number = w.id_number
AND m.id_number = w.id_number;


