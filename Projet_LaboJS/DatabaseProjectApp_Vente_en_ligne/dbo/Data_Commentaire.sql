CREATE TABLE [dbo].[Data_Commentaire] (
    [id]          NVARCHAR (50)  NOT NULL,
    [Etoile]      NVARCHAR (50)  NOT NULL,
    [Commentaire] NVARCHAR (100) NOT NULL,
    [Email]       NVARCHAR (50)  NOT NULL,
    [Date]        DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Data_Commentaire] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

select * from Data_Commentaire
