CREATE TABLE [dbo].[tblBacklogs]
(
	[id] INT NOT NULL PRIMARY KEY, 
    [shortName] NCHAR(20) NOT NULL, 
    [longName] NCHAR(100) NOT NULL, 
    [backlogType] INT NOT NULL,
	[idSprintBacklog] INT NOT NULL, 
    [idState] INT NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_tblSprintBacklog_tblSprintBacklog] FOREIGN KEY ([idSprintBacklog]) REFERENCES dbo.tblSprintBacklogs([id])
)
