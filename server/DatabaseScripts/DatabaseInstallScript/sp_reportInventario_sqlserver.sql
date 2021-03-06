/****** Object:  StoredProcedure [dbo].[sp_reportInventario]    Script Date: 07/31/2013 17:50:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_reportInventario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_reportInventario]
GO

/****** Object:  StoredProcedure [dbo].[sp_reportInventario]    Script Date: 07/31/2013 17:50:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
Devolve o conjunto de dados que devam constar de um dado inventário ou catálogo.
@IsCatalogo indica precisamente se se trata de um catalogo. No caso de se tratar de um inventário deverão ser descartados todos documentos que constituam série.
@IsDetalhado indica qual o nivel de detalhe que deve ser devolvido para cada nivel do resultado
@AreParametersTopDown indica se os parametros são niveis estruturais que devam ser expandidos por completo para baixo, ou se por outro lado são niveis documentais para os quais devem ser encontrados todos os niveis que os ligam à raiz
*/
CREATE PROCEDURE [dbo].[sp_reportInventario] @IDTrustee BIGINT, @IsCatalogo BIT, @IsDetalhado BIT = 0, @TopDownExpansion BIT = 0 AS
BEGIN
	-- parametros fornecidos sao niveis documentais (provenientes de resultados de pesquisas), tem de ser expandidos para cima (em busca dos seus produtores)
	IF (@TopDownExpansion  = 0)
	BEGIN
		-- adicionar os niveis documentais a ser explorados
		INSERT INTO #Niveis(ID, IDUpper)
		SELECT DISTINCT n.ID, rh.IDUpper
		FROM Nivel n
			INNER JOIN RelacaoHierarquica rh ON rh.ID = n.ID
			INNER JOIN Nivel nUpper ON nUpper.ID = rh.IDUpper
			INNER JOIN #ReportParametersNiveis ON #ReportParametersNiveis.ID = n.ID
		WHERE n.IDTipoNivel = 3 AND -- niveis iniciais tem de ser documentais
			n.isDeleted = 0 AND
			rh.isDeleted = 0 AND
			nUpper.isDeleted = 0

		-- obter o caminho dos niveis documentais ate aos produtores
		WHILE (@@ROWCOUNT > 0)
		BEGIN
			INSERT INTO #Niveis(ID, IDUpper, IsContext)
			SELECT DISTINCT n.ID, rh.IDUpper, 1
			FROM Nivel n
				INNER JOIN RelacaoHierarquica rh ON rh.ID = n.ID
				INNER JOIN Nivel nUpper ON nUpper.ID = rh.IDUpper
				INNER JOIN #Niveis niveisAExpandir ON niveisAExpandir.IDUpper = n.ID
				LEFT JOIN #Niveis niveisJaExpandidos ON niveisJaExpandidos.ID = n.ID AND niveisJaExpandidos.IDUpper = nUpper.ID
			WHERE niveisJaExpandidos.ID IS NULL AND
				((nUpper.IDTipoNivel = 2 AND n.IDTipoNivel = 3) OR (nUpper.IDTipoNivel = 3 AND n.IDTipoNivel = 3)) -- niveis subsequentes podem ser estruturais ou documentais
				AND n.isDeleted = 0
		END
	END
	ELSE
	BEGIN -- parametros fornecidos podem ser estruturais ou documentais (no caso dos documentais podem ser series ou subseries)  sendo necessario, em ambos os casos,
		-- expandi-los para baixo (em busca dos seus niveis documentais); se se tratarem de series ou subseries e necessario expandir para cima (encontrar os seus produtores);
		-- os parametros sao provenientes de uma seleccao na estrutura de dados (sempre so um nivel seleccionado)
		CREATE TABLE #NiveisUp(ID BIGINT, IDUpper BIGINT, IsContext BIT DEFAULT 0) CREATE INDEX id_ix ON #NiveisUp (ID)
		CREATE TABLE #NiveisDown(ID BIGINT, IDUpper BIGINT, IsContext BIT DEFAULT 0) CREATE INDEX id_ix ON #NiveisDown (ID)
		
		--EXPANSAO PARA CIMA
		-- adicionar os niveis a ser explorados
		INSERT INTO #NiveisUp(ID, IDUpper)
		SELECT DISTINCT n.ID, rh.IDUpper
		FROM Nivel n
			INNER JOIN RelacaoHierarquica rh ON rh.ID = n.ID
			INNER JOIN Nivel nUpper ON nUpper.ID = rh.IDUpper
			INNER JOIN #ReportParametersNiveis ON #ReportParametersNiveis.ID = n.ID
		WHERE n.IDTipoNivel = 3 AND -- niveis iniciais tem de ser documentais
			n.isDeleted = 0 AND
			rh.isDeleted = 0 AND
			nUpper.isDeleted = 0

		-- obter o caminho dos niveis documentais ate aos produtores
		WHILE (@@ROWCOUNT > 0)
		BEGIN
			INSERT INTO #NiveisUp(ID, IDUpper, IsContext)
			SELECT DISTINCT n.ID, rh.IDUpper, 1
			FROM Nivel n
				INNER JOIN RelacaoHierarquica rh ON rh.ID = n.ID
				INNER JOIN Nivel nUpper ON nUpper.ID = rh.IDUpper
				INNER JOIN #NiveisUp niveisAExpandir ON niveisAExpandir.IDUpper = n.ID
				LEFT JOIN #NiveisUp niveisJaExpandidos ON niveisJaExpandidos.ID = n.ID AND niveisJaExpandidos.IDUpper = nUpper.ID
			WHERE niveisJaExpandidos.ID IS NULL AND
				((nUpper.IDTipoNivel = 2 AND n.IDTipoNivel = 3) OR (nUpper.IDTipoNivel = 3 AND n.IDTipoNivel = 3)) -- niveis subsequentes podem ser estruturais ou documentais
				AND n.isDeleted = 0
		END
		
		--EXPANSAO PARA BAIXO
		-- adicionar os niveis a ser explorados
		INSERT INTO #NiveisDown(ID, IDUpper)
		SELECT DISTINCT n.ID, rh.IDUpper
		FROM #ReportParametersNiveis
		INNER JOIN Nivel n ON n.ID = #ReportParametersNiveis.ID
		INNER JOIN RelacaoHierarquica rh ON rh.ID = n.ID
		WHERE n.isDeleted = 0 AND
		rh.isDeleted = 0
		
		-- obter o caminho dos niveis estruturais ate as folhas
		WHILE (@@ROWCOUNT > 0)
		BEGIN
		--36
			IF @IsCatalogo = 1 -- descer ate aos documentos
			BEGIN
				INSERT INTO #NiveisDown(ID, IDUpper)
				SELECT rh.ID, niveisAExpandir.ID
				FROM #NiveisDown niveisAExpandir
					INNER JOIN RelacaoHierarquica rh ON rh.IDUpper = niveisAExpandir.ID
					INNER JOIN Nivel n ON n.ID = rh.IDUpper
					LEFT JOIN #NiveisDown niveisJaExpandidos ON niveisJaExpandidos.IDUpper = niveisAExpandir.ID AND niveisJaExpandidos.ID = rh.ID
				WHERE niveisJaExpandidos.ID IS NULL AND
					(n.IDTipoNivel = 2 OR (n.IDTipoNivel = 3 AND rh.IDTipoNivelRelacionado < 11))
			END
			ELSE -- descer ate as subseries
			BEGIN
				INSERT INTO #NiveisDown(ID, IDUpper)
				SELECT rh.ID, niveisAExpandir.ID
				FROM #NiveisDown niveisAExpandir
					INNER JOIN RelacaoHierarquica rh ON rh.IDUpper = niveisAExpandir.ID
					INNER JOIN Nivel n ON n.ID = rh.IDUpper
					LEFT JOIN #NiveisDown niveisJaExpandidos ON niveisJaExpandidos.IDUpper = niveisAExpandir.ID AND niveisJaExpandidos.ID = rh.ID
				WHERE niveisJaExpandidos.ID IS NULL AND
					(n.IDTipoNivel = 2 OR (n.IDTipoNivel = 3 AND rh.IDTipoNivelRelacionado < 9))
			END
		END
		
		-- adicionar nivel de partida
		INSERT INTO #Niveis(ID, IDUpper)
		SELECT DISTINCT n.ID, rh.IDUpper
		FROM Nivel n
			INNER JOIN RelacaoHierarquica rh ON rh.ID = n.ID
			INNER JOIN Nivel nUpper ON nUpper.ID = rh.IDUpper
			INNER JOIN #ReportParametersNiveis ON #ReportParametersNiveis.ID = n.ID
		WHERE n.isDeleted = 0 AND
			rh.isDeleted = 0 AND
			nUpper.isDeleted = 0
	
		INSERT INTO #Niveis
		SELECT * FROM #NiveisUp
		UNION
		SELECT #NiveisDown.* FROM #NiveisDown
			INNER JOIN Nivel n ON n.ID = #NiveisDown.ID AND n.isDeleted = 0
		WHERE n.IDTipoNivel > 2
		
		DROP TABLE #NiveisUp
		DROP TABLE #NiveisDown
	END
	
 	-- Filtrar niveis sem permissoes de leitura
 	-- calcular permissões para #Series
	CREATE TABLE #effective (IDNivel BIGINT PRIMARY KEY, IDUpper BIGINT, Ler TINYINT)
	INSERT INTO #effective 
	SELECT DISTINCT ID, ID, NULL
	FROM #Niveis
	EXEC [dbo].[sp_getEffectiveReadPermissions] @IDTrustee
	
	DELETE FROM #Niveis WHERE ID IN (SELECT IDNivel FROM #effective WHERE Ler IS NOT NULL AND Ler <> 1)

	-- retornar lista dos produtores de todas as series e documentos soltos
	SELECT DISTINCT nProdutores.IDUpper, n.Codigo, tnr.Designacao, d.Termo
	FROM Nivel n
		INNER JOIN (
			SELECT DISTINCT rh.IDUpper
			FROM #Niveis rpn
			INNER JOIN RelacaoHierarquica rh ON rh.ID = rpn.ID
			WHERE rh.isDeleted = 0 AND rh.IDTipoNivelRelacionado IN (7,9)
		) nProdutores ON nProdutores.IDUpper = n.ID
		-- os LEFT JOIN são para prever os casos onde os níveis produtores nao sao controlados (por isso. logicamente nao sao produtores)
		LEFT JOIN NivelControloAut nca ON nca.ID = n.ID
		LEFT JOIN ControloAut ca ON ca.ID = nca.IDControloAut
		LEFT JOIN ControloAutDicionario cad ON cad.IDControloAut = ca.ID AND cad.IDTipoControloAutForma = 1
		LEFT JOIN Dicionario d ON d.ID = cad.IDDicionario
		LEFT JOIN RelacaoHierarquica rh ON rh.ID = n.ID -- podem haver produtores que nao estejam ligados na estrutura
		LEFT JOIN TipoNivelRelacionado tnr ON tnr.ID = rh.IDTipoNivelRelacionado
	WHERE n.IDTipoNivel = 2
		AND n.isDeleted = 0
		AND (rh.isDeleted IS NULL OR rh.isDeleted = 0)
		AND (nca.isDeleted IS NULL OR nca.isDeleted = 0)
		AND (ca.isDeleted IS NULL OR ca.isDeleted = 0)
		AND (cad.isDeleted IS NULL OR cad.isDeleted = 0)
		AND (d.isDeleted IS NULL OR d.isDeleted = 0)

	-- Obter e retornar os codigos completos de todas as series e documentos soltos
	CREATE TABLE #SPParametersNiveis (IDNivel BIGINT)
	INSERT INTO #SPParametersNiveis
	SELECT distinct rh.ID
	FROM #Niveis rpn
		INNER JOIN RelacaoHierarquica rh on rh.ID = rpn.ID
		INNER JOIN Nivel n ON n.ID = rh.ID
		INNER JOIN Nivel nUpper ON nUpper.ID = rh.IDUpper
	WHERE n.IDTipoNivel = 3
		AND nUpper.IDTipoNivel = 2
		AND n.isDeleted = 0
		AND nUpper.isDeleted = 0
		AND rh.isDeleted = 0
		
	CREATE TABLE #SPResultsCodigos(IDNivel BIGINT, CodigoCompleto NVARCHAR(255))
	CREATE CLUSTERED INDEX SPResultsCodigos_id_ix ON #SPResultsCodigos (IDNivel, CodigoCompleto)
	EXEC sp_getCodigosCompletosNiveis

	-- devolver a lista de codigos de referencia completos para os niveis documentais
	SELECT IDNivel, CASE WHEN num > 1 THEN CodigoCompleto + ' (x' + CONVERT(NVARCHAR, num) + ')' ELSE CodigoCompleto END
	FROM (
		SELECT c.IDNivel, c.CodigoCompleto, COUNT(*) num
		FROM #SPResultsCodigos c
		GROUP BY c.IDNivel, c.CodigoCompleto
	) codigosRepetidos
	ORDER BY IDNivel
	
	DROP TABLE #SPParametersNiveis
	DROP TABLE #SPResultsCodigos
	DROP TABLE #ReportParametersNiveis
	DROP TABLE #effective
END


GO


