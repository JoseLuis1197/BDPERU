CREATE PROCEDURE [dbo].[spDetailElementWorflow]
	@workflowId int
AS
	SELECT		E.id,E.name,EW.workflowId,EW.initialFlag,EW.wipFlag,EW.doneFlag
	FROM		tblElements E INNER JOIN
				tblElementWorkflows EW ON E.id = EW.id
	WHERE		EW.workflowId = @workflowId
	ORDER BY	EW.doneFlag,EW.wipFlag,EW.initialFlag,E.id
RETURN 0
