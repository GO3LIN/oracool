CREATE SEQUENCE module_seq;
CREATE OR REPLACE TRIGGER module_ai_trigger 
BEFORE INSERT ON module 
FOR EACH ROW

BEGIN
  SELECT module_seq.NEXTVAL
  INTO   :new.id_module
  FROM   dual;
END;