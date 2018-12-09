CREATE TABLE [dbo].[tblWorkflows]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [name] NCHAR(50) NOT NULL, 
    [description] NCHAR(100) NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [modificationDate] DATETIME NULL DEFAULT GETDATE()
)
