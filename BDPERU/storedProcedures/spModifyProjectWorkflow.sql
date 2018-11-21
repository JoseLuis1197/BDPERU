CREATE PROCEDURE [dbo].[spModifyProjectWorkflow]
	@projectWorkflowId int,
	@projectId int,
	@workflowId int
AS
	UPDATE	tblProjectWorkflows
	SET		projectId = @projectId,
			workflowId = @workflowId,
			modificationDate = GETDATE()
	WHERE	id = @projectWorkflowId
RETURN 0
