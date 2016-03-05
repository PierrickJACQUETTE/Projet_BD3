

SET foreign_key_checks =0;
drop table if exists Utilisateur;
drop table if exists Voyageur;
drop table if exists Proprietaire;
drop table if exists Etablissement;
drop table if exists Restaurant;
drop table if exists Hotel;
drop table if exists Magasin;
drop table if exists Avis;
drop table if exists EvaluationPrix;
drop table if exists CommentaireInsultant;
drop table if exists CommentaireAvis;



CREATE TABLE Utilisateur(
        idUtilisateur int (11) Auto_increment  NOT NULL ,
        pseudo        Varchar (25) NOT NULL ,
        prenom        Varchar (50) NOT NULL ,
        nom           Varchar (50) NOT NULL ,
        email         Varchar (60) NOT NULL ,
        pays          Varchar (40) ,
        age           TinyINT NOT NULL ,
        Localisation  Int NOT NULL,
        Partenaire    Varchar (50) NOT NULL ,
        idCommentaire Int NOT NULL ,
        PRIMARY KEY (idUtilisateur ) ,
        UNIQUE (email)
)ENGINE=InnoDB;


CREATE TABLE Voyageur(
        
        idUtilisateur Int NOT NULL ,
	statut        ENUM('standard','bronze','argent','or') NOT NULL ,
        idAvis        Int NOT NULL ,
        PRIMARY KEY (idUtilisateur,idAvis )
        
)ENGINE=InnoDB;

CREATE TABLE Proprietaire(
       
        idUtilisateur   Int NOT NULL ,
 	statut          ENUM('standard','bronze','argent','or') NOT NULL ,
        idEtablissement Int NOT NULL ,
        idCommentaire   Int NOT NULL ,
        PRIMARY KEY (idUtilisateur,idEtablissement)
)ENGINE=InnoDB;


CREATE TABLE Etablissement(
        idEtablissement int (11) Auto_increment  NOT NULL ,
        nomE            Varchar (50) NOT NULL ,
        adresse         Varchar (100) NOT NULL ,
        coordoneesGPS   Int NOT NULL ,
        taille          Smallint NOT NULL ,
        idAvis          Int NOT NULL ,
        PRIMARY KEY (idEtablissement,idAvis)
     
)ENGINE=InnoDB;


CREATE TABLE Restaurant(
        etoileOff       ENUM('0','1','2','3','4','5','6','7') NOT NULL ,
        cuisine         Varchar (35) NOT NULL ,
        idEtablissement Int NOT NULL ,
        PRIMARY KEY (idEtablissement )
)ENGINE=InnoDB;


CREATE TABLE Hotel(
        etoileOff       ENUM('0','1','2','3','4','5','6','7') NOT NULL ,
        idEtablissement Int NOT NULL ,
        PRIMARY KEY (idEtablissement )
)ENGINE=InnoDB;


CREATE TABLE Magasin(
        categorie       Varchar (45) NOT NULL ,
        idEtablissement Int NOT NULL ,
        PRIMARY KEY (idEtablissement )
)ENGINE=InnoDB;


CREATE TABLE Avis(
        idAvis        int (11) Auto_increment  NOT NULL ,
        Note          ENUM('0','1','2','3','4','5') NOT NULL ,
        texteA        Varchar (255) ,
        dateA         Date NOT NULL ,
        idCommentaire Int NOT NULL ,
        PRIMARY KEY (idAvis )
        
)ENGINE=InnoDB;


CREATE TABLE CommentaireAvis(
        idCommentaire int (11) Auto_increment  NOT NULL ,
        Etoiles        ENUM('1','2','3','4','5') NOT NULL ,
        TexteC        Varchar (255) NOT NULL ,
        Date          Date NOT NULL ,
        PRIMARY KEY (idCommentaire )
)ENGINE=InnoDB;


CREATE TABLE EvaluationPrix(
        notePrix      ENUM('1','2','3','4','5') NOT NULL ,
        idEtablissement Int NOT NULL ,
        idUtilisateur Int NOT NULL ,
        PRIMARY KEY (idEtablissement,idUtilisateur ) 
        
)ENGINE=InnoDB;


CREATE TABLE CommentaireInsultant(
        idCommentaire Int NOT NULL ,
        PRIMARY KEY (idCommentaire )
)ENGINE=InnoDB;

ALTER TABLE Utilisateur ADD CONSTRAINT FK_Utilisateur_idCommentaire FOREIGN KEY (idCommentaire) REFERENCES CommentaireAvis(idCommentaire);
ALTER TABLE Voyageur ADD CONSTRAINT FK_Voyageur_idUtilisateur FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE Voyageur ADD CONSTRAINT FK_Voyageur_idAvis FOREIGN KEY (idAvis) REFERENCES Avis(idAvis);
ALTER TABLE Proprietaire ADD CONSTRAINT FK_Proprietaire_idUtilisateur FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE Proprietaire ADD CONSTRAINT FK_Proprietaire_idEtablissement FOREIGN KEY (idEtablissement) REFERENCES Etablissement(idEtablissement);
ALTER TABLE Proprietaire ADD CONSTRAINT FK_Proprietaire_idCommentaire FOREIGN KEY (idCommentaire) REFERENCES CommentaireInsultant(idCommentaire);
ALTER TABLE Etablissement ADD CONSTRAINT FK_Etablissement_idAvis FOREIGN KEY (idAvis) REFERENCES Avis(idAvis);
ALTER TABLE Restaurant ADD CONSTRAINT FK_Restaurant_idEtablissement FOREIGN KEY (idEtablissement) REFERENCES Etablissement(idEtablissement);
ALTER TABLE Hotel ADD CONSTRAINT FK_Hotel_idEtablissement FOREIGN KEY (idEtablissement) REFERENCES Etablissement(idEtablissement);
ALTER TABLE Magasin ADD CONSTRAINT FK_Magasin_idEtablissement FOREIGN KEY (idEtablissement) REFERENCES Etablissement(idEtablissement);
ALTER TABLE Avis ADD CONSTRAINT FK_Avis_idCommentaire FOREIGN KEY (idCommentaire) REFERENCES CommentaireAvis(idCommentaire);
ALTER TABLE EvaluationPrix ADD CONSTRAINT FK_EvaluationPrix_IdUtilisateur FOREIGN KEY (IdUtilisateur) REFERENCES Voyageur(IdUtilisateur);
ALTER TABLE EvaluationPrix ADD CONSTRAINT FK_EvaluationPrix_IdEtablissement FOREIGN KEY (IdEtablissement) REFERENCES Etablissement(IdEtablissement);



LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/utilisateur.dat' INTO TABLE Utilisateur FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/voyageur.dat' INTO TABLE Voyageur FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/proprietaire.dat' INTO TABLE Proprietaire FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/etablissement.dat' INTO TABLE Etablissement FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/restaurant.dat' INTO TABLE Restaurant FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/hotel.dat' INTO TABLE Hotel FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/magasin.dat' INTO TABLE Magasin FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/avis.dat' INTO TABLE Avis FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/commentaireAvis.dat' INTO TABLE CommentaireAvis FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/evaluationPrix.dat' INTO TABLE EvaluationPrix FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'C:/Users/Pierrick JACQUETTE/Desktop/L2 informatique/Semestre 1/BDD/Projet/Source/commentaireInsultant.dat' INTO TABLE CommentaireInsultant FIELDS TERMINATED BY ',';
