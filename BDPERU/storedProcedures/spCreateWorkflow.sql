CREATE PROCEDURE [dbo].[spCreateWorkflow]
	@name nvarchar(50),
	@description nvarchar(100)
AS
	INSERT INTO tblWorkflows (name,description)
	VALUES (@name,@description)
RETURN @@IDENTITY
