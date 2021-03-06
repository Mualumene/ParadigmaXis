/****** Object:  UserDefinedFunction [dbo].[fn_AddPaddingToDateMember]    Script Date: 04/24/2009 17:12:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[fn_AddPaddingToDateMember] (@member NVARCHAR(4), @maxLen INTEGER)  
RETURNS NVARCHAR(4) AS  
BEGIN 
	IF @member IS NULL OR @member = '?' OR @member = '??' OR @member = '???' OR @member = '????' SET @member = ''

	DECLARE @paddingChar NCHAR
	DECLARE @lenMember INTEGER
	SET @lenMember = LEN(@member)

	IF @lenMember = 0 SET @paddingChar = '?'
	ELSE SET @paddingChar = '0' 
	
	WHILE (@lenMember<@maxLen)
	BEGIN
		SET @member = @paddingChar + @member
		SET @lenMember = @lenMember + 1
	END
	RETURN @member
END
GO
