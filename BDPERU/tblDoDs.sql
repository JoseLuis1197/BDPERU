CREATE TABLE [dbo].[tblDoDs]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY,
	[prefix] NCHAR(10) NULL,
    [name] NCHAR(100) NULL, 
    [doneFlag] BIT NOT NULL DEFAULT 0, 
    [idSprintBacklog] INT NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [idState] INT NOT NULL, 
    CONSTRAINT [FK_tblDoD_tblSprintBacklogs] FOREIGN KEY ([idSprintBacklog]) REFERENCES dbo.tblSprintBacklogs([id])

    
)
