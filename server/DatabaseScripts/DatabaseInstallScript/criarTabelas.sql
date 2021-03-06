﻿USE [GISA]
GO
/****** Object:  Table [dbo].[SFRDImagemVolume]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDImagemVolume](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Mount] [ntext] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDImagemVolume] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SearchCacheWeb]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchCacheWeb](
	[ClientGUID] [nvarchar](36) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[OrderNumber] [int] NOT NULL,
 CONSTRAINT [PK_SearchCacheWeb] PRIMARY KEY CLUSTERED 
(
	[ClientGUID] ASC,
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFRDBase]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFRDBase](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BuiltInName] [nvarchar](50) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoFRDBase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoFRDBase] ON
INSERT [dbo].[TipoFRDBase] ([ID], [BuiltInName], [Designacao], [isDeleted]) VALUES (1, N'FRDOIRecolha', N'Recolha', 0)
INSERT [dbo].[TipoFRDBase] ([ID], [BuiltInName], [Designacao], [isDeleted]) VALUES (2, N'FRDUnidadeFisica', N'Unidade Física', 0)
SET IDENTITY_INSERT [dbo].[TipoFRDBase] OFF
/****** Object:  Table [dbo].[TipoFormaSuporteAcond]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFormaSuporteAcond](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoFormaSuporteAcond] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoFormaSuporteAcond] ON
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Folhas', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Caderneta', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Caderno', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Livro', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Fichas', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Caixa', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (7, N'Maço', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (8, N'Pasta', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (9, N'Envelope', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (10, N'Rolo', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (11, N'Bobina', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (12, N'Cassete', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (13, N'Disco', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (14, N'Disquete', 0)
INSERT [dbo].[TipoFormaSuporteAcond] ([ID], [Designacao], [isDeleted]) VALUES (15, N'Outra', 0)
SET IDENTITY_INSERT [dbo].[TipoFormaSuporteAcond] OFF
/****** Object:  Table [dbo].[TipoEstadoDeConservacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEstadoDeConservacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoEstadoDeConservacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoEstadoDeConservacao] ON
INSERT [dbo].[TipoEstadoDeConservacao] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Bom', 0)
INSERT [dbo].[TipoEstadoDeConservacao] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Razoável', 0)
INSERT [dbo].[TipoEstadoDeConservacao] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Mau', 0)
SET IDENTITY_INSERT [dbo].[TipoEstadoDeConservacao] OFF
/****** Object:  Table [dbo].[TipoEstadoConservacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEstadoConservacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoEstadoConservacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoEstadoConservacao_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoEstadoConservacao] ON
INSERT [dbo].[TipoEstadoConservacao] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Bom', 0)
INSERT [dbo].[TipoEstadoConservacao] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Razoável', 0)
INSERT [dbo].[TipoEstadoConservacao] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Mau', 0)
SET IDENTITY_INSERT [dbo].[TipoEstadoConservacao] OFF
/****** Object:  Table [dbo].[TipoEntrega]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEntrega](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoEntrega] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoEntrega] ON
INSERT [dbo].[TipoEntrega] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Incorporação', 0)
INSERT [dbo].[TipoEntrega] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Transferência', 0)
INSERT [dbo].[TipoEntrega] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Depósito', 0)
INSERT [dbo].[TipoEntrega] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Doação', 0)
INSERT [dbo].[TipoEntrega] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Compra', 0)
SET IDENTITY_INSERT [dbo].[TipoEntrega] OFF
/****** Object:  Table [dbo].[TipoEntidadeProdutora]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEntidadeProdutora](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoEntidadeProdutora] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoEntidadeProdutora] ON
INSERT [dbo].[TipoEntidadeProdutora] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Colectividade', 0)
INSERT [dbo].[TipoEntidadeProdutora] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Família', 0)
INSERT [dbo].[TipoEntidadeProdutora] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Pessoa', 0)
SET IDENTITY_INSERT [dbo].[TipoEntidadeProdutora] OFF
/****** Object:  Table [dbo].[TipoDensidade]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDensidade](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoDensidade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoDensidade] ON
INSERT [dbo].[TipoDensidade] ([ID], [Designacao], [isDeleted]) VALUES (1, N'', 0)
INSERT [dbo].[TipoDensidade] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Primária', 0)
INSERT [dbo].[TipoDensidade] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Secundária', 0)
SET IDENTITY_INSERT [dbo].[TipoDensidade] OFF
/****** Object:  Table [dbo].[TipoControloAutRel]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoControloAutRel](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[DesignacaoInversa] [nvarchar](50) NULL,
	[Thesaurus] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutTipoRel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoControloAutRel] ON
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (1, N'Termo genérico', N'Termo específico', 1, 0)
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (2, N'Termo relacionado', N'Termo relacionado', 1, 0)
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (3, N'Hierárquica superior', N'Hierárquica subordinada', 0, 0)
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (4, N'Temporal predecessora', N'Temporal sucessora', 0, 0)
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (5, N'Familiar', N'Familiar', 0, 0)
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (6, N'Associativa', N'Associativa', 0, 0)
INSERT [dbo].[TipoControloAutRel] ([ID], [Designacao], [DesignacaoInversa], [Thesaurus], [isDeleted]) VALUES (7, N'Instituição', N'Instituição', 0, 0)
SET IDENTITY_INSERT [dbo].[TipoControloAutRel] OFF
/****** Object:  Table [dbo].[TipoControloAutForma]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoControloAutForma](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutForma] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoControloAutForma] ON
INSERT [dbo].[TipoControloAutForma] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Forma autorizada', 0)
INSERT [dbo].[TipoControloAutForma] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Forma paralela', 0)
INSERT [dbo].[TipoControloAutForma] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Forma normalizada segundo outras regras', 0)
INSERT [dbo].[TipoControloAutForma] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Outras formas', 0)
SET IDENTITY_INSERT [dbo].[TipoControloAutForma] OFF
/****** Object:  Table [dbo].[TipoAcondicionamento]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAcondicionamento](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoAcondicionamento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoAcondicionamento_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoAcondicionamento] ON
INSERT [dbo].[TipoAcondicionamento] ([ID], [Designacao], [isDeleted]) VALUES (1, N'<Desconhecido>', 0)
INSERT [dbo].[TipoAcondicionamento] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Pasta', 0)
INSERT [dbo].[TipoAcondicionamento] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Capa', 0)
INSERT [dbo].[TipoAcondicionamento] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Caixa', 0)
INSERT [dbo].[TipoAcondicionamento] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Livro', 0)
INSERT [dbo].[TipoAcondicionamento] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Maço', 0)
SET IDENTITY_INSERT [dbo].[TipoAcondicionamento] OFF
/****** Object:  Table [dbo].[TipoServer]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoServer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BuiltInName] [nvarchar](20) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoServer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoServer] ON
INSERT [dbo].[TipoServer] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (1, N'Monoposto', N'MONOPOSTO', 0)
INSERT [dbo].[TipoServer] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (2, N'Cliente-Servidor', N'CLT-SRV', 0)
SET IDENTITY_INSERT [dbo].[TipoServer] OFF
/****** Object:  Table [dbo].[TipoPertinencia]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPertinencia](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Ponderacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoPertinencia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoPertinencia] ON
INSERT [dbo].[TipoPertinencia] ([ID], [Designacao], [Ponderacao], [isDeleted]) VALUES (1, N'', N'', 0)
INSERT [dbo].[TipoPertinencia] ([ID], [Designacao], [Ponderacao], [isDeleted]) VALUES (2, N'A', N'1 (Um)', 0)
INSERT [dbo].[TipoPertinencia] ([ID], [Designacao], [Ponderacao], [isDeleted]) VALUES (3, N'B', N'1 (Um)', 0)
INSERT [dbo].[TipoPertinencia] ([ID], [Designacao], [Ponderacao], [isDeleted]) VALUES (4, N'C', N'0 (Zero)', 0)
SET IDENTITY_INSERT [dbo].[TipoPertinencia] OFF
/****** Object:  Table [dbo].[TipoOrdenacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoOrdenacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoOrdenacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoOrdenacao] ON
INSERT [dbo].[TipoOrdenacao] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Numérica', 0)
INSERT [dbo].[TipoOrdenacao] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Cronológica', 0)
INSERT [dbo].[TipoOrdenacao] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Alfabética', 0)
INSERT [dbo].[TipoOrdenacao] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Sistemática', 0)
INSERT [dbo].[TipoOrdenacao] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Aleatória', 0)
SET IDENTITY_INSERT [dbo].[TipoOrdenacao] OFF
/****** Object:  Table [dbo].[TipoOperation]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoOperation](
	[ID] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CodeName] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoOperation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoOperation] ([ID], [Name], [CodeName], [isDeleted]) VALUES (1, N'Criar', N'CREATE', 0)
INSERT [dbo].[TipoOperation] ([ID], [Name], [CodeName], [isDeleted]) VALUES (2, N'Ler', N'READ', 0)
INSERT [dbo].[TipoOperation] ([ID], [Name], [CodeName], [isDeleted]) VALUES (3, N'Escrever', N'WRITE', 0)
INSERT [dbo].[TipoOperation] ([ID], [Name], [CodeName], [isDeleted]) VALUES (4, N'Apagar', N'DELETE', 0)
INSERT [dbo].[TipoOperation] ([ID], [Name], [CodeName], [isDeleted]) VALUES (7, N'Expandir', N'EXPAND', 0)
/****** Object:  Table [dbo].[TipoNoticiaAut]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNoticiaAut](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Conteudo] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NoticiaAut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoNoticiaAut] ON
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (1, N'Ideográfico', 1, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (2, N'Onomástico', 1, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (3, N'Nome geográfico/Topónimo citadino', 1, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (4, N'Entidade produtora', 0, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (5, N'Tipologia informacional', 1, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (6, N'Subtipologia informacional', 0, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (7, N'Diploma', 0, 0)
INSERT [dbo].[TipoNoticiaAut] ([ID], [Designacao], [Conteudo], [isDeleted]) VALUES (8, N'Modelo', 0, 0)
SET IDENTITY_INSERT [dbo].[TipoNoticiaAut] OFF
/****** Object:  Table [dbo].[TipoNivel]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNivel](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BuiltInName] [nvarchar](50) NOT NULL,
	[IsStructure] [bit] NOT NULL,
	[IsDocument] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoNivel_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoNivel] ON
INSERT [dbo].[TipoNivel] ([ID], [BuiltInName], [IsStructure], [IsDocument], [isDeleted]) VALUES (1, N'LOGICO', 0, 0, 0)
INSERT [dbo].[TipoNivel] ([ID], [BuiltInName], [IsStructure], [IsDocument], [isDeleted]) VALUES (2, N'ESTRUTURAL', 1, 0, 0)
INSERT [dbo].[TipoNivel] ([ID], [BuiltInName], [IsStructure], [IsDocument], [isDeleted]) VALUES (3, N'DOCUMENTAL', 0, 1, 0)
INSERT [dbo].[TipoNivel] ([ID], [BuiltInName], [IsStructure], [IsDocument], [isDeleted]) VALUES (4, N'OUTRO', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[TipoNivel] OFF
/****** Object:  Table [dbo].[TipoMedida]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMedida](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoMedida] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoMedida_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de medidas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMedida'
GO
SET IDENTITY_INSERT [dbo].[TipoMedida] ON
INSERT [dbo].[TipoMedida] ([ID], [Designacao], [isDeleted]) VALUES (1, N'm', 0)
SET IDENTITY_INSERT [dbo].[TipoMedida] OFF
/****** Object:  Table [dbo].[TipoMaterialDeSuporte]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMaterialDeSuporte](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoMaterialDeSuporte] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoMaterialDeSuporte] ON
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Papel', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Pergaminho', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Película', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Vidro', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Metal', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Tecido', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (7, N'Vinil', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (8, N'PVC', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (9, N'Outro', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (10, N'Tela', 0)
INSERT [dbo].[TipoMaterialDeSuporte] ([ID], [Designacao], [isDeleted]) VALUES (11, N'Pele', 0)
SET IDENTITY_INSERT [dbo].[TipoMaterialDeSuporte] OFF
/****** Object:  Table [dbo].[TipoMaterial]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMaterial](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoMaterial_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoMaterial] ON
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Papel', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Pergaminho', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Película', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Vidro', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Metal', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Tecido', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (7, N'Vinil', 0)
INSERT [dbo].[TipoMaterial] ([ID], [Designacao], [isDeleted]) VALUES (8, N'PVC', 0)
SET IDENTITY_INSERT [dbo].[TipoMaterial] OFF
/****** Object:  Table [dbo].[TipoFunctionGroup]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFunctionGroup](
	[ID] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GUIOrder] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_FunctionGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (1, N'Unidades informacionais', 4, 0)
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (2, N'Controlo de autoridade', 1, 0)
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (3, N'Unidades físicas', 2, 0)
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (5, N'Contexto', 0, 0)
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (7, N'Administração', 20, 0)
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (8, N'Integração', 15, 0)
INSERT [dbo].[TipoFunctionGroup] ([ID], [Name], [GUIOrder], [isDeleted]) VALUES (9, N'Objetos digitais', 16, 0)
/****** Object:  Table [dbo].[Dicionario]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dicionario](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Termo] [nvarchar](444) COLLATE Latin1_General_CS_AS NOT NULL,
	[CatCode] [nchar](6) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Dicionario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Dicionario_Termo] UNIQUE NONCLUSTERED 
(
	[Termo] ASC,
	[CatCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de Referência' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dicionario', @level2type=N'COLUMN',@level2name=N'CatCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Termo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dicionario'
GO
/****** Object:  Table [dbo].[ClientLicense]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientLicense](
	[SequenceNumber] [int] NOT NULL,
	[GrantDate] [datetime] NOT NULL,
	[SerialNumber] [nvarchar](19) NOT NULL,
	[FloatingLicensesCount] [smallint] NOT NULL,
	[GranterName] [nvarchar](256) NULL,
	[AssemblyVersion] [nvarchar](256) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ClientLicense] PRIMARY KEY CLUSTERED 
(
	[SequenceNumber] ASC,
	[GrantDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ClientLicense] ([SequenceNumber], [GrantDate], [SerialNumber], [FloatingLicensesCount], [GranterName], [AssemblyVersion], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'ZBVC-622Q-ZQQC-TC3B', 5, N'ParadigmaXis', N'null', 0)
/****** Object:  Table [dbo].[AutoEliminacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoEliminacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](400) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
	[NotasEliminacao] [ntext] NULL,
 CONSTRAINT [PK_AutoEliminacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_AutoEliminacao_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto de eliminação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AutoEliminacao'
GO
/****** Object:  Table [dbo].[GlobalConfig]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalConfig](
	[ID] [bigint] NOT NULL,
	[NiveisOrganicos] [bit] NOT NULL,
	[GestaoIntegrada] [bit] NOT NULL,
	[MaxNumResultados] [int] NOT NULL,
	[MaxNumDocumentos] [int] NOT NULL,
	[URLBase] [nvarchar](250) NULL,
	[URLBaseActivo] [bit] NOT NULL,
	[MetrosLinearesTotais] [numeric](12, 2) NULL,
	[FedoraServerUrl] [nvarchar](200) NULL,
	[FedoraUsername] [nvarchar](50) NULL,
	[FedoraPassword] [nvarchar](20) NULL,
	[UrlGisaInternet] [nvarchar](200) NULL,
	[QualidadeImagem] [nvarchar](20) NULL,
	[ApplyDefaultValues] [bit] NULL,
	[CondicaoDeAcesso] [ntext] NULL,
	[CondicaoDeReproducao] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_GlobalConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GlobalConfig] ([ID], [NiveisOrganicos], [GestaoIntegrada], [MaxNumResultados], [MaxNumDocumentos], [URLBase], [URLBaseActivo], [MetrosLinearesTotais], [ApplyDefaultValues], [isDeleted]) VALUES (1, 1, 1, 20, 100, NULL, 0, NULL,0 ,0)
/****** Object:  Table [dbo].[Iso639]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iso639](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageNameEnglish] [nvarchar](50) NOT NULL,
	[BibliographicCodeAlpha3] [nvarchar](3) NOT NULL,
	[TerminologyCodeAlpha3] [nvarchar](3) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Iso639] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Iso639] ON
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (1, N'Abkhazian', N'abk', N'abk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (2, N'Achinese', N'ace', N'ace', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (3, N'Acoli', N'ach', N'ach', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (4, N'Adangme', N'ada', N'ada', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (5, N'Afar', N'aar', N'aar', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (6, N'Afrihili', N'afh', N'afh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (7, N'Afrikaans', N'afr', N'afr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (8, N'Afro-Asiatic (Other)', N'afa', N'afa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (9, N'Akan', N'aka', N'aka', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (10, N'Akkadian', N'akk', N'akk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (11, N'Albanian', N'alb', N'sqi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (12, N'Aleut', N'ale', N'ale', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (13, N'Algonquian languages', N'alg', N'alg', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (14, N'Altaic (Other)', N'tut', N'tut', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (15, N'Amharic', N'amh', N'amh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (16, N'Apache languages', N'apa', N'apa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (17, N'Arabic', N'ara', N'ara', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (18, N'Aragonese', N'arg', N'arg', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (19, N'Aramaic', N'arc', N'arc', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (20, N'Arapaho', N'arp', N'arp', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (21, N'Araucanian', N'arn', N'arn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (22, N'Arawak', N'arw', N'arw', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (23, N'Armenian', N'arm', N'hye', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (24, N'Artificial (Other)', N'art', N'art', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (25, N'Assamese', N'asm', N'asm', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (26, N'Asturian', N'ast', N'ast', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (27, N'Athapascan languages', N'ath', N'ath', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (28, N'Australian languages', N'aus', N'aus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (29, N'Austronesian (Other)', N'map', N'map', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (30, N'Avaric', N'ava', N'ava', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (31, N'Avestan', N'ave', N'ave', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (32, N'Awadhi', N'awa', N'awa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (33, N'Aymara', N'aym', N'aym', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (34, N'Azerbaijani', N'aze', N'aze', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (35, N'Bable', N'ast', N'ast', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (36, N'Balinese', N'ban', N'ban', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (37, N'Baltic (Other)', N'bat', N'bat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (38, N'Baluchi', N'bal', N'bal', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (39, N'Bambara', N'bam', N'bam', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (40, N'Bamileke languages', N'bai', N'bai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (41, N'Banda', N'bad', N'bad', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (42, N'Bantu (Other)', N'bnt', N'bnt', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (43, N'Basa', N'bas', N'bas', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (44, N'Bashkir', N'bak', N'bak', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (45, N'Basque', N'baq', N'eus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (46, N'Batak (Indonesia)', N'btk', N'btk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (47, N'Beja', N'bej', N'bej', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (48, N'Belarusian', N'bel', N'bel', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (49, N'Bemba', N'bem', N'bem', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (50, N'Bengali', N'ben', N'ben', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (51, N'Berber (Other)', N'ber', N'ber', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (52, N'Bhojpuri', N'bho', N'bho', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (53, N'Bihari', N'bih', N'bih', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (54, N'Bikol', N'bik', N'bik', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (55, N'Bini', N'bin', N'bin', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (56, N'Bislama', N'bis', N'bis', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (57, N'Bokmål, Norwegian', N'nob', N'nob', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (58, N'Bosnian', N'bos', N'bos', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (59, N'Braj', N'bra', N'bra', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (60, N'Breton', N'bre', N'bre', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (61, N'Buginese', N'bug', N'bug', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (62, N'Bulgarian', N'bul', N'bul', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (63, N'Buriat', N'bua', N'bua', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (64, N'Burmese', N'bur', N'mya', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (65, N'Caddo', N'cad', N'cad', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (66, N'Carib', N'car', N'car', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (67, N'Castilian', N'spa', N'spa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (68, N'Catalan', N'cat', N'cat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (69, N'Caucasian (Other)', N'cau', N'cau', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (70, N'Cebuano', N'ceb', N'ceb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (71, N'Celtic (Other)', N'cel', N'cel', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (72, N'Central American Indian (Other)', N'cai', N'cai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (73, N'Chagatai', N'chg', N'chg', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (74, N'Chamic languages', N'cmc', N'cmc', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (75, N'Chamorro', N'cha', N'cha', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (76, N'Chechen', N'che', N'che', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (77, N'Cherokee', N'chr', N'chr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (78, N'Chewa', N'nya', N'nya', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (79, N'Cheyenne', N'chy', N'chy', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (80, N'Chibcha', N'chb', N'chb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (81, N'Chichewa', N'nya', N'nya', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (82, N'Chinese', N'chi', N'zho', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (83, N'Chinook jargon', N'chn', N'chn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (84, N'Chipewyan', N'chp', N'chp', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (85, N'Choctaw', N'cho', N'cho', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (86, N'Chuang', N'zha', N'zha', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (87, N'Church Slavic', N'chu', N'chu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (88, N'Church Slavonic', N'chu', N'chu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (89, N'Chuukese', N'chk', N'chk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (90, N'Chuvash', N'chv', N'chv', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (91, N'Coptic', N'cop', N'cop', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (92, N'Cornish', N'cor', N'cor', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (93, N'Corsican', N'cos', N'cos', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (94, N'Cree', N'cre', N'cre', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (95, N'Creek', N'mus', N'mus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (96, N'Creoles and pidgins(Other)', N'crp', N'crp', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (97, N'Creoles and pidgins, English-based (Other)', N'cpe', N'cpe', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (98, N'Creoles and pidgins, French-based (Other)', N'cpf', N'cpf', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (99, N'Creoles and pidgins, Portuguese-based (Other)', N'cpp', N'cpp', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (100, N'Croatian', N'scr', N'hrv', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (101, N'Cushitic (Other)', N'cus', N'cus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (102, N'Czech', N'cze', N'ces', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (103, N'Dakota', N'dak', N'dak', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (104, N'Danish', N'dan', N'dan', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (105, N'Dargwa', N'dar', N'dar', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (106, N'Dayak', N'day', N'day', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (107, N'Delaware', N'del', N'del', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (108, N'Dinka', N'din', N'din', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (109, N'Divehi', N'div', N'div', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (110, N'Dogri', N'doi', N'doi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (111, N'Dogrib', N'dgr', N'dgr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (112, N'Dravidian (Other)', N'dra', N'dra', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (113, N'Duala', N'dua', N'dua', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (114, N'Dutch', N'dut', N'nld', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (115, N'Dutch, Middle (ca. 1050-1350)', N'dum', N'dum', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (116, N'Dyula', N'dyu', N'dyu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (117, N'Dzongkha', N'dzo', N'dzo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (118, N'Efik', N'efi', N'efi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (119, N'Egyptian (Ancient)', N'egy', N'egy', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (120, N'Ekajuk', N'eka', N'eka', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (121, N'Elamite', N'elx', N'elx', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (122, N'English', N'eng', N'eng', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (123, N'English, Middle (1100-1500)', N'enm', N'enm', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (124, N'English, Old (ca.450-1100)', N'ang', N'ang', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (125, N'Esperanto', N'epo', N'epo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (126, N'Estonian', N'est', N'est', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (127, N'Ewe', N'ewe', N'ewe', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (128, N'Ewondo', N'ewo', N'ewo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (129, N'Fang', N'fan', N'fan', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (130, N'Fanti', N'fat', N'fat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (131, N'Faroese', N'fao', N'fao', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (132, N'Fijian', N'fij', N'fij', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (133, N'Finnish', N'fin', N'fin', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (134, N'Finno-Ugrian (Other)', N'fiu', N'fiu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (135, N'Fon', N'fon', N'fon', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (136, N'French', N'fre', N'fra', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (137, N'French, Middle (ca.1400-1600)', N'frm', N'frm', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (138, N'French, Old (842-ca.1400)', N'fro', N'fro', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (139, N'Frisian', N'fry', N'fry', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (140, N'Friulian', N'fur', N'fur', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (141, N'Fulah', N'ful', N'ful', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (142, N'Ga', N'gaa', N'gaa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (143, N'Gaelic', N'gla', N'gla', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (144, N'Gallegan', N'glg', N'glg', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (145, N'Ganda', N'lug', N'lug', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (146, N'Gayo', N'gay', N'gay', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (147, N'Gbaya', N'gba', N'gba', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (148, N'Geez', N'gez', N'gez', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (149, N'Georgian', N'geo', N'kat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (150, N'German', N'ger', N'deu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (151, N'German, Low', N'nds', N'nds', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (152, N'German, Middle High (ca.1050-1500)', N'gmh', N'gmh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (153, N'German, Old High (ca.750-1050)', N'goh', N'goh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (154, N'Germanic (Other)', N'gem', N'gem', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (155, N'Gikuyu', N'kik', N'kik', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (156, N'Gilbertese', N'gil', N'gil', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (157, N'Gondi', N'gon', N'gon', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (158, N'Gorontalo', N'gor', N'gor', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (159, N'Gothic', N'got', N'got', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (160, N'Grebo', N'grb', N'grb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (161, N'Greek, Ancient (to 1453)', N'grc', N'grc', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (162, N'Greek, Modern (1453-)', N'gre', N'ell', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (163, N'Guarani', N'grn', N'grn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (164, N'Gujarati', N'guj', N'guj', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (165, N'Gwich´in', N'gwi', N'gwi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (166, N'Haida', N'hai', N'hai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (167, N'Hausa', N'hau', N'hau', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (168, N'Hawaiian', N'haw', N'haw', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (169, N'Hebrew', N'heb', N'heb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (170, N'Herero', N'her', N'her', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (171, N'Hiligaynon', N'hil', N'hil', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (172, N'Himachali', N'him', N'him', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (173, N'Hindi', N'hin', N'hin', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (174, N'Hiri Motu', N'hmo', N'hmo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (175, N'Hittite', N'hit', N'hit', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (176, N'Hmong', N'hmn', N'hmn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (177, N'Hungarian', N'hun', N'hun', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (178, N'Hupa', N'hup', N'hup', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (179, N'Iban', N'iba', N'iba', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (180, N'Icelandic', N'ice', N'isl', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (181, N'Ido', N'ido', N'ido', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (182, N'Igbo', N'ibo', N'ibo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (183, N'Ijo', N'ijo', N'ijo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (184, N'Iloko', N'ilo', N'ilo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (185, N'Inari Sami', N'smn', N'smn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (186, N'Indic (Other)', N'inc', N'inc', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (187, N'Indo-European (Other)', N'ine', N'ine', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (188, N'Indonesian', N'ind', N'ind', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (189, N'Ingush', N'inh', N'inh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (191, N'Interlingue', N'ile', N'ile', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (192, N'Inuktitut', N'iku', N'iku', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (193, N'Inupiaq', N'ipk', N'ipk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (194, N'Iranian (Other)', N'ira', N'ira', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (195, N'Irish', N'gle', N'gle', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (196, N'Irish, Middle (900-1200)', N'mga', N'mga', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (197, N'Irish, Old (to 900)', N'sga', N'sga', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (198, N'Iroquoian languages', N'iro', N'iro', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (199, N'Italian', N'ita', N'ita', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (200, N'Japanese', N'jpn', N'jpn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (201, N'Javanese', N'jav', N'jav', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (202, N'Judeo-Arabic', N'jrb', N'jrb', 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (203, N'Judeo-Persian', N'jpr', N'jpr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (204, N'Kabardian', N'kbd', N'kbd', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (205, N'Kabyle', N'kab', N'kab', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (206, N'Kachin', N'kac', N'kac', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (207, N'Kalaallisut', N'kal', N'kal', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (208, N'Kamba', N'kam', N'kam', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (209, N'Kannada', N'kan', N'kan', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (210, N'Kanuri', N'kau', N'kau', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (211, N'Kara-Kalpak', N'kaa', N'kaa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (212, N'Karen', N'kar', N'kar', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (213, N'Kashmiri', N'kas', N'kas', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (214, N'Kawi', N'kaw', N'kaw', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (215, N'Kazakh', N'kaz', N'kaz', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (216, N'Khasi', N'kha', N'kha', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (217, N'Khmer', N'khm', N'khm', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (218, N'Khoisan (Other)', N'khi', N'khi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (219, N'Khotanese', N'kho', N'kho', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (220, N'Kikuyu', N'kik', N'kik', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (221, N'Kimbundu', N'kmb', N'kmb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (222, N'Kinyarwanda', N'kin', N'kin', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (223, N'Kirghiz', N'kir', N'kir', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (224, N'Komi', N'kom', N'kom', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (225, N'Kongo', N'kon', N'kon', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (226, N'Konkani', N'kok', N'kok', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (227, N'Korean', N'kor', N'kor', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (228, N'Kosraean', N'kos', N'kos', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (229, N'Kpelle', N'kpe', N'kpe', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (230, N'Kru', N'kro', N'kro', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (231, N'Kuanyama', N'kua', N'kua', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (232, N'Kumyk', N'kum', N'kum', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (233, N'Kurdish', N'kur', N'kur', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (234, N'Kurukh', N'kru', N'kru', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (235, N'Kutenai', N'kut', N'kut', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (236, N'Kwanyama', N'kua', N'kua', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (237, N'Ladino', N'lad', N'lad', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (238, N'Lahnda', N'lah', N'lah', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (239, N'Lamba', N'lam', N'lam', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (240, N'Lao', N'lao', N'lao', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (241, N'Latin', N'lat', N'lat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (242, N'Latvian', N'lav', N'lav', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (243, N'Letzeburgesch', N'ltz', N'ltz', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (244, N'Lezghian', N'lez', N'lez', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (245, N'Limburgan', N'lim', N'lim', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (246, N'Limburger', N'lim', N'lim', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (247, N'limburgish', N'lim', N'lim', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (248, N'Lingala', N'lin', N'lin', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (249, N'Lithuanian', N'lit', N'lit', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (250, N'Low German', N'nds', N'nds', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (251, N'Low Saxon', N'nds', N'nds', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (252, N'Lozi', N'loz', N'loz', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (253, N'Luba-Katanga', N'lub', N'lub', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (254, N'Luba-Lulua', N'lua', N'lua', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (255, N'Luiseno', N'lui', N'lui', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (256, N'Lule Sami', N'smj', N'smj', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (257, N'Lunda', N'lun', N'lun', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (258, N'Luo (Kenya and Tanzania)', N'luo', N'luo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (259, N'Luxembourgish', N'ltz', N'ltz', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (260, N'Lushai', N'lus', N'lus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (261, N'Macedonian', N'mac', N'mkd', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (262, N'Madurese', N'mad', N'mad', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (263, N'Magahi', N'mag', N'mag', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (264, N'Maithili', N'mai', N'mai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (265, N'Makasar', N'mak', N'mak', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (266, N'Malagasy', N'mlg', N'mlg', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (267, N'Malay', N'may', N'msa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (268, N'Malayalam', N'mal', N'mal', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (269, N'Maltese', N'mlt', N'mlt', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (270, N'Manchu', N'mnc', N'mnc', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (271, N'Mandar', N'mdr', N'mdr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (272, N'Mandingo', N'man', N'man', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (273, N'Manipuri', N'mni', N'mni', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (274, N'Manobo languages', N'mno', N'mno', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (275, N'Manx', N'glv', N'glv', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (276, N'Maori', N'mao', N'mri', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (277, N'Marathi', N'mar', N'mar', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (278, N'Mari', N'chm', N'chm', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (279, N'Marshallese', N'mah', N'mah', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (280, N'Marwari', N'mwr', N'mwr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (281, N'Masai', N'mas', N'mas', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (282, N'Mayan languages', N'myn', N'myn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (283, N'Mende', N'men', N'men', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (284, N'Micmac', N'mic', N'mic', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (285, N'Minangkabau', N'min', N'min', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (286, N'Miscellaneous languages', N'mis', N'mis', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (287, N'Mohawk', N'moh', N'moh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (288, N'Moldavian', N'mol', N'mol', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (289, N'Mon-Khmer (Other)', N'mkh', N'mkh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (290, N'Mongo', N'lol', N'lol', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (291, N'Mongolian', N'mon', N'mon', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (292, N'Mossi', N'mos', N'mos', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (293, N'Multiple languages', N'mul', N'mul', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (294, N'Munda languages', N'mun', N'mun', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (295, N'Nahuatl', N'nah', N'nah', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (296, N'Nauru', N'nau', N'nau', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (297, N'Navaho', N'nav', N'nav', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (298, N'Navajo', N'nav', N'nav', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (299, N'Ndebele, North', N'nde', N'nde', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (300, N'Ndebele, South', N'nbl', N'nbl', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (301, N'Ndonga', N'ndo', N'ndo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (302, N'Neapolitan', N'nap', N'nap', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (303, N'Nepali', N'nep', N'nep', 0)
GO
print 'Processed 300 total records'
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (304, N'Newari', N'new', N'new', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (305, N'Nias', N'nia', N'nia', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (306, N'Niger-Kordofanian (Other)', N'nic', N'nic', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (307, N'Nilo-Saharan (Other)', N'ssa', N'ssa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (308, N'Niuean', N'niu', N'niu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (309, N'Norse, Old', N'non', N'non', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (310, N'North American Indian (Other)', N'nai', N'nai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (311, N'Northern Sami', N'sme', N'sme', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (312, N'North Ndebele', N'nde', N'nde', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (313, N'Norwegian', N'nor', N'nor', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (314, N'Norwegian Bokmål', N'nob', N'nob', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (315, N'Norwegian Nynorsk', N'nno', N'nno', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (316, N'Nubian languages', N'nub', N'nub', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (317, N'Nyamwezi', N'nym', N'nym', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (318, N'Nyanja', N'nya', N'nya', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (319, N'Nyankole', N'nyn', N'nyn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (320, N'Nynorsk, Norwegian', N'nno', N'nno', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (321, N'Nyoro', N'nyo', N'nyo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (322, N'Nzima', N'nzi', N'nzi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (323, N'Occitan (post 1500)', N'oci', N'oci', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (324, N'Ojibwa', N'oji', N'oji', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (325, N'Old Bulgarian', N'chu', N'chu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (326, N'Old Church Slavonic', N'chu', N'chu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (327, N'Old Slavonic', N'chu', N'chu', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (328, N'Oriya', N'ori', N'ori', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (329, N'Oromo', N'orm', N'orm', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (330, N'Osage', N'osa', N'osa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (331, N'Ossetian', N'oss', N'oss', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (332, N'Ossetic', N'oss', N'oss', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (333, N'Otomian languages', N'oto', N'oto', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (334, N'Pahlavi', N'pal', N'pal', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (335, N'Palauan', N'pau', N'pau', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (336, N'Pali', N'pli', N'pli', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (337, N'Pampanga', N'pam', N'pam', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (338, N'Pangasinan', N'pag', N'pag', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (339, N'Panjabi', N'pan', N'pan', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (340, N'Papiamento', N'pap', N'pap', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (341, N'Papuan (Other)', N'paa', N'paa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (342, N'Persian', N'per', N'fas', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (343, N'Persian, Old (ca.600-400)', N'peo', N'peo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (344, N'Philippine (Other)', N'phi', N'phi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (345, N'Phoenician', N'phn', N'phn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (346, N'Pohnpeian', N'pon', N'pon', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (347, N'Polish', N'pol', N'pol', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (348, N'Portuguese', N'por', N'por', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (349, N'Prakrit languages', N'pra', N'pra', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (350, N'Provençal', N'oci', N'oci', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (351, N'Provençal, Old (to 1500)', N'pro', N'pro', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (352, N'Pushto', N'pus', N'pus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (353, N'Quechua', N'que', N'que', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (354, N'Raeto-Romance', N'roh', N'roh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (355, N'Rajasthani', N'raj', N'raj', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (356, N'Rapanui', N'rap', N'rap', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (357, N'Rarotongan', N'rar', N'rar', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (358, N'Reserved for local user', N'qtz', N'qtz', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (359, N'Romance (Other)', N'roa', N'roa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (360, N'Romanian', N'rum', N'ron', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (361, N'Romany', N'rom', N'rom', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (362, N'Rundi', N'run', N'run', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (363, N'Russian', N'rus', N'rus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (364, N'Salishan languages', N'sal', N'sal', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (365, N'Samaritan Aramaic', N'sam', N'sam', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (366, N'Sami languages (Other)', N'smi', N'smi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (367, N'Samoan', N'smo', N'smo', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (368, N'Sandawe', N'sad', N'sad', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (369, N'Sango', N'sag', N'sag', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (370, N'Sanskrit', N'san', N'san', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (371, N'Santali', N'sat', N'sat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (372, N'Sardinian', N'srd', N'srd', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (373, N'Sasak', N'sas', N'sas', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (374, N'Saxon, Low', N'nds', N'nds', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (375, N'Scots', N'sco', N'sco', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (376, N'Scottish Gaelic', N'gla', N'gla', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (377, N'Selkup', N'sel', N'sel', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (378, N'Semitic (Other)', N'sem', N'sem', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (379, N'Serbian', N'scc', N'srp', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (380, N'Serer', N'srr', N'srr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (381, N'Shan', N'shn', N'shn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (382, N'Shona', N'sna', N'sna', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (383, N'Sichuan Yi', N'iii', N'iii', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (384, N'Sidamo', N'sid', N'sid', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (385, N'Sign languages', N'sgn', N'sgn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (386, N'Siksika', N'bla', N'bla', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (387, N'Sindhi', N'snd', N'snd', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (388, N'Sinhalese', N'sin', N'sin', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (389, N'Sino-Tibetan (Other)', N'sit', N'sit', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (390, N'Siouan languages', N'sio', N'sio', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (391, N'Skolt Sami', N'sms', N'sms', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (392, N'Slave (Athapascan)', N'den', N'den', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (393, N'Slavic (Other)', N'sla', N'sla', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (394, N'Slovak', N'slo', N'slk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (395, N'Slovenian', N'slv', N'slv', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (396, N'Sogdian', N'sog', N'sog', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (397, N'Somali', N'som', N'som', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (398, N'Songhai', N'son', N'son', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (399, N'Soninke', N'snk', N'snk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (400, N'Sorbian languages', N'wen', N'wen', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (401, N'Sotho, Northern', N'nso', N'nso', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (402, N'Sotho, Southern', N'sot', N'sot', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (403, N'South American Indian (Other)', N'sai', N'sai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (404, N'Southern Sami', N'sma', N'sma', 0)
GO
print 'Processed 400 total records'
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (405, N'South Ndebele', N'nbl', N'nbl', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (406, N'Spanish', N'spa', N'spa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (407, N'Sukuma', N'suk', N'suk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (408, N'Sumerian', N'sux', N'sux', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (409, N'Sundanese', N'sun', N'sun', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (410, N'Susu', N'sus', N'sus', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (411, N'Swahili', N'swa', N'swa', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (412, N'Swati', N'ssw', N'ssw', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (413, N'Swedish', N'swe', N'swe', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (414, N'Syriac', N'syr', N'syr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (415, N'Tagalog', N'tgl', N'tgl', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (416, N'Tahitian', N'tah', N'tah', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (417, N'Tai (Other)', N'tai', N'tai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (418, N'Tajik', N'tgk', N'tgk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (419, N'Tamashek', N'tmh', N'tmh', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (420, N'Tamil', N'tam', N'tam', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (421, N'Tatar', N'tat', N'tat', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (422, N'Telugu', N'tel', N'tel', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (423, N'Tereno', N'ter', N'ter', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (424, N'Tetum', N'tet', N'tet', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (425, N'Thai', N'tha', N'tha', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (426, N'Tibetan', N'tib', N'bod', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (427, N'Tigre', N'tig', N'tig', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (428, N'Tigrinya', N'tir', N'tir', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (429, N'Timne', N'tem', N'tem', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (430, N'Tiv', N'tiv', N'tiv', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (431, N'Tlingit', N'tli', N'tli', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (432, N'Tok Pisin', N'tpi', N'tpi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (433, N'Tokelau', N'tkl', N'tkl', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (434, N'Tonga (Nyasa)', N'tog', N'tog', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (435, N'Tonga (Tonga Islands)', N'ton', N'ton', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (436, N'Tsimshian', N'tsi', N'tsi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (437, N'Tsonga', N'tso', N'tso', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (438, N'Tswana', N'tsn', N'tsn', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (439, N'Tumbuka', N'tum', N'tum', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (440, N'Tupi languages', N'tup', N'tup', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (441, N'Turkish', N'tur', N'tur', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (442, N'Turkish, Ottoman (1500-1928)', N'ota', N'ota', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (443, N'Turkmen', N'tuk', N'tuk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (444, N'Tuvalu', N'tvl', N'tvl', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (445, N'Tuvinian', N'tyv', N'tyv', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (446, N'Twi', N'twi', N'twi', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (447, N'Ugaritic', N'uga', N'uga', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (448, N'Uighur', N'uig', N'uig', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (449, N'Ukrainian', N'ukr', N'ukr', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (450, N'Umbundu', N'umb', N'umb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (451, N'Undetermined', N'und', N'und', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (452, N'Urdu', N'urd', N'urd', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (453, N'Uzbek', N'uzb', N'uzb', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (454, N'Vai', N'vai', N'vai', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (455, N'Venda', N'ven', N'ven', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (456, N'Vietnamese', N'vie', N'vie', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (457, N'Volapük', N'vol', N'vol', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (458, N'Votic', N'vot', N'vot', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (459, N'Wakashan languages', N'wak', N'wak', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (460, N'Walamo', N'wal', N'wal', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (461, N'Walloon', N'wln', N'wln', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (462, N'Waray', N'war', N'war', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (463, N'Washo', N'was', N'was', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (464, N'Welsh', N'wel', N'cym', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (465, N'Wolof', N'wol', N'wol', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (466, N'Xhosa', N'xho', N'xho', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (467, N'Yakut', N'sah', N'sah', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (468, N'Yao', N'yao', N'yao', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (469, N'Yapese', N'yap', N'yap', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (470, N'Yiddish', N'yid', N'yid', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (471, N'Yoruba', N'yor', N'yor', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (472, N'Yupik languages', N'ypk', N'ypk', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (473, N'Zande', N'znd', N'znd', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (474, N'Zapotec', N'zap', N'zap', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (475, N'Zenaga', N'zen', N'zen', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (476, N'Zhuang', N'zha', N'zha', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (477, N'Zulu', N'zul', N'zul', 0)
INSERT [dbo].[Iso639] ([ID], [LanguageNameEnglish], [BibliographicCodeAlpha3], [TerminologyCodeAlpha3], [isDeleted]) VALUES (478, N'Zuni', N'zun', N'zun', 0)
SET IDENTITY_INSERT [dbo].[Iso639] OFF
/****** Object:  Table [dbo].[Iso3166]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iso3166](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryNameEnglish] [nvarchar](50) NOT NULL,
	[CodeAlpha2] [nvarchar](2) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Iso3166] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Iso3166] ON
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (1, N'ANDORRA', N'AD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (2, N'UNITED ARAB EMIRATES', N'AE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (3, N'AFGHANISTAN', N'AF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (4, N'ANTIGUA AND BARBUDA', N'AG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (5, N'ANGUILLA', N'AI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (6, N'ALBANIA', N'AL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (7, N'ARMENIA', N'AM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (8, N'NETHERLANDS ANTILLES', N'AN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (9, N'ANGOLA', N'AO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (10, N'ANTARCTICA', N'AQ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (11, N'ARGENTINA', N'AR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (12, N'AMERICAN SAMOA', N'AS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (13, N'AUSTRIA', N'AT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (14, N'AUSTRALIA', N'AU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (15, N'ARUBA', N'AW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (16, N'AZERBAIJAN', N'AZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (17, N'BOSNIA AND HERZEGOVINA', N'BA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (18, N'BARBADOS', N'BB', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (19, N'BANGLADESH', N'BD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (20, N'BELGIUM', N'BE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (21, N'BURKINA FASO', N'BF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (22, N'BULGARIA', N'BG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (23, N'BAHRAIN', N'BH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (24, N'BURUNDI', N'BI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (25, N'BENIN', N'BJ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (26, N'BERMUDA', N'BM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (27, N'BRUNEI DARUSSALAM', N'BN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (28, N'BOLIVIA', N'BO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (29, N'BRAZIL', N'BR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (30, N'BAHAMAS', N'BS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (31, N'BHUTAN', N'BT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (32, N'BOUVET ISLAND', N'BV', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (33, N'BOTSWANA', N'BW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (34, N'BELARUS', N'BY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (35, N'BELIZE', N'BZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (36, N'CANADA', N'CA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (37, N'COCOS (KEELING) ISLANDS', N'CC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (38, N'CONGO, THE DEMOCRATIC REPUBLIC OF THE', N'CD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (39, N'CENTRAL AFRICAN REPUBLIC', N'CF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (40, N'CONGO', N'CG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (41, N'SWITZERLAND', N'CH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (42, N'COTE D''IVOIRE', N'CI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (43, N'COOK ISLANDS', N'CK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (44, N'CHILE', N'CL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (45, N'CAMEROON', N'CM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (46, N'CHINA', N'CN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (47, N'COLOMBIA', N'CO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (48, N'COSTA RICA', N'CR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (49, N'CUBA', N'CU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (50, N'CAPE VERDE', N'CV', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (51, N'CHRISTMAS ISLAND', N'CX', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (52, N'CYPRUS', N'CY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (53, N'CZECH REPUBLIC', N'CZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (54, N'GERMANY', N'DE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (55, N'DJIBOUTI', N'DJ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (56, N'DENMARK', N'DK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (57, N'DOMINICA', N'DM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (58, N'DOMINICAN REPUBLIC', N'DO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (59, N'ALGERIA', N'DZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (60, N'ECUADOR', N'EC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (61, N'ESTONIA', N'EE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (62, N'EGYPT', N'EG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (63, N'WESTERN SAHARA', N'EH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (64, N'ERITREA', N'ER', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (65, N'SPAIN', N'ES', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (66, N'ETHIOPIA', N'ET', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (67, N'FINLAND', N'FI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (68, N'FIJI', N'FJ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (69, N'FALKLAND ISLANDS (MALVINAS)', N'FK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (70, N'MICRONESIA, FEDERATED STATES OF', N'FM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (71, N'FAROE ISLANDS', N'FO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (72, N'FRANCE', N'FR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (73, N'GABON', N'GA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (74, N'UNITED KINGDOM', N'GB', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (75, N'GRENADA', N'GD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (76, N'GEORGIA', N'GE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (77, N'FRENCH GUIANA', N'GF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (78, N'GHANA', N'GH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (79, N'GIBRALTAR', N'GI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (80, N'GREENLAND', N'GL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (81, N'GAMBIA', N'GM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (82, N'GUINEA', N'GN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (83, N'GUADELOUPE', N'GP', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (84, N'EQUATORIAL GUINEA', N'GQ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (85, N'GREECE', N'GR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (86, N'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', N'GS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (87, N'GUATEMALA', N'GT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (88, N'GUAM', N'GU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (89, N'GUINEA-BISSAU', N'GW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (90, N'GUYANA', N'GY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (91, N'HONG KONG', N'HK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (92, N'HEARD ISLAND AND MCDONALD ISLANDS', N'HM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (93, N'HONDURAS', N'HN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (94, N'CROATIA', N'HR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (95, N'HAITI', N'HT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (96, N'HUNGARY', N'HU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (97, N'INDONESIA', N'ID', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (98, N'IRELAND', N'IE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (99, N'ISRAEL', N'IL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (100, N'INDIA', N'IN', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (101, N'BRITISH INDIAN OCEAN TERRITORY', N'IO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (102, N'IRAQ', N'IQ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (103, N'IRAN, ISLAMIC REPUBLIC OF', N'IR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (104, N'ICELAND', N'IS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (105, N'ITALY', N'IT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (106, N'JAMAICA', N'JM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (107, N'JORDAN', N'JO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (108, N'JAPAN', N'JP', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (109, N'KENYA', N'KE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (110, N'KYRGYZSTAN', N'KG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (111, N'CAMBODIA', N'KH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (112, N'KIRIBATI', N'KI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (113, N'COMOROS', N'KM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (114, N'SAINT KITTS AND NEVIS', N'KN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (115, N'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', N'KP', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (116, N'KOREA, REPUBLIC OF', N'KR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (117, N'KUWAIT', N'KW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (118, N'CAYMAN ISLANDS', N'KY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (119, N'KAZAKHSTAN', N'KZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (120, N'LAO PEOPLE''S DEMOCRATIC REPUBLIC', N'LA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (121, N'LEBANON', N'LB', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (122, N'SAINT LUCIA', N'LC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (123, N'LIECHTENSTEIN', N'LI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (124, N'SRI LANKA', N'LK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (125, N'LIBERIA', N'LR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (126, N'LESOTHO', N'LS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (127, N'LITHUANIA', N'LT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (128, N'LUXEMBOURG', N'LU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (129, N'LATVIA', N'LV', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (130, N'LIBYAN ARAB JAMAHIRIYA', N'LY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (131, N'MOROCCO', N'MA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (132, N'MONACO', N'MC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (133, N'MOLDOVA, REPUBLIC OF', N'MD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (134, N'MADAGASCAR', N'MG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (135, N'MARSHALL ISLANDS', N'MH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (136, N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', N'MK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (137, N'MALI', N'ML', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (138, N'MYANMAR', N'MM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (139, N'MONGOLIA', N'MN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (140, N'MACAO', N'MO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (141, N'NORTHERN MARIANA ISLANDS', N'MP', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (142, N'MARTINIQUE', N'MQ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (143, N'MAURITANIA', N'MR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (144, N'MONTSERRAT', N'MS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (145, N'MALTA', N'MT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (146, N'MAURITIUS', N'MU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (147, N'MALDIVES', N'MV', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (148, N'MALAWI', N'MW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (149, N'MEXICO', N'MX', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (150, N'MALAYSIA', N'MY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (151, N'MOZAMBIQUE', N'MZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (152, N'NAMIBIA', N'NA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (153, N'NEW CALEDONIA', N'NC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (154, N'NIGER', N'NE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (155, N'NORFOLK ISLAND', N'NF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (156, N'NIGERIA', N'NG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (157, N'NICARAGUA', N'NI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (158, N'NETHERLANDS', N'NL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (159, N'NORWAY', N'NO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (160, N'NEPAL', N'NP', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (161, N'NAURU', N'NR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (162, N'NIUE', N'NU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (163, N'NEW ZEALAND', N'NZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (164, N'OMAN', N'OM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (165, N'PANAMA', N'PA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (166, N'PERU', N'PE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (167, N'FRENCH POLYNESIA', N'PF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (168, N'PAPUA NEW GUINEA', N'PG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (169, N'PHILIPPINES', N'PH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (170, N'PAKISTAN', N'PK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (171, N'POLAND', N'PL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (172, N'SAINT PIERRE AND MIQUELON', N'PM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (173, N'PITCAIRN', N'PN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (174, N'PUERTO RICO', N'PR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (175, N'PALESTINIAN TERRITORY, OCCUPIED', N'PS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (176, N'PORTUGAL', N'PT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (177, N'PALAU', N'PW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (178, N'PARAGUAY', N'PY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (179, N'QATAR', N'QA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (180, N'REUNION', N'RE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (181, N'ROMANIA', N'RO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (182, N'RUSSIAN FEDERATION', N'RU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (183, N'RWANDA', N'RW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (184, N'SAUDI ARABIA', N'SA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (185, N'SOLOMON ISLANDS', N'SB', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (186, N'SEYCHELLES', N'SC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (187, N'SUDAN', N'SD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (188, N'SWEDEN', N'SE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (189, N'SINGAPORE', N'SG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (190, N'SAINT HELENA', N'SH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (191, N'SLOVENIA', N'SI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (192, N'SVALBARD AND JAN MAYEN', N'SJ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (193, N'SLOVAKIA', N'SK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (194, N'SIERRA LEONE', N'SL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (195, N'SAN MARINO', N'SM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (196, N'SENEGAL', N'SN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (197, N'SOMALIA', N'SO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (198, N'SURINAME', N'SR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (199, N'SAO TOME AND PRINCIPE', N'ST', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (200, N'EL SALVADOR', N'SV', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (201, N'SYRIAN ARAB REPUBLIC', N'SY', 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (202, N'SWAZILAND', N'SZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (203, N'TURKS AND CAICOS ISLANDS', N'TC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (204, N'CHAD', N'TD', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (205, N'FRENCH SOUTHERN TERRITORIES', N'TF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (206, N'TOGO', N'TG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (207, N'THAILAND', N'TH', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (208, N'TAJIKISTAN', N'TJ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (209, N'TOKELAU', N'TK', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (210, N'TIMOR-LESTE', N'TL', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (211, N'TURKMENISTAN', N'TM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (212, N'TUNISIA', N'TN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (213, N'TONGA', N'TO', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (214, N'TURKEY', N'TR', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (215, N'TRINIDAD AND TOBAGO', N'TT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (216, N'TUVALU', N'TV', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (217, N'TAIWAN, PROVINCE OF CHINA', N'TW', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (218, N'TANZANIA, UNITED REPUBLIC OF', N'TZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (219, N'UKRAINE', N'UA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (220, N'UGANDA', N'UG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (221, N'UNITED STATES MINOR OUTLYING ISLANDS', N'UM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (222, N'UNITED STATES', N'US', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (223, N'URUGUAY', N'UY', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (224, N'UZBEKISTAN', N'UZ', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (225, N'HOLY SEE (VATICAN CITY STATE)', N'VA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (226, N'SAINT VINCENT AND THE GRENADINES', N'VC', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (227, N'VENEZUELA', N'VE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (228, N'VIRGIN ISLANDS, BRITISH', N'VG', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (229, N'VIRGIN ISLANDS, U.S.', N'VI', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (230, N'VIET NAM', N'VN', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (231, N'VANUATU', N'VU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (232, N'WALLIS AND FUTUNA', N'WF', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (233, N'SAMOA', N'WS', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (234, N'YEMEN', N'YE', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (235, N'MAYOTTE', N'YT', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (236, N'YUGOSLAVIA', N'YU', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (237, N'SOUTH AFRICA', N'ZA', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (238, N'ZAMBIA', N'ZM', 0)
INSERT [dbo].[Iso3166] ([ID], [CountryNameEnglish], [CodeAlpha2], [isDeleted]) VALUES (239, N'ZIMBABWE', N'ZW', 0)
SET IDENTITY_INSERT [dbo].[Iso3166] OFF
/****** Object:  Table [dbo].[Iso15924]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iso15924](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ScriptNameEnglish] [nvarchar](50) NOT NULL,
	[CodeAlpha2] [nvarchar](2) NOT NULL,
	[CodeAlpha3] [nvarchar](3) NOT NULL,
	[CodeNumeric] [numeric](18, 0) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Iso15924] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Iso15924] ON
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (1, N'::CodeAlpha Qt, Qat:: has no Name in ISO15924', N'Qt', N'Qat', CAST(919 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (2, N'(alias for Han + Hiragana + Katakana)', N'Ja', N'Jap', CAST(930 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (3, N'(alias for Hangul + Han)', N'Kh', N'Khn', CAST(931 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (4, N'(alias for Hiragana + Katakana)', N'Xk', N'Xkn', CAST(412 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (5, N'Arabic', N'Ar', N'Ara', CAST(160 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (6, N'Aramaic', N'Am', N'Ama', CAST(130 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (7, N'Armenian', N'Hy', N'Hye', CAST(230 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (8, N'Avestan', N'Av', N'Ave', CAST(151 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (9, N'Batak', N'Bt', N'Btk', CAST(365 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (10, N'Bengali', N'Bn', N'Ben', CAST(325 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (11, N'Blissymbols', N'By', N'Bys', CAST(550 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (12, N'Bopomofo', N'Bp', N'Bpm', CAST(285 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (13, N'Brahmi (Ashoka)', N'Bh', N'Bhm', CAST(300 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (14, N'Braille', N'Br', N'Brl', CAST(570 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (15, N'Buginese (Makassar)', N'Bu', N'Bug', CAST(367 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (16, N'Buhid', N'Bi', N'Bid', CAST(372 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (17, N'Burmese', N'My', N'Mya', CAST(350 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (18, N'Cham', N'Ca', N'Cam', CAST(358 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (19, N'Cherokee syllabary', N'Jl', N'Jlg', CAST(445 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (20, N'Cirth', N'Ci', N'Cir', CAST(291 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (21, N'Code for uncoded script', N'Zz', N'Zzz', CAST(999 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (22, N'Code for undetermined script', N'Zy', N'Zyy', CAST(998 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (23, N'Code for unwritten languages', N'Zx', N'Zxx', CAST(997 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (24, N'Coptic', N'Co', N'Cop', CAST(205 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (25, N'Cuneiform, Old Persian', N'Xf', N'Xfa', CAST(105 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (26, N'Cuneiform, Sumero-Akkadian', N'Xa', N'Xas', CAST(0 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (27, N'Cuneiform, Ugaritic', N'Xu', N'Xug', CAST(106 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (28, N'Cypriote syllabary', N'Cp', N'Cpr', CAST(403 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (29, N'Cypro-Minoan', N'Cm', N'Cmn', CAST(402 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (30, N'Cyrillic', N'Cy', N'Cyr', CAST(220 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (31, N'Deseret (Mormon)', N'Ds', N'Dsr', CAST(250 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (32, N'Devanagari (Nagari)', N'Dv', N'Dvn', CAST(315 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (33, N'Egyptian demotic', N'Ed', N'Egd', CAST(70 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (34, N'Egyptian hieratic', N'Eh', N'Egh', CAST(60 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (35, N'Egyptian hieroglyphs', N'Eg', N'Egy', CAST(50 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (36, N'Ethiopic', N'Et', N'Eth', CAST(430 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (37, N'Etruscan and Oscan', N'Eo', N'Eos', CAST(210 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (38, N'Georgian (Mxedruli)', N'Ka', N'Kam', CAST(241 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (39, N'Georgian (Xucuri)', N'Kx', N'Kax', CAST(240 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (40, N'Glagolitic', N'Gl', N'Glg', CAST(225 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (41, N'Gothic', N'Gt', N'Gth', CAST(206 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (42, N'Greek', N'El', N'Ell', CAST(200 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (43, N'Gujarati', N'Gu', N'Guj', CAST(320 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (44, N'Gurmukhi', N'Gm', N'Gmu', CAST(310 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (45, N'Han ideographs', N'Ha', N'Han', CAST(500 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (46, N'Hangul', N'Hg', N'Hgl', CAST(420 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (47, N'Hanunóo', N'Ho', N'Hoo', CAST(371 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (48, N'Hebrew', N'He', N'Heb', CAST(125 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (49, N'Hiragana', N'Hr', N'Hrg', CAST(410 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (50, N'Indus Valley', N'Iv', N'Ivl', CAST(610 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (51, N'Javanese', N'Jw', N'Jwi', CAST(360 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (52, N'Kannada', N'Kn', N'Kan', CAST(345 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (53, N'Karenni (Kayah Li)', N'Kr', N'Krn', CAST(357 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (54, N'Katakana', N'Kk', N'Kkn', CAST(411 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (55, N'Kharoshthi', N'Ks', N'Kst', CAST(305 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (56, N'Khmer', N'Km', N'Khm', CAST(354 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (57, N'Klingon pIQaD', N'Pq', N'Pqd', CAST(295 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (58, N'Kök Turki runic', N'Hv', N'Hvn', CAST(175 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (59, N'Lao', N'Lo', N'Lao', CAST(356 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (60, N'Latin', N'La', N'Lat', CAST(217 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (61, N'Latin (Fraktur variant)', N'Lf', N'Laf', CAST(215 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (62, N'Latin (Gaelic variant)', N'Lg', N'Lag', CAST(216 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (63, N'Lepcha (Róng)', N'Lp', N'Lpc', CAST(335 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (64, N'Linear A', N'Na', N'Naa', CAST(400 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (65, N'Linear B', N'Nb', N'Nbb', CAST(401 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (66, N'Malayalam', N'Ml', N'Mlm', CAST(347 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (67, N'Mandaean', N'Md', N'Mda', CAST(140 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (68, N'Mayan hieroglyphs', N'Mh', N'May', CAST(90 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (69, N'Meroitic', N'Me', N'Mer', CAST(100 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (70, N'Mongolian', N'Mn', N'Mon', CAST(145 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (71, N'Ogham', N'Og', N'Ogm', CAST(212 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (72, N'Old Church Slavonic', N'Ch', N'Chu', CAST(221 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (73, N'Old Hungarian runic', N'Hu', N'Hun', CAST(176 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (74, N'Old Permic', N'Pr', N'Prm', CAST(227 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (75, N'Oriya', N'Or', N'Ory', CAST(327 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (76, N'Osmanya', N'Os', N'Osm', CAST(260 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (77, N'Pahawh Hmong', N'Hm', N'Hmo', CAST(450 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (78, N'Pahlavi', N'Ph', N'Pah', CAST(150 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (79, N'Phaistos Disk', N'Ps', N'Pst', CAST(600 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (80, N'Phoenician', N'Ph', N'Phx', CAST(115 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (81, N'Pollard Phonetic', N'Pl', N'Pld', CAST(282 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (82, N'Reserved for private use', N'Qa', N'Qaa', CAST(900 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (83, N'Rongo-rongo', N'Rr', N'Rro', CAST(620 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (84, N'Runic (Germanic)', N'Rn', N'Rnr', CAST(211 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (85, N'Shavian (Shaw)', N'Sw', N'Sww', CAST(281 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (86, N'Sinhala', N'Si', N'Sin', CAST(348 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (87, N'South Arabian', N'Sa', N'Sar', CAST(110 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (88, N'Syriac', N'Sy', N'Syr', CAST(135 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (89, N'Tagalog', N'Tg', N'Tag', CAST(370 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (90, N'Tagbanwa', N'Tb', N'Tbw', CAST(373 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (91, N'Tamil', N'Ta', N'Tam', CAST(346 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (92, N'Telugu', N'Te', N'Tel', CAST(340 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (93, N'Tengwar', N'Tw', N'Twr', CAST(290 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (94, N'Thaana', N'Tn', N'Tna', CAST(170 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (95, N'Thai', N'Th', N'Tha', CAST(352 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (96, N'Tibetan', N'Bo', N'Bod', CAST(330 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (97, N'Tifinagh', N'Tf', N'Tfn', CAST(120 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (98, N'Unified Canadian Aboriginal Syllabics', N'Sl', N'Slb', CAST(440 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (99, N'Vai', N'Va', N'Vai', CAST(470 AS Numeric(18, 0)), 0)
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (100, N'Visible Speech', N'Vs', N'Vsp', CAST(280 AS Numeric(18, 0)), 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Iso15924] ([ID], [ScriptNameEnglish], [CodeAlpha2], [CodeAlpha3], [CodeNumeric], [isDeleted]) VALUES (101, N'Yi', N'Yi', N'Yii', CAST(460 AS Numeric(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[Iso15924] OFF
/****** Object:  Table [dbo].[Integ_Sistema]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integ_Sistema](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Sistema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Integ_Sistema] ON
INSERT [dbo].[Integ_Sistema] ([ID], [Designacao], [isDeleted]) VALUES (1, N'DocInPorto', 0)
SET IDENTITY_INSERT [dbo].[Integ_Sistema] OFF
/****** Object:  Table [dbo].[ListaModelosAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaModelosAvaliacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](768) NOT NULL,
	[DataInicio] [datetime] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ListaModelosAvaliacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimento]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimento](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CatCode] [nchar](3) NOT NULL,
	[IDEntidade] [bigint] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Notas] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Movimento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[MovimentoEntidade]    Script Date: 01/22/2010 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimentoEntidade](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](25) NOT NULL,
	[Entidade] [nvarchar](444) NOT NULL,
	[Activo] [bit] NOT NULL DEFAULT '1',
	[OutrosDados] [nvarchar](4000) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL DEFAULT '0',
 CONSTRAINT [PK_MovimentoEntidade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



/****** Object:  Table [dbo].[Modules]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BuiltInName] [nvarchar](20) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoClient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (1, N'Core', N'CORE', 0)
INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (2, N'Requisições', N'REQ', 0)
INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (3, N'Depósitos', N'DEP', 0)
INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (4, N'MIND', N'MIND', 0)
--INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (5, N'DocInPorto', N'DIP', 0)
INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (6, N'Licenças de obra', N'LicObr', 0)
--INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (7, N'Objetos digitais', N'ObjDig', 0)
--INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (8, N'FEDORA', N'FED', 0)
INSERT [dbo].[Modules] ([ID], [Name], [BuiltInName], [isDeleted]) VALUES (9, N'Integridade de Objetos Digitais', N'IntOD', 0)
/****** Object:  Table [dbo].[WebClientActivity]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebClientActivity](
	[ClientGUID] [nvarchar](36) NOT NULL,
	[LastSearch] [datetime] NOT NULL,
 CONSTRAINT [PK_WebClientActivity] PRIMARY KEY CLUSTERED 
(
	[ClientGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trustee]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trustee](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CatCode] [nchar](3) NOT NULL,
	[BuiltInTrustee] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsVisibleObject] [bit] NOT NULL,
	[IsVisibleFunction] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Trustee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Utilizador ou grupo de utilizadores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trustee'
GO
SET IDENTITY_INSERT [dbo].[Trustee] ON
INSERT [dbo].[Trustee] ([ID], [Name], [Description], [CatCode], [BuiltInTrustee], [IsActive], [IsVisibleObject], [IsVisibleFunction], [isDeleted]) VALUES (5, N'Admins', N'Utilizadores das versões cliente com privilégios máximos.', N'GRP', 1, 1, 0, 0, 0)
INSERT [dbo].[Trustee] ([ID], [Name], [Description], [CatCode], [BuiltInTrustee], [IsActive], [IsVisibleObject], [IsVisibleFunction], [isDeleted]) VALUES (6, N'', N'Utilizador das versões monoposto com privilégios máximos.', N'USR', 1, 1, 0, 0, 0)
INSERT [dbo].[Trustee] ([ID], [Name], [Description], [CatCode], [BuiltInTrustee], [IsActive], [IsVisibleObject], [IsVisibleFunction], [isDeleted]) VALUES (9, N'admin', N'Utilizador das versões cliente com privilégios máximos.', N'USR', 1, 1, 0, 0, 0)
INSERT [dbo].[Trustee] ([ID], [Name], [Description], [CatCode], [BuiltInTrustee], [IsActive], [IsVisibleObject], [IsVisibleFunction], [isDeleted]) VALUES (10, N'ACESSO_COMPLETO', N'Grupo ao qual todos os utilizadores internos fazem parte.', N'GRP', 1, 1, 0, 0, 0)
INSERT [dbo].[Trustee] ([ID], [Name], [Description], [CatCode], [BuiltInTrustee], [IsActive], [IsVisibleObject], [IsVisibleFunction], [isDeleted]) VALUES (11, N'ACESSO_PUBLICADOS', N'Grupo ao qual todos os utilizadores externos fazem parte.', N'GRP', 1, 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Trustee] OFF
/****** Object:  Table [dbo].[TipoTradicaoDocumental]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTradicaoDocumental](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoTradicaoDocumental] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoTradicaoDocumental] ON
INSERT [dbo].[TipoTradicaoDocumental] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Original', 0)
INSERT [dbo].[TipoTradicaoDocumental] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Cópia', 0)
INSERT [dbo].[TipoTradicaoDocumental] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Minuta', 0)
INSERT [dbo].[TipoTradicaoDocumental] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Resumo', 0)
SET IDENTITY_INSERT [dbo].[TipoTradicaoDocumental] OFF
/****** Object:  Table [dbo].[TipoTecnicasDeRegisto]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTecnicasDeRegisto](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoTecnicasDeRegisto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoTecnicasDeRegisto] ON
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Manuscrito', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Impresso', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Gravura', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Fotografia', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Microfilme', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Filme', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (7, N'Áudio', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (8, N'Audiovisual', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (9, N'Magnético', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (10, N'Ótico', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (11, N'Multimédia', 0)
INSERT [dbo].[TipoTecnicasDeRegisto] ([ID], [Designacao], [isDeleted]) VALUES (12, N'Outra', 0)
SET IDENTITY_INSERT [dbo].[TipoTecnicasDeRegisto] OFF
/****** Object:  Table [dbo].[TipoTecnicaRegisto]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTecnicaRegisto](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoTecnicaRegisto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoTecnicaRegisto_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoTecnicaRegisto] ON
INSERT [dbo].[TipoTecnicaRegisto] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Manuscrito', 0)
INSERT [dbo].[TipoTecnicaRegisto] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Impresso', 0)
INSERT [dbo].[TipoTecnicaRegisto] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Gravura', 0)
INSERT [dbo].[TipoTecnicaRegisto] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Fotografia', 0)
INSERT [dbo].[TipoTecnicaRegisto] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Microfilme', 0)
INSERT [dbo].[TipoTecnicaRegisto] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Filme', 0)
SET IDENTITY_INSERT [dbo].[TipoTecnicaRegisto] OFF
/****** Object:  Table [dbo].[TipoSuporte]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSuporte](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoSuporte] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoSuporte_Designacao] UNIQUE NONCLUSTERED 
(
	[Designacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forma de suporte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoSuporte'
GO
SET IDENTITY_INSERT [dbo].[TipoSuporte] ON
INSERT [dbo].[TipoSuporte] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Livro', 0)
INSERT [dbo].[TipoSuporte] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Página', 0)
SET IDENTITY_INSERT [dbo].[TipoSuporte] OFF
/****** Object:  Table [dbo].[TipoSubDensidade]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSubDensidade](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[IDTipoDensidade] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoSubDensidade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoSubDensidade] ON
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (1, N'', 2, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (2, N'Duplicada', 2, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (3, N'', 3, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (4, N'Parcelar', 3, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (5, N'Resumida', 3, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (6, N'Cumulativa', 3, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (7, N'Duplicada', 3, 0)
INSERT [dbo].[TipoSubDensidade] ([ID], [Designacao], [IDTipoDensidade], [isDeleted]) VALUES (8, N'', 1, 0)
SET IDENTITY_INSERT [dbo].[TipoSubDensidade] OFF
/****** Object:  Table [dbo].[TrusteeUser]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrusteeUser](
	[ID] [bigint] NOT NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](2000) NULL,
	[IsAuthority] [bit] NOT NULL,
	[IDTrusteeUserDefaultAuthority] [bigint] NULL,
	[IsLDAPUser] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Autor por Omissão' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TrusteeUser', @level2type=N'COLUMN',@level2name=N'FullName'
GO
INSERT [dbo].[TrusteeUser] ([ID], [Password], [FullName], [IsAuthority], [IDTrusteeUserDefaultAuthority], [IsLDAPUser], [isDeleted]) VALUES (6, N'E10305995DB91FDCC9634CFCDA4F07EA', N'Utilizador local', 1, NULL, 0, 0)
INSERT [dbo].[TrusteeUser] ([ID], [Password], [FullName], [IsAuthority], [IDTrusteeUserDefaultAuthority], [IsLDAPUser], [isDeleted]) VALUES (9, N'8F8700953DC062D01818F106ACC80613', N'Administrador', 1, NULL, 0, 0)
/****** Object:  Table [dbo].[TipoNivelRelacionado]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNivelRelacionado](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDTipoNivel] [bigint] NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Designacao] [nvarchar](256) NOT NULL,
	[Recursivo] [numeric](18, 0) NULL,
	[GUIOrder] [numeric](18, 0) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoNivel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TipoNivelRelacionado] ON
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (1, 1, N'ED', N'Entidade detentora', CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (2, 1, N'GA', N'Grupo de arquivos', CAST(0 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (3, 2, N'A', N'Arquivo', CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (4, 2, N'SA', N'Subarquivo', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (5, 2, N'SC', N'Secção', CAST(0 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (6, 2, N'SSC', N'Subsecção', NULL, CAST(6 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (7, 3, N'SR', N'Série', CAST(0 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (8, 3, N'SSR', N'Subsérie', CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (9, 3, N'D', N'Documento/Processo', CAST(0 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (10, 3, N'SD', N'Documento subordinado/Ato informacional', CAST(0 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), 0)
INSERT [dbo].[TipoNivelRelacionado] ([ID], [IDTipoNivel], [Codigo], [Designacao], [Recursivo], [GUIOrder], [isDeleted]) VALUES (11, 4, N'UF', N'Unidade física', CAST(0 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[TipoNivelRelacionado] OFF
/****** Object:  Table [dbo].[TrusteeGroup]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrusteeGroup](
	[ID] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TrusteeGroup] ([ID], [isDeleted]) VALUES (5, 0)
INSERT [dbo].[TrusteeGroup] ([ID], [isDeleted]) VALUES (10, 0)
INSERT [dbo].[TrusteeGroup] ([ID], [isDeleted]) VALUES (11, 0)
/****** Object:  Table [dbo].[DatabaseVersion]    Script Date: 09/27/2010 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseVersion](
	[DBVersion] [nvarchar](30) NOT NULL
) ON [PRIMARY]
INSERT INTO [dbo].[DatabaseVersion] VALUES ('')
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDTipoNivel] [bigint] NOT NULL,
	[Codigo] [nvarchar](50) COLLATE Latin1_General_CS_AS NOT NULL,
	[CatCode] [nchar](6) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de referência' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nivel', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
/****** Object:  Table [dbo].[ModelosAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelosAvaliacao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDListaModelosAvaliacao] [bigint] NOT NULL,
	[Designacao] [nvarchar](768) NOT NULL,
	[PrazoConservacao] [smallint] NULL,
	[Preservar] [bit] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ModelosAvaliacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenseModules]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseModules](
	[SequenceNumber] [int] NOT NULL,
	[GrantDate] [datetime] NOT NULL,
	[IDModule] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicenseModules] PRIMARY KEY CLUSTERED 
(
	[SequenceNumber] ASC,
	[GrantDate] ASC,
	[IDModule] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Integ_TipoEntidade]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integ_TipoEntidade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoEntidade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Integ_TipoEntidade] ON
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (1, N'Ideográfico', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (2, N'Onomástico', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (3, N'Nome geográfico/Topónimo citadino', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (4, N'Entidade produtora', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (5, N'Tipologia informacional', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (6, N'Documento', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (7, N'Documento composto', 0)
INSERT [dbo].[Integ_TipoEntidade] ([ID], [Designacao], [isDeleted]) VALUES (8, N'Documento anexo', 0)

SET IDENTITY_INSERT [dbo].[Integ_TipoEntidade] OFF


/****** Object:  Table [dbo].[TipoTipologias]    Script Date: 11/09/2009 14:38:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoTipologias](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BuiltInName] [nvarchar](768) NOT NULL,
	[Designacao]  [nvarchar](768) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoTipologias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO

ALTER TABLE [dbo].[TipoTipologias] ADD  CONSTRAINT [DF_TipoTipologias_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

INSERT INTO [TipoTipologias] ([BuiltInName] , [Designacao], [isDeleted])
     VALUES ('PROCESSO_DE_OBRAS', 'Processo de obras' , 0)
GO

/****** Object:  Table [dbo].[ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControloAut](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Autorizado] [bit] NOT NULL,
	[Completo] [bit] NOT NULL,
	[IDTipoNoticiaAut] [bigint] NOT NULL,
	[NotaExplicativa] [ntext] NULL,
	[IDIso639p2] [bigint] NULL,
	[IDIso15924] [bigint] NULL,
	[ChaveColectividade] [nvarchar](256) NULL,
	[ChaveRegisto] [nvarchar](256) NULL,
	[RegrasConvencoes] [ntext] NULL,
	[Observacoes] [ntext] NULL,
	[DescHistoria] [ntext] NULL,
	[DescZonaGeografica] [ntext] NULL,
	[DescEstatutoLegal] [ntext] NULL,
	[DescOcupacoesActividades] [ntext] NULL,
	[DescEnquadramentoLegal] [ntext] NULL,
	[DescEstruturaInterna] [ntext] NULL,
	[DescContextoGeral] [ntext] NULL,
	[DescOutraInformacaoRelevante] [ntext] NULL,
	[IDTipoTipologia]  [bigint] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ControloAut]  WITH CHECK ADD  CONSTRAINT [FK_ControloAut_TipoTipologias] FOREIGN KEY([IDTipoTipologia])
REFERENCES [dbo].[TipoTipologias] ([ID])

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Validado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'Autorizado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Completo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'Completo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Língua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'IDIso639p2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alfabeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'IDIso15924'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Único' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'ChaveColectividade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Regras e/ou Convenções' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'RegrasConvencoes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fontes / Observações' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'Observacoes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'História' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescHistoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Zona Geográfica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescZonaGeografica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estatuto Legal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescEstatutoLegal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Funções, Ocupações e Atividades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescOcupacoesActividades'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Enquadramento Legal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescEnquadramentoLegal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estrutura Interna' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescEstruturaInterna'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contexto Geral' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescContextoGeral'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Outra Informação Relevante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut', @level2type=N'COLUMN',@level2name=N'DescOutraInformacaoRelevante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Controlo de autoridade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAut'
GO
/****** Object:  Table [dbo].[ClientActivity]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientActivity](
	[SequenceNumber] [int] NOT NULL,
	[GrantDate] [datetime] NOT NULL,
	[ClientGUID] [nvarchar](36) NOT NULL,
	[SessionGUID] [nvarchar](36) NOT NULL,
	[LoginDate] [datetime] NOT NULL,
	[AccessDate] [datetime] NOT NULL,
	[LogoutDate] [datetime] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ClientActivity] PRIMARY KEY CLUSTERED 
(
	[SequenceNumber] ASC,
	[GrantDate] ASC,
	[ClientGUID] ASC,
	[SessionGUID] ASC,
	[LoginDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ClientActivity] ([SequenceNumber], [GrantDate], [ClientGUID], [SessionGUID], [LoginDate], [AccessDate], [LogoutDate], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'47587cf6-5126-4082-9608-43c876a43fff', N'0ca917df-59b5-4bf0-bfce-3109e3942d52', CAST(0x00009C14010C16A9 AS DateTime), CAST(0x00009C14010C4A07 AS DateTime), CAST(0x00009C14010C4A07 AS DateTime), 0)
INSERT [dbo].[ClientActivity] ([SequenceNumber], [GrantDate], [ClientGUID], [SessionGUID], [LoginDate], [AccessDate], [LogoutDate], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'47587cf6-5126-4082-9608-43c876a43fff', N'15d168e6-c4a3-4bd3-8bdc-356fa211a052', CAST(0x00009C14010C54C8 AS DateTime), CAST(0x00009C14010C7B94 AS DateTime), CAST(0x00009C14010C7B94 AS DateTime), 0)
INSERT [dbo].[ClientActivity] ([SequenceNumber], [GrantDate], [ClientGUID], [SessionGUID], [LoginDate], [AccessDate], [LogoutDate], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'47587cf6-5126-4082-9608-43c876a43fff', N'20597537-8350-4687-9868-57bcb0eb3213', CAST(0x00009C14010326C1 AS DateTime), CAST(0x00009C1401038B43 AS DateTime), CAST(0x00009C1401038B43 AS DateTime), 0)
INSERT [dbo].[ClientActivity] ([SequenceNumber], [GrantDate], [ClientGUID], [SessionGUID], [LoginDate], [AccessDate], [LogoutDate], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'47587cf6-5126-4082-9608-43c876a43fff', N'64b6201a-95f3-45b9-a206-bf69e647166c', CAST(0x00009C14010753B9 AS DateTime), CAST(0x00009C1401075A50 AS DateTime), CAST(0x00009C1401075A50 AS DateTime), 0)
INSERT [dbo].[ClientActivity] ([SequenceNumber], [GrantDate], [ClientGUID], [SessionGUID], [LoginDate], [AccessDate], [LogoutDate], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'47587cf6-5126-4082-9608-43c876a43fff', N'9addd00e-9cdc-4ddd-bd1f-b755eca75527', CAST(0x00009C14012142E2 AS DateTime), CAST(0x00009C14012149AF AS DateTime), CAST(0x00009C14012149AF AS DateTime), 0)
INSERT [dbo].[ClientActivity] ([SequenceNumber], [GrantDate], [ClientGUID], [SessionGUID], [LoginDate], [AccessDate], [LogoutDate], [isDeleted]) VALUES (1111111111, CAST(0x000071B500000000 AS DateTime), N'47587cf6-5126-4082-9608-43c876a43fff', N'f9b15188-56b7-4535-a848-86d2a52ccd41', CAST(0x00009C1401112391 AS DateTime), CAST(0x00009C140111B127 AS DateTime), CAST(0x00009C140111B127 AS DateTime), 0)
/****** Object:  Table [dbo].[TipoFunction]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFunction](
	[IDTipoFunctionGroup] [tinyint] NOT NULL,
	[idx] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[GUIOrder] [tinyint] NOT NULL,
	[IDTipoFunctionGroupContext] [tinyint] NULL,
	[IdxTipoFunctionGroupContext] [tinyint] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[IDTipoFunctionGroup] ASC,
	[idx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (1, 1, N'Descrição', N'GISA.EXE', N'GISA.FRDOIRecolha', 1, 5, 2, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (1, 2, N'Pesquisa', N'GISA.EXE', N'GISA.SlavePanelPesquisa', 4, 5, 5, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (1, 3, N'Requisições', N'GISA.EXE', N'GISA.SlavePanelRequisicoes', 2, 5, 12, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (1, 4, N'Devoluções', N'GISA.EXE', N'GISA.SlavePanelDevolucoes', 3, 5, 13, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (2, 1, N'Entidade produtora', N'GISA.EXE', N'GISA.FRDCAEntidadeProdutora', 1, 5, 3, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (2, 2, N'Conteúdo', N'GISA.EXE', N'GISA.FRDCAConteudo', 2, 5, 3, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (2, 3, N'Tipologia informacional', N'GISA.EXE', N'GISA.FRDCATipologiaInformacional', 3, 5, 3, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (3, 1, N'Descrição', N'GISA.EXE', N'GISA.FRDUnidadeFisica', 1, 5, 4, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (3, 2, N'Gestão de depósitos', N'GISA.EXE', N'GISA.SlavePanelDepositos', 2, 5, 11, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (3, 3, N'Pesquisa', N'GISA.EXE', N'GISA.SlavePanelPesquisaUF', 3, 5, 6, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (3, 30, N'Depósitos2', N'GISA.EXE', N'GISA.FRDDepositos', 4, 5, 30, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 2, N'Estrutura arquivística', N'GISA.EXE', N'GISA.MasterPanelSeries', 2, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 3, N'Controlo de autoridade', N'GISA.EXE', N'GISA.MasterPanelControloAut', 3, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 4, N'Unidades físicas', N'GISA.EXE', N'GISA.MasterPanelUnidadesFisicas', 4, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 5, N'Pesquisa', N'GISA.EXE', N'GISA.MasterPanelPesquisa', 5, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 6, N'Pesquisa de unidades físicas', N'GISA.EXE', N'GISA.MasterPanelPesquisaUF', 6, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 7, N'Grupos de utilizadores', N'GISA.EXE', N'GISA.MasterPanelTrusteeGroup', 7, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 8, N'Utilizadores', N'GISA.EXE', N'GISA.MasterPanelTrusteeUser', 8, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 9, N'Permissões por Módulo', N'GISA.EXE', N'GISA.MasterPanelPermissoesModulos', 9, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 10, N'Permissões pelo Plano de Classificação', N'GISA.EXE', N'GISA.MasterPanelPermissoesPlanoClassificacao', 10, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 11, N'Depósitos', N'GISA.EXE', N'GISA.MasterPanelDepositos', 11, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 12, N'Requisições', N'GISA.EXE', N'GISA.MasterPanelRequisicoes', 12, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 13, N'Devoluções', N'GISA.EXE', N'GISA.MasterPanelDevolucoes', 13, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 14, N'Permissões por Depósito', N'GISA.EXE', N'GISA.MasterPanelPermissoesDesposito', 14, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 15, N'Fedora', N'GISA.EXE', N'GISA.MasterPanelFedora', 15, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 16, N'Permissões por Objeto Digital', N'GISA.EXE', N'GISA.MasterPanelPermissoesObjDigital', 16, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 17, N'Imagens de Ilustração', N'GISA.EXE', N'GISA.MasterPanelNivelImagensIlustracao', 17, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (5, 30, N'Depósitos2', N'GISA.EXE', N'GISA.MasterPanelDepositos2', 30, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 1, N'Configuração global', N'GISA.EXE', N'GISA.MasterPanelAdminGlobal', 1, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 2, N'Grupos de utilizadores', N'GISA.EXE', N'GISA.SlavePanelTrusteeGroup', 2, 5, 7, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 3, N'Utilizadores', N'GISA.EXE', N'GISA.SlavePanelTrusteeUser', 3, 5, 8, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 4, N'Permissões por Módulo', N'GISA.EXE', N'GISA.SlavePanelPermissoesModulos', 4, 5, 9, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 5, N'Permissões pelo Plano de Classificação', N'GISA.EXE', N'GISA.SlavePanelPermissoesPlanoClassificacao', 5, 5, 10, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 6, N'Estatísticas', N'GISA.EXE', N'GISA.MasterPanelEstatisticas', 7, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 7, N'Permissões por Depósito', N'GISA.EXE', N'GISA.SlavePanelPermissoesDesposito', 6, 5, 14, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 8, N'Permissões por Objeto Digital', N'GISA.EXE', N'GISA.SlavePanelPermissoesObjDigital', 7, 5, 16, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (7, 9, N'Imagens de Ilustração', N'GISA.EXE', N'GISA.SlavePanelNivelImagensIlustracao', 8, 5, 17, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (8, 1, N'DocInPorto', N'GISA.EXE', N'GISA.MasterPanelDocInPorto', 1, NULL, NULL, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (9, 1, N'Fedora', N'GISA.EXE', N'GISA.SlavePanelFedora', 1, 5, 15, 0)
INSERT [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx], [Name], [ModuleName], [ClassName], [GUIOrder], [IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext], [isDeleted]) VALUES (9, 2, N'Estado da geração de PDFs', N'GISA.EXE', N'GISA.MasterPanelStatusObjDigital', 2, NULL, NULL, 0)
/****** Object:  Table [dbo].[TipoNoticiaATipoControloAForma]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNoticiaATipoControloAForma](
	[IDTipoNoticiaAut] [bigint] NOT NULL,
	[IDTipoControloAutForma] [bigint] NOT NULL,
	[GUIOrder] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoNoticiaAutTipoControloAutForma] PRIMARY KEY CLUSTERED 
(
	[IDTipoNoticiaAut] ASC,
	[IDTipoControloAutForma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (1, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (1, 2, 2, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (1, 3, 3, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (1, 4, 4, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (2, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (2, 2, 2, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (2, 3, 3, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (2, 4, 4, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (3, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (3, 2, 2, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (3, 3, 3, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (3, 4, 4, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (4, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (4, 2, 2, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (4, 3, 3, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (4, 4, 4, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (5, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (5, 4, 2, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (6, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (7, 1, 1, 0)
INSERT [dbo].[TipoNoticiaATipoControloAForma] ([IDTipoNoticiaAut], [IDTipoControloAutForma], [GUIOrder], [isDeleted]) VALUES (8, 1, 1, 0)
/****** Object:  Table [dbo].[NivelTipoOperation]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelTipoOperation](
	[IDTipoOperation] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelTipoOperation] PRIMARY KEY CLUSTERED 
(
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NivelTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (1, 0)
INSERT [dbo].[NivelTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (2, 0)
INSERT [dbo].[NivelTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (3, 0)
INSERT [dbo].[NivelTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (4, 0)
INSERT [dbo].[NivelTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (7, 0)
/****** Object:  Table [dbo].[DepositoTipoOperation]    Script Date: 12/14/2010 15:40:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DepositoTipoOperation](
	[IDTipoOperation] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_DepositoTipoOperation] PRIMARY KEY CLUSTERED 
(
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DepositoTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (2, 0)
INSERT [dbo].[DepositoTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (3, 0)
INSERT [dbo].[DepositoTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (4, 0)
/****** Object:  Table [dbo].[NivelDesignado]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelDesignado](
	[ID] [bigint] NOT NULL,
	[Designacao] [nvarchar](768) COLLATE Latin1_General_CS_AS NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelDesignado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Título' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NivelDesignado', @level2type=N'COLUMN',@level2name=N'Designacao'
GO
/****** Object:  Table [dbo].[NivelControloAut]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelControloAut](
	[ID] [bigint] NOT NULL,
	[IDControloAut] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelControloAut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelacaoTipoNivelRelacionado]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelacaoTipoNivelRelacionado](
	[ID] [bigint] NOT NULL,
	[IDUpper] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoNivelHierarquia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[IDUpper] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (2, 1, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (3, 1, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (3, 2, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (4, 3, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (5, 3, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (5, 4, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (6, 5, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (7, 3, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (7, 4, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (7, 5, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (7, 6, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (8, 7, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (9, 3, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (9, 4, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (9, 5, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (9, 6, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (9, 7, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (9, 8, 0)
INSERT [dbo].[RelacaoTipoNivelRelacionado] ([ID], [IDUpper], [isDeleted]) VALUES (10, 9, 0)
/****** Object:  Table [dbo].[RelacaoHierarquica]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelacaoHierarquica](
	[ID] [bigint] NOT NULL,
	[IDUpper] [bigint] NOT NULL,
	[IDTipoNivelRelacionado] [bigint] NOT NULL,
	[Descricao] [nvarchar](4000) NULL,
	[InicioAno] [nvarchar](4) NULL,
	[InicioMes] [nvarchar](2) NULL,
	[InicioDia] [nvarchar](2) NULL,
	[FimAno] [nvarchar](4) NULL,
	[FimMes] [nvarchar](2) NULL,
	[FimDia] [nvarchar](2) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelHierarquia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[IDUpper] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'Descricao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'InicioAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'InicioMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'InicioDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data final (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'FimAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data final (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'FimMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data final (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica', @level2type=N'COLUMN',@level2name=N'FimDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relação hierárquica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RelacaoHierarquica'
GO
CREATE NONCLUSTERED INDEX [rh_idx]
ON [dbo].[RelacaoHierarquica] ([IDUpper],[isDeleted])
INCLUDE ([ID],[IDTipoNivelRelacionado])
GO
/****** Object:  Table [dbo].[ProductFunction]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFunction](
	[IDTipoServer] [bigint] NOT NULL,
	[IDModule] [bigint] NOT NULL,
	[IDTipoFunctionGroup] [tinyint] NOT NULL,
	[IdxTipoFunction] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ProductFunction] PRIMARY KEY CLUSTERED 
(
	[IDTipoServer] ASC,
	[IDModule] ASC,
	[IDTipoFunctionGroup] ASC,
	[IdxTipoFunction] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 1, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 1, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 2, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 2, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 2, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 3, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 3, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 4, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 5, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 6, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 7, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 8, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 9, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 5, 10, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 7, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 7, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 7, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 7, 4, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 7, 5, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 1, 7, 6, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 2, 1, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 2, 1, 4, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 2, 5, 12, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 2, 5, 13, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 3, 3, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (1, 3, 5, 11, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 1, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 1, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 2, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 2, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 2, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 3, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 3, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 4, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 5, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 6, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 7, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 8, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 9, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 10, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 5, 17, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 4, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 5, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 6, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 1, 7, 9, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 2, 1, 3, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 2, 1, 4, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 2, 5, 12, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 2, 5, 13, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 3, 3, 2, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 3, 5, 11, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 5, 8, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 8, 5, 15, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 8, 5, 16, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 8, 7, 8, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 8, 9, 1, 0)
INSERT [dbo].[ProductFunction] ([IDTipoServer], [IDModule], [IDTipoFunctionGroup], [IdxTipoFunction], [isDeleted]) VALUES (2, 8, 9, 2, 0)
/****** Object:  Table [dbo].[NivelUnidadeFisicaCodigo]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelUnidadeFisicaCodigo](
	[ID] [bigint] NOT NULL,
	[Ano] [numeric](18, 0) NOT NULL,
	[Contador] [numeric](18, 0) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelUnidadeFisicaCodigo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Ano] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoNivelRelacionadoCodigo]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNivelRelacionadoCodigo](
	[IDTipoNivelRelacionado] [bigint] NOT NULL,
	[Contador] [numeric](18, 0) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoNivelRelacionadoCodigo] PRIMARY KEY CLUSTERED 
(
	[IDTipoNivelRelacionado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoNivelRelacionadoCodigo] ([IDTipoNivelRelacionado], [Contador], [isDeleted]) VALUES (7, CAST(0 AS Numeric(18, 0)), 0)
/****** Object:  Table [dbo].[FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FRDBase](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDNivel] [bigint] NOT NULL,
	[IDTipoFRDBase] [bigint] NOT NULL,
	[NotaDoArquivista] [ntext] NULL,
	[RegrasOuConvencoes] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_FRDBase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_FRDBase_IDNivel_IDTipoFRDBase] UNIQUE NONCLUSTERED 
(
	[IDNivel] ASC,
	[IDTipoFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota do arquivista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FRDBase', @level2type=N'COLUMN',@level2name=N'NotaDoArquivista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Regras ou convenções' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FRDBase', @level2type=N'COLUMN',@level2name=N'RegrasOuConvencoes'
GO
/****** Object:  Table [dbo].[DocumentosMovimentados]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentosMovimentados](
	[IDMovimento] [bigint] NOT NULL,
	[IDNivel] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_DocumentosMovimentados] PRIMARY KEY CLUSTERED 
(
	[IDMovimento] ASC,
	[IDNivel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControloAutRel]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControloAutRel](
	[IDControloAut] [bigint] NOT NULL,
	[IDControloAutAlias] [bigint] NOT NULL,
	[IDTipoRel] [bigint] NOT NULL,
	[Descricao] [nvarchar](4000) NULL,
	[InicioAno] [nvarchar](4) NULL,
	[InicioMes] [nvarchar](2) NULL,
	[InicioDia] [nvarchar](2) NULL,
	[FimAno] [nvarchar](4) NULL,
	[FimMes] [nvarchar](2) NULL,
	[FimDia] [nvarchar](2) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutRel] PRIMARY KEY CLUSTERED 
(
	[IDControloAut] ASC,
	[IDControloAutAlias] ASC,
	[IDTipoRel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'Descricao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Inicial (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'InicioAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Inicial (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'InicioMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Inicial (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'InicioDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Final (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'FimAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Final (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'FimMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Final (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel', @level2type=N'COLUMN',@level2name=N'FimDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relação entre controlos de autoridade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutRel'
GO
/****** Object:  Table [dbo].[ControloAutEntidadeProdutora]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControloAutEntidadeProdutora](
	[IDControloAut] [bigint] NOT NULL,
	[IDTipoEntidadeProdutora] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutEntidadeProdutora] PRIMARY KEY CLUSTERED 
(
	[IDControloAut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de entidade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutEntidadeProdutora'
GO
/****** Object:  Table [dbo].[ControloAutDicionario]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControloAutDicionario](
	[IDControloAut] [bigint] NOT NULL,
	[IDDicionario] [bigint] NOT NULL,
	[IDTipoControloAutForma] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutDicionario] PRIMARY KEY CLUSTERED 
(
	[IDControloAut] ASC,
	[IDDicionario] ASC,
	[IDTipoControloAutForma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControloAutDatasExistencia]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControloAutDatasExistencia](
	[IDControloAut] [bigint] NOT NULL,
	[DescDatasExistencia] [ntext] NULL,
	[InicioAno] [nvarchar](4) NULL,
	[InicioMes] [nvarchar](2) NULL,
	[InicioDia] [nvarchar](2) NULL,
	[InicioAtribuida] [bit] NOT NULL,
	[FimAno] [nvarchar](4) NULL,
	[FimMes] [nvarchar](2) NULL,
	[FimDia] [nvarchar](2) NULL,
	[FimAtribuida] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutDatasExistencia] PRIMARY KEY CLUSTERED 
(
	[IDControloAut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'DescDatasExistencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data inicial (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'InicioAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data inicial (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'InicioMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data inicial (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'InicioDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de existência inicial atribuida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'InicioAtribuida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data final (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'FimAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data final (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'FimMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data final (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'FimDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de existência final atribuida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia', @level2type=N'COLUMN',@level2name=N'FimAtribuida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de existência' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ControloAutDatasExistencia'
GO
/****** Object:  Table [dbo].[ControloAutDataDeDescricao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControloAutDataDeDescricao](
	[IDControloAut] [bigint] NOT NULL,
	[IDTrusteeOperator] [bigint] NOT NULL,
	[IDTrusteeAuthority] [bigint] NULL,
	[DataEdicao] [datetime2] NOT NULL,
	[DataAutoria] [datetime2] NOT NULL,
	[IDTipoNoticiaAut] [bigint] NOT NULL,
	[Importacao] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ControloAutDataDeDescricao] PRIMARY KEY CLUSTERED 
(
	[IDControloAut] ASC,
	[IDTrusteeOperator] ASC,
	[IDTipoNoticiaAut] ASC,
	[DataEdicao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunctionOperation]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunctionOperation](
	[IDTipoFunctionGroup] [tinyint] NOT NULL,
	[IdxTipoFunction] [tinyint] NOT NULL,
	[IDTipoOperation] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_FunctionOperation] PRIMARY KEY CLUSTERED 
(
	[IDTipoFunctionGroup] ASC,
	[IdxTipoFunction] ASC,
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 1, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 1, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 1, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 1, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 2, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 3, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 3, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 3, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 3, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 4, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 4, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 4, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (1, 4, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 1, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 1, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 1, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 1, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 2, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 2, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 2, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 2, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 3, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 3, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 3, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (2, 3, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 1, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 1, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 1, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 1, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 2, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 2, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 2, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 2, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 3, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 30, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 30, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 30, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (3, 30, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 1, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 1, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 2, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 2, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 2, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 2, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 3, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 3, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 3, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 3, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 4, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 4, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 4, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 4, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 5, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 5, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 5, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 5, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 6, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 7, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 7, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 7, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 7, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 8, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 8, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 8, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 8, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 9, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 9, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 9, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (7, 9, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (8, 1, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (8, 1, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (8, 1, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (8, 1, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 1, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 1, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 1, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 1, 4, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 2, 1, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 2, 2, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 2, 3, 0)
INSERT [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [isDeleted]) VALUES (9, 2, 4, 0)
/****** Object:  Table [dbo].[Integ_EntidadeExterna]    Script Date: 11/16/2009 18:19:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Integ_EntidadeExterna](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDSistema] [int] NOT NULL,
	[IDTipoEntidade] [int] NOT NULL,
	[IDExterno] [nvarchar](200) COLLATE Latin1_General_CS_AS NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_EntidadeExterna] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Integ_Config](
	[ID] [bigint] NOT NULL,
	[LastTimeStamp] [datetime2](7) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Integ_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TrusteeNivelPrivilege]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrusteeNivelPrivilege](
	[IDTrustee] [bigint] NOT NULL,
	[IDNivel] [bigint] NOT NULL,
	[Criar] [tinyint] NULL,
	[Ler] [tinyint] NULL,
	[Escrever] [tinyint] NULL,
	[Apagar] [tinyint] NULL,
	[Expandir] [tinyint] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NewTrusteeNivelPrivilege] PRIMARY KEY CLUSTERED 
(
	[IDTrustee] ASC,
	[IDNivel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 07/30/2009 17:07:21 ******/
