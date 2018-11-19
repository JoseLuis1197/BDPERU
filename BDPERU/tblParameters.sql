CREATE TABLE [dbo].[tblParameters]
(
	[id] INT NOT NULL PRIMARY KEY, 
	[tableId] INT NOT NULL,
    [elementId] INT NOT NULL, 
    [shortName] NCHAR(50) NOT NULL, 
    [longName] NCHAR(100) NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE()    

)
