CREATE TABLE Utilisateur(
   id INT,
   nom VARCHAR(25) NOT NULL,
   prenom VARCHAR(25) NOT NULL,
   adresse_email VARCHAR(50) NOT NULL,
   pays VARCHAR(25) NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE Article(
   id INT,
   nom VARCHAR(25) NOT NULL,
   prix DECIMAL(15,2) NOT NULL,
   quantite INT NOT NULL,
   prix_reel DECIMAL(15,2),
   PRIMARY KEY(id)
);

CREATE TABLE Livraison(
   id VARCHAR(50),
   numero_commande VARCHAR(25) NOT NULL,
   adresse_commande VARCHAR(50) NOT NULL,
   quantite INT NOT NULL,
   date_livraison DATETIME NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE Commande(
   id INT,
   numero_commande VARCHAR(25) NOT NULL,
   adresse_commande VARCHAR(25) NOT NULL,
   date_commande DATE NOT NULL,
   quantite_articles INT NOT NULL,
   id_Livraison VARCHAR(50) NOT NULL,
   id_Utilisateur INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_Livraison) REFERENCES Livraison(id),
   FOREIGN KEY(id_Utilisateur) REFERENCES Utilisateur(id)
);

CREATE TABLE Groupe(
   id INT,
   administrateur VARCHAR(25) NOT NULL,
   utilisateur VARCHAR(25) NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE Role(
   id INT,
   valider_utilisateur VARCHAR(5) NOT NULL,
   configuration VARCHAR(50) NOT NULL,
   gestion_informations VARCHAR(50) NOT NULL,
   analyse VARCHAR(50) NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE Contenance(
   id INT,
   id_commande INT,
   quantite INT,
   PRIMARY KEY(id),
   FOREIGN KEY(id) REFERENCES Article(id),
   FOREIGN KEY(id_commande) REFERENCES commande(id)
);

CREATE TABLE Retour(
   id INT,
   id_Article INT,
   date_retour DATE,
   PRIMARY KEY(id, id_Article),
   FOREIGN KEY(id) REFERENCES Utilisateur(id),
   FOREIGN KEY(id_Article) REFERENCES Article(id)
);

CREATE TABLE Association(
   id INT,
   id_Groupe INT,
   PRIMARY KEY(id, id_Groupe),
   FOREIGN KEY(id) REFERENCES Utilisateur(id),
   FOREIGN KEY(id_Groupe) REFERENCES Groupe(id)
);

CREATE TABLE Appartenance(
   id INT,
   id_Role INT,
   PRIMARY KEY(id),
   FOREIGN KEY(id) REFERENCES Groupe(id),
   FOREIGN KEY(id_Role) REFERENCES Role(id)
);

CREATE TABLE Date_disponiblite(
   id INT,
   id_Role INT,
   date_fin DATE NOT NULL,
   date_depart DATE NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id) REFERENCES Utilisateur(id),
   FOREIGN KEY(id_Role) REFERENCES Role(id)
);

