CREATE TABLE [dbo].[Date_disponiblite] (
    [id]          INT  NOT NULL,
    [id_Role]     INT  NULL,
    [date_fin]    DATE NOT NULL,
    [date_depart] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([id]) REFERENCES [dbo].[Client] ([id]),
    FOREIGN KEY ([id_Role]) REFERENCES [dbo].[Role] ([id])
);


GO

