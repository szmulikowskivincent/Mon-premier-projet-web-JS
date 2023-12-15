CREATE TABLE [dbo].[Contenance] (
    [id]          INT NOT NULL,
    [id_commande] INT NULL,
    [quantite]    INT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([id]) REFERENCES [dbo].[Produit] ([id]),
    FOREIGN KEY ([id_commande]) REFERENCES [dbo].[Commande] ([id])
);


GO

