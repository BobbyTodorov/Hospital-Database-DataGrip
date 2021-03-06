
--departments
INSERT INTO FN45421.DEPARTMENT
VALUES ('Endokrinologiq','1000');

INSERT INTO FN45421.DEPARTMENT
VALUES ('Onkologiq', '2000');

--nurses
INSERT INTO NURSE
VALUES(4234,'Ganka Dimitrova','regular nurse',1500,'gr. Sofiq...','D');
INSERT INTO NURSE
VALUES(4235,'Ganka Todorova','regular nurse',1500,'gr. Sofiq...','N');
INSERT INTO NURSE
VALUES(4111,'Yordanka Markova','head nurse',2000,'gr. Sofiq...','M');
INSERT INTO NURSE
VALUES(5111,'Kapka Stoqnova','intern',800,'gr. Sofiq...','M');
INSERT INTO NURSE
VALUES (4442,'Aneliq Petkova','intern',800,NULL,'M');

--physicians
INSERT INTO FN45421.PHYSICIAN
VALUES (1000,'Bobi',99999,22,'gr. Sofia, kv. Hadji Dimitar 110, vh. G, ap. 124','endokrinolog','0876111986','Endokrinologiq',NULL,NULL,NULL);

INSERT INTO FN45421.PHYSICIAN
VALUES (2000,'Reni',99999,22,'gr. Sofia, Studentski Grad','onkolog','0876111111','Onkologiq',NULL,NULL,NULL);

INSERT INTO FN45421.PHYSICIAN
VALUES (3200,'Gabi',99999,22,'gr. Sofia, Studentski Grad','onkolog','0012555678','Onkologiq',NULL,NULL,NULL);
--receiptionists
INSERT INTO RECEIPTIONIST
VALUES (7123,'Gergana Georgieva',1300,'gr.Pernik,...',0871113248);

--patients
INSERT INTO PATIENT
VALUES ('B1234567','9804301234','Borislav Todorov',22,'gr. Sofiq','M','0876111986',NULL,NULL,'14:30:00','8.6.2020',NULL,NULL,NULL,NULL,NULL);

INSERT INTO PATIENT
VALUES ('B1234568','9804301234','Borislav Genadiev',22,'gr. Sofiq','M','0876112222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7123);

UPDATE PATIENT
SET ROOM_NUM = 2554
WHERE PAT_ID = 'A1234568';

INSERT INTO ROOM
VALUES(2554,'ONEP',50);

--appointments
INSERT INTO APPOINTMENT
VALUES ('AA0001','14:20:00','14.2.2020',1,7123,'1000',7123);

--medication
INSERT INTO MEDICATION
VALUES('POOPPW123790','ANTISTEPSICIL', 35, 'Sofarma','med for sore throat' ,'7890002909', '12.05.2020', 'A1234568', 'Gabi');

INSERT INTO MEDICATION
VALUES('POOPPW123792','Kolagen', 20, 'Sofarma','med for put strength' ,'7890002902', '13.05.2020', 'A1234568', 'Gabi');

INSERT INTO MEDICATION
VALUES('POOPPW123742','Kolagen', 20, 'Sofarma','med for put strength' ,'7890002902', '13.05.2020', 'A1234568', 'Gabi');


--trigger test
INSERT INTO NURSE
VALUES (8888,'asd','asd',1,'a','D');

UPDATE PHYSICIAN
SET PHYS_ID = 5200
WHERE PHYS_ID = 1000;

UPDATE FN45421.DEPARTMENT
SET DEP_HEAD_ID = 5100
WHERE DEP_HEAD_ID = 2000;

UPDATE PATIENT
SET PAT_ID = 'A123R568'
WHERE PAT_ID = 'A1234568';

INSERT INTO APPOINTMENT
VALUES ('AB1F34','16:00:00','5.5.2020',5,'A1234568',3200,7123);

--view test
SELECT * FROM NURSES_SHIFTS;