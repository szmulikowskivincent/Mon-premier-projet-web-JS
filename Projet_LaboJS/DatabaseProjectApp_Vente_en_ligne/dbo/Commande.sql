CREATE TABLE [dbo].[Commande] (
    [id]                INT          NOT NULL,
    [numero_commande]   VARCHAR (25) NOT NULL,
    [adresse_commande]  VARCHAR (25) NOT NULL,
    [date_commande]     DATE         NOT NULL,
    [quantite_articles] INT          NOT NULL,
    [id_Livraison]      VARCHAR (50) NOT NULL,
    [id_Client]         INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([id_Client]) REFERENCES [dbo].[Client] ([id]),
    FOREIGN KEY ([id_Livraison]) REFERENCES [dbo].[Livraison] ([id]),
    CONSTRAINT [FK_Commande_Mes_ventes_produits ] FOREIGN KEY ([id]) REFERENCES [dbo].[Mes_ventes_produits ] ([id])
);


GO

