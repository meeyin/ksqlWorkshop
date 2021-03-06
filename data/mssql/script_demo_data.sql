IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'demo') 
BEGIN 
	CREATE DATABASE demo
END
GO
USE demo
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Customers'))
BEGIN
    CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](350) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[DOB] [datetime] NULL,
	[ClubStatus] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	SET IDENTITY_INSERT [dbo].[Customers] ON 

	INSERT [dbo].[Customers] ([Id], [FullName], [MobileNumber], [DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) VALUES (1, N'Alice', N'6012345678', CAST(N'1988-09-01T00:00:00.000' AS DateTime), N'Silver', CAST(N'2021-10-05T10:30:03.650' AS DateTime), NULL)
	INSERT [dbo].[Customers] ([Id], [FullName], [MobileNumber], [DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) VALUES (2, N'Bob', N'6016563299', CAST(N'1976-11-01T00:00:00.000' AS DateTime), N'Gold', CAST(N'2021-10-05T10:40:57.490' AS DateTime), NULL)
	INSERT [dbo].[Customers] ([Id], [FullName], [MobileNumber], [DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) VALUES (3, N'Charles', N'60179885213', CAST(N'1997-11-01T00:00:00.000' AS DateTime), N'Platinum', CAST(N'2021-10-05T10:40:57.497' AS DateTime), NULL)
	INSERT [dbo].[Customers] ([Id], [FullName], [MobileNumber], [DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) VALUES (4, N'Danny', N'60133325464', CAST(N'1996-01-21T00:00:00.000' AS DateTime), N'Silver', CAST(N'2021-10-05T10:42:47.290' AS DateTime), NULL)
	INSERT [dbo].[Customers] ([Id], [FullName], [MobileNumber], [DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) VALUES (5, N'Eugene', N'60168595299', CAST(N'1986-05-21T00:00:00.000' AS DateTime), N'Gold', CAST(N'2021-10-05T10:42:47.290' AS DateTime), NULL)
	INSERT [dbo].[Customers] ([Id], [FullName], [MobileNumber], [DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) VALUES (6, N'Fiona', N'601796513454', CAST(N'1980-06-08T00:00:00.000' AS DateTime), N'Platinum', CAST(N'2021-10-05T10:42:47.290' AS DateTime), NULL)
	SET IDENTITY_INSERT [dbo].[Customers] OFF

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Orders'))
BEGIN
    CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[Item] [varchar](50) NULL,
	[Total] [decimal](15, 2) NULL,
	[CreatedDate] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	
	SET IDENTITY_INSERT [dbo].[Orders] ON 

	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (1, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.550' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (2, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.560' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (3, 1, N'Laptop', CAST(6899.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.563' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (4, 1, N'Keyboard', CAST(69.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.563' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (5, 1, N'Speaker', CAST(1099.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.563' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (6, 1, N'Earphone', CAST(199.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.563' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (7, 2, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:26.743' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (8, 2, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:26.747' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (9, 3, N'Laptop', CAST(6899.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:26.747' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (10, 3, N'Keyboard', CAST(69.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:26.747' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (11, 3, N'Speaker', CAST(1099.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:26.747' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (12, 2, N'Earphone', CAST(199.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:26.747' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (13, 2, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T15:45:10.150' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (14, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T15:59:17.367' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (15, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T15:59:52.050' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (16, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:03.460' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (17, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:04.880' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (18, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:06.253' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (19, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:07.243' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (20, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:10.293' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (21, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:10.293' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (22, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:21.640' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (23, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:21.640' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (24, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:23.133' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (25, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:23.133' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (26, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:24.603' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (27, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:24.607' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (28, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:26.823' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (29, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:26.827' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (30, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:28.053' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (31, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:28.053' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (32, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:28.500' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (33, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:28.500' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (34, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:29.133' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (35, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:29.133' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (36, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:29.560' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (37, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:29.563' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (38, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:30.103' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (39, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:30.103' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (40, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:46.060' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (41, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:46.063' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (42, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:46.580' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (43, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:46.580' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (44, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:46.817' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (45, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:46.820' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (46, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:47.103' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (47, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:47.103' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (48, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:47.560' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (49, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:47.563' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (50, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:47.830' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (51, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:16:47.830' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (52, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:29:47.010' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (53, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:32:40.580' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (54, 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T16:32:40.580' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (55, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T17:44:11.527' AS DateTime))
	INSERT [dbo].[Orders] ([Id], [CustomerId], [Item], [Total], [CreatedDate]) VALUES (56, 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T17:45:11.270' AS DateTime))
	SET IDENTITY_INSERT [dbo].[Orders] OFF


END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Ratings'))
BEGIN
    CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(101,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Rating] [int] NULL,
	[Comments] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	SET IDENTITY_INSERT [dbo].[Ratings] ON 

	INSERT [dbo].[Ratings] ([Id], [OrderId], [Rating], [Comments], [CreatedDate]) VALUES (101, 1, 4, N'Super nice', CAST(N'2021-10-05T10:59:46.740' AS DateTime))
	INSERT [dbo].[Ratings] ([Id], [OrderId], [Rating], [Comments], [CreatedDate]) VALUES (102, 2, 4, N'Good Service', CAST(N'2021-10-05T11:00:09.110' AS DateTime))
	SET IDENTITY_INSERT [dbo].[Ratings] OFF

END
