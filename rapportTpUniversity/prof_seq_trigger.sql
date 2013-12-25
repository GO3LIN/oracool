CREATE SEQUENCE prof_seq;
CREATE OR REPLACE TRIGGER prof_ai_trigger 
BEFORE INSERT ON prof 
FOR EACH ROW

BEGIN
  SELECT prof_seq.NEXTVAL
  INTO   :new.id_prof
  FROM   dual;
END;