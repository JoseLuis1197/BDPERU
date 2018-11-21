CREATE PROCEDURE [dbo].[spCreateElementWorkflow]
	@elementId int,
	@workflowId int,
	@initialFlag bit,
	@wipFlag bit,
	@doneFlag bit
AS

	INSERT INTO tblElementWorkflows (elementId,workflowId,initialFlag,wipFlag,doneFlag)
	VALUES (@elementId,@workflowId,@initialFlag,@wipFlag,@doneFlag)

RETURN @@IDENTITY
