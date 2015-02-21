--------------------------------------------------------
--  File created - woensdag-februari-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PI_PLUGINS
--------------------------------------------------------

  CREATE TABLE "PI_PLUGINS" 
   (	"INTERNAL_NAME" VARCHAR2(150 CHAR), 
	"INTERNAL_COMPANY_NAME" VARCHAR2(150 CHAR), 
	"PLUGIN_TYPE" VARCHAR2(1 BYTE), 
	"DISPLAY_NAME" VARCHAR2(150 CHAR), 
	"APPLICATION" VARCHAR2(30 CHAR), 
	"INFORMATION" VARCHAR2(2000 CHAR), 
	"ID" NUMBER(8,0)
   ) 
 

   COMMENT ON COLUMN "PI_PLUGINS"."INTERNAL_NAME" IS 'Internal name of the plugin.'
 
   COMMENT ON COLUMN "PI_PLUGINS"."INTERNAL_COMPANY_NAME" IS 'Company part of the internal name. Used to identify the author and company.'
 
   COMMENT ON COLUMN "PI_PLUGINS"."PLUGIN_TYPE" IS 'The component type of the plugin.'
 
   COMMENT ON COLUMN "PI_PLUGINS"."DISPLAY_NAME" IS 'Name that is displayed to the user.'
 
   COMMENT ON COLUMN "PI_PLUGINS"."APPLICATION" IS 'The application alias of the application that demo''s the plugin.'
 
   COMMENT ON COLUMN "PI_PLUGINS"."INFORMATION" IS 'Additional information about the plugin.'
 
   COMMENT ON COLUMN "PI_PLUGINS"."ID" IS 'Unique identifier.'
 
   COMMENT ON TABLE "PI_PLUGINS"  IS 'Plugin basic information.'
--------------------------------------------------------
--  DDL for Index PI_PLU_I1
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_PLU_I1" ON "PI_PLUGINS" ("ID")
--------------------------------------------------------
--  DDL for Index PI_PLU_I2
--------------------------------------------------------

  CREATE UNIQUE INDEX "PI_PLU_I2" ON "PI_PLUGINS" ("INTERNAL_NAME")
--------------------------------------------------------
--  Constraints for Table PI_PLUGINS
--------------------------------------------------------

  ALTER TABLE "PI_PLUGINS" ADD CONSTRAINT "PI_PLU_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "PI_PLUGINS" ADD CONSTRAINT "PI_PLU_PLUGIN_TYPE_CK" CHECK ( PLUGIN_TYPE IN ('D', 'I', 'P', 'R')) ENABLE
 
  ALTER TABLE "PI_PLUGINS" ADD CONSTRAINT "PI_PLU_UK1" UNIQUE ("INTERNAL_NAME") ENABLE
 
  ALTER TABLE "PI_PLUGINS" MODIFY ("INTERNAL_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGINS" MODIFY ("INTERNAL_COMPANY_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGINS" MODIFY ("PLUGIN_TYPE" NOT NULL ENABLE)
 
  ALTER TABLE "PI_PLUGINS" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  DDL for Trigger PLU_PLU_ID_TRG
--------------------------------------------------------

CREATE OR REPLACE TRIGGER "PI_PLU_ID_TRG" BEFORE
  INSERT ON PI_PLUGINS FOR EACH ROW  WHEN (NEW.ID IS NULL) BEGIN
  SELECT PI_PLU_SEQ_1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
ALTER TRIGGER "PI_PLU_ID_TRG" ENABLE
