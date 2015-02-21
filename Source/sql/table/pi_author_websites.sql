--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_AUTHOR_WEBSITES
--------------------------------------------------------

  CREATE TABLE "PI_AUTHOR_WEBSITES" 
   (	"AUT_ID" NUMBER(8,0), 
	"WEB_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_AUTHOR_WEBSITES"."AUT_ID" IS 'Unique identifier.'
--------------------------------------------------------
--  DDL for Index PI_AUW_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_AUW_I1" ON "PI_AUTHOR_WEBSITES" ("AUT_ID", "WEB_ID")
--------------------------------------------------------
--  Constraints for Table PI_AUTHOR_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_AUTHOR_WEBSITES" ADD CONSTRAINT "PI_AUW_PK" PRIMARY KEY ("AUT_ID", "WEB_ID") ENABLE
 
  ALTER TABLE "PI_AUTHOR_WEBSITES" MODIFY ("AUT_ID" NOT NULL ENABLE)
 
  ALTER TABLE "PI_AUTHOR_WEBSITES" MODIFY ("WEB_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_AUTHOR_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_AUTHOR_WEBSITES" ADD CONSTRAINT "PI_AUW_AUT_FK" FOREIGN KEY ("AUT_ID")
	  REFERENCES "PI_AUTHORS" ("ID") ENABLE
 
  ALTER TABLE "PI_AUTHOR_WEBSITES" ADD CONSTRAINT "PI_AUW_WEB_FK" FOREIGN KEY ("WEB_ID")
	  REFERENCES "PI_WEBSITES" ("ID") ENABLE
