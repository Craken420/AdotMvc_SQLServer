--DROP TABLE angEmployee

--Table
CREATE TABLE angEmployee
(
	EmployeeID INTEGER,
	Name VARCHAR(20),
	City VARCHAR(20),
	Department VARCHAR(20),
	Gender VARCHAR(6)
)

--SP FOR INSERT
CREATE PROCEDURE spAngUpdateEmployee
(
	@EmpId INTEGER,
	@Name VARCHAR(20),
	@City VARCHAR(20),
	@Department VARCHAR(20),
	@Gender VARCHAR(6)
)
AS
BEGIN
	UPDATE angEmployee
	SET Name = @Name,
	City = @City,
	Department = @Department,
	Gender = @Gender
	WHERE EmployeeId=@EmpId
END


--SP FOR DELETE
CREATE PROCEDURE spAngDeleteEmployee
(
	@EmpId INT
)
AS
BEGIN
	DELETE FROM angEmployee WHERE EmployeeId=@EmpId
END

--SP VIEW ALL EMPLOYEE RECORDS
CREATE PROCEDURE SPAngViewAll
AS
BEGIN
SELECT * FROM angEmployee
ORDER BY EmployeeId
END


