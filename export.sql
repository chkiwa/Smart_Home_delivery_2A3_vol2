--------------------------------------------------------
--  Fichier cr�� - dimanche-janvier-03-2021   
--------------------------------------------------------
DROP TABLE "NOUR"."CATEGORIE";
DROP TABLE "NOUR"."CLIENT";
DROP TABLE "NOUR"."COMMANDE";
DROP TABLE "NOUR"."FACTURE";
DROP TABLE "NOUR"."LIVREUR1";
DROP TABLE "NOUR"."PARTENAIRE";
DROP TABLE "NOUR"."PROMOTION";
DROP TABLE "NOUR"."RECLAMATION";
DROP TABLE "NOUR"."SCOOTER2";
DROP TABLE "NOUR"."ZONE";
DROP TABLE "NOUR"."LIVREUR";
DROP TABLE "NOUR"."SCOOTER";
--------------------------------------------------------
--  DDL for Table CATEGORIE
--------------------------------------------------------

  CREATE TABLE "NOUR"."CATEGORIE" 
   (	"ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "NOUR"."CLIENT" 
   (	"ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMANDE
--------------------------------------------------------

  CREATE TABLE "NOUR"."COMMANDE" 
   (	"ID" VARCHAR2(20 BYTE), 
	"IDZONE" VARCHAR2(20 BYTE), 
	"IDCLIENT" NUMBER, 
	"IDLIVREUR" VARCHAR2(20 BYTE), 
	"IDPARTENAIRE" VARCHAR2(20 BYTE), 
	"IDPROMOTION" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FACTURE
--------------------------------------------------------

  CREATE TABLE "NOUR"."FACTURE" 
   (	"ID" VARCHAR2(20 BYTE), 
	"IDCLIENT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LIVREUR1
--------------------------------------------------------

  CREATE TABLE "NOUR"."LIVREUR1" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"NUMERO_TELE" NUMBER, 
	"MDP" VARCHAR2(20 BYTE), 
	"PRESENCE" VARCHAR2(20 BYTE), 
	"HEURE_M" NUMBER, 
	"IDSCO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PARTENAIRE
--------------------------------------------------------

  CREATE TABLE "NOUR"."PARTENAIRE" 
   (	"ID" VARCHAR2(20 BYTE), 
	"IDCATEGORIE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROMOTION
--------------------------------------------------------

  CREATE TABLE "NOUR"."PROMOTION" 
   (	"ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RECLAMATION
--------------------------------------------------------

  CREATE TABLE "NOUR"."RECLAMATION" 
   (	"ID" VARCHAR2(20 BYTE), 
	"DATE1" VARCHAR2(20 BYTE), 
	"IDCOMMANDE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCOOTER2
--------------------------------------------------------

  CREATE TABLE "NOUR"."SCOOTER2" 
   (	"ID" VARCHAR2(20 BYTE), 
	"ETAT" VARCHAR2(20 BYTE), 
	"DISPO" VARCHAR2(20 BYTE), 
	"DEPENSE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ZONE
--------------------------------------------------------

  CREATE TABLE "NOUR"."ZONE" 
   (	"ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LIVREUR
--------------------------------------------------------

  CREATE TABLE "NOUR"."LIVREUR" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"NUMERO_TELE" NUMBER, 
	"MDP" VARCHAR2(20 BYTE), 
	"PRESENCE" VARCHAR2(20 BYTE), 
	"HEURE_M" NUMBER, 
	"IDSCO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCOOTER
--------------------------------------------------------

  CREATE TABLE "NOUR"."SCOOTER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"ETAT" VARCHAR2(20 BYTE), 
	"DISPO" VARCHAR2(20 BYTE), 
	"DEPENSE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into NOUR.CATEGORIE
SET DEFINE OFF;
REM INSERTING into NOUR.CLIENT
SET DEFINE OFF;
REM INSERTING into NOUR.COMMANDE
SET DEFINE OFF;
REM INSERTING into NOUR.FACTURE
SET DEFINE OFF;
REM INSERTING into NOUR.LIVREUR1
SET DEFINE OFF;
Insert into NOUR.LIVREUR1 (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('02Jtmt01','touati','badr','2532','9580322','oui','60','sco03');
Insert into NOUR.LIVREUR1 (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('20jmt02','sayes','ala','95803','14725','oui','32','sco04');
Insert into NOUR.LIVREUR1 (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('141jmt02','neji','dali','22147','2214','oui','60','sco01');
REM INSERTING into NOUR.PARTENAIRE
SET DEFINE OFF;
REM INSERTING into NOUR.PROMOTION
SET DEFINE OFF;
REM INSERTING into NOUR.RECLAMATION
SET DEFINE OFF;
REM INSERTING into NOUR.SCOOTER2
SET DEFINE OFF;
Insert into NOUR.SCOOTER2 (ID,ETAT,DISPO,DEPENSE) values ('sco01','bon','oui','220');
Insert into NOUR.SCOOTER2 (ID,ETAT,DISPO,DEPENSE) values ('sco02','panne','oui','180');
Insert into NOUR.SCOOTER2 (ID,ETAT,DISPO,DEPENSE) values ('sco03','bon','non','160');
Insert into NOUR.SCOOTER2 (ID,ETAT,DISPO,DEPENSE) values ('sco04','bon','oui','100');
Insert into NOUR.SCOOTER2 (ID,ETAT,DISPO,DEPENSE) values ('sco05','bon','oui','500');
REM INSERTING into NOUR.ZONE
SET DEFINE OFF;
REM INSERTING into NOUR.LIVREUR
SET DEFINE OFF;
Insert into NOUR.LIVREUR (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('18JMT2010','toutou','anouar','95702621','khhh','non','15','18sco02');
Insert into NOUR.LIVREUR (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('yy','ssas','sssd','20','hh','ku','25','grg');
Insert into NOUR.LIVREUR (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('jgha0304','amine','jghagha','56200100','azertdd','oui','20','12sco03');
Insert into NOUR.LIVREUR (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('nnn','jjj','jkjkkk','555','2lllnbh','non','15','ss');
Insert into NOUR.LIVREUR (ID,NOM,PRENOM,NUMERO_TELE,MDP,PRESENCE,HEURE_M,IDSCO) values ('01JMT1460','hadded','nakata','56420159','2258','oui','20','01SCO22');
REM INSERTING into NOUR.SCOOTER
SET DEFINE OFF;
Insert into NOUR.SCOOTER (ID,ETAT,DISPO,DEPENSE) values ('19sco03','bon','oui','500');
Insert into NOUR.SCOOTER (ID,ETAT,DISPO,DEPENSE) values ('04sco03','enpanne','no','80');
Insert into NOUR.SCOOTER (ID,ETAT,DISPO,DEPENSE) values ('20sco01','bon','oui','20');
Insert into NOUR.SCOOTER (ID,ETAT,DISPO,DEPENSE) values ('99sco03','enpanne','no','8');
--------------------------------------------------------
--  DDL for Index CATEGORIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."CATEGORIE_PK" ON "NOUR"."CATEGORIE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."CLIENT_PK" ON "NOUR"."CLIENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMMANDE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."COMMANDE_PK" ON "NOUR"."COMMANDE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FACTURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."FACTURE_PK" ON "NOUR"."FACTURE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LIVREUR1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."LIVREUR1_PK" ON "NOUR"."LIVREUR1" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PARTENAIRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."PARTENAIRE_PK" ON "NOUR"."PARTENAIRE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROMOTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."PROMOTION_PK" ON "NOUR"."PROMOTION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RECLAMATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."RECLAMATION_PK" ON "NOUR"."RECLAMATION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."TABLE1_PK" ON "NOUR"."SCOOTER2" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ZONE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ZONE_PK" ON "NOUR"."ZONE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LIVREUR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."LIVREUR_PK" ON "NOUR"."LIVREUR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SCOOTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."SCOOTER_PK" ON "NOUR"."SCOOTER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CATEGORIE
--------------------------------------------------------

  ALTER TABLE "NOUR"."CATEGORIE" ADD CONSTRAINT "CATEGORIE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."CATEGORIE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "NOUR"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."CLIENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "NOUR"."COMMANDE" MODIFY ("IDPROMOTION" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."COMMANDE" ADD CONSTRAINT "COMMANDE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."COMMANDE" MODIFY ("IDPARTENAIRE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."COMMANDE" MODIFY ("IDLIVREUR" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."COMMANDE" MODIFY ("IDCLIENT" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."COMMANDE" MODIFY ("IDZONE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."COMMANDE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FACTURE
--------------------------------------------------------

  ALTER TABLE "NOUR"."FACTURE" ADD CONSTRAINT "FACTURE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."FACTURE" MODIFY ("IDCLIENT" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."FACTURE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIVREUR1
--------------------------------------------------------

  ALTER TABLE "NOUR"."LIVREUR1" ADD CONSTRAINT "LIVREUR1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."LIVREUR1" MODIFY ("IDSCO" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."LIVREUR1" MODIFY ("NUMERO_TELE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."LIVREUR1" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PARTENAIRE
--------------------------------------------------------

  ALTER TABLE "NOUR"."PARTENAIRE" ADD CONSTRAINT "PARTENAIRE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."PARTENAIRE" MODIFY ("IDCATEGORIE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."PARTENAIRE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROMOTION
--------------------------------------------------------

  ALTER TABLE "NOUR"."PROMOTION" ADD CONSTRAINT "PROMOTION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."PROMOTION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECLAMATION
--------------------------------------------------------

  ALTER TABLE "NOUR"."RECLAMATION" ADD CONSTRAINT "RECLAMATION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."RECLAMATION" MODIFY ("IDCOMMANDE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."RECLAMATION" MODIFY ("DATE1" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."RECLAMATION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCOOTER2
--------------------------------------------------------

  ALTER TABLE "NOUR"."SCOOTER2" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."SCOOTER2" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZONE
--------------------------------------------------------

  ALTER TABLE "NOUR"."ZONE" ADD CONSTRAINT "ZONE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."ZONE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIVREUR
--------------------------------------------------------

  ALTER TABLE "NOUR"."LIVREUR" ADD CONSTRAINT "LIVREUR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."LIVREUR" MODIFY ("NUMERO_TELE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."LIVREUR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."LIVREUR" MODIFY ("IDSCO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCOOTER
--------------------------------------------------------

  ALTER TABLE "NOUR"."SCOOTER" ADD CONSTRAINT "SCOOTER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NOUR"."SCOOTER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "NOUR"."COMMANDE" ADD CONSTRAINT "COMMANDE_CLIENT_FK2" FOREIGN KEY ("IDCLIENT")
	  REFERENCES "NOUR"."CLIENT" ("ID") ENABLE;
  ALTER TABLE "NOUR"."COMMANDE" ADD CONSTRAINT "COMMANDE_FK1" FOREIGN KEY ("IDLIVREUR")
	  REFERENCES "NOUR"."LIVREUR1" ("ID") ENABLE;
  ALTER TABLE "NOUR"."COMMANDE" ADD CONSTRAINT "COMMANDE_PARTENAIRE_FK2" FOREIGN KEY ("IDPARTENAIRE")
	  REFERENCES "NOUR"."PARTENAIRE" ("ID") ENABLE;
  ALTER TABLE "NOUR"."COMMANDE" ADD CONSTRAINT "COMMANDE_PROMOTION_FK2" FOREIGN KEY ("IDPROMOTION")
	  REFERENCES "NOUR"."PROMOTION" ("ID") ENABLE;
  ALTER TABLE "NOUR"."COMMANDE" ADD CONSTRAINT "COMMANDE_ZONE_FK2" FOREIGN KEY ("IDZONE")
	  REFERENCES "NOUR"."ZONE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACTURE
--------------------------------------------------------

  ALTER TABLE "NOUR"."FACTURE" ADD CONSTRAINT "FACTURE_FK1" FOREIGN KEY ("IDCLIENT")
	  REFERENCES "NOUR"."CLIENT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVREUR1
--------------------------------------------------------

  ALTER TABLE "NOUR"."LIVREUR1" ADD CONSTRAINT "LIVREUR1_FK1" FOREIGN KEY ("IDSCO")
	  REFERENCES "NOUR"."SCOOTER2" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARTENAIRE
--------------------------------------------------------

  ALTER TABLE "NOUR"."PARTENAIRE" ADD CONSTRAINT "PARTENAIRE_FK1" FOREIGN KEY ("IDCATEGORIE")
	  REFERENCES "NOUR"."CATEGORIE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECLAMATION
--------------------------------------------------------

  ALTER TABLE "NOUR"."RECLAMATION" ADD CONSTRAINT "RECLAMATION_FK1" FOREIGN KEY ("IDCOMMANDE")
	  REFERENCES "NOUR"."COMMANDE" ("ID") ENABLE;
