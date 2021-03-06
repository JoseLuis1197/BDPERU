﻿CREATE TABLE [dbo].[tblProyects]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [name] NCHAR(50) NOT NULL, 
    [description] NCHAR(200) NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_tblProyecto_tblUsers] FOREIGN KEY (id) REFERENCES tblUsers([id]) 
)
