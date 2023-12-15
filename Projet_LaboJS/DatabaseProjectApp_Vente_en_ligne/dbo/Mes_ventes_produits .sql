CREATE TABLE [dbo].[Mes_ventes_produits ] (
    [id]                   INT           NOT NULL,
    [nom]                  NVARCHAR (50) NOT NULL,
    [quantité]             TINYINT       NOT NULL,
    [prix]                 NVARCHAR (50) NOT NULL,
    [Unité]                NVARCHAR (50) NOT NULL,
    [total_Prix]           NVARCHAR (50) NOT NULL,
    [paiement]             NVARCHAR (50) NOT NULL,
    [numéro_de_téléphone]  FLOAT (53)    NOT NULL,
    [adresse_de_livraison] NVARCHAR (50) NOT NULL,
    [ville]                NVARCHAR (50) NOT NULL,
    [région]               NVARCHAR (50) NOT NULL,
    [code_postal]          SMALLINT      NOT NULL,
    [pays]                 NVARCHAR (50) NOT NULL,
    [administrateur]       NVARCHAR (50) NOT NULL,
    [date_de_Commande]     DATE          NOT NULL,
    [commande_ID]          NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Mes_ventes_produits ] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

select * from Mes_ventes_produits


