
	
CREATE PROCEDURE InsertUpdate
--define Parameters for Procedure
--Here we are getting User Name and User_id As a Input and update/insert record based on User_id
@Id  int,
@Name VARCHAR(50)		

 AS
 BEGIN

      -- SET NOCOUNT ON to prevent extra messages Showing Number of affected rows
      SET NOCOUNT ON;

      IF EXISTS (SELECT 1 FROM  Users  WHERE  User_Id = @Id)	 --check if User with Id already exist
        UPDATE Users													
        SET Name = @Name WHERE User_Id=@Id

      ELSE
        INSERT INTO Users([User_Id],  [Name]) VALUES(@Id, @Name)

  END
