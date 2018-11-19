CREATE TABLE [dbo].[tblWorkflows]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [name] NCHAR(50) NOT NULL, 
    [description] NCHAR(100) NULL, 
    [initElements] TINYINT NOT NULL, 
    [wipElements] TINYINT NOT NULL, 
    [doneElements] TINYINT NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE()
)
