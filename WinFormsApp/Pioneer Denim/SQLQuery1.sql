-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
	-- Add the parameters for the stored procedure here
	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
END
GO


ALTER PROCEDURE sp_JobCard
(
    @EmployeeID VARCHAR(20),
    @FromDate DATE,
    @ToDate DATE
)
AS
BEGIN

SELECT
    E.EmployeeID,   -- 👈 ADD THIS (VERY IMPORTANT)
    E.CardNo,
    E.EmployeeName,
    E.JoiningDate,
    E.Designation,
    E.Department,

    A.AttendanceDate,
    DATENAME(WEEKDAY,A.AttendanceDate) AS DayName,
    A.InTime,
    A.OutTime,
    A.Status

FROM EmployeeInfo E
INNER JOIN Attendance A
ON E.EmployeeID = A.EmployeeID

WHERE
    E.EmployeeID = @EmployeeID
    AND A.AttendanceDate BETWEEN @FromDate AND @ToDate

ORDER BY A.AttendanceDate

END

EXEC sp_JobCard '42662026', '2026-05-01', '2026-05-31'