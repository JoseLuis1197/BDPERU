CREATE PROCEDURE [dbo].[spCreateElement]
	@name nvarchar(50)
AS
	INSERT INTO tblElements (name)
	VALUES (@name)
RETURN @@IDENTITY