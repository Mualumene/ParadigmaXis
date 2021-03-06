/****** Object:  StoredProcedure [dbo].[Search_Estrutura]    Script Date: 07/31/2013 17:48:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Search_Estrutura]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Search_Estrutura]
GO

/****** Object:  StoredProcedure [dbo].[Search_Estrutura]    Script Date: 07/31/2013 17:48:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Search_Estrutura]
@TrusteeID BIGINT,
@NivelID BIGINT
AS
BEGIN	
	DECLARE @age INT
	SET @age = 0

	INSERT INTO #Search_Struct 
	SELECT @NivelID, 0

	WHILE EXISTS (SELECT * FROM #Search_Struct WHERE gen = @age )
	BEGIN
		SET @age = @age + 1
                  
		--explosão dos descendentes dos níveis encontrados
		INSERT INTO #Search_Struct 
		SELECT DISTINCT RH.ID,  @age
		FROM RelacaoHierarquica RH
			INNER JOIN #Search_Struct pe ON RH.IDUpper = pe.ID AND pe.gen = @age - 1
			LEFT JOIN #Search_Struct pe_ver ON pe_ver.ID = RH.ID
		WHERE RH.isDeleted = 0 AND pe_ver.ID IS NULL
	END
END

GO


