#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Ingredients
#------------------------------------------------------------

CREATE TABLE Ingredients(
        ID_Ingredient       Int  Auto_increment  NOT NULL ,
        Nom_Ingredient      Varchar (25) NOT NULL ,
        Type_Ingredient     Varchar (25) NOT NULL ,
        Date_Expiration     Date NOT NULL ,
        Quantite_Ingredient Numeric NOT NULL
	,CONSTRAINT Ingredients_PK PRIMARY KEY (ID_Ingredient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Plats
#------------------------------------------------------------

CREATE TABLE Plats(
        ID_Plat           Int  Auto_increment  NOT NULL ,
        Nom_Plat          Varchar (25) NOT NULL ,
        Temps_Preparation Numeric NOT NULL ,
        Portion           Numeric NOT NULL
	,CONSTRAINT Plats_PK PRIMARY KEY (ID_Plat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tables
#------------------------------------------------------------

CREATE TABLE Tables(
        ID_Table       Int  Auto_increment  NOT NULL ,
        Type_Table     Varchar (25) NOT NULL ,
        Etat_Table     Bool NOT NULL ,
        Quantite_Table Numeric NOT NULL
	,CONSTRAINT Tables_PK PRIMARY KEY (ID_Table)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commandes
#------------------------------------------------------------

CREATE TABLE Commandes(
        ID_Commande Int  Auto_increment  NOT NULL
	,CONSTRAINT Commandes_PK PRIMARY KEY (ID_Commande)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Vins
#------------------------------------------------------------

CREATE TABLE Vins(
        ID_Vins             Int  Auto_increment  NOT NULL ,
        Nom_Vins            Varchar (25) NOT NULL ,
        Quantite_Vins_Stock Numeric NOT NULL
	,CONSTRAINT Vins_PK PRIMARY KEY (ID_Vins)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Vaisselles
#------------------------------------------------------------

CREATE TABLE Vaisselles(
        ID_Vaisselle       Int  Auto_increment  NOT NULL ,
        Type_Vaisselle     Varchar (25) NOT NULL ,
        Etat_Vaisselle     Bool NOT NULL ,
        Quantite_Vaisselle Numeric NOT NULL
	,CONSTRAINT Vaisselles_PK PRIMARY KEY (ID_Vaisselle)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Naps
#------------------------------------------------------------

CREATE TABLE Naps(
        ID_Naps       Int  Auto_increment  NOT NULL ,
        Etat_Naps     Bool NOT NULL ,
        Quantite_Naps Numeric NOT NULL ,
        ID_Table      Int NOT NULL
	,CONSTRAINT Naps_PK PRIMARY KEY (ID_Naps)

	,CONSTRAINT Naps_Tables_FK FOREIGN KEY (ID_Table) REFERENCES Tables(ID_Table)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Type_Vaisselle
#------------------------------------------------------------

CREATE TABLE Type_Vaisselle(
        ID_Vaisselle  Int  Auto_increment  NOT NULL ,
        Nom_Vaisselle Varchar (25) NOT NULL
	,CONSTRAINT Type_Vaisselle_PK PRIMARY KEY (ID_Vaisselle)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Utiliser
#------------------------------------------------------------

CREATE TABLE Utiliser(
        ID_Plat       Int NOT NULL ,
        ID_Ingredient Int NOT NULL
	,CONSTRAINT Utiliser_PK PRIMARY KEY (ID_Plat,ID_Ingredient)

	,CONSTRAINT Utiliser_Plats_FK FOREIGN KEY (ID_Plat) REFERENCES Plats(ID_Plat)
	,CONSTRAINT Utiliser_Ingredients0_FK FOREIGN KEY (ID_Ingredient) REFERENCES Ingredients(ID_Ingredient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: passer
#------------------------------------------------------------

CREATE TABLE passer(
        ID_Commande Int NOT NULL ,
        ID_Table    Int NOT NULL
	,CONSTRAINT passer_PK PRIMARY KEY (ID_Commande,ID_Table)

	,CONSTRAINT passer_Commandes_FK FOREIGN KEY (ID_Commande) REFERENCES Commandes(ID_Commande)
	,CONSTRAINT passer_Tables0_FK FOREIGN KEY (ID_Table) REFERENCES Tables(ID_Table)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Composer_Plat
#------------------------------------------------------------

CREATE TABLE Composer_Plat(
        ID_Commande   Int NOT NULL ,
        ID_Plat       Int NOT NULL ,
        Quantite_Plat Numeric NOT NULL
	,CONSTRAINT Composer_Plat_PK PRIMARY KEY (ID_Commande,ID_Plat)

	,CONSTRAINT Composer_Plat_Commandes_FK FOREIGN KEY (ID_Commande) REFERENCES Commandes(ID_Commande)
	,CONSTRAINT Composer_Plat_Plats0_FK FOREIGN KEY (ID_Plat) REFERENCES Plats(ID_Plat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Accompagner
#------------------------------------------------------------

CREATE TABLE Accompagner(
        ID_Commande   Int NOT NULL ,
        ID_Vins       Int NOT NULL ,
        Quantite_Vins Numeric NOT NULL
	,CONSTRAINT Accompagner_PK PRIMARY KEY (ID_Commande,ID_Vins)

	,CONSTRAINT Accompagner_Commandes_FK FOREIGN KEY (ID_Commande) REFERENCES Commandes(ID_Commande)
	,CONSTRAINT Accompagner_Vins0_FK FOREIGN KEY (ID_Vins) REFERENCES Vins(ID_Vins)




	=======================================================================
	   Désolé, il faut activer cette version pour voir la suite du script ! 
	=======================================================================
