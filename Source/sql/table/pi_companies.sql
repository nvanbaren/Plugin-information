--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_COMPANIES
--------------------------------------------------------

  CREATE TABLE "PI_COMPANIES" 
   (	"NAME" VARCHAR2(25 CHAR), 
	"INTERNAL_COMPANY_NAME" VARCHAR2(150 CHAR), 
	"ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_COMPANIES"."NAME" IS 'Name of the company.'
 
   COMMENT ON COLUMN "PI_COMPANIES"."INTERNAL_COMPANY_NAME" IS 'Company specific part of the internal plugin name used by the company.'
 
   COMMENT ON COLUMN "PI_COMPANIES"."ID" IS 'Unique identifier.'
 
   COMMENT ON TABLE "PI_COMPANIES"  IS 'Describtion of a company. '
--------------------------------------------------------
--  DDL for Index PI_COM_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_COM_I1" ON "PI_COMPANIES" ("ID")
--------------------------------------------------------
--  Constraints for Table PI_COMPANIES
--------------------------------------------------------

  ALTER TABLE "PI_COMPANIES" ADD CONSTRAINT "PI_COM_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "PI_COMPANIES" MODIFY ("NAME" NOT NULL ENABLE)
 
  ALTER TABLE "PI_COMPANIES" MODIFY ("INTERNAL_COMPANY_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "PI_COMPANIES" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  DDL for Trigger COM_COM_ID_TRG
--------------------------------------------------------

CREATE OR REPLACE TRIGGER "PI_COM_ID_TRG" BEFORE
  INSERT ON PI_COMPANIES FOR EACH ROW  WHEN (NEW.ID IS NULL) BEGIN
  SELECT PI_COM_SEQ_1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
ALTER TRIGGER "PI_COM_ID_TRG" ENABLE
