CREATE PROCEDURE [dbo].[spCreateProjectWorkflow]
	@workflowId int,
	@projectId int
AS
	INSERT INTO tbl	ProjectWorkflows (projectId,workflowId)
	VALUES (@projectId,@workflowId)
RETURN @@IDENTITY