CREATE TABLE [dbo].[Client] (
    [id]            INT          NOT NULL,
    [nom]           VARCHAR (25) NOT NULL,
    [prenom]        VARCHAR (25) NOT NULL,
    [adresse_email] VARCHAR (50) NOT NULL,
    [pays]          VARCHAR (25) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Client_Mes_ventes_produits ] FOREIGN KEY ([id]) REFERENCES [dbo].[Mes_ventes_produits ] ([id])
);


GO

