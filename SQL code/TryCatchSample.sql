--SELECT * FROM Accounts

--UPDATE dbo.Accounts SET Privilage = 'Manager' WHERE Username = 'bob'



--Begin Transaction 

--Delete  From Accounts Where UserID > 2

--Rollback Transaction

----Begin Transaction
--Commit Transaction


--Select @@TRANCOUNT

--Begin Try

--	Begin Transaction 

	--Insert into Accounts (Username, [Password], FirstName, LastName, DOB, LastLoginTime, Privilege) 
	--Values ('jasperTheFrog1', 'jaspp22', 'Jasper', 'Frogance', '12-31-2009', GETUTCDATE(), 'Librarian')

--	Commit Transaction
--	Select 1 as Result

--End Try
--Begin Catch
	
--	IF(@@TRANCOUNT > 0)
--	Begin
--		Rollback
--	End

--	Select 0 as Result
--End Catch

--Begin Transaction OuterLayer
--	Begin Transaction InnerTransaction

--	Select @@TRANCOUNT

--	Commit Transaction InnerTransaction
	
--	Select @@TRANCOUNT
--Commit Transaction OuterLayer
