CREATE PROCEDURE [dbo].[spDetailProjectWorkflow]
	@projectWorkflowId int
AS
	SELECT	P.id,P.name,W.id,W.name
	FROM	tblProyects P INNER JOIN
			tblProjectWorkflows PW ON PW.projectId = P.id INNER JOIN
			tblWorkflows W ON PW.workflowId = W.id
	WHERE	PW.id = @projectWorkflowId
RETURN 0
