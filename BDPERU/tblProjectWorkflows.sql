	CREATE TABLE [dbo].[tblProjectWorkflows]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [projectId] INT NOT NULL, 
    [workflowId] INT NOT NULL, 
    [modificationDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_tblProjectWorkflow_tblWorkflows] FOREIGN KEY ([workflowId]) REFERENCES dbo.tblWorkflows(id),
	CONSTRAINT [FK_tblProjectWorkflow_tblProyects] FOREIGN KEY ([projectId]) REFERENCES dbo.tblProyects(id)
)
