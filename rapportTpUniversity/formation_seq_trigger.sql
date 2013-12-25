CREATE SEQUENCE formation_seq;
CREATE OR REPLACE TRIGGER formation_ai_trigger 
BEFORE INSERT ON formation 
FOR EACH ROW

BEGIN
  SELECT formation_seq.NEXTVAL
  INTO   :new.id_formation
  FROM   dual;
END;