/*
Created: 2017-02-24
Modified: 2017-03-02
Model: PostgreSQL 9.5
Database: PostgreSQL 9.5
*/

-- Create tables section -------------------------------------------------

-- Table Waluty

CREATE TABLE "Waluty"(
 "WA_ID" BigSerial NOT NULL,
 "WA_Nazwa" Text NOT NULL,
 "WA_Skrot" Text NOT NULL,
 "WA_Insert_Time" Timestamp with time zone NOT NULL,
 "WA_UpdateTime" Timestamp with time zone
)
;

-- Add keys for table Waluty

ALTER TABLE "Waluty" ADD CONSTRAINT "Key1" PRIMARY KEY ("WA_ID")
;

ALTER TABLE "Waluty" ADD CONSTRAINT "WA_ID" UNIQUE ("WA_ID")
;

ALTER TABLE "Waluty" ADD CONSTRAINT "WA_Nazwa" UNIQUE ("WA_Nazwa")
;

ALTER TABLE "Waluty" ADD CONSTRAINT "WA_Skrot" UNIQUE ("WA_Skrot")
;

-- Table Konta

CREATE TABLE "Konta"(
 "KO_ID" BigSerial NOT NULL,
 "KO_Nazwa" Text NOT NULL,
 "KO_PASS_1" Text NOT NULL,
 "KO_USER_1" Text NOT NULL,
 "KO_PASS2" Text,
 "KO_USER2" Bigint,
 "KO_Address" Bigint NOT NULL,
 "KO_BROKER" Bigint NOT NULL,
 "KO_Dzwignia" Bigint NOT NULL,
 "KO_Spread" Bigint
)
;

-- Add keys for table Konta

ALTER TABLE "Konta" ADD CONSTRAINT "Key2" PRIMARY KEY ("KO_ID")
;

ALTER TABLE "Konta" ADD CONSTRAINT "KO_ID" UNIQUE ("KO_ID")
;

-- Table Log

CREATE TABLE "Log"(
 "LOG_ID" BigSerial NOT NULL,
 "LOG_InsertTime" Timestamp with time zone NOT NULL,
 "LOG_KtoKonto" Text NOT NULL,
 "LOG_KtoMaszyna" Text NOT NULL,
 "LOG_KtoCzlowiekMaszyna" Boolean NOT NULL,
 "LOG_CoTowar" Bigint NOT NULL,
 "LOG_CoWolumen" Bigint NOT NULL,
 "LOG_CoWartosc" Bigint NOT NULL,
 "LOG_CoLongShort" Boolean NOT NULL,
 "LOG_Kiedy_CzasBrokera" Bigint NOT NULL,
 "LOG_KiedyCzasSystemowy" Timestamp with time zone NOT NULL,
 "LOG_TerminRealizacji" Timestamp with time zone,
 "LOG_KiedyCzyZrealizowano" Boolean,
 "LOG_PowodKtansakcji" Text,
 "LOG_PerspektywaCzasowaZysku" Timestamp with time zone,
 "LOG_Komentarz" Text,
 "LOG_ObiazenieMaszyny" Smallint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "KO_ID" Bigint NOT NULL,
 "SD_ID" Bigint NOT NULL,
 "Attribute1" Integer NOT NULL
)
;

-- Add keys for table Log

ALTER TABLE "Log" ADD CONSTRAINT "Key3" PRIMARY KEY ("LOG_ID","WA_ID","WA_ID","KO_ID","SD_ID","Attribute1")
;

ALTER TABLE "Log" ADD CONSTRAINT "LOG_ID" UNIQUE ("LOG_ID")
;

-- Table LogTransakcji

CREATE TABLE "LogTransakcji"(
 "LOG_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "KO_ID" Bigint NOT NULL,
 "SD_ID" Bigint NOT NULL,
 "Attribute1" Integer NOT NULL
)
;

-- Add keys for table LogTransakcji

ALTER TABLE "LogTransakcji" ADD CONSTRAINT "Key4" PRIMARY KEY ("LOG_ID","WA_ID","WA_ID","KO_ID","SD_ID","Attribute1")
;

