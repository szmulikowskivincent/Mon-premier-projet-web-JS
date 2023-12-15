CREATE TABLE [dbo].[Livraison] (
    [id]               VARCHAR (50) NOT NULL,
    [numero_commande]  VARCHAR (25) NOT NULL,
    [adresse_commande] VARCHAR (50) NOT NULL,
    [quantite]         INT          NOT NULL,
    [date_livraison]   DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

