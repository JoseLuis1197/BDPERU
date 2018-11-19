CREATE TABLE [dbo].[tblSprints]
(
	[id] INT NOT NULL PRIMARY KEY, 
	[idProjectWorflow] INT NOT NULL,
    [initialDate] DATE NOT NULL, 
    [finalDate] DATE NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [idState] NCHAR(10) NOT NULL, 
    CONSTRAINT [FK_tblSprints_tblSprintBacklog] FOREIGN KEY ([id]) REFERENCES dbo.tblSprintBacklogs([id]), 
    CONSTRAINT [FK_tblSprints_tblProjectWorkflow] FOREIGN KEY ([idProjectWorflow]) REFERENCES dbo.tblProjectWorkflows([id])
)
