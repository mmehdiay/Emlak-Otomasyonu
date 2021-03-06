USE [emlak]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[adminAd] [nchar](20) NULL,
	[adminSoyad] [nvarchar](20) NULL,
	[adminKullaniciAdi] [nvarchar](50) NULL,
	[adminPassword] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[binaYasi]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[binaYasi](
	[binaYasiID] [int] IDENTITY(1,1) NOT NULL,
	[binaYasi] [nchar](10) NULL,
 CONSTRAINT [PK_binaYasi] PRIMARY KEY CLUSTERED 
(
	[binaYasiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disOzellik]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disOzellik](
	[disID] [int] IDENTITY(1,1) NOT NULL,
	[park] [bit] NULL,
	[havuz] [bit] NULL,
	[alarm] [bit] NULL,
	[siteMi] [bit] NULL,
	[ilanID] [int] NULL,
 CONSTRAINT [PK_disOzellik] PRIMARY KEY CLUSTERED 
(
	[disID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[icOzellik]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[icOzellik](
	[icID] [int] IDENTITY(1,1) NOT NULL,
	[asansor] [bit] NULL,
	[somine] [bit] NULL,
	[banyoSayisi] [char](5) NULL,
	[ilanID] [int] NULL,
 CONSTRAINT [PK_icOzellik] PRIMARY KEY CLUSTERED 
(
	[icID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilan]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilan](
	[ilanID] [int] IDENTITY(1,1) NOT NULL,
	[ilanBaslik] [nvarchar](200) NULL,
	[ilanFiyat] [int] NULL,
	[paraCinsiID] [int] NULL,
	[ilanTarih] [datetime] NULL,
	[kategoriID] [int] NULL,
	[islemID] [int] NULL,
	[kimdenID] [int] NULL,
	[ilanResim] [nvarchar](50) NULL,
	[sehirID] [int] NULL,
	[ilceID] [int] NULL,
	[ilanAciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_ilan] PRIMARY KEY CLUSTERED 
(
	[ilanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilanDetay]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilanDetay](
	[ilanDetayID] [int] IDENTITY(1,1) NOT NULL,
	[odaSayisiID] [int] NULL,
	[metrekareBrut] [int] NULL,
	[metrekareNet] [int] NULL,
	[iDetayBinaKatSayisi] [int] NULL,
	[binaYasiID] [int] NULL,
	[iDetayKacinciKat] [int] NULL,
	[iDetayIsitma] [nvarchar](30) NULL,
	[iDetayDepozito] [int] NULL,
	[iDetayEsya] [bit] NULL,
	[ilanID] [int] NULL,
 CONSTRAINT [PK_ilanDetay] PRIMARY KEY CLUSTERED 
(
	[ilanDetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilce]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilce](
	[ilceID] [int] IDENTITY(1,1) NOT NULL,
	[ilce] [nchar](30) NULL,
	[sehirID] [int] NULL,
 CONSTRAINT [PK_ilce] PRIMARY KEY CLUSTERED 
(
	[ilceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[islem]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[islem](
	[islemID] [int] IDENTITY(1,1) NOT NULL,
	[islemAd] [nvarchar](20) NULL,
 CONSTRAINT [PK_islem] PRIMARY KEY CLUSTERED 
(
	[islemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[kategoriID] [int] IDENTITY(1,1) NOT NULL,
	[kategoriAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[kategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kimden]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kimden](
	[kimdenID] [int] IDENTITY(1,1) NOT NULL,
	[kimdenUnvan] [nvarchar](50) NULL,
 CONSTRAINT [PK_kimden] PRIMARY KEY CLUSTERED 
(
	[kimdenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muhit]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muhit](
	[muhitID] [int] IDENTITY(1,1) NOT NULL,
	[mezarlik] [bit] NULL,
	[eczane] [bit] NULL,
	[camii] [bit] NULL,
	[market] [bit] NULL,
	[alisverisMerkezi] [bit] NULL,
	[park] [bit] NULL,
	[ilkokul] [bit] NULL,
	[lise] [bit] NULL,
	[üniversite] [bit] NULL,
	[semtPazari] [bit] NULL,
	[ilanID] [int] NULL,
 CONSTRAINT [PK_muhit] PRIMARY KEY CLUSTERED 
(
	[muhitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[odaSayisi]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[odaSayisi](
	[odaSayisiID] [int] IDENTITY(1,1) NOT NULL,
	[odaSayisi] [nchar](10) NULL,
 CONSTRAINT [PK_odaSayisi] PRIMARY KEY CLUSTERED 
(
	[odaSayisiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paraCinsi]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paraCinsi](
	[paraCinsiID] [int] IDENTITY(1,1) NOT NULL,
	[paraCinsi] [nchar](10) NULL,
 CONSTRAINT [PK_paraCinsi] PRIMARY KEY CLUSTERED 
(
	[paraCinsiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehir]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehir](
	[sehirID] [int] IDENTITY(1,1) NOT NULL,
	[sehir] [nchar](20) NULL,
 CONSTRAINT [PK_adres] PRIMARY KEY CLUSTERED 
(
	[sehirID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ulasim]    Script Date: 3/20/2021 11:18:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ulasim](
	[ulasimID] [int] IDENTITY(1,1) NOT NULL,
	[marmaray] [bit] NULL,
	[metro] [bit] NULL,
	[vapur] [bit] NULL,
	[otobusDuragi] [bit] NULL,
	[metrobus] [bit] NULL,
	[anayol] [bit] NULL,
	[tramvay] [bit] NULL,
	[dolmus] [bit] NULL,
	[taksiDuragi] [bit] NULL,
	[havalimani] [bit] NULL,
	[ilanID] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([adminID], [adminAd], [adminSoyad], [adminKullaniciAdi], [adminPassword]) VALUES (1, N'Muhammed            ', N'ay', N'admin', N'123456')
INSERT [dbo].[admin] ([adminID], [adminAd], [adminSoyad], [adminKullaniciAdi], [adminPassword]) VALUES (2, N'yusuf               ', N'demir', N'ysfdmr', N'yusuf123')
INSERT [dbo].[admin] ([adminID], [adminAd], [adminSoyad], [adminKullaniciAdi], [adminPassword]) VALUES (4, N'abdullah            ', N'yılmaz', N'ylmz', N'abdl00')
INSERT [dbo].[admin] ([adminID], [adminAd], [adminSoyad], [adminKullaniciAdi], [adminPassword]) VALUES (5, N'kemal               ', N'sayar', N'kmlsyr', N'kml4567')
INSERT [dbo].[admin] ([adminID], [adminAd], [adminSoyad], [adminKullaniciAdi], [adminPassword]) VALUES (6, N'ahmet               ', N'gündüz', N'ahmet', N'ahmt9090')
INSERT [dbo].[admin] ([adminID], [adminAd], [adminSoyad], [adminKullaniciAdi], [adminPassword]) VALUES (8, N'hamza               ', N'gündüz', N'hmzpnsh', N'hmzhmz')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[binaYasi] ON 

INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (1, N'0         ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (2, N'1         ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (3, N'2         ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (4, N'3         ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (5, N'4         ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (6, N'5         ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (7, N'6 - 10    ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (8, N'11 - 15   ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (9, N'16 - 20   ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (10, N'21 - 25   ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (11, N'26 - 30   ')
INSERT [dbo].[binaYasi] ([binaYasiID], [binaYasi]) VALUES (12, N'30+       ')
SET IDENTITY_INSERT [dbo].[binaYasi] OFF
SET IDENTITY_INSERT [dbo].[disOzellik] ON 

INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (7, 1, 1, 1, 0, 56)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (8, 1, 0, 0, 1, 57)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (9, 1, 1, 1, 1, 57)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (10, 1, 0, 1, 0, 60)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (11, 0, 1, 1, 1, 60)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (14, 1, 0, 1, 0, 66)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (15, 1, 0, 1, 0, 68)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (16, 1, 0, 0, 0, 70)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (17, 1, 0, 1, 0, 71)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (18, 0, 1, 1, 0, 72)
INSERT [dbo].[disOzellik] ([disID], [park], [havuz], [alarm], [siteMi], [ilanID]) VALUES (19, 1, 1, 1, 0, 73)
SET IDENTITY_INSERT [dbo].[disOzellik] OFF
SET IDENTITY_INSERT [dbo].[icOzellik] ON 

INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (1, 1, 1, N'2    ', 56)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (2, 1, 1, N'4    ', 57)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (3, 0, 0, N'2    ', 57)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (4, 1, 0, N'0    ', 60)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (5, 1, 1, N'5    ', 60)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (8, 1, 1, N'1    ', 66)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (9, 1, 0, N'1    ', 68)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (10, 1, 0, N'3    ', 70)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (11, 0, 1, N'2    ', 71)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (12, 1, 1, N'2    ', 72)
INSERT [dbo].[icOzellik] ([icID], [asansor], [somine], [banyoSayisi], [ilanID]) VALUES (13, 1, 1, N'3    ', 73)
SET IDENTITY_INSERT [dbo].[icOzellik] OFF
SET IDENTITY_INSERT [dbo].[ilan] ON 

INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (30, N'ev', 5677, 3, CAST(N'2020-12-24T22:47:25.747' AS DateTime), 2, 2, 2, N'728xautoy.jpg', 2, 155, N'da,ire')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (34, N'antalyada kiralık  yazlık', 5000, 3, CAST(N'2020-12-27T03:38:56.280' AS DateTime), 2, 2, 1, N'müstakil-ev.jpg', 7, 155, N'acil değil')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (36, N'aaa', 234, 1, CAST(N'2020-12-27T22:18:38.320' AS DateTime), 5, 1, 3, N'müstakil-ev.jpg', 4, 155, N'aaaa')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (37, N'b', 3, 3, CAST(N'2020-12-27T22:20:35.547' AS DateTime), 1, 1, 3, N'müstakil-ev.jpg', 2, 155, N'bb')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (38, N'cc', 34, 2, CAST(N'2020-12-27T22:21:51.297' AS DateTime), 2, 1, 2, N'müstakil-ev.jpg', 2, 155, N'ccc')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (44, N'klkl', 780, 2, CAST(N'2020-12-27T23:19:04.440' AS DateTime), 5, 1, 3, N'müstakil-ev.jpg', 3, 155, N'klkl')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (47, N'oooooo', 4444, 1, CAST(N'2020-12-27T23:24:22.220' AS DateTime), 4, 2, 2, N'müstakil-ev.jpg', 5, 155, N'ooooo')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (49, N'oooooo', 1111, 1, CAST(N'2020-12-27T23:26:19.363' AS DateTime), 2, 2, 2, N'müstakil-ev.jpg', 1, 155, N'ooooo')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (50, N'ooooo', 1111, 2, CAST(N'2020-12-27T23:28:35.360' AS DateTime), 3, 1, 3, N'müstakil-ev.jpg', 8, 155, N'ooooo')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (51, N'adddd', 222, 4, CAST(N'2020-12-27T23:31:46.150' AS DateTime), 3, 1, 2, N'müstakil-ev.jpg', 12, 155, N'adad')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (52, N'pira', 4545, 2, CAST(N'2020-12-27T23:34:09.243' AS DateTime), 4, 2, 2, N'müstakil-ev.jpg', 4, 47, N'büyk fiytaakakaoı')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (53, N'öçöçö', 666, 2, CAST(N'2020-12-27T23:38:38.267' AS DateTime), 4, 2, 2, N'müstakil-ev.jpg', 3, 42, N'öçöç')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (54, N'zzz', 45, 2, CAST(N'2020-12-27T23:42:46.290' AS DateTime), 5, 1, 3, N'müstakil-ev.jpg', 13, 162, N'zzzz')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (55, N'lklk', 56, 3, CAST(N'2020-12-27T23:54:13.400' AS DateTime), 3, 2, 2, N'müstakil-ev.jpg', 4, 46, N'ıulıu')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (56, N'kiralık 4+1 bahçe katı daire', 1450, 2, CAST(N'2021-01-03T11:37:27.190' AS DateTime), 2, 2, 2, N'müstakil-ev.jpg', 5, 53, N'merkezi konumda bluunmakta daire, bahçe katı, ayrı girişli ')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (57, N'emlak firmasndan satılık 6 dönüm üzerine kurulu çiftlik evi ', 450000, 2, CAST(N'2021-01-26T14:45:51.197' AS DateTime), 8, 1, 2, N'çiftlik evi dir.jpg', 1, 86, N'6 dönüm üzerinde kuruldur ve merkeze çok yskındır ayrca ahır kümes de bulunmaktadır')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (58, N'dublex daire kiralık', 2400, 3, CAST(N'2021-01-26T14:48:13.793' AS DateTime), 5, 2, 1, N'villa7.jpg', 7, 83, N'sadece evli kişiler arasın. dublex ve güney cephelidir')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (59, N'inşaat firmsından satılık müstakil ev', 340000, 1, CAST(N'2021-01-26T14:50:27.237' AS DateTime), 2, 1, 3, N'mustakil-ev-2.jpg', 15, 8, N'inşaat firmasındandır ')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (60, N'acil satılıkresidence katı', 567000, 4, CAST(N'2021-01-26T15:04:17.343' AS DateTime), 6, 1, 2, N'residence su-residence2-11688-1200x800.jpg', 16, 37, N'residence meerkezi konumda şehirn merkezinde ')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (66, N'satlık güvercinctepede müstakil ev', 24000, 1, CAST(N'2021-01-26T15:30:27.570' AS DateTime), 2, 1, 2, N'müstakil-3.jpg', 7, 89, N'merkezi konumda bluunmaktadır. hasatanwye 10 dk mesafede')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (68, N'torku yapı firmasından satılık residence', 356000, 2, CAST(N'2021-01-26T15:34:19.493' AS DateTime), 6, 1, 3, N'residence ZEFoOEdsWDBHMnFtYXZJMDV.jpg', 8, 103, N'inşaat firmasından satılık çok güzel konumda bulunmakadır')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (70, N'triplex kiralık', 34000, 2, CAST(N'2021-01-26T15:49:10.750' AS DateTime), 4, 2, 3, N'triplex konut.jpg', 14, 172, N'pazaqrlık payı yokur')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (71, N'satılık çiftlik evi', 578987, 3, CAST(N'2021-01-26T15:51:17.673' AS DateTime), 8, 1, 2, N'çiftlikevi4.jpg', 4, 49, N'her türlü mte sebze ekilebilir toğrağı berektlidir')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (72, N'kiralık dublex daire', 2300, 1, CAST(N'2021-01-26T15:53:10.500' AS DateTime), 3, 2, 2, N'dublex3.jpg', 7, 87, N'güney cehpye bamaktadır. deniz manzaralı')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (73, N'satılık villa ', 689000, 3, CAST(N'2021-01-26T16:24:52.987' AS DateTime), 5, 1, 2, N'villa5.jpg', 7, 91, N'çok acil deniz manzaralı satılık villa ')
INSERT [dbo].[ilan] ([ilanID], [ilanBaslik], [ilanFiyat], [paraCinsiID], [ilanTarih], [kategoriID], [islemID], [kimdenID], [ilanResim], [sehirID], [ilceID], [ilanAciklama]) VALUES (74, N'acilen ', 567777, 4, CAST(N'2021-03-20T20:50:44.387' AS DateTime), 2, 1, 2, N'çiftlik evi dir.jpg', 7, 99, N'ilannn')
SET IDENTITY_INSERT [dbo].[ilan] OFF
SET IDENTITY_INSERT [dbo].[ilanDetay] ON 

INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (1, 1, 56, 35, 89, 8, 67, N'soba', 567, 1, 30)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (5, 3, 566, 555, 2, 3, 2, N'aa', 44, 1, 36)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (9, 5, 555, 43, 5, 4, 4, N'dddd', 455, 1, 55)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (10, 8, 150, 120, 4, 4, 0, N'kalorifer-', 1450, 0, 56)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (11, 9, 590, 530, 2, 5, 1, N'merkezi kalorifer', 5000, 1, 57)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (12, 13, 240, 200, 5, 9, 4, N'doğalgaz', 2400, 1, 57)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (13, 1, 40, 30, 50, 4, 48, N'merkezi ısıtma', 5000, 0, 60)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (14, 17, 590, 390, 4, 9, 1, N'doğalgaz', 5000, 1, 60)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (17, 6, 230, 200, 1, 5, 1, N'doğalgaz', 2000, 0, 66)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (18, 2, 30, 25, 57, 5, 34, N'kalorifer', 56800, 0, 68)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (19, 14, 467, 345, 3, 8, 1, N'doğalgaz', 5000, 1, 70)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (20, 8, 500, 400, 1, 7, 1, N'soba', 5000, 1, 71)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (21, 14, 780, 690, 4, 5, 3, N'kalorifer', 6000, 1, 72)
INSERT [dbo].[ilanDetay] ([ilanDetayID], [odaSayisiID], [metrekareBrut], [metrekareNet], [iDetayBinaKatSayisi], [binaYasiID], [iDetayKacinciKat], [iDetayIsitma], [iDetayDepozito], [iDetayEsya], [ilanID]) VALUES (22, 9, 345, 300, 3, 8, 1, N'doğalgaz', 5000, 1, 73)
SET IDENTITY_INSERT [dbo].[ilanDetay] OFF
SET IDENTITY_INSERT [dbo].[ilce] ON 

INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (1, N'ceyhan                        ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (2, N'merkez                        ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (3, N'çukurova                      ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (4, N'ALADAĞ                        ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (5, N'CEYHAN                        ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (6, N'ÇUKUROVA                      ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (7, N'FEKE                          ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (8, N'İMAMOĞLU                      ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (9, N'KARAİSALI                     ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (10, N'KARATAŞ                       ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (11, N'KOZAN                         ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (12, N'POZANTI                       ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (13, N'SAİMBEYLİ                     ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (14, N'SARIÇAM                       ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (15, N'SEYHAN                        ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (16, N'TUFANBEYLİ                    ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (17, N'YUMURTALIK                    ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (18, N'YÜREĞİR                       ', 1)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (19, N'BESNİ                         ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (20, N'ÇELİKHAN                      ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (21, N'GERGER                        ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (22, N'GÖLBAŞI                       ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (23, N'KAHTA                         ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (24, N'SAMSAT                        ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (25, N'SİNCİK                        ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (26, N'TUT                           ', 2)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (27, N'BAŞMAKÇI                      ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (28, N'BAYAT                         ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (29, N'BOLVADİN                      ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (30, N'ÇAY                           ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (31, N'ÇOBANLAR                      ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (32, N'DAZKIRI                       ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (33, N'DİNAR                         ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (34, N'EMİRDAĞ                       ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (35, N'EVCİLER                       ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (36, N'HOCALAR                       ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (37, N'İHSANİYE                      ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (38, N'İSCEHİSAR                     ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (39, N'KIZILÖREN                     ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (40, N'SANDIKLI                      ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (41, N'SİNANPAŞA                     ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (42, N'SULDANDAĞI                    ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (43, N'ŞUHUT                         ', 3)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (44, N'DİYADİN                       ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (45, N'DOĞUBEYAZIT                   ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (46, N'ELEŞKİRT                      ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (47, N'HAMUR                         ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (48, N'PATNOS                        ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (49, N'TAŞLIÇAY                      ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (50, N'TUTAK                         ', 4)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (51, N'GÖYNÜCEK                      ', 5)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (52, N'GÜMÜŞHACIKÖYÜ                 ', 5)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (53, N'HAMAMÖZÜ                      ', 5)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (54, N'MERZİFON                      ', 5)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (55, N'SULUOVA                       ', 5)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (56, N'TAŞOVA                        ', 5)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (57, N'AKYURT                        ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (58, N'ALTINDAĞ                      ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (59, N'AYAŞ                          ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (60, N'BALA                          ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (61, N'BEYPAZARI                     ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (62, N'ÇAMLIDERE                     ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (63, N'ÇANKAYA                       ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (64, N'ÇUBUK                         ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (65, N'ELMADAĞ                       ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (66, N'ETİMESGUT                     ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (67, N'EVREN                         ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (68, N'GÖLBAŞI                       ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (69, N'GÜDÜL                         ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (70, N'HAYMANA                       ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (71, N'KALECİK                       ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (72, N'KAZAN                         ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (73, N'KEÇİÖREN                      ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (74, N'KIZILCAHAMAM                  ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (75, N'MAMAK                         ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (76, N'NALLIHAN                      ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (77, N'POLATLI                       ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (78, N'PURSAKLAR                     ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (79, N'SİNCAN                        ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (80, N'ŞEREFLİKOÇHİSAR               ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (81, N'YENİMAHALLE                   ', 6)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (82, N'AKSEKİ                        ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (83, N'AKSU                          ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (84, N'ALANYA                        ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (85, N'DEMRE                         ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (86, N'DÖŞEMEALTI                    ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (87, N'ELMALI                        ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (88, N'FİNİKE                        ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (89, N'GAZİPAŞA                      ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (90, N'GÜNDOĞMUŞ                     ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (91, N'İBRADI                        ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (92, N'KAŞ                           ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (93, N'KEMER                         ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (94, N'KEPEZ                         ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (95, N'KONYAALTI                     ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (96, N'KORKUTELİ                     ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (97, N'KUMLUCA                       ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (98, N'MANAVGAT                      ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (99, N'MURATPAŞA                     ', 7)
GO
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (100, N'SERİK                         ', 7)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (101, N'ARDANUÇ                       ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (102, N'ARHAVİ                        ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (103, N'BORÇKA                        ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (104, N'HOPA                          ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (105, N'MURGUL                        ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (106, N'ŞAVŞAT                        ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (107, N'YUSUFELİ                      ', 8)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (108, N'BOZDOĞAN                      ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (109, N'BUHARKENT                     ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (110, N'ÇİNE                          ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (111, N'DİDİM                         ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (112, N'EFELER                        ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (113, N'GERMENCİK                     ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (114, N'İNCİRLİOVA                    ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (115, N'KARACASU                      ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (116, N'KARPUZLU                      ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (117, N'KOÇARLI                       ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (118, N'KÖŞK                          ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (119, N'KUŞADASI                      ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (120, N'KUYUCAK                       ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (121, N'NAZİLLİ                       ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (122, N'SÖKE                          ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (123, N'SULTANHİSAR                   ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (124, N'YENİPAZAR                     ', 9)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (125, N'ALTIEYLÜL                     ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (126, N'AYVALIK                       ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (127, N'BALYA                         ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (128, N'BANDIRMA                      ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (129, N'BİGADİÇ                       ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (130, N'BURHANİYE                     ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (131, N'DURSUNBEY                     ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (132, N'EDREMİT                       ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (133, N'ERDEK                         ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (134, N'GÖMEÇ                         ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (135, N'GÖNEN                         ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (136, N'HAVRAN                        ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (137, N'İVRİNDİ                       ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (138, N'KARESİ                        ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (139, N'KEPSUT                        ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (140, N'MANYAS                        ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (141, N'MARMARA                       ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (142, N'SAVAŞTEPE                     ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (143, N'SINDIRGI                      ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (144, N'SUSURLUK                      ', 10)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (145, N'BOZÜYÜK                       ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (146, N'GÖLPAZARI                     ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (147, N'İNHİSAR                       ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (148, N'OSMANELİ                      ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (149, N'PAZARYERİ                     ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (150, N'SÖĞÜT                         ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (151, N'YENİPAZAR                     ', 11)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (152, N'ADAKLI                        ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (153, N'GENÇ                          ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (154, N'KARLIOVA                      ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (155, N'KİGI                          ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (156, N'SOLHAN                        ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (157, N'YAYLADERE                     ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (158, N'YEDİSU                        ', 12)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (159, N'ADİLCEVAZ                     ', 13)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (160, N'AHLAT                         ', 13)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (161, N'HİZAN                         ', 13)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (162, N'GÜROYMAK                      ', 13)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (163, N'MUTKİ                         ', 13)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (164, N'TATVAN                        ', 13)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (165, N'DÖRTDİVAN                     ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (166, N'GEREDE                        ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (167, N'GÖYNÜK                        ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (168, N'KIBRISCIK                     ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (169, N'MENGEN                        ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (170, N'MUDURNU                       ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (171, N'SEBEN                         ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (172, N'YENİÇAĞA                      ', 14)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (173, N'AĞLASUN                       ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (174, N'ALTINYAYLA                    ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (175, N'BUCAK                         ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (176, N'ÇAVDIR                        ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (177, N'ÇELTİKÇİ                      ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (178, N'GÖLHİSAR                      ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (179, N'KARAMANLI                     ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (180, N'KEMER                         ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (181, N'TEFENNİ                       ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (182, N'YEŞİLOVA                      ', 15)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (183, N'BÜYÜK ORHAN                   ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (184, N'GEMLİK                        ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (185, N'GÜRSU                         ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (186, N'HARMANCIK                     ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (187, N'İNEGÖL                        ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (188, N'İZNİK                         ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (189, N'KARACABEY                     ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (190, N'KELES                         ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (191, N'KESTEL                        ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (192, N'MUDANYA                       ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (193, N'MUSTAFA K. PAŞA               ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (194, N'NİLÜFER                       ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (195, N'ORHANELİ                      ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (196, N'ORHANGAZİ                     ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (197, N'OSMANGAZİ                     ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (198, N'YENİŞEHİR                     ', 16)
INSERT [dbo].[ilce] ([ilceID], [ilce], [sehirID]) VALUES (199, N'YILDIRIM                      ', 16)
GO
SET IDENTITY_INSERT [dbo].[ilce] OFF
SET IDENTITY_INSERT [dbo].[islem] ON 

INSERT [dbo].[islem] ([islemID], [islemAd]) VALUES (1, N'Satılık')
INSERT [dbo].[islem] ([islemID], [islemAd]) VALUES (2, N'Kiralık')
SET IDENTITY_INSERT [dbo].[islem] OFF
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (1, N'Daire')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (2, N'Müstakil')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (3, N'Dublex')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (4, N'Triplex')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (5, N'Villa')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (6, N'Residence')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (7, N'Yazlık')
INSERT [dbo].[kategori] ([kategoriID], [kategoriAd]) VALUES (8, N'Çiftlik evi')
SET IDENTITY_INSERT [dbo].[kategori] OFF
SET IDENTITY_INSERT [dbo].[kimden] ON 

INSERT [dbo].[kimden] ([kimdenID], [kimdenUnvan]) VALUES (1, N'Sahibinden')
INSERT [dbo].[kimden] ([kimdenID], [kimdenUnvan]) VALUES (2, N'Emlak ofisinden')
INSERT [dbo].[kimden] ([kimdenID], [kimdenUnvan]) VALUES (3, N'inşaat firmasından')
SET IDENTITY_INSERT [dbo].[kimden] OFF
SET IDENTITY_INSERT [dbo].[muhit] ON 

INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (7, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 56)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (8, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 57)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (9, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 57)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (10, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 60)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (11, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 60)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (14, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 66)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (15, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 68)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 70)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (17, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 71)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (18, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 72)
INSERT [dbo].[muhit] ([muhitID], [mezarlik], [eczane], [camii], [market], [alisverisMerkezi], [park], [ilkokul], [lise], [üniversite], [semtPazari], [ilanID]) VALUES (19, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 73)
SET IDENTITY_INSERT [dbo].[muhit] OFF
SET IDENTITY_INSERT [dbo].[odaSayisi] ON 

INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (1, N'1 + 0     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (2, N'1 + 1     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (3, N'2 + 0     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (4, N'2 + 1     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (5, N'2 + 2     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (6, N'3 + 1     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (7, N'3 + 2     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (8, N'4 + 1     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (9, N'4 + 2     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (10, N'4 + 3     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (11, N'4 + 4     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (12, N'5 + 1     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (13, N'5 + 2     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (14, N'5 + 3     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (15, N'5 + 4     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (16, N'5 + 5     ')
INSERT [dbo].[odaSayisi] ([odaSayisiID], [odaSayisi]) VALUES (17, N'6 +       ')
SET IDENTITY_INSERT [dbo].[odaSayisi] OFF
SET IDENTITY_INSERT [dbo].[paraCinsi] ON 

INSERT [dbo].[paraCinsi] ([paraCinsiID], [paraCinsi]) VALUES (1, N'TL        ')
INSERT [dbo].[paraCinsi] ([paraCinsiID], [paraCinsi]) VALUES (2, N'Dolar     ')
INSERT [dbo].[paraCinsi] ([paraCinsiID], [paraCinsi]) VALUES (3, N'Euro      ')
INSERT [dbo].[paraCinsi] ([paraCinsiID], [paraCinsi]) VALUES (4, N'Sterlin   ')
INSERT [dbo].[paraCinsi] ([paraCinsiID], [paraCinsi]) VALUES (5, N'Riyal     ')
SET IDENTITY_INSERT [dbo].[paraCinsi] OFF
SET IDENTITY_INSERT [dbo].[sehir] ON 

INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (1, N'ADANA               ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (2, N'ADIYAMAN            ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (3, N'AFYON               ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (4, N'AĞRI                ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (5, N'AMASYA              ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (6, N'ANKARA              ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (7, N'ANTALYA             ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (8, N'ARTVİN              ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (9, N'AYDIN               ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (10, N'BALIKESİR           ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (11, N'BİLECİK             ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (12, N'BİNGÖL              ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (13, N'BİTLİS              ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (14, N'BOLU                ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (15, N'BURDUR              ')
INSERT [dbo].[sehir] ([sehirID], [sehir]) VALUES (16, N'BURSA               ')
SET IDENTITY_INSERT [dbo].[sehir] OFF
SET IDENTITY_INSERT [dbo].[ulasim] ON 

INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (8, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 57)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (9, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 57)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (10, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 60)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (11, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 60)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (16, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 70)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (17, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 71)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (15, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 68)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (18, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 72)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (19, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 73)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (7, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 56)
INSERT [dbo].[ulasim] ([ulasimID], [marmaray], [metro], [vapur], [otobusDuragi], [metrobus], [anayol], [tramvay], [dolmus], [taksiDuragi], [havalimani], [ilanID]) VALUES (14, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 66)
SET IDENTITY_INSERT [dbo].[ulasim] OFF
ALTER TABLE [dbo].[ilan] ADD  CONSTRAINT [DF_ilan_ilanTarih]  DEFAULT (getdate()) FOR [ilanTarih]
GO
ALTER TABLE [dbo].[disOzellik]  WITH CHECK ADD  CONSTRAINT [FK_disOzellik_ilan] FOREIGN KEY([ilanID])
REFERENCES [dbo].[ilan] ([ilanID])
GO
ALTER TABLE [dbo].[disOzellik] CHECK CONSTRAINT [FK_disOzellik_ilan]
GO
ALTER TABLE [dbo].[icOzellik]  WITH CHECK ADD  CONSTRAINT [FK_icOzellik_ilan] FOREIGN KEY([ilanID])
REFERENCES [dbo].[ilan] ([ilanID])
GO
ALTER TABLE [dbo].[icOzellik] CHECK CONSTRAINT [FK_icOzellik_ilan]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [FK_ilan_adres1] FOREIGN KEY([sehirID])
REFERENCES [dbo].[sehir] ([sehirID])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [FK_ilan_adres1]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [FK_ilan_ilce] FOREIGN KEY([ilceID])
REFERENCES [dbo].[ilce] ([ilceID])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [FK_ilan_ilce]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [FK_ilan_islem] FOREIGN KEY([islemID])
REFERENCES [dbo].[islem] ([islemID])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [FK_ilan_islem]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [FK_ilan_kategori] FOREIGN KEY([kategoriID])
REFERENCES [dbo].[kategori] ([kategoriID])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [FK_ilan_kategori]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [FK_ilan_kimden] FOREIGN KEY([kimdenID])
REFERENCES [dbo].[kimden] ([kimdenID])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [FK_ilan_kimden]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [FK_ilan_paraCinsi] FOREIGN KEY([paraCinsiID])
REFERENCES [dbo].[paraCinsi] ([paraCinsiID])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [FK_ilan_paraCinsi]
GO
ALTER TABLE [dbo].[ilanDetay]  WITH CHECK ADD  CONSTRAINT [FK_ilanDetay_binaYasi] FOREIGN KEY([binaYasiID])
REFERENCES [dbo].[binaYasi] ([binaYasiID])
GO
ALTER TABLE [dbo].[ilanDetay] CHECK CONSTRAINT [FK_ilanDetay_binaYasi]
GO
ALTER TABLE [dbo].[ilanDetay]  WITH CHECK ADD  CONSTRAINT [FK_ilanDetay_ilan] FOREIGN KEY([ilanID])
REFERENCES [dbo].[ilan] ([ilanID])
GO
ALTER TABLE [dbo].[ilanDetay] CHECK CONSTRAINT [FK_ilanDetay_ilan]
GO
ALTER TABLE [dbo].[ilanDetay]  WITH CHECK ADD  CONSTRAINT [FK_ilanDetay_odaSayisi] FOREIGN KEY([odaSayisiID])
REFERENCES [dbo].[odaSayisi] ([odaSayisiID])
GO
ALTER TABLE [dbo].[ilanDetay] CHECK CONSTRAINT [FK_ilanDetay_odaSayisi]
GO
ALTER TABLE [dbo].[ilce]  WITH CHECK ADD  CONSTRAINT [FK_ilce_adres] FOREIGN KEY([sehirID])
REFERENCES [dbo].[sehir] ([sehirID])
GO
ALTER TABLE [dbo].[ilce] CHECK CONSTRAINT [FK_ilce_adres]
GO
ALTER TABLE [dbo].[muhit]  WITH CHECK ADD  CONSTRAINT [FK_muhit_ilan] FOREIGN KEY([ilanID])
REFERENCES [dbo].[ilan] ([ilanID])
GO
ALTER TABLE [dbo].[muhit] CHECK CONSTRAINT [FK_muhit_ilan]
GO
ALTER TABLE [dbo].[ulasim]  WITH CHECK ADD  CONSTRAINT [FK_ulasim_ilan] FOREIGN KEY([ilanID])
REFERENCES [dbo].[ilan] ([ilanID])
GO
ALTER TABLE [dbo].[ulasim] CHECK CONSTRAINT [FK_ulasim_ilan]
GO
