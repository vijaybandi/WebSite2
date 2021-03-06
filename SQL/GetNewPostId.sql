USE [andrew]
GO
/****** Object:  UserDefinedFunction [andrew].[GetNewPostId] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Andrew B.
-- Create date: 7/18/2015
-- Description:	Generates the ID for a post
-- =============================================
ALTER FUNCTION [andrew].[GetNewPostId] ()
RETURNS integer
AS
BEGIN
	-- Declare the return variable here
	DECLARE @NewId int;

	-- Add the T-SQL statements to compute the return value here
	SELECT @NewId = COUNT(*) FROM andrew.andrew.Posts;

	-- Return the result of the function
	RETURN @NewId + 1;

END;
