CREATE TABLE [dbo].[tblAcceptanceCriterias]
(
	[id] INT NOT NULL PRIMARY KEY, 
    [description] NCHAR(10) NOT NULL, 
    [idBacklog] INT NOT NULL, 
    [idState] INT NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_tblAcceptanceCriterias_tblBacklogs] FOREIGN KEY ([idBacklog]) REFERENCES dbo.tblBacklogs(id)
)
