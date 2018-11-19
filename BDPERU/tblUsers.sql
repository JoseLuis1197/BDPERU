CREATE TABLE [dbo].[tblUsers]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [firstName] NCHAR(50) NOT NULL, 
    [middleName] NCHAR(50) NOT NULL, 
    [lastName] NCHAR(50) NOT NULL, 
    [secondLastName] NCHAR(50) NOT NULL, 
    [identityDocumentId] NCHAR(10) NOT NULL, 
    [documentNumber] NCHAR(20) NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE() 
)
