--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_KEYWORDS
--------------------------------------------------------

  CREATE TABLE "PI_KEYWORDS" 
   (	"KEYWORD" VARCHAR2(25 CHAR), 
	"ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_KEYWORDS"."KEYWORD" IS 'Describing word.'
 
   COMMENT ON COLUMN "PI_KEYWORDS"."ID" IS 'Unique identifier.'
 
   COMMENT ON TABLE "PI_KEYWORDS"  IS 'Collection of keywords.'
--------------------------------------------------------
--  DDL for Index PI_KEY_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_KEY_I1" ON "PI_KEYWORDS" ("ID")
--------------------------------------------------------
--  Constraints for Table PI_KEYWORDS
--------------------------------------------------------

  ALTER TABLE "PI_KEYWORDS" ADD CONSTRAINT "PI_KEY_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "PI_KEYWORDS" MODIFY ("KEYWORD" NOT NULL ENABLE)
 
  ALTER TABLE "PI_KEYWORDS" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  DDL for Trigger KEY_KEY_ID_TRG
--------------------------------------------------------

CREATE OR REPLACE TRIGGER "PI_KEY_ID_TRG" BEFORE
  INSERT ON PI_KEYWORDS FOR EACH ROW  WHEN (NEW.ID IS NULL) BEGIN
  SELECT PI_KEY_SEQ_1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
ALTER TRIGGER "PI_KEY_ID_TRG" ENABLE
