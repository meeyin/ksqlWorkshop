--insert customer

INSERT [dbo].[Customers] ([FullName], [MobileNumber], 
[DOB], [ClubStatus], [CreatedDate], [ModifiedDate]) 
VALUES ( N'Test', N'6012345678', CAST(N'1988-09-01T00:00:00.000' AS DateTime),
N'Silver', CAST(N'2021-10-05T10:30:03.650' AS DateTime), NULL)

INSERT [dbo].[Customers] ( [FullName], [MobileNumber], [DOB], [ClubStatus], 
[CreatedDate], [ModifiedDate]) VALUES ( N'Bob', N'6016563299', 
CAST(N'1976-11-01T00:00:00.000' AS DateTime), N'Gold', 
CAST(N'2021-10-05T10:40:57.490' AS DateTime), NULL)

--insert order
INSERT [dbo].[Orders] ( [CustomerId], [Item], [Total], [CreatedDate]) VALUES 
( 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.550' AS DateTime))
INSERT [dbo].[Orders] ( [CustomerId], [Item], [Total], [CreatedDate]) VALUES 
( 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.560' AS DateTime))
INSERT [dbo].[Orders] ( [CustomerId], [Item], [Total], [CreatedDate]) VALUES 
( 1, N'Monitor', CAST(1000.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.550' AS DateTime))
INSERT [dbo].[Orders] ( [CustomerId], [Item], [Total], [CreatedDate]) VALUES 
( 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.560' AS DateTime))
INSERT [dbo].[Orders] ( [CustomerId], [Item], [Total], [CreatedDate]) VALUES 
( 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.560' AS DateTime))
INSERT [dbo].[Orders] ( [CustomerId], [Item], [Total], [CreatedDate]) VALUES 
( 1, N'Mouse', CAST(70.00 AS Decimal(15, 2)), CAST(N'2021-10-05T10:56:07.560' AS DateTime))

--insert rating
INSERT [dbo].[Ratings] ([OrderId], [Rating], [Comments], [CreatedDate])
VALUES (3, 4, N'Super nice', CAST(N'2021-10-05T10:59:46.740' AS DateTime))
INSERT [dbo].[Ratings] ([OrderId], [Rating], [Comments], [CreatedDate]) 
VALUES (4, 4, N'Good Service', CAST(N'2021-10-05T11:00:09.110' AS DateTime))
