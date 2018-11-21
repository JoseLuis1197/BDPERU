CREATE PROCEDURE [dbo].[spModifyElementWorkflow]
	@elementId int,
	@workflowId int,
	@initialFlag bit,
	@wipFlag bit,
	@doneFlag bit,
	@orderNumber int
AS
	UPDATE tblElementWorkflows
	SET		initialFlag = @initialFlag,
			wipFlag = @wipFlag,
			doneFlag = @doneFlag,
			orderNumber = @orderNumber
	WHERE	elementId = @elementId AND workflowId = @workflowId
RETURN 0
