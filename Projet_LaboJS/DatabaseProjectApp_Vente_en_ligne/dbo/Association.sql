CREATE TABLE [dbo].[Association] (
    [id]        INT NOT NULL,
    [id_Groupe] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC, [id_Groupe] ASC),
    FOREIGN KEY ([id]) REFERENCES [dbo].[Client] ([id]),
    FOREIGN KEY ([id_Groupe]) REFERENCES [dbo].[Groupe] ([id])
);


GO