-- Table LogPakiety

CREATE TABLE "LogPakiety"(
 "LOG_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "KO_ID" Bigint NOT NULL,
 "SD_ID" Bigint NOT NULL,
 "Attribute1" Integer NOT NULL
)
;

-- Add keys for table LogPakiety

ALTER TABLE "LogPakiety" ADD CONSTRAINT "Key5" PRIMARY KEY ("LOG_ID","WA_ID","WA_ID","KO_ID","SD_ID","Attribute1")
;

-- Table LogTick

CREATE TABLE "LogTick"(
 "LOG_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "WA_ID" Bigint NOT NULL,
 "KO_ID" Bigint NOT NULL,
 "SD_ID" Bigint NOT NULL,
 "Attribute1" Integer NOT NULL
)
;

-- Add keys for table LogTick

ALTER TABLE "LogTick" ADD CONSTRAINT "Key6" PRIMARY KEY ("LOG_ID","WA_ID","WA_ID","KO_ID","SD_ID","Attribute1")
;

-- Table AI_MasterTable

CREATE TABLE "AI_MasterTable"(
 "AI_ID" BigSerial NOT NULL,
 "WA_ID_PIERWOTNA" Bigint NOT NULL,
 "WA_ID_ODNIESIENA" Bigint NOT NULL,
 "PAR_ID" Integer NOT NULL,
 "AI_StartLearnTime" Timestamp with time zone NOT NULL,
 "AI_FinishLearnTime" Timestamp with time zone NOT NULL,
 "AI_WinRainto" Money
)
;

-- Add keys for table AI_MasterTable

ALTER TABLE "AI_MasterTable" ADD CONSTRAINT "Key7" PRIMARY KEY ("AI_ID","WA_ID_PIERWOTNA","WA_ID_ODNIESIENA","PAR_ID")
;

ALTER TABLE "AI_MasterTable" ADD CONSTRAINT "AI_ID" UNIQUE ("AI_ID")
;

-- Table SpecialData

CREATE TABLE "SpecialData"(
 "SD_ID" BigSerial NOT NULL,
 "SD_InsertTime" Timestamp NOT NULL,
 "SD_UpdateTime" Timestamp with time zone,
 "SD_WhoExtend" Text NOT NULL,
 "SD_Extensor_ID" Bigint NOT NULL,
 "SD_INT1" Bigint,
 "SD_INT2" Bigint,
 "SD_INT3" Bigint,
 "SD_INT4" Bigint,
 "SD_INT5" Bigint,
 "SD_INT6" Bigint,
 "SD_INT7" Bigint,
 "SD_INT8" Bigint,
 "SD_INT9" Bigint,
 "SD_TEXT1" Text,
 "SD_TEXT2" Text,
 "SD_TEXT3" Text,
 "SD_TEXT4" Text,
 "SD_TEXT5" Text,
 "SD_TEXT6" Text,
 "SD_TEXT7" Text,
 "SD_TEXT8" Text,
 "SD_TEXT9" Text,
 "SD_DEC1" Double precision,
 "SD_DEC2" Double precision,
 "SD_DEC3" Double precision,
 "SD_DEC4" Double precision,
 "SD_DEC5" Double precision,
 "SD_DEC6" Double precision,
 "SD_DEC7" Double precision,
 "SD_DEC8" Double precision,
 "SD_DEC9" Double precision,
 "Attribute31" Bigint,
 "Attribute32" Bigint,
 "Attribute33" Bigint,
 "Attribute34" Bigint,
 "Attribute35" Bigint,
 "Attribute36" Bigint,
 "Attribute37" Bigint,
 "Attribute38" Bigint,
 "Attribute39" Bigint,
 "Attribute40" Bigint,
 "Attribute41" Bigint,
 "Attribute42" Bigint,
 "Attribute43" Bigint,
 "Attribute44" Bigint,
 "Attribute45" Bigint,
 "Attribute46" Bigint,
 "Attribute47" Bigint,
 "Attribute48" Bigint,
 "Attribute49" Bigint,
 "Attribute52" Bigint,
 "Attribute53" Bigint,
 "Attribute54" Bigint,
 "Attribute55" Bigint,
 "Attribute56" Bigint,
 "Attribute57" Bigint,
 "Attribute58" Bigint,
 "Attribute59" Bigint,
 "Attribute60" Bigint
)
;

