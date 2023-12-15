CREATE TABLE [dbo].[Retour] (
    [id]          INT  NOT NULL,
    [id_Produit]  INT  NOT NULL,
    [date_retour] DATE NULL,
    PRIMARY KEY CLUSTERED ([id] ASC, [id_Produit] ASC),
    FOREIGN KEY ([id]) REFERENCES [dbo].[Client] ([id]),
    FOREIGN KEY ([id_Produit]) REFERENCES [dbo].[Produit] ([id])
);


GO

