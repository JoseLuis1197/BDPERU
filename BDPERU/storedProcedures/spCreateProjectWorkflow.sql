CREATE PROCEDURE [dbo].[spCreateProjectWorkflow]
	@workflowId int,
	@projectId int
AS
	INSERT INTO tblProjectWorkflows (projectId,workflowId)
	VALUES (@projectId,@workflowId)
RETURN @@IDENTITY