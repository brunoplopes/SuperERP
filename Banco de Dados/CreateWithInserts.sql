CREATE DATABASE [SuperERP]
USE [SuperERP]
GO
CREATE TABLE [dbo].[Categoria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaTipo] [bit] NOT NULL,
	[Nome] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFornecedor]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteFornecedor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PJ] [int] NULL,
	[ID_PF] [int] NULL,
	[Tipo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compra]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Fornecedor] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[ID_Status] [int] NOT NULL,
	[Compra_Num] [int] NOT NULL,
	[Data_Compra] [date] NOT NULL,
	[Desconto] [decimal](9, 2) NOT NULL,
	[ID_FormaPgto] [int] NOT NULL,
	[Observacoes] [varchar](300) NOT NULL,
	[ID_conta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra_Ativos]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra_Ativos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Compra] [int] NOT NULL,
	[ID_Produto] [int] NULL,
	[ID_Servico] [int] NULL,
	[Imposto] [decimal](4, 2) NULL,
	[Detalhes] [varchar](300) NULL,
	[Quantidade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contato](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[ID_PessoaJuridica] [int] NULL,
	[ID_PessoaFisica] [int] NULL,
	[Email] [varchar](64) NOT NULL,
	[Fone] [varchar](15) NOT NULL,
	[Cargo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contrato_Venda]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato_Venda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Periodicidade] [int] NOT NULL,
	[ID_Venda] [int] NOT NULL,
	[Dia_Cobranca] [int] NOT NULL,
	[Data_Inicio] [date] NOT NULL,
	[Data_Fim] [date] NOT NULL,
	[Juros] [decimal](4, 2) NOT NULL,
	[Ocorrencias] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dados_Bancarios]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dados_Bancarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Banco] [varchar](40) NOT NULL,
	[Conta_Corrente] [varchar](20) NOT NULL,
	[Agencia] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DadosBancarios]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DadosBancarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Banco] [varchar](40) NOT NULL,
	[Conta_Corrente] [varchar](20) NOT NULL,
	[Agencia] [varchar](10) NOT NULL,
	[ID_PessoaJuridica] [int] NULL,
	[ID_PessoaFisica] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CNPJ] [varchar](15) NOT NULL,
	[RazaoSocial] [varchar](30) NOT NULL,
	[CEP] [varchar](8) NOT NULL,
	[Endereco] [varchar](64) NOT NULL,
	[Numero] [varchar](4) NOT NULL,
	[Complemento] [varchar](30) NOT NULL,
	[Bairro] [varchar](30) NOT NULL,
	[Cidade] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Endereco](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CEP] [varchar](8) NOT NULL,
	[ID_PessoaJuridica] [int] NULL,
	[ID_PessoaFisica] [int] NULL,
	[Endereco] [varchar](64) NOT NULL,
	[Numero] [varchar](4) NOT NULL,
	[Complemento] [varchar](30) NOT NULL,
	[Bairro] [varchar](30) NOT NULL,
	[Cidade] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Forma_Pgto]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Forma_Pgto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionalidades]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionalidades](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionalidades_Perfil]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionalidades_Perfil](
	[ID_Funcionalidades] [int] NOT NULL,
	[ID_Perfil] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ncm]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ncm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Codico] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordem_Servico]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ordem_Servico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[ID_Servico] [int] NOT NULL,
	[ID_Status] [int] NOT NULL,
	[Numero_Os] [varchar](12) NOT NULL,
	[DataI_Inicio] [date] NOT NULL,
	[DataI_Entrega] [date] NOT NULL,
	[Equipamento_Recebido] [varchar](255) NULL,
	[NumeroSerie] [varchar](15) NULL,
	[Marca] [varchar](255) NULL,
	[Modelo] [varchar](255) NULL,
	[Obs_Recebimento] [varchar](500) NULL,
	[Obs_Problema] [varchar](500) NULL,
	[Descr_Servico] [varchar](500) NULL,
	[Obs_Interno] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parcelamento]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcelamento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Compra] [int] NULL,
	[ID_Venda] [int] NULL,
	[Numero_Parcela] [int] NOT NULL,
	[Valor] [decimal](4, 2) NOT NULL,
	[Pago] [bit] NULL,
	[Data_Pagamento] [date] NOT NULL,
	[Data_Pago] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Periodicidade]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Periodicidade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Meses] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaFisica]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaFisica](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CPF] [varchar](11) NOT NULL,
	[RG] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaJuridica]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaJuridica](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CNPJ] [varchar](15) NOT NULL,
	[RazaoSocial] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Categoria] [int] NOT NULL,
	[ID_Ncm] [int] NULL,
	[ID_Unidade_Medida] [int] NULL,
	[ICMS] [float] NOT NULL,
	[IPI] [float] NOT NULL,
	[IVA] [float] NOT NULL,
	[ST] [float] NOT NULL,
	[PIS] [float] NOT NULL,
	[COFINS] [float] NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Codigo_Cliente] [int] NOT NULL,
	[Codigo_Barras] [int] NOT NULL,
	[Valor_Venda] [float] NOT NULL,
	[Estoque] [int] NOT NULL,
	[EstoqueMax] [int] NOT NULL,
	[EstoqueMin] [int] NOT NULL,
	[Peso_Liquido] [float] NULL,
	[Peso_Bruto] [float] NULL,
	[ean] [varchar](20) NULL,
	[ID_Cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdutoFornecedor]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoFornecedor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Produto] [int] NOT NULL,
	[ID_Fornecedor] [int] NOT NULL,
	[Valor_Custo] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Servico]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Categoria_Servico] [int] NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[ISS] [float] NOT NULL,
	[ICMS] [float] NOT NULL,
	[IVA] [float] NOT NULL,
	[ST] [float] NOT NULL,
	[PIS] [float] NOT NULL,
	[COFINS] [float] NOT NULL,
	[valor] [float] NULL,
	[custo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status_Servico]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_Servico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status_Venda]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_Venda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unidade_Medida]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unidade_Medida](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Perfil] [int] NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Senha] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[ID_Cliente] [int] NOT NULL,
	[ID_Orcamento] [int] NULL,
	[ID_Status] [int] NOT NULL,
	[ID_conta] [int] NOT NULL,
	[ID_FormaPgto] [int] NOT NULL,
	[Venda_Num] [int] NOT NULL,
	[Data_Venda] [date] NOT NULL,
	[Contrato] [bit] NOT NULL,
	[Desconto] [float] NOT NULL,
	[Observacoes] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda_Ativos]    Script Date: 5/29/2016 7:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venda_Ativos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Venda] [int] NOT NULL,
	[ID_Produto] [int] NULL,
	[ID_Servico] [int] NULL,
	[ID_Compra] [int] NULL,
	[Imposto] [float] NULL,
	[Detalhes] [varchar](300) NULL,
	[Quantidade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([ID], [CategoriaTipo], [Nome]) VALUES (1, 1, N'Servico')
INSERT [dbo].[Categoria] ([ID], [CategoriaTipo], [Nome]) VALUES (2, 0, N'produto')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[ClienteFornecedor] ON 

INSERT [dbo].[ClienteFornecedor] ([ID], [ID_PJ], [ID_PF], [Tipo]) VALUES (3, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[ClienteFornecedor] OFF
SET IDENTITY_INSERT [dbo].[Compra] ON 

INSERT [dbo].[Compra] ([ID], [ID_Empresa], [ID_Fornecedor], [ID_Usuario], [ID_Status], [Compra_Num], [Data_Compra], [Desconto], [ID_FormaPgto], [Observacoes], [ID_conta]) VALUES (3, 1, 3, 2, 1, 1, CAST(N'2016-05-21' AS Date), CAST(0.00 AS Decimal(9, 2)), 1, N'nenhuma', 1)
SET IDENTITY_INSERT [dbo].[Compra] OFF
SET IDENTITY_INSERT [dbo].[Compra_Ativos] ON 

INSERT [dbo].[Compra_Ativos] ([ID], [ID_Compra], [ID_Produto], [ID_Servico], [Imposto], [Detalhes], [Quantidade]) VALUES (1, 3, 3, NULL, CAST(0.00 AS Decimal(4, 2)), N'comprei altas paradas', 19)
INSERT [dbo].[Compra_Ativos] ([ID], [ID_Compra], [ID_Produto], [ID_Servico], [Imposto], [Detalhes], [Quantidade]) VALUES (2, 3, 3, NULL, CAST(5.00 AS Decimal(4, 2)), N'varios imposto', 20)
SET IDENTITY_INSERT [dbo].[Compra_Ativos] OFF
SET IDENTITY_INSERT [dbo].[Dados_Bancarios] ON 

INSERT [dbo].[Dados_Bancarios] ([ID], [ID_Empresa], [Banco], [Conta_Corrente], [Agencia]) VALUES (1, 1, N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Dados_Bancarios] OFF
SET IDENTITY_INSERT [dbo].[Empresa] ON 

INSERT [dbo].[Empresa] ([ID], [Nome], [CNPJ], [RazaoSocial], [CEP], [Endereco], [Numero], [Complemento], [Bairro], [Cidade]) VALUES (1, N'11', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Empresa] OFF
SET IDENTITY_INSERT [dbo].[Forma_Pgto] ON 

INSERT [dbo].[Forma_Pgto] ([ID], [Nome]) VALUES (1, N'Dinheiro')
SET IDENTITY_INSERT [dbo].[Forma_Pgto] OFF
SET IDENTITY_INSERT [dbo].[Ncm] ON 

INSERT [dbo].[Ncm] ([ID], [Codico]) VALUES (1, N'123 - teste')
SET IDENTITY_INSERT [dbo].[Ncm] OFF
SET IDENTITY_INSERT [dbo].[Parcelamento] ON 

INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (1, NULL, 9, 6, CAST(50.00 AS Decimal(4, 2)), 1, CAST(N'2016-01-01' AS Date), CAST(N'2016-01-02' AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (2, NULL, 9, 5, CAST(50.00 AS Decimal(4, 2)), 1, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-02' AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (3, NULL, 9, 4, CAST(50.00 AS Decimal(4, 2)), 1, CAST(N'2016-07-06' AS Date), CAST(N'2016-05-25' AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (4, NULL, 9, 3, CAST(50.00 AS Decimal(4, 2)), 1, CAST(N'2016-04-06' AS Date), CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (5, NULL, 9, 2, CAST(50.00 AS Decimal(4, 2)), 0, CAST(N'2016-05-06' AS Date), NULL)
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (6, NULL, 9, 1, CAST(50.00 AS Decimal(4, 2)), 1, CAST(N'2016-06-05' AS Date), CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (7, NULL, 9, 7, CAST(50.00 AS Decimal(4, 2)), 0, CAST(N'2016-07-05' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Parcelamento] OFF
SET IDENTITY_INSERT [dbo].[Perfil] ON 

INSERT [dbo].[Perfil] ([ID], [Nome]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[Perfil] OFF
SET IDENTITY_INSERT [dbo].[PessoaFisica] ON 

INSERT [dbo].[PessoaFisica] ([ID], [ID_Empresa], [Nome], [CPF], [RG]) VALUES (1, 1, N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[PessoaFisica] OFF
SET IDENTITY_INSERT [dbo].[PessoaJuridica] ON 

INSERT [dbo].[PessoaJuridica] ([ID], [ID_Empresa], [Nome], [CNPJ], [RazaoSocial]) VALUES (1, 1, N'Teste', N'1', N'1')
SET IDENTITY_INSERT [dbo].[PessoaJuridica] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([ID], [ID_Empresa], [ID_Categoria], [ID_Ncm], [ID_Unidade_Medida], [ICMS], [IPI], [IVA], [ST], [PIS], [COFINS], [Nome], [Codigo_Cliente], [Codigo_Barras], [Valor_Venda], [Estoque], [EstoqueMax], [EstoqueMin], [Peso_Liquido], [Peso_Bruto], [ean], [ID_Cliente]) VALUES (3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, N'Produto Teste', 1, 1, 150, 100, 1, 1, 1, 1, N'1', NULL)
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Servico] ON 

INSERT [dbo].[Servico] ([ID], [ID_Empresa], [ID_Categoria_Servico], [Nome], [ISS], [ICMS], [IVA], [ST], [PIS], [COFINS], [valor], [custo]) VALUES (2, 1, 1, N'1', 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Servico] OFF
SET IDENTITY_INSERT [dbo].[Status_Venda] ON 

INSERT [dbo].[Status_Venda] ([ID], [Nome]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[Status_Venda] OFF
SET IDENTITY_INSERT [dbo].[Unidade_Medida] ON 

INSERT [dbo].[Unidade_Medida] ([ID], [Nome]) VALUES (1, N'Unidade')
INSERT [dbo].[Unidade_Medida] ([ID], [Nome]) VALUES (2, N'Kilo')
SET IDENTITY_INSERT [dbo].[Unidade_Medida] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([ID], [ID_Perfil], [ID_Empresa], [Nome], [Email], [Senha]) VALUES (2, 1, 1, N'Vendedor 1', N'vendedor@empresa.com', N'123123')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[Venda] ON 

INSERT [dbo].[Venda] ([ID], [ID_Empresa], [ID_Usuario], [ID_Cliente], [ID_Orcamento], [ID_Status], [ID_conta], [ID_FormaPgto], [Venda_Num], [Data_Venda], [Contrato], [Desconto], [Observacoes]) VALUES (9, 1, 2, 3, NULL, 1, 1, 1, 1, CAST(N'2016-01-02' AS Date), 1, 0, N'0')
SET IDENTITY_INSERT [dbo].[Venda] OFF
SET IDENTITY_INSERT [dbo].[Venda_Ativos] ON 

INSERT [dbo].[Venda_Ativos] ([ID], [ID_Venda], [ID_Produto], [ID_Servico], [ID_Compra], [Imposto], [Detalhes], [Quantidade]) VALUES (1, 9, 3, NULL, NULL, 5, N'Nenhum', 15)
SET IDENTITY_INSERT [dbo].[Venda_Ativos] OFF
ALTER TABLE [dbo].[ClienteFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_CliFor_PF] FOREIGN KEY([ID_PF])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[ClienteFornecedor] CHECK CONSTRAINT [FK_CliFor_PF]
GO
ALTER TABLE [dbo].[ClienteFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_CliFor_PJ] FOREIGN KEY([ID_PJ])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[ClienteFornecedor] CHECK CONSTRAINT [FK_CliFor_PJ]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_CC] FOREIGN KEY([ID_conta])
REFERENCES [dbo].[Dados_Bancarios] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_CC]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Cliente] FOREIGN KEY([ID_Fornecedor])
REFERENCES [dbo].[ClienteFornecedor] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Cliente]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Empresa]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_FormaPgto] FOREIGN KEY([ID_FormaPgto])
REFERENCES [dbo].[Forma_Pgto] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_FormaPgto]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status_Venda] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Status]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]
GO
ALTER TABLE [dbo].[Compra_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_CompraAtivo_Produto] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[Compra_Ativos] CHECK CONSTRAINT [FK_CompraAtivo_Produto]
GO
ALTER TABLE [dbo].[Compra_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_CompraAtivo_Servico] FOREIGN KEY([ID_Servico])
REFERENCES [dbo].[Servico] ([ID])
GO
ALTER TABLE [dbo].[Compra_Ativos] CHECK CONSTRAINT [FK_CompraAtivo_Servico]
GO
ALTER TABLE [dbo].[Compra_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_CompraAtivo_Venda] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID])
GO
ALTER TABLE [dbo].[Compra_Ativos] CHECK CONSTRAINT [FK_CompraAtivo_Venda]
GO
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_PF] FOREIGN KEY([ID_PessoaFisica])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_PF]
GO
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_PJ] FOREIGN KEY([ID_PessoaJuridica])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_PJ]
GO
ALTER TABLE [dbo].[Contrato_Venda]  WITH CHECK ADD  CONSTRAINT [FK_ContratoVenda_Periodicidade] FOREIGN KEY([ID_Periodicidade])
REFERENCES [dbo].[Periodicidade] ([ID])
GO
ALTER TABLE [dbo].[Contrato_Venda] CHECK CONSTRAINT [FK_ContratoVenda_Periodicidade]
GO
ALTER TABLE [dbo].[Contrato_Venda]  WITH CHECK ADD  CONSTRAINT [FK_ContratoVenda_Venda] FOREIGN KEY([ID_Venda])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Contrato_Venda] CHECK CONSTRAINT [FK_ContratoVenda_Venda]
GO
ALTER TABLE [dbo].[Dados_Bancarios]  WITH CHECK ADD  CONSTRAINT [FK_DadosBancarios_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Dados_Bancarios] CHECK CONSTRAINT [FK_DadosBancarios_Empresa]
GO
ALTER TABLE [dbo].[DadosBancarios]  WITH CHECK ADD  CONSTRAINT [FK_DadosBancarios_PF] FOREIGN KEY([ID_PessoaFisica])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[DadosBancarios] CHECK CONSTRAINT [FK_DadosBancarios_PF]
GO
ALTER TABLE [dbo].[DadosBancarios]  WITH CHECK ADD  CONSTRAINT [FK_DadosBancarios_PJ] FOREIGN KEY([ID_PessoaJuridica])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[DadosBancarios] CHECK CONSTRAINT [FK_DadosBancarios_PJ]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_PF] FOREIGN KEY([ID_PessoaFisica])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_PF]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_PJ] FOREIGN KEY([ID_PessoaJuridica])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_PJ]
GO
ALTER TABLE [dbo].[Funcionalidades_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_FuncionalidadesPerfil_Funcionalidades] FOREIGN KEY([ID_Funcionalidades])
REFERENCES [dbo].[Funcionalidades] ([ID])
GO
ALTER TABLE [dbo].[Funcionalidades_Perfil] CHECK CONSTRAINT [FK_FuncionalidadesPerfil_Funcionalidades]
GO
ALTER TABLE [dbo].[Funcionalidades_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_FuncionalidadesPerfil_Perfil] FOREIGN KEY([ID_Perfil])
REFERENCES [dbo].[Perfil] ([ID])
GO
ALTER TABLE [dbo].[Funcionalidades_Perfil] CHECK CONSTRAINT [FK_FuncionalidadesPerfil_Perfil]
GO
ALTER TABLE [dbo].[Ordem_Servico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemSerivco_Servico] FOREIGN KEY([ID_Servico])
REFERENCES [dbo].[Servico] ([ID])
GO
ALTER TABLE [dbo].[Ordem_Servico] CHECK CONSTRAINT [FK_OrdemSerivco_Servico]
GO
ALTER TABLE [dbo].[Ordem_Servico]  WITH CHECK ADD  CONSTRAINT [FK_OrdermServico_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status_Servico] ([ID])
GO
ALTER TABLE [dbo].[Ordem_Servico] CHECK CONSTRAINT [FK_OrdermServico_Status]
GO
ALTER TABLE [dbo].[Parcelamento]  WITH CHECK ADD  CONSTRAINT [FK_Parcelamento_Compra] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID])
GO
ALTER TABLE [dbo].[Parcelamento] CHECK CONSTRAINT [FK_Parcelamento_Compra]
GO
ALTER TABLE [dbo].[Parcelamento]  WITH CHECK ADD  CONSTRAINT [FK_Parcelamento_Venda] FOREIGN KEY([ID_Venda])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Parcelamento] CHECK CONSTRAINT [FK_Parcelamento_Venda]
GO
ALTER TABLE [dbo].[PessoaFisica]  WITH CHECK ADD  CONSTRAINT [FK_PessoaFisica_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[PessoaFisica] CHECK CONSTRAINT [FK_PessoaFisica_Empresa]
GO
ALTER TABLE [dbo].[PessoaJuridica]  WITH CHECK ADD  CONSTRAINT [FK_PessoaJuridica_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[PessoaJuridica] CHECK CONSTRAINT [FK_PessoaJuridica_Empresa]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_Cat] FOREIGN KEY([ID_Categoria])
REFERENCES [dbo].[Categoria] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_Cat]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_Empresa]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_Ncm] FOREIGN KEY([ID_Ncm])
REFERENCES [dbo].[Ncm] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_Ncm]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_UnidMed] FOREIGN KEY([ID_Unidade_Medida])
REFERENCES [dbo].[Unidade_Medida] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_UnidMed]
GO
ALTER TABLE [dbo].[ProdutoFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoForn_Fornecedor] FOREIGN KEY([ID_Fornecedor])
REFERENCES [dbo].[ClienteFornecedor] ([ID])
GO
ALTER TABLE [dbo].[ProdutoFornecedor] CHECK CONSTRAINT [FK_ProdutoForn_Fornecedor]
GO
ALTER TABLE [dbo].[ProdutoFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoForn_Produto] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[ProdutoFornecedor] CHECK CONSTRAINT [FK_ProdutoForn_Produto]
GO
ALTER TABLE [dbo].[Servico]  WITH CHECK ADD  CONSTRAINT [FK_Servico_Categoria] FOREIGN KEY([ID_Categoria_Servico])
REFERENCES [dbo].[Categoria] ([ID])
GO
ALTER TABLE [dbo].[Servico] CHECK CONSTRAINT [FK_Servico_Categoria]
GO
ALTER TABLE [dbo].[Servico]  WITH CHECK ADD  CONSTRAINT [FK_Servico_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Servico] CHECK CONSTRAINT [FK_Servico_Empresa]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empresa]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil] FOREIGN KEY([ID_Perfil])
REFERENCES [dbo].[Perfil] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_CC] FOREIGN KEY([ID_conta])
REFERENCES [dbo].[Dados_Bancarios] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_CC]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[ClienteFornecedor] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Empresa]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_FormaPgto] FOREIGN KEY([ID_FormaPgto])
REFERENCES [dbo].[Forma_Pgto] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_FormaPgto]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Orcamento] FOREIGN KEY([ID_Orcamento])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Orcamento]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status_Venda] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Status]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Usuario]
GO
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_Compra] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_Compra]
GO
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_VendaAtivo_Produto] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_VendaAtivo_Produto]
GO
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_VendaAtivo_Servico] FOREIGN KEY([ID_Servico])
REFERENCES [dbo].[Servico] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_VendaAtivo_Servico]
GO
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_VendaAtivo_Venda] FOREIGN KEY([ID_Venda])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_VendaAtivo_Venda]
GO
USE [master]
GO
ALTER DATABASE [SuperERP] SET  READ_WRITE 
GO
