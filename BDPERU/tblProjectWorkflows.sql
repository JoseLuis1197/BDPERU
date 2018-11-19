CREATE TABLE [dbo].[tblProjectWorkflows]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_tblProjectWorkflow_tblWorkflows] FOREIGN KEY (id) REFERENCES dbo.tblWorkflows(id),
	CONSTRAINT [FK_tblProjectWorkflow_tblProyects] FOREIGN KEY (id) REFERENCES dbo.tblProyects(id)
)
