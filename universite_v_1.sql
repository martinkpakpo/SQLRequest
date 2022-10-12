-- Database: univ

-- DROP DATABASE IF EXISTS univ;

--Creation de la base de donnee université
CREATE DATABASE universite
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
--Suppression de la base de données université
DROP DATABASE IF EXISTS universite;

--Création de la base de données univ
CREATE DATABASE univ
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
-- creation de la table utilisateur
CREATE TABLE utilisateur(
	id INTEGER PRIMARY KEY,
	nom VARCHAR(254),
	prenom varchar(254),
	email varchar(254) UNIQUE,
	dateNaissance date
);
--Modification de la table Utilisateur
ALTER table utilisateur ADD column ville VARCHAR(254);
ALTER table utilisateur ADD column adresse VARCHAR(254);
ALTER TABLE utilisateur DROP COLUMN ville;

INSERT INTO utilisateur(id, nom, prenom, email, dateNaissance, adresse)
Values (1, 'KPAKPO','Martin','martin.kpakpo@capgemini.com','12-01-2000','Nantes');

--Mise à jour de l'user ayant pour nom bob
UPDATE utilisateur SET adresse='Paris' WHERE nom='Bob';

delete FROM utilisateur WHERE adresse='Paris'

--Suppression de la base de données université
DROP TABLE IF EXISTS utilisateur;