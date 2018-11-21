CREATE TABLE [dbo].[tblElementWorkflows]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [elementId] INT NOT NULL, 
    [workflowId] INT NOT NULL, 
    [initialFlag] BIT NOT NULL, 
    [wipFlag] BIT NOT NULL, 
    [doneFlag] BIT NOT NULL, 
    [creationDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_tblElementWorkflows_tblElements] FOREIGN KEY ([elementId]) REFERENCES [tblElements]([id]), 
    CONSTRAINT [FK_tblElementWorkflows_tblWorkflows] FOREIGN KEY ([workflowId]) REFERENCES [tblWorkflows]([id])
)
