
CREATE TABLE departement(
nomDpt VARCHAR(20) CONSTRAINT DEPT_PK PRIMARY KEY,
dateCreationDpt DATE,
adresseDpt VARCHAR(20) CONSTRAINT DEPT_ADR_UQ UNIQUE,
telephoneDpt VARCHAR(20)
);

CREATE TABLE equipe (
nomEq VARCHAR(20) CONSTRAINT EQUIPE_PK PRIMARY KEY,
dateCreationEq DATE,
nbrProjets INTEGER,
responsable VARCHAR(20),
nomDpt VARCHAR(20) CONSTRAINT EQUIPE_DEPT_NN NOT NULL CONSTRAINT EQUIPE_DEPT_FK REFERENCES DEPARTEMENT(nomDpt) ON DELETE SET NULL,
CONSTRAINT RESP_UQ UNIQUE(nomDpt, responsable)
);

CREATE TABLE chercheur(
matriculeCher CHAR(6) CONSTRAINT CHERCHEUR_PK PRIMARY KEY,
prenomCher VARCHAR(20) CONSTRAINT CH_PRENOM_NN NOT NULL,
nomCher VARCHAR(20) CONSTRAINT CH_NOM_NN NOT NULL,
positionCher VARCHAR(10) CONSTRAINT CH_POSITION_CK CHECK( UPPER(positionCher) IN ('MAÎTRISE','DOCTORAT','POSTDOC')),
salaireCher integer DEFAULT NULL,
nomEq VARCHAR(20) CONSTRAINT CH_EQUIPE_FK REFERENCES EQUIPE(nomEq) ON DELETE SET NULL
);

CREATE TABLE ARTICLE(
titreArt varchar(250) NOT NULL,
nbrPages Integer,
dateSoumission TIMESTAMP CONSTRAINT ART_SOUMIS_NN NOT NULL,
auteur CHAR(6) CONSTRAINT ART_AUTEUR_NN NOT NULL CONSTRAINT ART_AUTEUR1_FK REFERENCES CHERCHEUR(matriculeCher),
coauteur CHAR(6) CONSTRAINT ART_AUTEUR2_FK REFERENCES CHERCHEUR(matriculeCher),
CONSTRAINT ART_PK PRIMARY KEY (titreArt)
);


SELECT * FROM departement;

