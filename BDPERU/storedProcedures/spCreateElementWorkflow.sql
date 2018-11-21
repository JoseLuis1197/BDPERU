CREATE PROCEDURE [dbo].[spCreateElementWorkflow]
	@elementId int,
	@workflowId int,
	@initialFlag bit,
	@wipFlag bit,
	@doneFlag bit,
	@orderNumber int
AS

	INSERT INTO tblElementWorkflows (elementId,workflowId,initialFlag,wipFlag,doneFlag,orderNumber)
	VALUES (@elementId,@workflowId,@initialFlag,@wipFlag,@doneFlag,@orderNumber)
RETURN @@IDENTITY
