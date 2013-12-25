CREATE SEQUENCE etudiant_seq;
CREATE OR REPLACE TRIGGER etudiant_ai_trigger 
BEFORE INSERT ON etudiant 
FOR EACH ROW

BEGIN
  SELECT etudiant_seq.NEXTVAL
  INTO   :new.id_etudiant
  FROM   dual;
END;