USE [hotel_elMassar]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CodeCategorie] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeCategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambres]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambres](
	[NumChambre] [int] IDENTITY(1,1) NOT NULL,
	[TelChambre] [varchar](45) NULL,
	[CodeCategorie] [int] NOT NULL,
	[NumHotel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumChambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[NbreEtoile] [int] IDENTITY(1,1) NOT NULL,
	[NbreEtoil] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NbreEtoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[CodeClient] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](45) NULL,
	[Prenom] [varchar](45) NULL,
	[Adresse] [varchar](45) NULL,
	[Ville] [varchar](45) NULL,
	[CodePostal] [varchar](45) NULL,
	[Pays] [varchar](45) NULL,
	[Tel] [varchar](45) NULL,
	[Email] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consommations]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consommations](
	[NumConsommation] [int] IDENTITY(1,1) NOT NULL,
	[DateConsommation] [datetime] NULL,
	[HeureConsommation] [varchar](45) NULL,
	[CodeClient] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumConsommation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[NumHotel] [int] IDENTITY(1,1) NOT NULL,
	[NomHotel] [varchar](45) NULL,
	[AdresseHotel] [varchar](45) NULL,
	[CPH] [varchar](45) NULL,
	[TelephoneHotel] [varchar](45) NULL,
	[NbreEtoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offre]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offre](
	[PrixPrestation] [int] IDENTITY(1,1) NOT NULL,
	[CodePrestation] [int] NOT NULL,
	[NumHotel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PrixPrestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestations]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestations](
	[CodePrestation] [int] IDENTITY(1,1) NOT NULL,
	[NumConsommation] [int] NOT NULL,
	[DesignationPrest] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodePrestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[NumResevation] [int] IDENTITY(1,1) NOT NULL,
	[DateDebut] [varchar](45) NULL,
	[DateFin] [varchar](45) NULL,
	[DatePayeArrhes] [varchar](45) NULL,
	[MontantArrhes] [varchar](45) NULL,
	[NumChambre] [int] NOT NULL,
	[CodeClient] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumResevation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifer]    Script Date: 17/02/2022 13:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifer](
	[TarifUnitaire] [int] IDENTITY(1,1) NOT NULL,
	[CodeCategorie] [int] NOT NULL,
	[NbreEtoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TarifUnitaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chambres]  WITH CHECK ADD FOREIGN KEY([CodeCategorie])
REFERENCES [dbo].[Categories] ([CodeCategorie])
GO
ALTER TABLE [dbo].[Chambres]  WITH CHECK ADD FOREIGN KEY([NumHotel])
REFERENCES [dbo].[hotels] ([NumHotel])
GO
ALTER TABLE [dbo].[Consommations]  WITH CHECK ADD FOREIGN KEY([CodeClient])
REFERENCES [dbo].[clients] ([CodeClient])
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD FOREIGN KEY([NbreEtoile])
REFERENCES [dbo].[classes] ([NbreEtoile])
GO
ALTER TABLE [dbo].[Offre]  WITH CHECK ADD FOREIGN KEY([CodePrestation])
REFERENCES [dbo].[Prestations] ([CodePrestation])
GO
ALTER TABLE [dbo].[Offre]  WITH CHECK ADD FOREIGN KEY([NumHotel])
REFERENCES [dbo].[hotels] ([NumHotel])
GO
ALTER TABLE [dbo].[Prestations]  WITH CHECK ADD FOREIGN KEY([NumConsommation])
REFERENCES [dbo].[Consommations] ([NumConsommation])
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD FOREIGN KEY([CodeClient])
REFERENCES [dbo].[clients] ([CodeClient])
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD FOREIGN KEY([NumChambre])
REFERENCES [dbo].[Chambres] ([NumChambre])
GO
ALTER TABLE [dbo].[Tarifer]  WITH CHECK ADD FOREIGN KEY([CodeCategorie])
REFERENCES [dbo].[Categories] ([CodeCategorie])
GO
ALTER TABLE [dbo].[Tarifer]  WITH CHECK ADD FOREIGN KEY([NbreEtoile])
REFERENCES [dbo].[classes] ([NbreEtoile])
GO
