CREATE DATABASE GYM_PROGRESS;

USE GYM_PROGRESS;


CREATE TABLE IF NOT EXISTS PORPUSE (
PORPUSE_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
DESCRIPTION VARCHAR(100)
); 

CREATE TABLE IF NOT EXISTS NGM(/*NAME_GROUP_MUSCULAR*/
NGM_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
DESCRIPTION VARCHAR(100)
); 

CREATE TABLE IF NOT EXISTS TM(/*TYPE_MACHINE*/
TM_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
DESCRIPTION VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS TE(/*TYPE_EXERCISE*/
TE_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
DESCRIPTION VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS USERS(
USERS_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
NICKNAME VARCHAR(30) UNIQUE,
AGE INTEGER  ,
WEIGHT FLOAT,
HEIGHT FLOAT,
DESCRIPTION VARCHAR(100),
PASSWORDD VARCHAR(20) NOT NULL,
EMAIL VARCHAR(50) UNIQUE,
PORPUSE_FK INTEGER,
FOREIGN KEY (PORPUSE_FK) REFERENCES PORPUSE(PORPUSE_ID),
CONSTRAINT GOOD_DATA CHECK (AGE>=6 AND WEIGHT>=0 AND HEIGHT>=0 )/*VERIFICA QUE LOS DATOS ESTEN BIEN*/
);

CREATE TABLE IF NOT EXISTS EXERCISE(
EXERCISE_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
DESCRIPTION VARCHAR(100),
NGM_FK INT,
TM_FK INT,
TE_FK INT,
FOREIGN KEY (NGM_FK) REFERENCES NGM(NGM_ID),
FOREIGN KEY (TM_FK) REFERENCES TM(TM_ID),
FOREIGN KEY (TE_FK) REFERENCES TE(TE_ID)
);


CREATE TABLE IF NOT EXISTS ROUTINE (
ROUTINE_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30) UNIQUE,
NUMBER_SERIES INT ,
USERS_FK INT,
NGM_FK INT,

FOREIGN KEY (USERS_FK) REFERENCES USERS(USERS_ID),
FOREIGN KEY (NGM_FK) REFERENCES ngm(NGm_ID)
);

CREATE TABLE IF NOT EXISTS ROUTINE_EXERCISE_BREAK (
ROUTINE_FK int,
EXERCISE_FK INT,
FOREIGN KEY (ROUTINE_FK) REFERENCES ROUTINE(ROUTINE_ID),
FOREIGN KEY (EXERCISE_FK) REFERENCES EXERCISE(EXERCISE_ID)
);

INSERT INTO USERS (NAME, WEIGHT,HEIGHT,PASSWORDD) VALUES ('ALEJANDRO','62','1.73','VIGA2024');

SELECT * FROM USERS;
