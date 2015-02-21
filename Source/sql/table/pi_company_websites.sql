--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_COMPANY_WEBSITES
--------------------------------------------------------

  CREATE TABLE "PI_COMPANY_WEBSITES" 
   (	"COM_ID" NUMBER(8,0), 
	"WEB_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_COMPANY_WEBSITES"."COM_ID" IS 'Unique identifier.'
--------------------------------------------------------
--  DDL for Index PI_COW_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_COW_I1" ON "PI_COMPANY_WEBSITES" ("COM_ID", "WEB_ID")
--------------------------------------------------------
--  Constraints for Table PI_COMPANY_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_COMPANY_WEBSITES" ADD CONSTRAINT "PI_COW_PK" PRIMARY KEY ("COM_ID", "WEB_ID") ENABLE
 
  ALTER TABLE "PI_COMPANY_WEBSITES" MODIFY ("COM_ID" NOT NULL ENABLE)
 
  ALTER TABLE "PI_COMPANY_WEBSITES" MODIFY ("WEB_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_COMPANY_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_COMPANY_WEBSITES" ADD CONSTRAINT "PI_COW_COM_FK" FOREIGN KEY ("COM_ID")
	  REFERENCES "PI_COMPANIES" ("ID") ENABLE
 
  ALTER TABLE "PI_COMPANY_WEBSITES" ADD CONSTRAINT "PI_COW_WEB_FK" FOREIGN KEY ("WEB_ID")
	  REFERENCES "PI_WEBSITES" ("ID") ENABLE
