CREATE TABLE [dbo].[Appartenance] (
    [id]      INT NOT NULL,
    [id_Role] INT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([id]) REFERENCES [dbo].[Groupe] ([id]),
    FOREIGN KEY ([id_Role]) REFERENCES [dbo].[Role] ([id])
);


GO