CREATE INDEX "Index1" ON "SpecialData" ()
;

-- Add keys for table SpecialData

ALTER TABLE "SpecialData" ADD CONSTRAINT "Key8" PRIMARY KEY ("SD_ID")
;

ALTER TABLE "SpecialData" ADD CONSTRAINT "Attribute1" UNIQUE ("SD_ID")
;

-- Table Entity8

CREATE TABLE "Entity8"(
 "WA_ID_PIERWOTNA" Bigint NOT NULL,
 "WA_ID_ODNIESIENA" Bigint NOT NULL,
 "PAR_ID" Serial NOT NULL
)
;
COMMENT ON COLUMN "Entity8"."WA_ID_PIERWOTNA" IS 'Pierwotna'
;
COMMENT ON COLUMN "Entity8"."WA_ID_ODNIESIENA" IS 'Odniesienia'
;

-- Add keys for table Entity8

ALTER TABLE "Entity8" ADD CONSTRAINT "Key9" PRIMARY KEY ("WA_ID_PIERWOTNA","WA_ID_ODNIESIENA","PAR_ID")
;

ALTER TABLE "Entity8" ADD CONSTRAINT "PAR_ID" UNIQUE ("PAR_ID")
;

-- Create relationships section ------------------------------------------------- 

ALTER TABLE "Entity8" ADD CONSTRAINT "Relationship6" FOREIGN KEY ("WA_ID_PIERWOTNA") REFERENCES "Waluty" ("WA_ID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Entity8" ADD CONSTRAINT "Relationship7" FOREIGN KEY ("WA_ID_ODNIESIENA") REFERENCES "Waluty" ("WA_ID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Log" ADD CONSTRAINT "Relationship8" FOREIGN KEY ("WA_ID", "WA_ID", "Attribute1") REFERENCES "Entity8" ("WA_ID_PIERWOTNA", "WA_ID_ODNIESIENA", "PAR_ID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Log" ADD CONSTRAINT "Relationship9" FOREIGN KEY ("KO_ID") REFERENCES "Konta" ("KO_ID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Log" ADD CONSTRAINT "Relationship10" FOREIGN KEY ("SD_ID") REFERENCES "SpecialData" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "LogTick" ADD CONSTRAINT "Relationship11" FOREIGN KEY ("LOG_ID", "WA_ID", "WA_ID", "KO_ID", "SD_ID", "Attribute1") REFERENCES "Log" ("LOG_ID", "WA_ID", "WA_ID", "KO_ID", "SD_ID", "Attribute1") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "LogTransakcji" ADD CONSTRAINT "Relationship12" FOREIGN KEY ("LOG_ID", "WA_ID", "WA_ID", "KO_ID", "SD_ID", "Attribute1") REFERENCES "Log" ("LOG_ID", "WA_ID", "WA_ID", "KO_ID", "SD_ID", "Attribute1") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "LogPakiety" ADD CONSTRAINT "Relationship13" FOREIGN KEY ("LOG_ID", "WA_ID", "WA_ID", "KO_ID", "SD_ID", "Attribute1") REFERENCES "Log" ("LOG_ID", "WA_ID", "WA_ID", "KO_ID", "SD_ID", "Attribute1") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "AI_MasterTable" ADD CONSTRAINT "Relationship14" FOREIGN KEY ("WA_ID_PIERWOTNA", "WA_ID_ODNIESIENA", "PAR_ID") REFERENCES "Entity8" ("WA_ID_PIERWOTNA", "WA_ID_ODNIESIENA", "PAR_ID") ON DELETE NO ACTION ON UPDATE NO ACTION
;




