--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_AUTHORS
--------------------------------------------------------

  CREATE TABLE "PI_AUTHORS" 
   (	"NAME" VARCHAR2(25 CHAR), 
	"ID" NUMBER(8,0), 
	"COM_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_AUTHORS"."NAME" IS 'The name under which the author is known in the larger community'
 
   COMMENT ON COLUMN "PI_AUTHORS"."ID" IS 'Unique identifier. '
 
   COMMENT ON COLUMN "PI_AUTHORS"."COM_ID" IS 'Unique identifier.'
 
   COMMENT ON TABLE "PI_AUTHORS"  IS 'Plugin author information'
--------------------------------------------------------
--  DDL for Index PI_AUT_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_AUT_I1" ON "PI_AUTHORS" ("ID")
--------------------------------------------------------
--  Constraints for Table PI_AUTHORS
--------------------------------------------------------

  ALTER TABLE "PI_AUTHORS" ADD CONSTRAINT "PI_AUT_ID_CK" CHECK ( ID BETWEEN 0 AND 99999999) ENABLE
 
  ALTER TABLE "PI_AUTHORS" ADD CONSTRAINT "PI_AUT_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "PI_AUTHORS" MODIFY ("NAME" NOT NULL ENABLE)
 
  ALTER TABLE "PI_AUTHORS" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_AUTHORS
--------------------------------------------------------

  ALTER TABLE "PI_AUTHORS" ADD CONSTRAINT "PI_AUT_COM_FK" FOREIGN KEY ("COM_ID")
	  REFERENCES "PI_COMPANIES" ("ID") ENABLE
--------------------------------------------------------
--  DDL for Trigger AUT_AUT_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PI_AUT_ID_TRG" BEFORE
  INSERT ON PI_AUTHORS FOR EACH ROW  WHEN (NEW.ID IS NULL) BEGIN
  SELECT PI_AUT_SEQ_1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
ALTER TRIGGER "PI_AUT_ID_TRG" ENABLE
