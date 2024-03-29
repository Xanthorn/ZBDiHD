DROP TRIGGER T_SET_ZIP_ID;
DROP TRIGGER T_SET_SALE_ID;
DROP TRIGGER T_SET_TIME_ID;
DROP SEQUENCE SEQ_INCR_ZIP_ID;
DROP SEQUENCE SEQ_INCR_SALE_ID;
DROP SEQUENCE SEQ_INCR_TIME_ID;


CREATE SEQUENCE SEQ_INCR_ZIP_ID
INCREMENT BY 1
START WITH 1;

CREATE OR REPLACE TRIGGER T_SET_ZIP_ID
BEFORE INSERT ON Zip
FOR EACH ROW
DECLARE
BEGIN
    IF(:NEW.id IS NULL)
    THEN
        :NEW.ID := SEQ_INCR_ZIP_ID.NEXTVAL;
    END IF;
END;

CREATE SEQUENCE SEQ_INCR_SALE_ID
INCREMENT BY 1
START WITH 1;

CREATE OR REPLACE TRIGGER T_SET_SALE_ID
BEFORE INSERT ON Sale
FOR EACH ROW
DECLARE
BEGIN
    IF(:NEW.id IS NULL)
    THEN
        :NEW.ID := SEQ_INCR_SALE_ID.NEXTVAL;
    END IF;
END;

CREATE SEQUENCE SEQ_INCR_TIME_ID
INCREMENT BY 1
START WITH 1;

CREATE OR REPLACE TRIGGER T_SET_TIME_ID
BEFORE INSERT ON Time
FOR EACH ROW
DECLARE
BEGIN
    IF(:NEW.id IS NULL)
    THEN
        :NEW.ID := SEQ_INCR_TIME_ID.NEXTVAL;
    END IF;
END;