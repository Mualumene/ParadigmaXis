SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_getNivelEstruturalCount]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_getNivelEstruturalCount]
GO

CREATE PROCEDURE sp_getNivelEstruturalCount AS
	SELECT COUNT(*) 
	FROM Nivel 
	WHERE IDTipoNivel =  2
		AND isDeleted = 0
GO

