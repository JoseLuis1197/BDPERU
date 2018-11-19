CREATE TABLE [dbo].[tblElements]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [name] NCHAR(50) NOT NULL, 
    [fkIdTblWorkflow] INT NOT NULL,
	CONSTRAINT [FK_tblElements_tblWorkflows] FOREIGN KEY ([fkIdTblWorkflow]) REFERENCES tblWorkflows(id)
)