CREATE TABLE [dbo].[UserGroups](
	[IDUser] [bigint] NOT NULL,
	[IDGroup] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC,
	[IDGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserGroups] ([IDUser], [IDGroup], [isDeleted]) VALUES (6, 5, 0)
INSERT [dbo].[UserGroups] ([IDUser], [IDGroup], [isDeleted]) VALUES (6, 10, 0)
INSERT [dbo].[UserGroups] ([IDUser], [IDGroup], [isDeleted]) VALUES (9, 5, 0)
INSERT [dbo].[UserGroups] ([IDUser], [IDGroup], [isDeleted]) VALUES (9, 10, 0)
/****** Object:  Table [dbo].[TrusteePrivilege]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[TrusteePrivilege]    Script Date: 05/25/2009 17:34:55 ******/
CREATE TABLE [dbo].[TrusteePrivilege](
	[IDTrustee] [bigint] NOT NULL,
	[IDTipoFunctionGroup] [tinyint] NOT NULL,
	[IdxTipoFunction] [tinyint] NOT NULL,
	[IDTipoOperation] [tinyint] NOT NULL,
	[IsGrant] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TrusteePrivilege] PRIMARY KEY CLUSTERED 
(
	[IDTrustee] ASC,
	[IDTipoFunctionGroup] ASC,
	[IdxTipoFunction] ASC,
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permissão sobre funcionalidade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TrusteePrivilege'
GO
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 1, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 1, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 1, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 1, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 2, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 3, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 3, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 3, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 3, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 4, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 4, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 4, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 1, 4, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 1, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 1, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 1, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 1, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 2, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 2, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 2, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 2, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 3, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 3, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 3, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 2, 3, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 1, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 1, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 1, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 1, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 2, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 2, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 2, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 2, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 3, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 30, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 30, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 30, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 3, 30, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 1, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 1, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 2, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 2, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 2, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 2, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 3, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 3, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 3, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 3, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 4, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 4, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 4, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 4, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 5, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 5, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 5, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 5, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 6, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 7, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 7, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 7, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 7, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 8, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 8, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 8, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 8, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 9, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 9, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 9, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 7, 9, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 8, 1, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 8, 1, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 8, 1, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 8, 1, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 1, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 1, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 1, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 1, 4, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 2, 1, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 2, 2, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 2, 3, 1, 0)
INSERT [dbo].[TrusteePrivilege] ([IDTrustee], [IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation], [IsGrant], [isDeleted]) VALUES (5, 9, 2, 4, 1, 0)
/****** Object:  Table [dbo].[Integ_RelacaoExternaNivel]    Script Date: 11/16/2009 18:20:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Integ_RelacaoExternaNivel](
	[IDNivel] [bigint] NOT NULL,
	[IDEntidadeExterna] [bigint] NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[DataIntegracao] [datetime2](7) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_RelacaoExternaNivel] PRIMARY KEY CLUSTERED 
(
	[IDNivel] ASC,
	[IDEntidadeExterna] ASC,
	[Data] ASC,
	[DataIntegracao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Integ_RelacaoExternaControloAut]    Script Date: 11/16/2009 18:20:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Integ_RelacaoExternaControloAut](
	[IDControloAut] [bigint] NOT NULL,
	[IDEntidadeExterna] [bigint] NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[DataIntegracao] [datetime2](7) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_RelacaoExternaControloAut] PRIMARY KEY CLUSTERED 
(
	[IDControloAut] ASC,
	[IDEntidadeExterna] ASC,
	[Data] ASC,
	[DataIntegracao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexFRDCA]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexFRDCA](
	[IDFRDBase] [bigint] NOT NULL,
	[IDControloAut] [bigint] NOT NULL,
	[Selector] [int] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_IndexFRDCA] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDControloAut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Utilizado para distinguir tipologias de subtipologias informacionais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IndexFRDCA', @level2type=N'COLUMN',@level2name=N'Selector'
GO
/****** Object:  Table [dbo].[FRDBaseDataDeDescricao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FRDBaseDataDeDescricao](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTrusteeOperator] [bigint] NOT NULL,
	[IDTrusteeAuthority] [bigint] NULL,
	[DataEdicao] [datetime2] NOT NULL,
	[DataAutoria] [datetime2] NOT NULL,
	[IDTipoNivelRelacionado] [bigint] NOT NULL,
	[Importacao] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_FRDBaseDataDeDescricao] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTrusteeOperator] ASC,
	[IDTipoNivelRelacionado] ASC,
	[DataEdicao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de descrição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FRDBaseDataDeDescricao'
GO
/****** Object:  Table [dbo].[SFRDUnidadeFisica]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUnidadeFisica](
	[IDFRDBase] [bigint] NOT NULL,
	[IDNivel] [bigint] NOT NULL,
	[Cota] [nvarchar](300) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDUnidadeFisica] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDNivel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelUnidadeFisica]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelUnidadeFisica](
	[ID] [bigint] NOT NULL,
	[GuiaIncorporacao] [nvarchar](50) NULL,
	[CodigoBarras] [nvarchar](20) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
	[Eliminado] [bit] NULL,
	[IDTipoEntrega] [bigint] NULL,
	[IDLocalConsulta] [bigint] NULL,
 CONSTRAINT [PK_NivelUnidadeFisica] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guia de Incorporação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NivelUnidadeFisica', @level2type=N'COLUMN',@level2name=N'GuiaIncorporacao'
GO
/****** Object:  Table [dbo].[SFRDDocumentacaoAssociada]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDDocumentacaoAssociada](
	[IDFRDBase] [bigint] NOT NULL,
	[ExistenciaDeOriginais] [ntext] NULL,
	[ExistenciaDeCopias] [ntext] NULL,
	[UnidadesRelacionadas] [ntext] NULL,
	[NotaDePublicacao] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDDocumentacaoAssociada] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Existência e localização de originais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDocumentacaoAssociada', @level2type=N'COLUMN',@level2name=N'ExistenciaDeOriginais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Existência e localização de cópias' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDocumentacaoAssociada', @level2type=N'COLUMN',@level2name=N'ExistenciaDeCopias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unidades de descrição relacionadas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDocumentacaoAssociada', @level2type=N'COLUMN',@level2name=N'UnidadesRelacionadas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota de publicação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDocumentacaoAssociada', @level2type=N'COLUMN',@level2name=N'NotaDePublicacao'
GO
/****** Object:  Table [dbo].[SFRDDimensaoSuporte]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDDimensaoSuporte](
	[IDFRDBase] [bigint] NOT NULL,
	[Nota] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDDimensaoSuporte] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDDatasProducao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDDatasProducao](
	[IDFRDBase] [bigint] NOT NULL,
	[InicioTexto] [nvarchar](50) NULL,
	[InicioAno] [nvarchar](4) NULL,
	[InicioMes] [nvarchar](2) NULL,
	[InicioDia] [nvarchar](2) NULL,
	[InicioAtribuida] [bit] NOT NULL,
	[FimTexto] [nvarchar](50) NULL,
	[FimAno] [nvarchar](4) NULL,
	[FimMes] [nvarchar](2) NULL,
	[FimDia] [nvarchar](2) NULL,
	[FimAtribuida] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDDatasProducao] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'InicioAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'InicioMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'InicioDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data início atribuida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'InicioAtribuida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data fim (Ano)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'FimAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data fim (Mês)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'FimMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data fim (Dia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'FimDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data fim atribuida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao', @level2type=N'COLUMN',@level2name=N'FimAtribuida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de produção' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDDatasProducao'
GO
/****** Object:  Table [dbo].[SFRDContexto]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDContexto](
	[IDFRDBase] [bigint] NOT NULL,
	[HistoriaAdministrativa] [ntext] NULL,
	[HistoriaCustodial] [ntext] NULL,
	[FonteImediataDeAquisicao] [ntext] NULL,
	[SerieAberta] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDContexto] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'História administrativa / biográfica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDContexto', @level2type=N'COLUMN',@level2name=N'HistoriaAdministrativa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'História arquivística' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDContexto', @level2type=N'COLUMN',@level2name=N'HistoriaCustodial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fonte imedidata de aquisição ou transferência' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDContexto', @level2type=N'COLUMN',@level2name=N'FonteImediataDeAquisicao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Série aberta/Série fechada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDContexto', @level2type=N'COLUMN',@level2name=N'SerieAberta'
GO
/****** Object:  Table [dbo].[SFRDConteudoEEstrutura]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDConteudoEEstrutura](
	[IDFRDBase] [bigint] NOT NULL,
	[ConteudoInformacional] [ntext] NULL,
	[Incorporacao] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDConteudoEEstrutura] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conteúdo Informacional' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDConteudoEEstrutura', @level2type=N'COLUMN',@level2name=N'ConteudoInformacional'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Incorporações' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDConteudoEEstrutura', @level2type=N'COLUMN',@level2name=N'Incorporacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conteúdo e estrutura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDConteudoEEstrutura'
GO
/****** Object:  Table [dbo].[SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDCondicaoDeAcesso](
	[IDFRDBase] [bigint] NOT NULL,
	[EstatutoLegal] [ntext] NULL,
	[CondicaoDeAcesso] [ntext] NULL,
	[CondicaoDeReproducao] [ntext] NULL,
	[AuxiliarDePesquisa] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDCondicaoDeAcesso] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estatuto legal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDCondicaoDeAcesso', @level2type=N'COLUMN',@level2name=N'EstatutoLegal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Condições de Acesso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDCondicaoDeAcesso', @level2type=N'COLUMN',@level2name=N'CondicaoDeAcesso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Condições de Reprodução' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDCondicaoDeAcesso', @level2type=N'COLUMN',@level2name=N'CondicaoDeReproducao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instrumentos de Pesquisa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDCondicaoDeAcesso', @level2type=N'COLUMN',@level2name=N'AuxiliarDePesquisa'
GO
/****** Object:  Table [dbo].[SFRDImagem]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDImagem](
	[IDFRDBase] [bigint] NOT NULL,
	[idx] [bigint] IDENTITY(1,1) NOT NULL,
	[GUIOrder] [bigint] NOT NULL,
	[Tipo] [nvarchar](20) NOT NULL,
	[Descricao] [ntext] NULL,
	[IDSFDImagemVolume] [bigint] NULL,
	[Identificador] [ntext] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDImagem] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[idx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDImagem', @level2type=N'COLUMN',@level2name=N'Descricao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Imagem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDImagem'
GO
/****** Object:  Table [dbo].[SFRDOrdenacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDOrdenacao](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoOrdenacao] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDOrdenacao] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTipoOrdenacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDNotaGeral]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDNotaGeral](
	[IDFRDBase] [bigint] NOT NULL,
	[NotaGeral] [ntext] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDNotaGeral] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDNotaGeral'
GO
/****** Object:  Table [dbo].[SFRDAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDAvaliacao](
	[IDFRDBase] [bigint] NOT NULL,
	[IDPertinencia] [bigint] NULL,
	[IDDensidade] [bigint] NULL,
	[IDSubdensidade] [bigint] NULL,
	[IDAutoEliminacao] [bigint] NULL,
	[IDModeloAvaliacao] [bigint] NULL,
	[Frequencia] [numeric](18, 0) NULL,
	[Preservar] [bit] NULL,
	[PrazoConservacao] [smallint] NULL,
	[Publicar] [bit] NOT NULL,
	[RefTabelaAvaliacao] [int] NULL,
	[Observacoes] [ntext] NULL,
	[AvaliacaoTabela] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Preservar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacao', @level2type=N'COLUMN',@level2name=N'Preservar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Publicar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacao', @level2type=N'COLUMN',@level2name=N'Publicar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observações' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacao', @level2type=N'COLUMN',@level2name=N'Observacoes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacao'
GO
/****** Object:  Table [dbo].[SFRDUFAutoEliminacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUFAutoEliminacao](
	[IDFRDBase] [bigint] NOT NULL,
	[IDAutoEliminacao] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDUFAutoEliminacao] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDAutoEliminacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDTradicaoDocumental]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDTradicaoDocumental](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoTradicaoDocumental] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDTradicaoDocumental] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTipoTradicaoDocumental] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDUFDescricaoFisica]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUFDescricaoFisica](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoAcondicionamento] [bigint] NOT NULL,
	[MedidaLargura] [numeric](18, 3) NULL,
	[MedidaAltura] [numeric](18, 3) NULL,
	[MedidaProfundidade] [numeric](18, 3) NULL,
	[IDTipoMedida] [bigint] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDUFDescricaoFisica] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição física' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDUFDescricaoFisica'
GO
/****** Object:  Table [dbo].[SFRDUFCota]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUFCota](
	[IDFRDBase] [bigint] NOT NULL,
	[Cota] [nvarchar](300) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDCota] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cota' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDUFCota'
GO
/****** Object:  Table [dbo].[SFRDUFComponente]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUFComponente](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[IDNivelUA] [bigint] NULL,
	[Quantidade] [numeric](18, 0) NOT NULL,
	[IDTipoSuporte] [bigint] NOT NULL,
	[MedidaLargura] [numeric](18, 3) NULL,
	[MedidaAltura] [numeric](18, 3) NULL,
	[MedidaProfundidade] [numeric](18, 3) NULL,
	[IDTipoMedida] [bigint] NULL,
	[IDTipoEstadoConservacao] [bigint] NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDUFComponente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trata-se da FRD da UF em causa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDUFComponente', @level2type=N'COLUMN',@level2name=N'IDFRDBase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trata-se do Nivel da UA a que a componente possa estar associada.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDUFComponente', @level2type=N'COLUMN',@level2name=N'IDNivelUA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição física das componentes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDUFComponente'
GO
/****** Object:  Table [dbo].[SFRDTecnicasDeRegisto]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDTecnicasDeRegisto](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoTecnicasDeRegisto] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDTecnicasDeRegisto] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTipoTecnicasDeRegisto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDAlfabeto]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDAlfabeto](
	[IDFRDBase] [bigint] NOT NULL,
	[IDIso15924] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDAlfabeto] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDIso15924] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDMaterialDeSuporte]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDMaterialDeSuporte](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoMaterialDeSuporte] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDMaterialDeSuporte] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTipoMaterialDeSuporte] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDLingua]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDLingua](
	[IDFRDBase] [bigint] NOT NULL,
	[IDIso639] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDLingua] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDIso639] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDFormaSuporteAcond]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDFormaSuporteAcond](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoFormaSuporteAcond] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDFormaSuporteAcond] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTipoFormaSuporteAcond] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDEstadoDeConservacao]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDEstadoDeConservacao](
	[IDFRDBase] [bigint] NOT NULL,
	[IDTipoEstadoDeConservacao] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDEstadoDeConservacao] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDTipoEstadoDeConservacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDAvaliacaoRel]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDAvaliacaoRel](
	[IDFRDBase] [bigint] NOT NULL,
	[IDNivel] [bigint] NOT NULL,
	[Densidade] [bigint] NOT NULL,
	[SubDensidade] [bigint] NOT NULL,
	[Ponderacao] [numeric](18, 0) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDAvaliacaoRel] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDNivel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de produção' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacaoRel', @level2type=N'COLUMN',@level2name=N'Densidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grau de densidade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacaoRel', @level2type=N'COLUMN',@level2name=N'SubDensidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ponderação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacaoRel', @level2type=N'COLUMN',@level2name=N'Ponderacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informação relacionada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAvaliacaoRel'
GO
/****** Object:  Table [dbo].[SFRDUFTecnicasRegComponente]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUFTecnicasRegComponente](
	[IDComponente] [bigint] NOT NULL,
	[IDTecnicaRegisto] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDUFTecnicasRegComponente] PRIMARY KEY CLUSTERED 
(
	[IDComponente] ASC,
	[IDTecnicaRegisto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFRDUFMateriaisComponente]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDUFMateriaisComponente](
	[IDComponente] [bigint] NOT NULL,
	[IDMaterial] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDUFMateriaisComponente] PRIMARY KEY CLUSTERED 
(
	[IDComponente] ASC,
	[IDMaterial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codigo]    Script Date: 11/10/2009 11:29:04 ******/SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Codigo](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[Codigo] [nvarchar](100) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Codigo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[LicencaObra]    Script Date: 11/09/2009 13:00:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObra](
	[IDFRDBase] [bigint] NOT NULL,
	[TipoObra] [nvarchar](500) NOT NULL,
	[PropriedadeHorizontal] [bit] NOT NULL,
	[PHTexto] [nvarchar](100) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencasObras] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObra]  WITH CHECK ADD  CONSTRAINT [FK_LicencasObras_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO

ALTER TABLE [dbo].[LicencaObra] CHECK CONSTRAINT [FK_LicencasObras_FRDBase]
GO

ALTER TABLE [dbo].[LicencaObra] ADD  CONSTRAINT [DF_LicencaObra_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO


/****** Object:  Table [dbo].[LicencaObraAtestadoHabitabilidade]    Script Date: 11/09/2009 13:03:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObraAtestadoHabitabilidade](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[Codigo] [nvarchar](4000) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencasObrasAtestadoHabitabilidade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObraAtestadoHabitabilidade]  WITH CHECK ADD  CONSTRAINT [FK_LicencaObraAtestadoHabitabilidade_LicencaObra] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[LicencaObra] ([IDFRDBase])
GO

ALTER TABLE [dbo].[LicencaObraAtestadoHabitabilidade] CHECK CONSTRAINT [FK_LicencaObraAtestadoHabitabilidade_LicencaObra]
GO

ALTER TABLE [dbo].[LicencaObraAtestadoHabitabilidade] ADD  CONSTRAINT [DF_LicencaObraAtestadoHabitabilidade_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

/****** Object:  Table [dbo].[LicencaObraDataLicencaConstrucao]    Script Date: 11/09/2009 13:05:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObraDataLicencaConstrucao](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[Ano] [nvarchar](4) NULL,
	[Mes] [nvarchar](2) NULL,
	[Dia] [nvarchar](2) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencaObraDataLicencaConstrucao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObraDataLicencaConstrucao]  WITH CHECK ADD  CONSTRAINT [FK_LicencaObraDataLicencaConstrucao_LicencaObra] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[LicencaObra] ([IDFRDBase])
GO

ALTER TABLE [dbo].[LicencaObraDataLicencaConstrucao] CHECK CONSTRAINT [FK_LicencaObraDataLicencaConstrucao_LicencaObra]
GO

ALTER TABLE [dbo].[LicencaObraDataLicencaConstrucao] ADD  CONSTRAINT [DF_LicencaObraDataLicencaConstrucao_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

/****** Object:  Table [dbo].[LicencaObraLocalizacaoObraActual]    Script Date: 11/09/2009 14:08:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObraLocalizacaoObraActual](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[IDControloAut] [bigint] NOT NULL,
	[NumPolicia] [nvarchar](1000) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencasObrasLocalizacaoObraActual] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraActual]  WITH CHECK ADD  CONSTRAINT [FK_LicencasObrasLocalizacaoObraActual_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraActual] CHECK CONSTRAINT [FK_LicencasObrasLocalizacaoObraActual_ControloAut]
GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraActual]  WITH CHECK ADD  CONSTRAINT [FK_LicencasObrasLocalizacaoObraActual_LicencaObra] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[LicencaObra] ([IDFRDBase])
GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraActual] CHECK CONSTRAINT [FK_LicencasObrasLocalizacaoObraActual_LicencaObra]
GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraActual] ADD  CONSTRAINT [DF_LicencaObraLocalizacaoObraActual_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO


/****** Object:  Table [dbo].[LicencaObraLocalizacaoObraAntiga]    Script Date: 11/09/2009 14:08:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObraLocalizacaoObraAntiga](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[NomeLocal] [nvarchar](500) NOT NULL,
	[NumPolicia] [nvarchar](1000) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencaObraLocalizacaoObraAntiga] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraAntiga]  WITH CHECK ADD  CONSTRAINT [FK_LicencaObraLocalizacaoObraAntiga_LicencaObra] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[LicencaObra] ([IDFRDBase])
GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraAntiga] CHECK CONSTRAINT [FK_LicencaObraLocalizacaoObraAntiga_LicencaObra]
GO

ALTER TABLE [dbo].[LicencaObraLocalizacaoObraAntiga] ADD  CONSTRAINT [DF_LicencaObraLocalizacaoObraAntiga_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO


/****** Object:  Table [dbo].[LicencaObraRequerentes]    Script Date: 11/09/2009 14:09:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObraRequerentes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[Tipo] [nvarchar](10) NOT NULL,
	[Nome] [nvarchar](500) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencasObrasRequerentes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObraRequerentes]  WITH CHECK ADD  CONSTRAINT [FK_LicencasObrasRequerentes_LicencaObra] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[LicencaObra] ([IDFRDBase])
GO

ALTER TABLE [dbo].[LicencaObraRequerentes] CHECK CONSTRAINT [FK_LicencasObrasRequerentes_LicencaObra]
GO

ALTER TABLE [dbo].[LicencaObraRequerentes] ADD  CONSTRAINT [DF_LicencaObraRequerentes_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

/****** Object:  Table [dbo].[LicencaObraTecnicoObra]    Script Date: 11/09/2009 14:09:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicencaObraTecnicoObra](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDFRDBase] [bigint] NOT NULL,
	[IDControloAut] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LicencaObraTecnicoObra] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LicencaObraTecnicoObra]  WITH CHECK ADD  CONSTRAINT [FK_LicencaObraTecnicoObra_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO

ALTER TABLE [dbo].[LicencaObraTecnicoObra] CHECK CONSTRAINT [FK_LicencaObraTecnicoObra_ControloAut]
GO

ALTER TABLE [dbo].[LicencaObraTecnicoObra]  WITH CHECK ADD  CONSTRAINT [FK_LicencaObraTecnicoObra_LicencaObra] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[LicencaObra] ([IDFRDBase])
GO

ALTER TABLE [dbo].[LicencaObraTecnicoObra] CHECK CONSTRAINT [FK_LicencaObraTecnicoObra_LicencaObra]
GO

ALTER TABLE [dbo].[LicencaObraTecnicoObra] ADD  CONSTRAINT [DF_LicencaObraTecnicoObra_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

/****** Object:  Table [dbo].[SFRDAutor]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFRDAutor](
	[IDFRDBase] [bigint] NOT NULL,
	[IDControloAut] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDAutor] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[IDControloAut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
GO

CREATE TABLE [dbo].[Deposito](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](200) NOT NULL,
	[MetrosLineares] [numeric](12, 2) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Deposito] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TrusteeDepositoPrivilege](
	[IDTrustee] [bigint] NOT NULL,
	[IDDeposito] [bigint] NOT NULL,
	[IDTipoOperation] [tinyint] NOT NULL,
	[IsGrant] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TrusteeDepositoPrivilege] PRIMARY KEY CLUSTERED 
(
	[IDTrustee] ASC,
	[IDDeposito] ASC,
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permissão sobre depósito' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TrusteeDepositoPrivilege'
GO

CREATE TABLE [dbo].[NivelUnidadeFisicaDeposito](
	[IDNivelUnidadeFisica] [bigint] NOT NULL,
	[IDDeposito] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelUnidadeFisicaDeposito] PRIMARY KEY CLUSTERED 
(
	[IDNivelUnidadeFisica] ASC,
	[IDDeposito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[NivelUnidadeFisicaDeposito] ADD  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[Deposito] ADD  CONSTRAINT [DF__Deposito__isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[TrusteeDepositoPrivilege] ADD  CONSTRAINT [DF__TrusteeDepositoPrivilege__isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[SFRDAutor] ADD  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[DepositoTipoOperation] ADD  CONSTRAINT [DF_DepositoTipoOperation_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

CREATE TABLE [dbo].[SFRDAgrupador](
	[IDFRDBase] [bigint] NOT NULL,
	[Agrupador] [nvarchar](300) NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDAgrupador] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agrupador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SFRDAgrupador'
GO

ALTER TABLE [dbo].[SFRDAgrupador] ADD  CONSTRAINT [DF__SFRDAgrupador__isDele__007FFA1B]  DEFAULT ('0') FOR [isDeleted]
GO


/****** Object:  Table [dbo].[NivelDocumentoSimples]    Script Date: 07/30/2009 17:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelDocumentoSimples](
	[ID] [bigint] NOT NULL,
	[GUIOrder] [bigint] NOT NULL DEFAULT '1',
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelDocumentoSimples] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  ForeignKey [FK_NivelDocumentoSimples_NivelDesignado]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelDocumentoSimples]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelDocumentoSimples_NivelDesignado] FOREIGN KEY([ID])
REFERENCES [dbo].[NivelDesignado] ([ID])
GO
ALTER TABLE [dbo].[NivelDocumentoSimples] CHECK CONSTRAINT [FK_NivelDocumentoSimples_NivelDesignado]
GO

ALTER TABLE [dbo].[NivelDocumentoSimples] ADD  CONSTRAINT [DF_NivelDocumentoSimples_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO


CREATE TABLE [dbo].[ObjetoDigitalTitulo](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](255) COLLATE Latin1_General_CS_AS NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ObjetoDigitalTitulo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Título do objeto digital' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ObjetoDigitalTitulo'
GO

ALTER TABLE [dbo].[ObjetoDigitalTitulo] ADD  CONSTRAINT [DF__ObjetoDigitalTitulo__isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Titulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ObjetoDigitalTitulo', @level2type=N'COLUMN',@level2name=N'Titulo'
GO


CREATE TABLE [dbo].[ObjetoDigital](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](20) NOT NULL,
	[Titulo] [nvarchar](255) COLLATE Latin1_General_CS_AS NOT NULL,
	[Publicado] [bit] NOT NULL,
	[GUIOrder] [bigint] NOT NULL DEFAULT '1',
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ObjetoDigital] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Objeto digital' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ObjetoDigital'
GO

ALTER TABLE [dbo].[ObjetoDigital] ADD  CONSTRAINT [DF__ObjetoDigital__isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

CREATE TABLE [dbo].[ObjetoDigitalRelacaoHierarquica](
	[ID] [bigint] NOT NULL,
	[IDUpper] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ObjetoDigitalRelacaoHierarquica] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[IDUpper] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ObjetoDigitalRelacaoHierarquica] ADD  CONSTRAINT [DF_ObjetoDigitalRelacaoHierarquica_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[ObjetoDigitalRelacaoHierarquica]  WITH NOCHECK ADD  CONSTRAINT [FK_ObjetoDigitalRelacaoHierarquica_ObjetoDigital1] FOREIGN KEY([ID])
REFERENCES [dbo].[ObjetoDigital] ([ID])
GO
ALTER TABLE [dbo].[ObjetoDigitalRelacaoHierarquica] CHECK CONSTRAINT [FK_ObjetoDigitalRelacaoHierarquica_ObjetoDigital1]
GO

ALTER TABLE [dbo].[ObjetoDigitalRelacaoHierarquica]  WITH NOCHECK ADD  CONSTRAINT [FK_ObjetoDigitalRelacaoHierarquica_ObjetoDigital2] FOREIGN KEY([IDUpper])
REFERENCES [dbo].[ObjetoDigital] ([ID])
GO
ALTER TABLE [dbo].[ObjetoDigitalRelacaoHierarquica] CHECK CONSTRAINT [FK_ObjetoDigitalRelacaoHierarquica_ObjetoDigital2]
GO


CREATE TABLE [dbo].[SFRDImagemObjetoDigital](
	[IDFRDBase] [bigint] NOT NULL,
	[idx] [bigint] NOT NULL,
	[IDObjetoDigital] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_SFRDImagemObjetoDigital] PRIMARY KEY CLUSTERED 
(
	[IDFRDBase] ASC,
	[idx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SFRDImagemObjetoDigital] ADD  CONSTRAINT [DF_SFRDImagemObjetoDigital_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[SFRDImagemObjetoDigital]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDImagemObjetoDigital_SFRDImagem] FOREIGN KEY([IDFRDBase], [idx])
REFERENCES [dbo].[SFRDImagem] ([IDFRDBase], [idx])
GO
ALTER TABLE [dbo].[SFRDImagemObjetoDigital] CHECK CONSTRAINT [FK_SFRDImagemObjetoDigital_SFRDImagem]
GO

ALTER TABLE [dbo].[SFRDImagemObjetoDigital]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDImagemObjetoDigital_ObjetoDigital] FOREIGN KEY([IDObjetoDigital])
REFERENCES [dbo].[ObjetoDigital] ([ID])
GO
ALTER TABLE [dbo].[SFRDImagemObjetoDigital] CHECK CONSTRAINT [FK_SFRDImagemObjetoDigital_ObjetoDigital]
GO


/****** Object:  Table [dbo].[ObjetoDigitalTipoOperation]    Script Date: 12/14/2010 15:40:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ObjetoDigitalTipoOperation](
	[IDTipoOperation] [tinyint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ObjetoDigitalTipoOperation] PRIMARY KEY CLUSTERED 
(
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ObjetoDigitalTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (2, 0)
INSERT [dbo].[ObjetoDigitalTipoOperation] ([IDTipoOperation], [isDeleted]) VALUES (3, 0)

ALTER TABLE [dbo].[ObjetoDigitalTipoOperation] ADD  CONSTRAINT [DF_ObjetoDigitalTipoOperation_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[ObjetoDigitalTipoOperation]  WITH CHECK ADD  CONSTRAINT [FK_ObjetoDigitalTipoOperation_TipoOperation] FOREIGN KEY([IDTipoOperation])
REFERENCES [dbo].[TipoOperation] ([ID])
GO
ALTER TABLE [dbo].[ObjetoDigitalTipoOperation] CHECK CONSTRAINT [FK_ObjetoDigitalTipoOperation_TipoOperation]
GO

CREATE TABLE [dbo].[TrusteeObjetoDigitalPrivilege](
	[IDTrustee] [bigint] NOT NULL,
	[IDObjetoDigital] [bigint] NOT NULL,
	[IDTipoOperation] [tinyint] NOT NULL,
	[IsGrant] [bit] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_TrusteeObjetoDigitalPrivilege] PRIMARY KEY CLUSTERED 
(
	[IDTrustee] ASC,
	[IDObjetoDigital] ASC,
	[IDTipoOperation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permissão sobre objeto digital' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TrusteeObjetoDigitalPrivilege'
GO

ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege] ADD  CONSTRAINT [DF__TrusteeObjetoDigitalPrivilege__isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeObjetoDigitalPrivilege_ObjetoDigital] FOREIGN KEY([IDObjetoDigital])
REFERENCES [dbo].[ObjetoDigital] ([ID])
GO
ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege] CHECK CONSTRAINT [FK_TrusteeObjetoDigitalPrivilege_ObjetoDigital]
GO

ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeObjetoDigitalPrivilege_Trustee] FOREIGN KEY([IDTrustee])
REFERENCES [dbo].[Trustee] ([ID])
GO
ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege] CHECK CONSTRAINT [FK_TrusteeObjetoDigitalPrivilege_Trustee]
GO

ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeObjetoDigitalPrivilege_ObjetoDigitalTipoOperation] FOREIGN KEY([IDTipoOperation])
REFERENCES [dbo].[ObjetoDigitalTipoOperation] ([IDTipoOperation])
GO
ALTER TABLE [dbo].[TrusteeObjetoDigitalPrivilege] CHECK CONSTRAINT [FK_TrusteeObjetoDigitalPrivilege_ObjetoDigitalTipoOperation]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelImagemIlustracao](
	[ID] [bigint] NOT NULL,
	[Imagem] [image] NULL,
	[Modificacao] [datetime] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_NivelImagemIlustracao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NivelImagemIlustracao] ADD  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[NivelImagemIlustracao]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelImagemIlustracao_Nivel] FOREIGN KEY([ID])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[NivelImagemIlustracao] CHECK CONSTRAINT [FK_NivelImagemIlustracao_Nivel]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalConsulta](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designacao] [nvarchar](200) NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_LocalConsulta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LocalConsulta] ADD  CONSTRAINT [DF_LocalConsulta_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO


/****** Object:  Table [dbo].[ConfigAlfabeto]    Script Date: 03/07/2014 13:35:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConfigAlfabeto](
	[IDGlobalConfig] [bigint] NOT NULL,
	[IDIso15924] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ConfigAlfabeto] PRIMARY KEY CLUSTERED 
(
	[IDGlobalConfig] ASC,
	[IDIso15924] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ConfigAlfabeto]  WITH CHECK ADD  CONSTRAINT [FK_ConfigAlfabeto_Iso15924] FOREIGN KEY([IDIso15924])
REFERENCES [dbo].[Iso15924] ([ID])
GO

ALTER TABLE [dbo].[ConfigAlfabeto] CHECK CONSTRAINT [FK_ConfigAlfabeto_Iso15924]
GO

ALTER TABLE [dbo].[ConfigAlfabeto]  WITH CHECK ADD  CONSTRAINT [FK_ConfigAlfabeto_GlobalConfig] FOREIGN KEY([IDGlobalConfig])
REFERENCES [dbo].[GlobalConfig] ([ID])
GO

ALTER TABLE [dbo].[ConfigAlfabeto] CHECK CONSTRAINT [FK_ConfigAlfabeto_GlobalConfig]
GO

ALTER TABLE [dbo].[ConfigAlfabeto] ADD  CONSTRAINT [DF_ConfigAlfabeto_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO




/****** Object:  Table [dbo].[ConfigLingua]    Script Date: 03/07/2014 13:38:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConfigLingua](
	[IDGlobalConfig] [bigint] NOT NULL,
	[IDIso639] [bigint] NOT NULL,
	[Versao] [timestamp] NOT NULL,
	[isDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_ConfigLingua] PRIMARY KEY CLUSTERED 
(
	[IDGlobalConfig] ASC,
	[IDIso639] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ConfigLingua]  WITH CHECK ADD  CONSTRAINT [FK_ConfigLingua_Iso639] FOREIGN KEY([IDIso639])
REFERENCES [dbo].[Iso639] ([ID])
GO

ALTER TABLE [dbo].[ConfigLingua] CHECK CONSTRAINT [FK_ConfigLingua_Iso639]
GO

ALTER TABLE [dbo].[ConfigLingua]  WITH CHECK ADD  CONSTRAINT [FK_ConfigLingua_GlobalConfig] FOREIGN KEY([IDGlobalConfig])
REFERENCES [dbo].[GlobalConfig] ([ID])
GO

ALTER TABLE [dbo].[ConfigLingua] CHECK CONSTRAINT [FK_ConfigLingua_GlobalConfig]
GO

ALTER TABLE [dbo].[ConfigLingua] ADD  CONSTRAINT [DF_ConfigLingua_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO





SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ObjetoDigitalStatus](
	[pid] [nvarchar](20) NOT NULL,
	[quality] [nvarchar](20) NOT NULL,
	[state] [nvarchar](20) NOT NULL,
	[stateDescription] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL
) ON [PRIMARY]
GO

















/****** Object:  Default [DF__AutoElimi__isDel__40F9A68C]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[AutoEliminacao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ClientsSi__isDel__6C79016E]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ClientActivity] ADD  CONSTRAINT [DF__ClientsSi__isDel__6C79016E]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ClientsRe__isDel__6B84DD35]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ClientLicense] ADD  CONSTRAINT [DF__ClientsRe__isDel__6B84DD35]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ControloA__isDel__62EF9734]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAut] ADD  CONSTRAINT [DF__ControloA__isDel__62EF9734]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ControloA__isDel__44CA3770]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDataDeDescricao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ControloA__isDel__45BE5BA9]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDatasExistencia] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ControloA__isDel__46B27FE2]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDicionario] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ControloA__isDel__47A6A41B]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutEntidadeProdutora] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ControloA__isDel__489AC854]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutRel] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__Dicionari__isDel__577DE488]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Dicionario] ADD  CONSTRAINT [DF__Dicionari__isDel__577DE488]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_DocumentosMovimentados_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[DocumentosMovimentados] ADD  CONSTRAINT [DF_DocumentosMovimentados_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__FRDBase__isDelet__70499252]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FRDBase] ADD  CONSTRAINT [DF__FRDBase__isDelet__70499252]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__FRDBaseDa__isDel__035C66C6]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FRDBaseDataDeDescricao] ADD  CONSTRAINT [DF__FRDBaseDa__isDel__035C66C6]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__FunctionO__isDel__4D5F7D71]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FunctionOperation] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__GlobalCon__isDel__55959C16]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[GlobalConfig] ADD  CONSTRAINT [DF__GlobalCon__isDel__55959C16]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__IndexFRDC__isDel__4F47C5E3]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[IndexFRDCA] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Integ_EntidadeExterna_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Integ_EntidadeExterna] ADD  CONSTRAINT [DF_Integ_EntidadeExterna_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Integ_RelacaoExternaNivel_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Integ_RelacaoExternaNivel] ADD  CONSTRAINT [DF_Integ_RelacaoExternaNivel_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Integ_RelacaoExternaControloAut_isDeleted]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_RelacaoExternaControloAut] ADD  CONSTRAINT [DF_Integ_RelacaoExternaControloAut_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Integ_Sistema_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Integ_Sistema] ADD  CONSTRAINT [DF_Integ_Sistema_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Integ_TipoEntidade_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Integ_TipoEntidade] ADD  CONSTRAINT [DF_Integ_TipoEntidade_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__Iso15924__isDele__503BEA1C]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Iso15924] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__Iso3166__isDelet__51300E55]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Iso3166] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__Iso639__isDelete__5224328E]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Iso639] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_LicenseModules_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[LicenseModules] ADD  CONSTRAINT [DF_LicenseModules_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_ListaModelosAvaliacao_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ListaModelosAvaliacao] ADD  CONSTRAINT [DF_ListaModelosAvaliacao_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_ModelosAvaliacao_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ModelosAvaliacao] ADD  CONSTRAINT [DF_ModelosAvaliacao_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoClient__isDel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF__TipoClient__isDel]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Movimento_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Movimento] ADD  CONSTRAINT [DF_Movimento_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__Nivel__isDeleted__56E8E7AB]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Nivel] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__NivelCont__isDel__57DD0BE4]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelControloAut] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__NivelDesi__isDel__58D1301D]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelDesignado] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_NivelTipoOperation_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelTipoOperation] ADD  CONSTRAINT [DF_NivelTipoOperation_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_NivelUnidadeFisica_GuiaIncorporacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisica] ADD  CONSTRAINT [DF_NivelUnidadeFisica_GuiaIncorporacao]  DEFAULT ('') FOR [GuiaIncorporacao]
GO
/****** Object:  Default [DF__NivelUnid__isDel__7E97B1A9]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisica] ADD  CONSTRAINT [DF__NivelUnid__isDel__7E97B1A9]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__NivelUnid__isDel__5D95E53A]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisicaCodigo] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__ProductFu__isDel__699C94C3]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ProductFunction] ADD  CONSTRAINT [DF__ProductFu__isDel__699C94C3]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__RelacaoHi__isDel__5F7E2DAC]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoHierarquica] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__RelacaoTi__isDel__607251E5]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoTipoNivelRelacionado] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDAlfabeto_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAlfabeto] ADD  CONSTRAINT [DF_SFRDAlfabeto_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDAvaliacao_TabelaAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao] ADD  CONSTRAINT [DF_SFRDAvaliacao_TabelaAvaliacao]  DEFAULT ('0') FOR [AvaliacaoTabela]
GO
/****** Object:  Default [DF__SFRDAvali__isDel__7AC720C5]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao] ADD  CONSTRAINT [DF__SFRDAvali__isDel__7AC720C5]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDAvali__isDel__65370702]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacaoRel] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDCondi__isDel__7CAF6937]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDCondicaoDeAcesso] ADD  CONSTRAINT [DF__SFRDCondi__isDel__7CAF6937]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDConte__isDel__0915401C]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDConteudoEEstrutura] ADD  CONSTRAINT [DF__SFRDConte__isDel__0915401C]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDConte__isDel__0638D371]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDContexto] ADD  CONSTRAINT [DF__SFRDConte__isDel__0638D371]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDDatas__isDel__690797E6]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDDatasProducao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDDimensaoSuporte_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDDimensaoSuporte] ADD  CONSTRAINT [DF_SFRDDimensaoSuporte_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDDocum__isDel__7BBB44FE]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDDocumentacaoAssociada] ADD  CONSTRAINT [DF__SFRDDocum__isDel__7BBB44FE]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDEstad__isDel__6BE40491]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDEstadoDeConservacao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDForma__isDel__6CD828CA]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDFormaSuporteAcond] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDImage__isDel__08211BE3]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDImagem] ADD  CONSTRAINT [DF__SFRDImage__isDel__08211BE3]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDImage__isDel__587208C1]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDImagemVolume] ADD  CONSTRAINT [DF__SFRDImage__isDel__587208C1]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDLingua_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDLingua] ADD  CONSTRAINT [DF_SFRDLingua_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDMater__isDel__70A8B9AE]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDMaterialDeSuporte] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDNotaG__isDel__0544AF38]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDNotaGeral] ADD  CONSTRAINT [DF__SFRDNotaG__isDel__0544AF38]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDOrden__isDel__72910220]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDOrdenacao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDTecni__isDel__73852659]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDTecnicasDeRegisto] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDTradi__isDel__74794A92]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDTradicaoDocumental] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDUFAutoEliminacao_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFAutoEliminacao] ADD  CONSTRAINT [DF_SFRDUFAutoEliminacao_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDDescr__isDel__7DA38D70]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFComponente] ADD  CONSTRAINT [DF__SFRDDescr__isDel__7DA38D70]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDCota__isDele__007FFA1B]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFCota] ADD  CONSTRAINT [DF__SFRDCota__isDele__007FFA1B]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDUFDescricaoFisica_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFDescricaoFisica] ADD  CONSTRAINT [DF_SFRDUFDescricaoFisica_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDUFMateriaisComponente_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFMateriaisComponente] ADD  CONSTRAINT [DF_SFRDUFMateriaisComponente_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_SFRDUFTecnicasRegComponente_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFTecnicasRegComponente] ADD  CONSTRAINT [DF_SFRDUFTecnicasRegComponente_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__SFRDUnida__isDel__7B264821]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUnidadeFisica] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TipoAcondicionamento_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoAcondicionamento] ADD  CONSTRAINT [DF_TipoAcondicionamento_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoContr__isDel__7D0E9093]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoControloAutForma] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoContr__isDel__7E02B4CC]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoControloAutRel] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoDensi__isDel__7EF6D905]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoDensidade] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoEntid__isDel__7FEAFD3E]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoEntidadeProdutora] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TipoEntrega_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoEntrega] ADD  CONSTRAINT [DF_TipoEntrega_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TipoEstadoConservacao_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoEstadoConservacao] ADD  CONSTRAINT [DF_TipoEstadoConservacao_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoEstad__isDel__01D345B0]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoEstadoDeConservacao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoForma__isDel__02C769E9]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoFormaSuporteAcond] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoFRDBa__isDel__03BB8E22]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoFRDBase] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoFunct__isDel__04AFB25B]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoFunction] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoFunct__isDel__05A3D694]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoFunctionGroup] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TipoMaterial_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoMaterial] ADD  CONSTRAINT [DF_TipoMaterial_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoMater__isDel__078C1F06]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoMaterialDeSuporte] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoMedid__isDel__0880433F]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoMedida] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoNivel__isDel__09746778]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNivel] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoNivel__isDel__0A688BB1]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNivelRelacionado] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TipoNivelRelacionadoCodigo_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNivelRelacionadoCodigo] ADD  CONSTRAINT [DF_TipoNivelRelacionadoCodigo_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoNotic__isDel__0C50D423]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNoticiaATipoControloAForma] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoNotic__isDel__0D44F85C]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNoticiaAut] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoOpera__isDel__0E391C95]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoOperation] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoOrden__isDel__0F2D40CE]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoOrdenacao] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoPerti__isDel__10216507]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoPertinencia] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoServer__isDel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoServer] ADD  CONSTRAINT [DF__TipoServer__isDel]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoSubDe__isDel__1209AD79]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoSubDensidade] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoQuant__isDel__50D0E6F9]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoSuporte] ADD  CONSTRAINT [DF__TipoQuant__isDel__50D0E6F9]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TipoTecnicaRegisto_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoTecnicaRegisto] ADD  CONSTRAINT [DF_TipoTecnicaRegisto_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoTecni__isDel__14E61A24]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoTecnicasDeRegisto] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TipoTradi__isDel__15DA3E5D]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoTradicaoDocumental] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_Trustee_CatCode]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Trustee] ADD  CONSTRAINT [DF_Trustee_CatCode]  DEFAULT ('USR') FOR [CatCode]
GO
/****** Object:  Default [DF_Trustee_IsActive]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Trustee] ADD  CONSTRAINT [DF_Trustee_IsActive]  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF_Trustee_IsVisibleObject]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Trustee] ADD  CONSTRAINT [DF_Trustee_IsVisibleObject]  DEFAULT ('1') FOR [IsVisibleObject]
GO
/****** Object:  Default [DF_Trustee_IsVisibleFunction]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Trustee] ADD  CONSTRAINT [DF_Trustee_IsVisibleFunction]  DEFAULT ('1') FOR [IsVisibleFunction]
GO
/****** Object:  Default [DF__Trustee__isDelet__455F344D]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Trustee] ADD  CONSTRAINT [DF__Trustee__isDelet__455F344D]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TrusteeGr__isDel__1B9317B3]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeGroup] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_NewTrusteeNivelPrivilege_isDeleted]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeNivelPrivilege] ADD  CONSTRAINT [DF_NewTrusteeNivelPrivilege_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__TrusteePr__isDel__1D7B6025]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteePrivilege] ADD  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF_TrusteeUser_IsAuthority]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeUser] ADD  CONSTRAINT [DF_TrusteeUser_IsAuthority]  DEFAULT ('0') FOR [IsAuthority]
GO
ALTER TABLE [dbo].[TrusteeUser] ADD  CONSTRAINT [DF_TrusteeUser_IsLDAPUser]  DEFAULT ('0') FOR [IsLDAPUser]
GO
/****** Object:  Default [DF__TrusteeUs__isDel__61FB72FB]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeUser] ADD  CONSTRAINT [DF__TrusteeUs__isDel__61FB72FB]  DEFAULT ('0') FOR [isDeleted]
GO
/****** Object:  Default [DF__UserGroup__isDel__2057CCD0]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[UserGroups] ADD  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[SFRDAgrupador]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAgrupador_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDAgrupador] CHECK CONSTRAINT [FK_SFRDAgrupador_FRDBase]
GO

ALTER TABLE [dbo].[DepositoTipoOperation]  WITH CHECK ADD  CONSTRAINT [FK_DepositoTipoOperation_TipoOperation] FOREIGN KEY([IDTipoOperation])
REFERENCES [dbo].[TipoOperation] ([ID])
GO
ALTER TABLE [dbo].[DepositoTipoOperation] CHECK CONSTRAINT [FK_DepositoTipoOperation_TipoOperation]
GO

ALTER TABLE [dbo].[SFRDAutor]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAutor_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDAutor] CHECK CONSTRAINT [FK_SFRDAutor_FRDBase]
GO

ALTER TABLE [dbo].[SFRDAutor]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAutor_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[SFRDAutor] CHECK CONSTRAINT [FK_SFRDAutor_ControloAut]
GO

ALTER TABLE [dbo].[TrusteeDepositoPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeDepositoPrivilege_Deposito] FOREIGN KEY([IDDeposito])
REFERENCES [dbo].[Deposito] ([ID])
GO
ALTER TABLE [dbo].[TrusteeDepositoPrivilege] CHECK CONSTRAINT [FK_TrusteeDepositoPrivilege_Deposito]
GO

ALTER TABLE [dbo].[TrusteeDepositoPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeDepositoPrivilege_Trustee] FOREIGN KEY([IDTrustee])
REFERENCES [dbo].[Trustee] ([ID])
GO
ALTER TABLE [dbo].[TrusteeDepositoPrivilege] CHECK CONSTRAINT [FK_TrusteeDepositoPrivilege_Trustee]
GO

ALTER TABLE [dbo].[TrusteeDepositoPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeDepositoPrivilege_DepositoTipoOperation] FOREIGN KEY([IDTipoOperation])
REFERENCES [dbo].[DepositoTipoOperation] ([IDTipoOperation])
GO
ALTER TABLE [dbo].[TrusteeDepositoPrivilege] CHECK CONSTRAINT [FK_TrusteeDepositoPrivilege_DepositoTipoOperation]
GO

ALTER TABLE [dbo].[NivelUnidadeFisicaDeposito] WITH NOCHECK ADD  CONSTRAINT [FK_NivelUnidadeFisicaDeposito_Deposito] FOREIGN KEY([IDDeposito])
REFERENCES [dbo].[Deposito] ([ID])
GO

ALTER TABLE [dbo].[NivelUnidadeFisicaDeposito] CHECK CONSTRAINT [FK_NivelUnidadeFisicaDeposito_Deposito]
GO

ALTER TABLE [dbo].[NivelUnidadeFisicaDeposito]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelUnidadeFisica_NivelUnidadeFisica] FOREIGN KEY([IDNivelUnidadeFisica])
REFERENCES [dbo].[NivelUnidadeFisica] ([ID])
GO

ALTER TABLE [dbo].[NivelUnidadeFisicaDeposito] CHECK CONSTRAINT [FK_NivelUnidadeFisica_NivelUnidadeFisica]
GO

/****** Object:  ForeignKey [FK_ClientActivity_ClientLicense1]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ClientActivity]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientActivity_ClientLicense1] FOREIGN KEY([SequenceNumber], [GrantDate])
REFERENCES [dbo].[ClientLicense] ([SequenceNumber], [GrantDate])
GO
ALTER TABLE [dbo].[ClientActivity] CHECK CONSTRAINT [FK_ClientActivity_ClientLicense1]
GO
/****** Object:  ForeignKey [FK_ControloAut_Iso15924]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAut]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAut_Iso15924] FOREIGN KEY([IDIso15924])
REFERENCES [dbo].[Iso15924] ([ID])
GO
ALTER TABLE [dbo].[ControloAut] CHECK CONSTRAINT [FK_ControloAut_Iso15924]
GO
/****** Object:  ForeignKey [FK_ControloAut_Iso639]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAut]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAut_Iso639] FOREIGN KEY([IDIso639p2])
REFERENCES [dbo].[Iso639] ([ID])
GO
ALTER TABLE [dbo].[ControloAut] CHECK CONSTRAINT [FK_ControloAut_Iso639]
GO
/****** Object:  ForeignKey [FK_ControloAut_NoticiaAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAut]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAut_NoticiaAut] FOREIGN KEY([IDTipoNoticiaAut])
REFERENCES [dbo].[TipoNoticiaAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAut] CHECK CONSTRAINT [FK_ControloAut_NoticiaAut]
GO
/****** Object:  ForeignKey [FK_ControloAutDataDeDescricao_TrusteeUser]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDataDeDescricao]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDataDeDescricao_TrusteeUser] FOREIGN KEY([IDTrusteeAuthority])
REFERENCES [dbo].[TrusteeUser] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDataDeDescricao] CHECK CONSTRAINT [FK_ControloAutDataDeDescricao_TrusteeUser]
GO
/****** Object:  ForeignKey [FK_ControloAutDataDeDescricao_User]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDataDeDescricao]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDataDeDescricao_User] FOREIGN KEY([IDTrusteeOperator])
REFERENCES [dbo].[TrusteeUser] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDataDeDescricao] CHECK CONSTRAINT [FK_ControloAutDataDeDescricao_User]
GO
/****** Object:  ForeignKey [FK_ControloAutDatasExistencia_ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDatasExistencia]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDatasExistencia_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDatasExistencia] CHECK CONSTRAINT [FK_ControloAutDatasExistencia_ControloAut]
GO
/****** Object:  ForeignKey [FK_ControloAutDicionario_ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDicionario]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDicionario_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDicionario] CHECK CONSTRAINT [FK_ControloAutDicionario_ControloAut]
GO
/****** Object:  ForeignKey [FK_ControloAutDicionario_ControloAutForma]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDicionario]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDicionario_ControloAutForma] FOREIGN KEY([IDTipoControloAutForma])
REFERENCES [dbo].[TipoControloAutForma] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDicionario] CHECK CONSTRAINT [FK_ControloAutDicionario_ControloAutForma]
GO
/****** Object:  ForeignKey [FK_ControloAutDicionario_Dicionario]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutDicionario]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDicionario_Dicionario] FOREIGN KEY([IDDicionario])
REFERENCES [dbo].[Dicionario] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDicionario] CHECK CONSTRAINT [FK_ControloAutDicionario_Dicionario]
GO
/****** Object:  ForeignKey [FK_ControloAutEntidadeProdutora_ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutEntidadeProdutora]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutEntidadeProdutora_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAutEntidadeProdutora] CHECK CONSTRAINT [FK_ControloAutEntidadeProdutora_ControloAut]
GO
/****** Object:  ForeignKey [FK_ControloAutEntidadeProdutora_TipoEntidadeProdutora]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutEntidadeProdutora]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutEntidadeProdutora_TipoEntidadeProdutora] FOREIGN KEY([IDTipoEntidadeProdutora])
REFERENCES [dbo].[TipoEntidadeProdutora] ([ID])
GO
ALTER TABLE [dbo].[ControloAutEntidadeProdutora] CHECK CONSTRAINT [FK_ControloAutEntidadeProdutora_TipoEntidadeProdutora]
GO
/****** Object:  ForeignKey [FK_ControloAutRel_ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutRel]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutRel_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAutRel] CHECK CONSTRAINT [FK_ControloAutRel_ControloAut]
GO
/****** Object:  ForeignKey [FK_ControloAutRel_ControloAut1]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutRel]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutRel_ControloAut1] FOREIGN KEY([IDControloAutAlias])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAutRel] CHECK CONSTRAINT [FK_ControloAutRel_ControloAut1]
GO
/****** Object:  ForeignKey [FK_ControloAutRel_ControloAutTipoRel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ControloAutRel]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutRel_ControloAutTipoRel] FOREIGN KEY([IDTipoRel])
REFERENCES [dbo].[TipoControloAutRel] ([ID])
GO
ALTER TABLE [dbo].[ControloAutRel] CHECK CONSTRAINT [FK_ControloAutRel_ControloAutTipoRel]
GO
/****** Object:  ForeignKey [FK_Movimento_DocumentosMovimentados]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[DocumentosMovimentados]  WITH NOCHECK ADD  CONSTRAINT [FK_Movimento_DocumentosMovimentados] FOREIGN KEY([IDMovimento])
REFERENCES [dbo].[Movimento] ([ID])
GO
ALTER TABLE [dbo].[DocumentosMovimentados] CHECK CONSTRAINT [FK_Movimento_DocumentosMovimentados]
GO
/****** Object:  ForeignKey [FK_Nivel_DocumentosMovimentados]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[DocumentosMovimentados]  WITH NOCHECK ADD  CONSTRAINT [FK_Nivel_DocumentosMovimentados] FOREIGN KEY([IDNivel])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[DocumentosMovimentados] CHECK CONSTRAINT [FK_Nivel_DocumentosMovimentados]
GO
/****** Object:  ForeignKey [FK_FRDBase_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FRDBase]  WITH NOCHECK ADD  CONSTRAINT [FK_FRDBase_Nivel] FOREIGN KEY([IDNivel])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[FRDBase] CHECK CONSTRAINT [FK_FRDBase_Nivel]
GO
/****** Object:  ForeignKey [FK_FRDBase_TipoFRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FRDBase]  WITH NOCHECK ADD  CONSTRAINT [FK_FRDBase_TipoFRDBase] FOREIGN KEY([IDTipoFRDBase])
REFERENCES [dbo].[TipoFRDBase] ([ID])
GO
ALTER TABLE [dbo].[FRDBase] CHECK CONSTRAINT [FK_FRDBase_TipoFRDBase]
GO
/****** Object:  ForeignKey [FK_FRDBaseDataDeDescricao_TrusteeUser]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FRDBaseDataDeDescricao]  WITH NOCHECK ADD  CONSTRAINT [FK_FRDBaseDataDeDescricao_TrusteeUser] FOREIGN KEY([IDTrusteeAuthority])
REFERENCES [dbo].[TrusteeUser] ([ID])
GO
ALTER TABLE [dbo].[FRDBaseDataDeDescricao] CHECK CONSTRAINT [FK_FRDBaseDataDeDescricao_TrusteeUser]
GO
/****** Object:  ForeignKey [FK_FRDBaseDataDeDescricao_User]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FRDBaseDataDeDescricao]  WITH NOCHECK ADD  CONSTRAINT [FK_FRDBaseDataDeDescricao_User] FOREIGN KEY([IDTrusteeOperator])
REFERENCES [dbo].[TrusteeUser] ([ID])
GO
ALTER TABLE [dbo].[FRDBaseDataDeDescricao] CHECK CONSTRAINT [FK_FRDBaseDataDeDescricao_User]
GO
/****** Object:  ForeignKey [FK_FunctionOperation_TipoFunction]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FunctionOperation]  WITH NOCHECK ADD  CONSTRAINT [FK_FunctionOperation_TipoFunction] FOREIGN KEY([IDTipoFunctionGroup], [IdxTipoFunction])
REFERENCES [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx])
GO
ALTER TABLE [dbo].[FunctionOperation] CHECK CONSTRAINT [FK_FunctionOperation_TipoFunction]
GO
/****** Object:  ForeignKey [FK_FunctionOperation_TipoOperation]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[FunctionOperation]  WITH NOCHECK ADD  CONSTRAINT [FK_FunctionOperation_TipoOperation] FOREIGN KEY([IDTipoOperation])
REFERENCES [dbo].[TipoOperation] ([ID])
GO
ALTER TABLE [dbo].[FunctionOperation] CHECK CONSTRAINT [FK_FunctionOperation_TipoOperation]
GO
/****** Object:  ForeignKey [FK_IndexFRDCA_ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[IndexFRDCA]  WITH NOCHECK ADD  CONSTRAINT [FK_IndexFRDCA_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[IndexFRDCA] CHECK CONSTRAINT [FK_IndexFRDCA_ControloAut]
GO
/****** Object:  ForeignKey [FK_IndexFRDCA_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[IndexFRDCA]  WITH NOCHECK ADD  CONSTRAINT [FK_IndexFRDCA_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[IndexFRDCA] CHECK CONSTRAINT [FK_IndexFRDCA_FRDBase]
GO
/****** Object:  ForeignKey [FK_EntidadeExterna_TipoEntidade]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_EntidadeExterna]  WITH CHECK ADD  CONSTRAINT [FK_EntidadeExterna_TipoEntidade] FOREIGN KEY([IDTipoEntidade])
REFERENCES [dbo].[Integ_TipoEntidade] ([ID])
GO
ALTER TABLE [dbo].[Integ_EntidadeExterna] CHECK CONSTRAINT [FK_EntidadeExterna_TipoEntidade]
GO
/****** Object:  ForeignKey [FK_EntidadeExterna_Sistema]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_EntidadeExterna]  WITH CHECK ADD  CONSTRAINT [FK_EntidadeExterna_Sistema] FOREIGN KEY([IDSistema])
REFERENCES [dbo].[Integ_Sistema] ([ID])
GO
ALTER TABLE [dbo].[Integ_EntidadeExterna] CHECK CONSTRAINT [FK_EntidadeExterna_Sistema]
GO
/****** Object:  ForeignKey [FK_RelacaoExternaNivel_EntidadeExterna]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_RelacaoExternaNivel]  WITH CHECK ADD  CONSTRAINT [FK_RelacaoExternaNivel_EntidadeExterna] FOREIGN KEY([IDEntidadeExterna])
REFERENCES [dbo].[Integ_EntidadeExterna] ([ID])
GO
ALTER TABLE [dbo].[Integ_RelacaoExternaNivel] CHECK CONSTRAINT [FK_RelacaoExternaNivel_EntidadeExterna]
GO
/****** Object:  ForeignKey [FK_RelacaoExternaNivel_Nivel]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_RelacaoExternaNivel]  WITH CHECK ADD  CONSTRAINT [FK_RelacaoExternaNivel_Nivel] FOREIGN KEY([IDNivel])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[Integ_RelacaoExternaNivel] CHECK CONSTRAINT [FK_RelacaoExternaNivel_Nivel]
GO
/****** Object:  ForeignKey [FK_RelacaoExternaControloAut_EntidadeExterna]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_RelacaoExternaControloAut]  WITH CHECK ADD  CONSTRAINT [FK_RelacaoExternaControloAut_EntidadeExterna] FOREIGN KEY([IDEntidadeExterna])
REFERENCES [dbo].[Integ_EntidadeExterna] ([ID])
GO
ALTER TABLE [dbo].[Integ_RelacaoExternaControloAut] CHECK CONSTRAINT [FK_RelacaoExternaControloAut_EntidadeExterna]
GO
/****** Object:  ForeignKey [FK_RelacaoExternaControloAut_ControloAut]    Script Date: 07/30/2009 17:02:16 ******/
ALTER TABLE [dbo].[Integ_RelacaoExternaControloAut]  WITH CHECK ADD  CONSTRAINT [FK_RelacaoExternaControloAut_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[Integ_RelacaoExternaControloAut] CHECK CONSTRAINT [FK_RelacaoExternaControloAut_ControloAut]
GO
/****** Object:  ForeignKey [FK_LicenseModules_ClientLicense]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[LicenseModules]  WITH CHECK ADD  CONSTRAINT [FK_LicenseModules_ClientLicense] FOREIGN KEY([SequenceNumber], [GrantDate])
REFERENCES [dbo].[ClientLicense] ([SequenceNumber], [GrantDate])
GO
ALTER TABLE [dbo].[LicenseModules] CHECK CONSTRAINT [FK_LicenseModules_ClientLicense]
GO
/****** Object:  ForeignKey [FK_LicenseModules_Modules]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[LicenseModules]  WITH CHECK ADD  CONSTRAINT [FK_LicenseModules_Modules] FOREIGN KEY([IDModule])
REFERENCES [dbo].[Modules] ([ID])
GO
ALTER TABLE [dbo].[LicenseModules] CHECK CONSTRAINT [FK_LicenseModules_Modules]
GO
/****** Object:  ForeignKey [FK_ModelosAvaliacao_ListaModelosAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ModelosAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_ModelosAvaliacao_ListaModelosAvaliacao] FOREIGN KEY([IDListaModelosAvaliacao])
REFERENCES [dbo].[ListaModelosAvaliacao] ([ID])
GO
ALTER TABLE [dbo].[ModelosAvaliacao] CHECK CONSTRAINT [FK_ModelosAvaliacao_ListaModelosAvaliacao]
GO
/****** Object:  ForeignKey [FK_Nivel_TipoNivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[Nivel]  WITH NOCHECK ADD  CONSTRAINT [FK_Nivel_TipoNivel] FOREIGN KEY([IDTipoNivel])
REFERENCES [dbo].[TipoNivel] ([ID])
GO
ALTER TABLE [dbo].[Nivel] CHECK CONSTRAINT [FK_Nivel_TipoNivel]
GO
/****** Object:  ForeignKey [FK_Movimento_MovimentoEntidade]    Script Date: 01/22/2010 17:07:21 ******/
ALTER TABLE [dbo].[Movimento]  WITH NOCHECK ADD  CONSTRAINT [FK_Movimento_MovimentoEntidade] FOREIGN KEY([IDEntidade])
REFERENCES [dbo].[MovimentoEntidade] ([ID])
GO
ALTER TABLE [dbo].[Movimento] CHECK CONSTRAINT [FK_Movimento_MovimentoEntidade]

GO
/****** Object:  ForeignKey [FK_NivelControloAut_ControloAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelControloAut]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelControloAut_ControloAut] FOREIGN KEY([IDControloAut])
REFERENCES [dbo].[ControloAut] ([ID])
GO
ALTER TABLE [dbo].[NivelControloAut] CHECK CONSTRAINT [FK_NivelControloAut_ControloAut]
GO
/****** Object:  ForeignKey [FK_NivelControloAut_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelControloAut]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelControloAut_Nivel] FOREIGN KEY([ID])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[NivelControloAut] CHECK CONSTRAINT [FK_NivelControloAut_Nivel]
GO
/****** Object:  ForeignKey [FK_NivelDesignado_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelDesignado]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelDesignado_Nivel] FOREIGN KEY([ID])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[NivelDesignado] CHECK CONSTRAINT [FK_NivelDesignado_Nivel]
GO
/****** Object:  ForeignKey [FK_NivelTipoOperation_TipoOperation]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelTipoOperation]  WITH CHECK ADD  CONSTRAINT [FK_NivelTipoOperation_TipoOperation] FOREIGN KEY([IDTipoOperation])
REFERENCES [dbo].[TipoOperation] ([ID])
GO
ALTER TABLE [dbo].[NivelTipoOperation] CHECK CONSTRAINT [FK_NivelTipoOperation_TipoOperation]
GO
/****** Object:  ForeignKey [FK_NivelUnidadeFisica_NivelDesignado]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelUnidadeFisica_NivelDesignado] FOREIGN KEY([ID])
REFERENCES [dbo].[NivelDesignado] ([ID])
GO
ALTER TABLE [dbo].[NivelUnidadeFisica] CHECK CONSTRAINT [FK_NivelUnidadeFisica_NivelDesignado]
GO
/****** Object:  ForeignKey [FK_NivelUnidadeFisica_TipoEntrega]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelUnidadeFisica_TipoEntrega] FOREIGN KEY([IDTipoEntrega])
REFERENCES [dbo].[TipoEntrega] ([ID])
GO
ALTER TABLE [dbo].[NivelUnidadeFisica] CHECK CONSTRAINT [FK_NivelUnidadeFisica_TipoEntrega]
GO
/****** Object:  ForeignKey [FK_NivelUnidadeFisica_LocalConsulta]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelUnidadeFisica_LocalConsulta] FOREIGN KEY([IDLocalConsulta])
REFERENCES [dbo].[LocalConsulta] ([ID])
GO
ALTER TABLE [dbo].[NivelUnidadeFisica] CHECK CONSTRAINT [FK_NivelUnidadeFisica_LocalConsulta]
GO
/****** Object:  ForeignKey [FK_NivelUnidadeFisicaCodigo_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[NivelUnidadeFisicaCodigo]  WITH NOCHECK ADD  CONSTRAINT [FK_NivelUnidadeFisicaCodigo_Nivel] FOREIGN KEY([ID])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[NivelUnidadeFisicaCodigo] CHECK CONSTRAINT [FK_NivelUnidadeFisicaCodigo_Nivel]
GO
/****** Object:  ForeignKey [FK_ProductFunction_Modules]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ProductFunction]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductFunction_Modules] FOREIGN KEY([IDModule])
REFERENCES [dbo].[Modules] ([ID])
GO
ALTER TABLE [dbo].[ProductFunction] CHECK CONSTRAINT [FK_ProductFunction_Modules]
GO
/****** Object:  ForeignKey [FK_ProductFunction_TipoFunction]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ProductFunction]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductFunction_TipoFunction] FOREIGN KEY([IDTipoFunctionGroup], [IdxTipoFunction])
REFERENCES [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx])
GO
ALTER TABLE [dbo].[ProductFunction] CHECK CONSTRAINT [FK_ProductFunction_TipoFunction]
GO
/****** Object:  ForeignKey [FK_ProductFunction_TipoServer]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[ProductFunction]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductFunction_TipoServer] FOREIGN KEY([IDTipoServer])
REFERENCES [dbo].[TipoServer] ([ID])
GO
ALTER TABLE [dbo].[ProductFunction] CHECK CONSTRAINT [FK_ProductFunction_TipoServer]
GO
/****** Object:  ForeignKey [FK_HierarquiaNivel_Nivel2]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoHierarquica]  WITH NOCHECK ADD  CONSTRAINT [FK_HierarquiaNivel_Nivel2] FOREIGN KEY([ID])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[RelacaoHierarquica] CHECK CONSTRAINT [FK_HierarquiaNivel_Nivel2]
GO
/****** Object:  ForeignKey [FK_HierarquiaNivel_Nivel3]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoHierarquica]  WITH NOCHECK ADD  CONSTRAINT [FK_HierarquiaNivel_Nivel3] FOREIGN KEY([IDUpper])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[RelacaoHierarquica] CHECK CONSTRAINT [FK_HierarquiaNivel_Nivel3]
GO
/****** Object:  ForeignKey [FK_RelacaoHierarquica_TipoNivelRelacionado]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoHierarquica]  WITH NOCHECK ADD  CONSTRAINT [FK_RelacaoHierarquica_TipoNivelRelacionado] FOREIGN KEY([IDTipoNivelRelacionado])
REFERENCES [dbo].[TipoNivelRelacionado] ([ID])
GO
ALTER TABLE [dbo].[RelacaoHierarquica] CHECK CONSTRAINT [FK_RelacaoHierarquica_TipoNivelRelacionado]
GO
/****** Object:  ForeignKey [FK_RelacaoTipoNivelRelacionado_TipoNivelRelacionado]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoTipoNivelRelacionado]  WITH NOCHECK ADD  CONSTRAINT [FK_RelacaoTipoNivelRelacionado_TipoNivelRelacionado] FOREIGN KEY([ID])
REFERENCES [dbo].[TipoNivelRelacionado] ([ID])
GO
ALTER TABLE [dbo].[RelacaoTipoNivelRelacionado] CHECK CONSTRAINT [FK_RelacaoTipoNivelRelacionado_TipoNivelRelacionado]
GO
/****** Object:  ForeignKey [FK_RelacaoTipoNivelRelacionado_TipoNivelRelacionado1]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[RelacaoTipoNivelRelacionado]  WITH NOCHECK ADD  CONSTRAINT [FK_RelacaoTipoNivelRelacionado_TipoNivelRelacionado1] FOREIGN KEY([IDUpper])
REFERENCES [dbo].[TipoNivelRelacionado] ([ID])
GO
ALTER TABLE [dbo].[RelacaoTipoNivelRelacionado] CHECK CONSTRAINT [FK_RelacaoTipoNivelRelacionado_TipoNivelRelacionado1]
GO
/****** Object:  ForeignKey [FK_SFRDAlfabeto_Iso15924]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAlfabeto]  WITH CHECK ADD  CONSTRAINT [FK_SFRDAlfabeto_Iso15924] FOREIGN KEY([IDIso15924])
REFERENCES [dbo].[Iso15924] ([ID])
GO
ALTER TABLE [dbo].[SFRDAlfabeto] CHECK CONSTRAINT [FK_SFRDAlfabeto_Iso15924]
GO
/****** Object:  ForeignKey [FK_SFRDAlfabeto_SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAlfabeto]  WITH CHECK ADD  CONSTRAINT [FK_SFRDAlfabeto_SFRDCondicaoDeAcesso] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDCondicaoDeAcesso] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDAlfabeto] CHECK CONSTRAINT [FK_SFRDAlfabeto_SFRDCondicaoDeAcesso]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacao_AutoEliminacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacao_AutoEliminacao] FOREIGN KEY([IDAutoEliminacao])
REFERENCES [dbo].[AutoEliminacao] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacao] CHECK CONSTRAINT [FK_SFRDAvaliacao_AutoEliminacao]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacao_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacao_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacao] CHECK CONSTRAINT [FK_SFRDAvaliacao_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacao_ModelosAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacao_ModelosAvaliacao] FOREIGN KEY([IDModeloAvaliacao])
REFERENCES [dbo].[ModelosAvaliacao] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacao] CHECK CONSTRAINT [FK_SFRDAvaliacao_ModelosAvaliacao]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacao_TipoDensidade]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacao_TipoDensidade] FOREIGN KEY([IDDensidade])
REFERENCES [dbo].[TipoDensidade] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacao] CHECK CONSTRAINT [FK_SFRDAvaliacao_TipoDensidade]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacao_TipoPertinencia]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacao_TipoPertinencia] FOREIGN KEY([IDPertinencia])
REFERENCES [dbo].[TipoPertinencia] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacao] CHECK CONSTRAINT [FK_SFRDAvaliacao_TipoPertinencia]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacao_TipoSubDensidade]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacao_TipoSubDensidade] FOREIGN KEY([IDSubdensidade])
REFERENCES [dbo].[TipoSubDensidade] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacao] CHECK CONSTRAINT [FK_SFRDAvaliacao_TipoSubDensidade]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacaoRel_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacaoRel]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacaoRel_Nivel] FOREIGN KEY([IDNivel])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacaoRel] CHECK CONSTRAINT [FK_SFRDAvaliacaoRel_Nivel]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacaoRel_SFRDAvaliacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacaoRel]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacaoRel_SFRDAvaliacao] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDAvaliacao] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDAvaliacaoRel] CHECK CONSTRAINT [FK_SFRDAvaliacaoRel_SFRDAvaliacao]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacaoRel_TipoDensidade]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacaoRel]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacaoRel_TipoDensidade] FOREIGN KEY([Densidade])
REFERENCES [dbo].[TipoDensidade] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacaoRel] CHECK CONSTRAINT [FK_SFRDAvaliacaoRel_TipoDensidade]
GO
/****** Object:  ForeignKey [FK_SFRDAvaliacaoRel_TipoSubDensidade]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDAvaliacaoRel]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDAvaliacaoRel_TipoSubDensidade] FOREIGN KEY([SubDensidade])
REFERENCES [dbo].[TipoSubDensidade] ([ID])
GO
ALTER TABLE [dbo].[SFRDAvaliacaoRel] CHECK CONSTRAINT [FK_SFRDAvaliacaoRel_TipoSubDensidade]
GO
/****** Object:  ForeignKey [FK_SFRDCondicaoDeAcesso_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDCondicaoDeAcesso]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDCondicaoDeAcesso_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDCondicaoDeAcesso] CHECK CONSTRAINT [FK_SFRDCondicaoDeAcesso_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDConteudoEEstrutura_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDConteudoEEstrutura]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDConteudoEEstrutura_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDConteudoEEstrutura] CHECK CONSTRAINT [FK_SFRDConteudoEEstrutura_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDContexto_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDContexto]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDContexto_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDContexto] CHECK CONSTRAINT [FK_SFRDContexto_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDDatasProducao_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDDatasProducao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDDatasProducao_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDDatasProducao] CHECK CONSTRAINT [FK_SFRDDatasProducao_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDDimensaoSuporte_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDDimensaoSuporte]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDDimensaoSuporte_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDDimensaoSuporte] CHECK CONSTRAINT [FK_SFRDDimensaoSuporte_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDDocumentacaoAssociada_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDDocumentacaoAssociada]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDDocumentacaoAssociada_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDDocumentacaoAssociada] CHECK CONSTRAINT [FK_SFRDDocumentacaoAssociada_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDEstadoDeConservacao_SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDEstadoDeConservacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDEstadoDeConservacao_SFRDCondicaoDeAcesso] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDCondicaoDeAcesso] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDEstadoDeConservacao] CHECK CONSTRAINT [FK_SFRDEstadoDeConservacao_SFRDCondicaoDeAcesso]
GO
/****** Object:  ForeignKey [FK_SFRDEstadoDeConservacao_TipoEstadoDeConservacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDEstadoDeConservacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDEstadoDeConservacao_TipoEstadoDeConservacao] FOREIGN KEY([IDTipoEstadoDeConservacao])
REFERENCES [dbo].[TipoEstadoDeConservacao] ([ID])
GO
ALTER TABLE [dbo].[SFRDEstadoDeConservacao] CHECK CONSTRAINT [FK_SFRDEstadoDeConservacao_TipoEstadoDeConservacao]
GO
/****** Object:  ForeignKey [FK_SFRDFormaSuporteAcond_SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDFormaSuporteAcond]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDFormaSuporteAcond_SFRDCondicaoDeAcesso] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDCondicaoDeAcesso] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDFormaSuporteAcond] CHECK CONSTRAINT [FK_SFRDFormaSuporteAcond_SFRDCondicaoDeAcesso]
GO
/****** Object:  ForeignKey [FK_SFRDFormaSuporteAcond_TipoFormaSuporteAcond]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDFormaSuporteAcond]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDFormaSuporteAcond_TipoFormaSuporteAcond] FOREIGN KEY([IDTipoFormaSuporteAcond])
REFERENCES [dbo].[TipoFormaSuporteAcond] ([ID])
GO
ALTER TABLE [dbo].[SFRDFormaSuporteAcond] CHECK CONSTRAINT [FK_SFRDFormaSuporteAcond_TipoFormaSuporteAcond]
GO
/****** Object:  ForeignKey [FK_SFRDImagem_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDImagem]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDImagem_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDImagem] CHECK CONSTRAINT [FK_SFRDImagem_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDImagem_SFRDImagemVolume]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDImagem]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDImagem_SFRDImagemVolume] FOREIGN KEY([IDSFDImagemVolume])
REFERENCES [dbo].[SFRDImagemVolume] ([ID])
GO
ALTER TABLE [dbo].[SFRDImagem] CHECK CONSTRAINT [FK_SFRDImagem_SFRDImagemVolume]
GO
/****** Object:  ForeignKey [FK_SFRDLingua_Iso639]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDLingua]  WITH CHECK ADD  CONSTRAINT [FK_SFRDLingua_Iso639] FOREIGN KEY([IDIso639])
REFERENCES [dbo].[Iso639] ([ID])
GO
ALTER TABLE [dbo].[SFRDLingua] CHECK CONSTRAINT [FK_SFRDLingua_Iso639]
GO
/****** Object:  ForeignKey [FK_SFRDLingua_SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDLingua]  WITH CHECK ADD  CONSTRAINT [FK_SFRDLingua_SFRDCondicaoDeAcesso] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDCondicaoDeAcesso] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDLingua] CHECK CONSTRAINT [FK_SFRDLingua_SFRDCondicaoDeAcesso]
GO
/****** Object:  ForeignKey [FK_SFRDMaterialDeSuporte_SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDMaterialDeSuporte]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDMaterialDeSuporte_SFRDCondicaoDeAcesso] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDCondicaoDeAcesso] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDMaterialDeSuporte] CHECK CONSTRAINT [FK_SFRDMaterialDeSuporte_SFRDCondicaoDeAcesso]
GO
/****** Object:  ForeignKey [FK_SFRDMaterialDeSuporte_TipoMaterialDeSuporte]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDMaterialDeSuporte]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDMaterialDeSuporte_TipoMaterialDeSuporte] FOREIGN KEY([IDTipoMaterialDeSuporte])
REFERENCES [dbo].[TipoMaterialDeSuporte] ([ID])
GO
ALTER TABLE [dbo].[SFRDMaterialDeSuporte] CHECK CONSTRAINT [FK_SFRDMaterialDeSuporte_TipoMaterialDeSuporte]
GO
/****** Object:  ForeignKey [FK_SFRDNotaGeral_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDNotaGeral]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDNotaGeral_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDNotaGeral] CHECK CONSTRAINT [FK_SFRDNotaGeral_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDOrdenacao_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDOrdenacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDOrdenacao_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDOrdenacao] CHECK CONSTRAINT [FK_SFRDOrdenacao_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDOrdenacao_TipoOrdenacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDOrdenacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDOrdenacao_TipoOrdenacao] FOREIGN KEY([IDTipoOrdenacao])
REFERENCES [dbo].[TipoOrdenacao] ([ID])
GO
ALTER TABLE [dbo].[SFRDOrdenacao] CHECK CONSTRAINT [FK_SFRDOrdenacao_TipoOrdenacao]
GO
/****** Object:  ForeignKey [FK_SFRDTecnicasDeRegisto_SFRDCondicaoDeAcesso]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDTecnicasDeRegisto]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDTecnicasDeRegisto_SFRDCondicaoDeAcesso] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDCondicaoDeAcesso] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDTecnicasDeRegisto] CHECK CONSTRAINT [FK_SFRDTecnicasDeRegisto_SFRDCondicaoDeAcesso]
GO
/****** Object:  ForeignKey [FK_SFRDTecnicasDeRegisto_TipoTecnicasDeRegisto]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDTecnicasDeRegisto]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDTecnicasDeRegisto_TipoTecnicasDeRegisto] FOREIGN KEY([IDTipoTecnicasDeRegisto])
REFERENCES [dbo].[TipoTecnicasDeRegisto] ([ID])
GO
ALTER TABLE [dbo].[SFRDTecnicasDeRegisto] CHECK CONSTRAINT [FK_SFRDTecnicasDeRegisto_TipoTecnicasDeRegisto]
GO
/****** Object:  ForeignKey [FK_SFRDTradicaoDocumental_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDTradicaoDocumental]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDTradicaoDocumental_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDTradicaoDocumental] CHECK CONSTRAINT [FK_SFRDTradicaoDocumental_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDTradicaoDocumental_TipoTradicaoDocumental]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDTradicaoDocumental]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDTradicaoDocumental_TipoTradicaoDocumental] FOREIGN KEY([IDTipoTradicaoDocumental])
REFERENCES [dbo].[TipoTradicaoDocumental] ([ID])
GO
ALTER TABLE [dbo].[SFRDTradicaoDocumental] CHECK CONSTRAINT [FK_SFRDTradicaoDocumental_TipoTradicaoDocumental]
GO
/****** Object:  ForeignKey [FK_SFRDUFAutoEliminacao_AutoEliminacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFAutoEliminacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFAutoEliminacao_AutoEliminacao] FOREIGN KEY([IDAutoEliminacao])
REFERENCES [dbo].[AutoEliminacao] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFAutoEliminacao] CHECK CONSTRAINT [FK_SFRDUFAutoEliminacao_AutoEliminacao]
GO
/****** Object:  ForeignKey [FK_SFRDUFAutoEliminacao_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFAutoEliminacao]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFAutoEliminacao_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFAutoEliminacao] CHECK CONSTRAINT [FK_SFRDUFAutoEliminacao_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDMedida_TipoQuantidade]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDMedida_TipoQuantidade] FOREIGN KEY([IDTipoSuporte])
REFERENCES [dbo].[TipoSuporte] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFComponente] CHECK CONSTRAINT [FK_SFRDMedida_TipoQuantidade]
GO
/****** Object:  ForeignKey [FK_SFRDUFComponente_SFRDUFDescricaoFisica]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFComponente_SFRDUFDescricaoFisica] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[SFRDUFDescricaoFisica] ([IDFRDBase])
GO
ALTER TABLE [dbo].[SFRDUFComponente] CHECK CONSTRAINT [FK_SFRDUFComponente_SFRDUFDescricaoFisica]
GO
/****** Object:  ForeignKey [FK_SFRDUFComponente_SFRDUnidadeFisica]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFComponente_SFRDUnidadeFisica] FOREIGN KEY([IDFRDBase], [IDNivelUA])
REFERENCES [dbo].[SFRDUnidadeFisica] ([IDFRDBase], [IDNivel])
GO
ALTER TABLE [dbo].[SFRDUFComponente] CHECK CONSTRAINT [FK_SFRDUFComponente_SFRDUnidadeFisica]
GO
/****** Object:  ForeignKey [FK_SFRDUFComponente_TipoEstadoConservacao]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFComponente_TipoEstadoConservacao] FOREIGN KEY([IDTipoEstadoConservacao])
REFERENCES [dbo].[TipoEstadoConservacao] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFComponente] CHECK CONSTRAINT [FK_SFRDUFComponente_TipoEstadoConservacao]
GO
/****** Object:  ForeignKey [FK_SFRDUFComponente_TipoMedida]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFComponente_TipoMedida] FOREIGN KEY([IDTipoMedida])
REFERENCES [dbo].[TipoMedida] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFComponente] CHECK CONSTRAINT [FK_SFRDUFComponente_TipoMedida]
GO
/****** Object:  ForeignKey [FK_SFRDCota_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFCota]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDCota_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFCota] CHECK CONSTRAINT [FK_SFRDCota_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDUFDescricaoFisica_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFDescricaoFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFDescricaoFisica_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFDescricaoFisica] CHECK CONSTRAINT [FK_SFRDUFDescricaoFisica_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDUFDescricaoFisica_TipoAcondicionamento]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFDescricaoFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFDescricaoFisica_TipoAcondicionamento] FOREIGN KEY([IDTipoAcondicionamento])
REFERENCES [dbo].[TipoAcondicionamento] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFDescricaoFisica] CHECK CONSTRAINT [FK_SFRDUFDescricaoFisica_TipoAcondicionamento]
GO
/****** Object:  ForeignKey [FK_SFRDUFDescricaoFisica_TipoMedida1]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFDescricaoFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFDescricaoFisica_TipoMedida1] FOREIGN KEY([IDTipoMedida])
REFERENCES [dbo].[TipoMedida] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFDescricaoFisica] CHECK CONSTRAINT [FK_SFRDUFDescricaoFisica_TipoMedida1]
GO
/****** Object:  ForeignKey [FK_SFRDUFMateriaisComponente_SFRDUFComponente]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFMateriaisComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFMateriaisComponente_SFRDUFComponente] FOREIGN KEY([IDComponente])
REFERENCES [dbo].[SFRDUFComponente] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFMateriaisComponente] CHECK CONSTRAINT [FK_SFRDUFMateriaisComponente_SFRDUFComponente]
GO
/****** Object:  ForeignKey [FK_SFRDUFMateriaisComponente_TipoMaterial]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFMateriaisComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFMateriaisComponente_TipoMaterial] FOREIGN KEY([IDMaterial])
REFERENCES [dbo].[TipoMaterial] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFMateriaisComponente] CHECK CONSTRAINT [FK_SFRDUFMateriaisComponente_TipoMaterial]
GO
/****** Object:  ForeignKey [FK_SFRDUFTecnicasRegComponente_SFRDUFComponente]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFTecnicasRegComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFTecnicasRegComponente_SFRDUFComponente] FOREIGN KEY([IDComponente])
REFERENCES [dbo].[SFRDUFComponente] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFTecnicasRegComponente] CHECK CONSTRAINT [FK_SFRDUFTecnicasRegComponente_SFRDUFComponente]
GO
/****** Object:  ForeignKey [FK_SFRDUFTecnicasRegComponente_TipoTecnicaRegisto]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUFTecnicasRegComponente]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUFTecnicasRegComponente_TipoTecnicaRegisto] FOREIGN KEY([IDTecnicaRegisto])
REFERENCES [dbo].[TipoTecnicaRegisto] ([ID])
GO
ALTER TABLE [dbo].[SFRDUFTecnicasRegComponente] CHECK CONSTRAINT [FK_SFRDUFTecnicasRegComponente_TipoTecnicaRegisto]
GO
/****** Object:  ForeignKey [FK_SFRDUnidadeFisica_FRDBase]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUnidadeFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUnidadeFisica_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO
ALTER TABLE [dbo].[SFRDUnidadeFisica] CHECK CONSTRAINT [FK_SFRDUnidadeFisica_FRDBase]
GO
/****** Object:  ForeignKey [FK_SFRDUnidadeFisica_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[SFRDUnidadeFisica]  WITH NOCHECK ADD  CONSTRAINT [FK_SFRDUnidadeFisica_Nivel] FOREIGN KEY([IDNivel])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[SFRDUnidadeFisica] CHECK CONSTRAINT [FK_SFRDUnidadeFisica_Nivel]
GO
/****** Object:  ForeignKey [FK_Function_FunctionGroup]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoFunction]  WITH NOCHECK ADD  CONSTRAINT [FK_Function_FunctionGroup] FOREIGN KEY([IDTipoFunctionGroup])
REFERENCES [dbo].[TipoFunctionGroup] ([ID])
GO
ALTER TABLE [dbo].[TipoFunction] CHECK CONSTRAINT [FK_Function_FunctionGroup]
GO
/****** Object:  ForeignKey [FK_TipoFunction_TipoFunction]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoFunction]  WITH NOCHECK ADD  CONSTRAINT [FK_TipoFunction_TipoFunction] FOREIGN KEY([IDTipoFunctionGroupContext], [IdxTipoFunctionGroupContext])
REFERENCES [dbo].[TipoFunction] ([IDTipoFunctionGroup], [idx])
GO
ALTER TABLE [dbo].[TipoFunction] CHECK CONSTRAINT [FK_TipoFunction_TipoFunction]
GO
/****** Object:  ForeignKey [FK_TipoNivelRelacionado_TipoNivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNivelRelacionado]  WITH NOCHECK ADD  CONSTRAINT [FK_TipoNivelRelacionado_TipoNivel] FOREIGN KEY([IDTipoNivel])
REFERENCES [dbo].[TipoNivel] ([ID])
GO
ALTER TABLE [dbo].[TipoNivelRelacionado] CHECK CONSTRAINT [FK_TipoNivelRelacionado_TipoNivel]
GO
/****** Object:  ForeignKey [FK_TipoNivelRelacionadoCodigo_TipoNivelRelacionado]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNivelRelacionadoCodigo]  WITH NOCHECK ADD  CONSTRAINT [FK_TipoNivelRelacionadoCodigo_TipoNivelRelacionado] FOREIGN KEY([IDTipoNivelRelacionado])
REFERENCES [dbo].[TipoNivelRelacionado] ([ID])
GO
ALTER TABLE [dbo].[TipoNivelRelacionadoCodigo] CHECK CONSTRAINT [FK_TipoNivelRelacionadoCodigo_TipoNivelRelacionado]
GO
/****** Object:  ForeignKey [FK_TipoNoticiaATipoControloAForma_TipoControloAutForma]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNoticiaATipoControloAForma]  WITH NOCHECK ADD  CONSTRAINT [FK_TipoNoticiaATipoControloAForma_TipoControloAutForma] FOREIGN KEY([IDTipoControloAutForma])
REFERENCES [dbo].[TipoControloAutForma] ([ID])
GO
ALTER TABLE [dbo].[TipoNoticiaATipoControloAForma] CHECK CONSTRAINT [FK_TipoNoticiaATipoControloAForma_TipoControloAutForma]
GO
/****** Object:  ForeignKey [FK_TipoNoticiaATipoControloAForma_TipoNoticiaAut]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoNoticiaATipoControloAForma]  WITH NOCHECK ADD  CONSTRAINT [FK_TipoNoticiaATipoControloAForma_TipoNoticiaAut] FOREIGN KEY([IDTipoNoticiaAut])
REFERENCES [dbo].[TipoNoticiaAut] ([ID])
GO
ALTER TABLE [dbo].[TipoNoticiaATipoControloAForma] CHECK CONSTRAINT [FK_TipoNoticiaATipoControloAForma_TipoNoticiaAut]
GO
/****** Object:  ForeignKey [FK_TipoSubDensidade_TipoDensidade]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TipoSubDensidade]  WITH NOCHECK ADD  CONSTRAINT [FK_TipoSubDensidade_TipoDensidade] FOREIGN KEY([IDTipoDensidade])
REFERENCES [dbo].[TipoDensidade] ([ID])
GO
ALTER TABLE [dbo].[TipoSubDensidade] CHECK CONSTRAINT [FK_TipoSubDensidade_TipoDensidade]
GO
/****** Object:  ForeignKey [FK_Group_Trustee]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_Group_Trustee] FOREIGN KEY([ID])
REFERENCES [dbo].[Trustee] ([ID])
GO
ALTER TABLE [dbo].[TrusteeGroup] CHECK CONSTRAINT [FK_Group_Trustee]
GO
/****** Object:  ForeignKey [FK_NewTrusteeNivelPrivilege_Nivel]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeNivelPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_NewTrusteeNivelPrivilege_Nivel] FOREIGN KEY([IDNivel])
REFERENCES [dbo].[Nivel] ([ID])
GO
ALTER TABLE [dbo].[TrusteeNivelPrivilege] CHECK CONSTRAINT [FK_NewTrusteeNivelPrivilege_Nivel]
GO
/****** Object:  ForeignKey [FK_NewTrusteeNivelPrivilege_Trustee]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeNivelPrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_NewTrusteeNivelPrivilege_Trustee] FOREIGN KEY([IDTrustee])
REFERENCES [dbo].[Trustee] ([ID])
GO
ALTER TABLE [dbo].[TrusteeNivelPrivilege] CHECK CONSTRAINT [FK_NewTrusteeNivelPrivilege_Trustee]
GO
/****** Object:  ForeignKey [FK_TrusteePrivilege_FunctionOperation]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteePrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteePrivilege_FunctionOperation] FOREIGN KEY([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation])
REFERENCES [dbo].[FunctionOperation] ([IDTipoFunctionGroup], [IdxTipoFunction], [IDTipoOperation])
GO
ALTER TABLE [dbo].[TrusteePrivilege] CHECK CONSTRAINT [FK_TrusteePrivilege_FunctionOperation]
GO
/****** Object:  ForeignKey [FK_TrusteePrivilege_Trustee]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteePrivilege]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteePrivilege_Trustee] FOREIGN KEY([IDTrustee])
REFERENCES [dbo].[Trustee] ([ID])
GO
ALTER TABLE [dbo].[TrusteePrivilege] CHECK CONSTRAINT [FK_TrusteePrivilege_Trustee]
GO
/****** Object:  ForeignKey [FK_TrusteeUser_TrusteeUser]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeUser]  WITH NOCHECK ADD  CONSTRAINT [FK_TrusteeUser_TrusteeUser] FOREIGN KEY([IDTrusteeUserDefaultAuthority])
REFERENCES [dbo].[TrusteeUser] ([ID])
GO
ALTER TABLE [dbo].[TrusteeUser] CHECK CONSTRAINT [FK_TrusteeUser_TrusteeUser]
GO
/****** Object:  ForeignKey [FK_User_Trustee]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[TrusteeUser]  WITH NOCHECK ADD  CONSTRAINT [FK_User_Trustee] FOREIGN KEY([ID])
REFERENCES [dbo].[Trustee] ([ID])
GO
ALTER TABLE [dbo].[TrusteeUser] CHECK CONSTRAINT [FK_User_Trustee]
GO
/****** Object:  ForeignKey [FK_UserGroups_Group]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[UserGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_UserGroups_Group] FOREIGN KEY([IDGroup])
REFERENCES [dbo].[TrusteeGroup] ([ID])
GO
ALTER TABLE [dbo].[UserGroups] CHECK CONSTRAINT [FK_UserGroups_Group]
GO
/****** Object:  ForeignKey [FK_UserGroups_User]    Script Date: 07/30/2009 17:07:21 ******/
ALTER TABLE [dbo].[UserGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_UserGroups_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TrusteeUser] ([ID])
GO
ALTER TABLE [dbo].[UserGroups] CHECK CONSTRAINT [FK_UserGroups_User]
GO
ALTER TABLE [dbo].[Codigo]  WITH CHECK ADD  CONSTRAINT [FK_Codigo_FRDBase] FOREIGN KEY([IDFRDBase])
REFERENCES [dbo].[FRDBase] ([ID])
GO

ALTER TABLE [dbo].[Codigo] CHECK CONSTRAINT [FK_Codigo_FRDBase]
GO

ALTER TABLE [dbo].[Codigo] ADD  CONSTRAINT [DF_Codigo_isDeleted]  DEFAULT ('0') FOR [isDeleted]
GO

ALTER TABLE [dbo].[ControloAutDataDeDescricao]  WITH NOCHECK ADD  CONSTRAINT [FK_ControloAutDataDeDescricao_TipoNoticiaAut] FOREIGN KEY([IDTipoNoticiaAut])
REFERENCES [dbo].[TipoNoticiaAut] ([ID])
GO
ALTER TABLE [dbo].[ControloAutDataDeDescricao] CHECK CONSTRAINT [FK_ControloAutDataDeDescricao_TipoNoticiaAut]
GO

ALTER TABLE [dbo].[FRDBaseDataDeDescricao]  WITH NOCHECK ADD  CONSTRAINT [FK_FRDBaseDataDeDescricao_TipoNivelRelacionado] FOREIGN KEY([IDTipoNivelRelacionado])
REFERENCES [dbo].[TipoNivelRelacionado] ([ID])
GO
ALTER TABLE [dbo].[FRDBaseDataDeDescricao] CHECK CONSTRAINT [FK_FRDBaseDataDeDescricao_TipoNivelRelacionado]
GO
