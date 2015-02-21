--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_PLUGIN_WEBSITES
--------------------------------------------------------

  CREATE TABLE "PI_PLUGIN_WEBSITES" 
   (	"PLU_ID" NUMBER(8,0), 
	"WEB_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_PLUGIN_WEBSITES"."PLU_ID" IS 'Unique identifier.'
 
   COMMENT ON COLUMN "PI_PLUGIN_WEBSITES"."WEB_ID" IS 'Unique identifier.'
--------------------------------------------------------
--  DDL for Index PI_PLW_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_PLW_I1" ON "PI_PLUGIN_WEBSITES" ("PLU_ID", "WEB_ID")
--------------------------------------------------------
--  Constraints for Table PI_PLUGIN_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_WEBSITES" ADD CONSTRAINT "PI_PLW_PK" PRIMARY KEY ("PLU_ID", "WEB_ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_WEBSITES" MODIFY ("PLU_ID" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGIN_WEBSITES" MODIFY ("WEB_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_PLUGIN_WEBSITES
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_WEBSITES" ADD CONSTRAINT "PI_PLW_PLU_FK" FOREIGN KEY ("PLU_ID")
	  REFERENCES "PI_PLUGINS" ("ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_WEBSITES" ADD CONSTRAINT "PI_PLW_WEB_FK" FOREIGN KEY ("WEB_ID")
	  REFERENCES "PI_WEBSITES" ("ID") ENABLE
