--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_PLUGIN_KEYWORDS
--------------------------------------------------------

  CREATE TABLE "PI_PLUGIN_KEYWORDS" 
   (	"PLU_ID" NUMBER(8,0), 
	"KEY_ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_PLUGIN_KEYWORDS"."PLU_ID" IS 'Unique identifier.'
 
   COMMENT ON COLUMN "PI_PLUGIN_KEYWORDS"."KEY_ID" IS 'Unique identifier.'
--------------------------------------------------------
--  DDL for Index PI_PLK_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_PLK_I1" ON "PI_PLUGIN_KEYWORDS" ("PLU_ID", "KEY_ID")
--------------------------------------------------------
--  Constraints for Table PI_PLUGIN_KEYWORDS
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_KEYWORDS" ADD CONSTRAINT "PI_PLK_PK" PRIMARY KEY ("PLU_ID", "KEY_ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_KEYWORDS" MODIFY ("PLU_ID" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGIN_KEYWORDS" MODIFY ("KEY_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PI_PLUGIN_KEYWORDS
--------------------------------------------------------

  ALTER TABLE "PI_PLUGIN_KEYWORDS" ADD CONSTRAINT "PI_PLK_KEY_FK" FOREIGN KEY ("KEY_ID")
	  REFERENCES "PI_KEYWORDS" ("ID") ENABLE
 
  ALTER TABLE "PI_PLUGIN_KEYWORDS" ADD CONSTRAINT "PI_PLK_PLU_FK" FOREIGN KEY ("PLU_ID")
	  REFERENCES "PI_PLUGINS" ("ID") ENABLE
