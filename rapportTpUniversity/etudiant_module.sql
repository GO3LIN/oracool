CREATE TABLE ETUDIANT_MODULE
(
  ID_ETUDIANT NUMBER NOT NULL,
  ID_MODULE NUMBER NOT NULL
)
;

ALTER TABLE ETUDIANT_MODULE
ADD CONSTRAINT ETUDIANT_MODULE_ETUDIANT_FK1 FOREIGN KEY
(
  ID_ETUDIANT
)
REFERENCES ETUDIANT
(
ID_ETUDIANT
) ENABLE
;

ALTER TABLE ETUDIANT_MODULE
ADD CONSTRAINT ETUDIANT_MODULE_MODULE_FK1 FOREIGN KEY
(
  ID_MODULE
)
REFERENCES MODULE
(
ID_MODULE
) ENABLE
;