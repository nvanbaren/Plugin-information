--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_PLUGIN_AUTHORS
--------------------------------------------------------

  CREATE TABLE "PI_PLUGIN_AUTHORS" 
   (	"PLU_ID" NUMBER(8,0), 
	"AUT_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_PLUGIN_AUTHORS"."PLU_ID" IS 'Unique identifier.'
 
   COMMENT ON COLUMN "PI_PLUGIN_AUTHORS"."AUT_ID" IS 'Unique identifier.'
--------------------------------------------------------
--  DDL for Index PI_PLA_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_PLA_I1" ON "PI_PLUGIN_AUTHORS" ("PLU_ID", "AUT_ID")
--------------------------------------------------------
--  Constraints for Table PI_PLUGIN_AUTHORS
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_AUTHORS" ADD CONSTRAINT "PI_PLA_PK" PRIMARY KEY ("PLU_ID", "AUT_ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_AUTHORS" MODIFY ("PLU_ID" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGIN_AUTHORS" MODIFY ("AUT_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_PLUGIN_AUTHORS
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_AUTHORS" ADD CONSTRAINT "PI_PLA_AUT_FK" FOREIGN KEY ("AUT_ID")
	  REFERENCES "PI_AUTHORS" ("ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_AUTHORS" ADD CONSTRAINT "PI_PLA_PLU_FK" FOREIGN KEY ("PLU_ID")
	  REFERENCES "PI_PLUGINS" ("ID") ENABLE
