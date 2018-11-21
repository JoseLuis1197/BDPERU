CREATE PROCEDURE [dbo].[spCreateProject]
	@name nvarchar(50),
	@description nvarchar(200),
	@userId int
AS
	INSERT INTO tblProyects (name,description,usersId)
	VALUES (@name,@description,@userId) 
RETURN 0
