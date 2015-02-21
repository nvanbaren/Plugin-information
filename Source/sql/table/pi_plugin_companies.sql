--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_PLUGIN_COMPANIES
--------------------------------------------------------

  CREATE TABLE "PI_PLUGIN_COMPANIES" 
   (	"PLU_ID" NUMBER(8,0), 
	"COM_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_PLUGIN_COMPANIES"."PLU_ID" IS 'Unique identifier.'
 
   COMMENT ON COLUMN "PI_PLUGIN_COMPANIES"."COM_ID" IS 'Unique identifier.'
--------------------------------------------------------
--  DDL for Index PI_PLC_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_PLC_I1" ON "PI_PLUGIN_COMPANIES" ("PLU_ID", "COM_ID")
--------------------------------------------------------
--  Constraints for Table PI_PLUGIN_COMPANIES
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_COMPANIES" ADD CONSTRAINT "PI_PLC_PK" PRIMARY KEY ("PLU_ID", "COM_ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_COMPANIES" MODIFY ("PLU_ID" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGIN_COMPANIES" MODIFY ("COM_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_PLUGIN_COMPANIES
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_COMPANIES" ADD CONSTRAINT "PI_PLC_COM_FK" FOREIGN KEY ("COM_ID")
	  REFERENCES "PI_COMPANIES" ("ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_COMPANIES" ADD CONSTRAINT "PI_PLC_PLU_FK" FOREIGN KEY ("PLU_ID")
	  REFERENCES "PI_PLUGINS" ("ID") ENABLE
