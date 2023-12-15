CREATE TABLE [dbo].[Produit] (
    [id]       INT             NOT NULL,
    [nom]      VARCHAR (25)    NOT NULL,
    [prix]     DECIMAL (15, 2) NOT NULL,
    [quantite] INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Produit_Mes_ventes_produits ] FOREIGN KEY ([id]) REFERENCES [dbo].[Mes_ventes_produits ] ([id])
);


GO

