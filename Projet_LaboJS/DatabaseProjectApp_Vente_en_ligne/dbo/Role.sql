CREATE TABLE [dbo].[Role] (
    [id]                   INT          NOT NULL,
    [valider_Client]       VARCHAR (5)  NOT NULL,
    [configuration]        VARCHAR (50) NOT NULL,
    [gestion_informations] VARCHAR (50) NOT NULL,
    [analyse]              VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

