--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_WEBSITES
--------------------------------------------------------

  CREATE TABLE "PI_WEBSITES" 
   (	"URL" VARCHAR2(150 CHAR), 
	"SITE_TYPE" VARCHAR2(1 CHAR), 
	"NAME" VARCHAR2(25 CHAR), 
	"FULL_URL" VARCHAR2(150 CHAR), 
	"ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_WEBSITES"."URL" IS 'Url of the webstite.'
 
   COMMENT ON COLUMN "PI_WEBSITES"."SITE_TYPE" IS 'The type of website.'
 
   COMMENT ON COLUMN "PI_WEBSITES"."NAME" IS 'Name of the site.'
 
   COMMENT ON COLUMN "PI_WEBSITES"."FULL_URL" IS 'Full url of the site.'
 
   COMMENT ON COLUMN "PI_WEBSITES"."ID" IS 'Unique identifier.'
 
   COMMENT ON TABLE "PI_WEBSITES"  IS 'Websites for links to demo sites, blogs or compony sites'
--------------------------------------------------------
--  DDL for Index PI_WEB_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_WEB_I1" ON "PI_WEBSITES" ("ID")
--------------------------------------------------------
--  Constraints for Table PI_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_WEBSITES" ADD CONSTRAINT "PI_WEB_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "PI_WEBSITES" MODIFY ("URL" NOT NULL ENABLE)
 
  ALTER TABLE "PI_WEBSITES" MODIFY ("SITE_TYPE" NOT NULL ENABLE)
 
  ALTER TABLE "PI_WEBSITES" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  DDL for Trigger WEB_WEB_ID_TRG
--------------------------------------------------------

CREATE OR REPLACE TRIGGER "PI_WEB_ID_TRG" BEFORE
  INSERT ON PI_WEBSITES FOR EACH ROW  WHEN (NEW.ID IS NULL) BEGIN
  SELECT PI_WEB_SEQ_1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
ALTER TRIGGER "PI_WEB_ID_TRG" ENABLE
