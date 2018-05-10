ALTER TABLE TJPD.CRIME_TYPE
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.CRIME_TYPE CASCADE CONSTRAINTS;

CREATE TABLE TJPD.CRIME_TYPE
(
  CRIME_TYPE_ID  INTEGER,
  CRIME_NAME     VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE TJPD.CRIMINAL
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.CRIMINAL CASCADE CONSTRAINTS;

CREATE TABLE TJPD.CRIMINAL
(
  CRIMINAL_ID      INTEGER,
  LAST_NAME        VARCHAR2(255 BYTE),
  FIRST_NAME       VARCHAR2(255 BYTE),
  AGE              INTEGER,
  GENDER           VARCHAR2(1 CHAR),
  ADDRESS          VARCHAR2(255 BYTE),
  STATE_OF_ORIGIN  VARCHAR2(255 BYTE),
  STATUS           VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE TJPD.OFFICER
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.OFFICER CASCADE CONSTRAINTS;

CREATE TABLE TJPD.OFFICER
(
  OFFICER_ID          INTEGER,
  OFFICER_NAME        VARCHAR2(255 BYTE),
  OFFICER_RANK        VARCHAR2(255 BYTE),
  OFFICER_PASSWORD     VARCHAR2(255 BYTE),
  USER_LEVEL          INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE TJPD.STATION
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.STATION CASCADE CONSTRAINTS;

CREATE TABLE TJPD.STATION
(
  STATION_ID       INTEGER,
  STATION_NAME     VARCHAR2(255 BYTE),
  STATION_ADDRESS  VARCHAR2(255 BYTE),
  STATION_ZONE     VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE UNIQUE INDEX TJPD.CRIME_TYPE_PK ON TJPD.CRIME_TYPE
(CRIME_TYPE_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX TJPD.CRIMINAL_PK ON TJPD.CRIMINAL
(CRIMINAL_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX TJPD.OFFICER_PK ON TJPD.OFFICER
(OFFICER_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX TJPD.STATION_PK ON TJPD.STATION
(STATION_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE TJPD.FIR
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.FIR CASCADE CONSTRAINTS;

CREATE TABLE TJPD.FIR
(
  FIR_ID          INTEGER,
  OFFICER_ID      INTEGER,
  STATION_ID      INTEGER,
  INCIDENT_DATE   DATE,
  INCIDENT_TIME   TIMESTAMP(6),
  INCIDENT_PLACE  VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE TJPD.VICTIM
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.VICTIM CASCADE CONSTRAINTS;

CREATE TABLE TJPD.VICTIM
(
  VICTIM_ID        INTEGER,
  FIR_ID           INTEGER,
  LAST_NAME        VARCHAR2(255 BYTE),
  FIRST_NAME       VARCHAR2(255 BYTE),
  AGE              INTEGER,
  GENDER           VARCHAR2(1 CHAR),
  ADDRESS          VARCHAR2(255 BYTE),
  STATE_OF_ORIGIN  VARCHAR2(255 BYTE),
  STATUS           VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE UNIQUE INDEX TJPD.FIR_PK ON TJPD.FIR
(FIR_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX TJPD.VICTIM_PK ON TJPD.VICTIM
(VICTIM_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE TJPD.ACCUSED
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.ACCUSED CASCADE CONSTRAINTS;

CREATE TABLE TJPD.ACCUSED
(
  ACCUSED_ID          INTEGER,
  FIR_ID              INTEGER,
  ACCUSED_NAME        VARCHAR2(255 BYTE),
  ADDRESS             VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE TJPD.CASES
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.CASES CASCADE CONSTRAINTS;

CREATE TABLE TJPD.CASES
(
  CASE_ID      INTEGER,
  STATION_ID   INTEGER,
  FIR_ID       INTEGER,
  CASE_NAME    VARCHAR2(255 BYTE),
  CASE_STATUS  VARCHAR2(255 BYTE),
  DESCRIPTION  VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE TJPD.CRIMINALS_CASE
 DROP PRIMARY KEY CASCADE;

DROP TABLE TJPD.CRIMINALS_CASE CASCADE CONSTRAINTS;

CREATE TABLE TJPD.CRIMINALS_CASE
(
  CRIMINAL_CASE_ID    INTEGER,
  CASE_ID             INTEGER,
  CRIMINAL_ID         INTEGER,
  CRIME_TYPE_ID       INTEGER,
  COURT               VARCHAR2(255 BYTE),
  DATE_OF_CONVICTION  DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE UNIQUE INDEX TJPD.ACCUSED_PK ON TJPD.ACCUSED
(ACCUSED_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX TJPD.CASES_PK ON TJPD.CASES
(CASE_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX TJPD.CRIMINALS_CASE_PK ON TJPD.CRIMINALS_CASE
(CRIMINAL_CASE_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE TJPD.CRIME_TYPE ADD (
  CONSTRAINT CRIME_TYPE_PK
  PRIMARY KEY
  (CRIME_TYPE_ID)
  USING INDEX TJPD.CRIME_TYPE_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.CRIMINAL ADD (
  CONSTRAINT CRIMINAL_PK
  PRIMARY KEY
  (CRIMINAL_ID)
  USING INDEX TJPD.CRIMINAL_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.OFFICER ADD (
  CONSTRAINT OFFICER_PK
  PRIMARY KEY
  (OFFICER_ID)
  USING INDEX TJPD.OFFICER_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.STATION ADD (
  CONSTRAINT STATION_PK
  PRIMARY KEY
  (STATION_ID)
  USING INDEX TJPD.STATION_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.FIR ADD (
  CONSTRAINT FIR_PK
  PRIMARY KEY
  (FIR_ID)
  USING INDEX TJPD.FIR_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.VICTIM ADD (
  CONSTRAINT VICTIM_PK
  PRIMARY KEY
  (VICTIM_ID)
  USING INDEX TJPD.VICTIM_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.ACCUSED ADD (
  CONSTRAINT ACCUSED_PK
  PRIMARY KEY
  (ACCUSED_ID)
  USING INDEX TJPD.ACCUSED_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.CASES ADD (
  CONSTRAINT CASES_PK
  PRIMARY KEY
  (CASE_ID)
  USING INDEX TJPD.CASES_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.CRIMINALS_CASE ADD (
  CONSTRAINT CRIMINALS_CASE_PK
  PRIMARY KEY
  (CRIMINAL_CASE_ID)
  USING INDEX TJPD.CRIMINALS_CASE_PK
  ENABLE VALIDATE);

ALTER TABLE TJPD.FIR ADD (
  CONSTRAINT FIR_R01 
  FOREIGN KEY (OFFICER_ID) 
  REFERENCES TJPD.OFFICER (OFFICER_ID)
  ENABLE VALIDATE,
  CONSTRAINT FIR_R02 
  FOREIGN KEY (STATION_ID) 
  REFERENCES TJPD.STATION (STATION_ID)
  ENABLE VALIDATE);

ALTER TABLE TJPD.VICTIM ADD (
  CONSTRAINT VICTIM_R01 
  FOREIGN KEY (FIR_ID) 
  REFERENCES TJPD.FIR (FIR_ID)
  ENABLE VALIDATE);

ALTER TABLE TJPD.ACCUSED ADD (
  CONSTRAINT ACCUSED_R01 
  FOREIGN KEY (FIR_ID) 
  REFERENCES TJPD.FIR (FIR_ID)
  ENABLE VALIDATE);

ALTER TABLE TJPD.CASES ADD (
  CONSTRAINT CASES_R01 
  FOREIGN KEY (STATION_ID) 
  REFERENCES TJPD.STATION (STATION_ID)
  ENABLE VALIDATE,
  CONSTRAINT CASES_R02 
  FOREIGN KEY (FIR_ID) 
  REFERENCES TJPD.FIR (FIR_ID)
  ENABLE VALIDATE);

ALTER TABLE TJPD.CRIMINALS_CASE ADD (
  CONSTRAINT CRIMINALS_CASE_R01 
  FOREIGN KEY (CRIME_TYPE_ID) 
  REFERENCES TJPD.CRIME_TYPE (CRIME_TYPE_ID)
  ENABLE VALIDATE,
  CONSTRAINT CRIMINALS_CASE_R02 
  FOREIGN KEY (CRIMINAL_ID) 
  REFERENCES TJPD.CRIMINAL (CRIMINAL_ID)
  ENABLE VALIDATE,
  CONSTRAINT CRIMINALS_CASE_R03 
  FOREIGN KEY (CASE_ID) 
  REFERENCES TJPD.CASES (CASE_ID)
  ENABLE VALIDATE);
  
  COMMIT;