USE [Ellent_shop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[about_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[img] [nvarchar](500) NULL,
	[contact] [nvarchar](500) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[about_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branchs]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branchs](
	[branch_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](500) NULL,
	[img] [nvarchar](500) NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Branchs] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cart_id] [uniqueidentifier] NOT NULL,
	[created_at] [datetime] NULL,
	[user_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](500) NULL,
	[icon] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[color_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](500) NULL,
	[code] [nvarchar](500) NULL,
	[img] [nvarchar](1000) NULL,
	[product_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[menus_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](500) NULL,
	[url] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[menus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[order_id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NOT NULL,
	[amount] [int] NULL,
	[amount_ship] [int] NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[discount] [float] NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [uniqueidentifier] NOT NULL,
	[status] [nvarchar](500) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[user_id] [uniqueidentifier] NULL,
	[discount] [float] NULL,
	[ship_Address] [nvarchar](1000) NULL,
	[ship_Phone] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[permission_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](1000) NULL,
	[active] [tinyint] NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](1000) NULL,
	[price] [money] NULL,
	[sale] [float] NULL,
	[title] [nvarchar](1000) NULL,
	[details] [nvarchar](1000) NULL,
	[highlight] [tinyint] NULL,
	[new_product] [tinyint] NULL,
	[size] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[amount] [int] NULL,
	[quatity] [int] NULL,
	[voucher_id] [uniqueidentifier] NULL,
	[branch_id] [uniqueidentifier] NULL,
	[saller_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Cart]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cart](
	[cart_id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NOT NULL,
	[quatity] [int] NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_Product_Cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Category]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Category](
	[category_id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](50) NULL,
	[active] [tinyint] NULL,
	[description] [nvarchar](1000) NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Permission](
	[role_id] [uniqueidentifier] NOT NULL,
	[permission_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Role_Permission] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[slides_id] [uniqueidentifier] NOT NULL,
	[img] [nvarchar](500) NULL,
	[caption] [nvarchar](500) NULL,
	[contents] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[slides_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [uniqueidentifier] NOT NULL,
	[first_Name] [nvarchar](500) NULL,
	[last_Name] [nvarchar](500) NULL,
	[address] [nvarchar](500) NULL,
	[email] [nvarchar](500) NULL,
	[phone] [nvarchar](500) NULL,
	[password] [nvarchar](1000) NULL,
	[access_tokenID] [nvarchar](1000) NULL,
	[role_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 5/21/2022 1:37:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucher_id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](1000) NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[About] ([about_id], [title], [description], [img], [contact]) VALUES (N'75fe9ae8-a2dc-4f9e-90b2-0492cfceb6a9', N'Contact by phone', N'Phone', NULL, N'0932904529')
INSERT [dbo].[About] ([about_id], [title], [description], [img], [contact]) VALUES (N'ee6eef0a-bfdc-4ce5-a30c-4247891ac23d', N'Subscribe for a 25% Discount', N'Gmail', NULL, N'noreply.ellenthandmade.com@gmail.com')
INSERT [dbo].[About] ([about_id], [title], [description], [img], [contact]) VALUES (N'b82e6a27-a426-44ca-bf1c-849669da4943', N'Subscribe for a 25% Discount', N'Facebook', NULL, N'https://www.facebook.com/.ellenthandmade/')
GO
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'8028f124-eedc-49c7-a37e-01b2e34635eb', N'The gift shop', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071275/v7mdbzssyognlmtbs8fc.jpg', N'Cửa hàng quà tặng ở Hồ Chí Minh')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'4bbb66d2-e1f3-40ce-ba17-111c116873dd', N'RD', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071236/xwudlom9t4mwtzztnad2.png', N'Cửa hàng quà tặng ở Vũng Tàu')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'43431ed9-ae1a-41fd-b7c9-3164781c3577', N'Krystel Gift Shop & Foreign Exchange Buyer - Branch I', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071186/lxrg2fzdeeazx7nwjxdz.png', N'Cửa hàng quà tặng ở Manila, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'6c684c2f-c1df-4ad8-b066-3a0e4decdb40', N'BLOOMS AND BEARS', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071197/bekb0ahluxtmo8fkka2d.jpg', N'Cửa hàng quà tặng ở Bacolod, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'Pinkido Boutique & Gift Shop UE Branch', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071292/tk1blotltzq9s05qe0xm.jpg', N'Cửa hàng quà tặng ở Manila, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'Sincere Gift Shop STA Cruz Branch', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071260/ezdc892amatdxpx9ubkk.png', N'Cửa hàng quà tặng ở Manila, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'3bd49bdf-ec62-4564-85f0-5b1470aeb760', N'Travel Jewelry', N'https://res.cloudinary.com/doimf2dji/image/upload/v1652943786/kdtrkxed0sevbqpgcvlr.jpg', N'The best way to pack your jewelry for a trip. Keep your jewelry safe and organized on-the-go with this compact, lightweight jewelry case and you’ll never have to untangle a necklace again. Perfect for traveling, plus it makes storing your jewelry at home effortless. Made from premium vegan leather.')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'3bda05c5-0d2f-4daa-a30f-7604b8db9453', N'Papemelroti Gift Shop - SM Fairview', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071317/cxtiy6l0bqbmvlyzxk69.jpg', N'Cửa hàng quà tặng ở Thành phố Quezon, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'1d9a823c-f715-411e-a0a3-7b0da4081a7a', N'Annam Gourmet Saigon Centre', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071344/rttw7fzfokabts0ooxbw.jpg', N'Cửa hàng bán thực phẩm đặc sản')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'S-Liquor BKK3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071368/oaizqfndacncn4hssbj5.jpg', N'Cửa hàng rượu bia')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'5514cc62-cf56-4961-999f-838e35e91b6d', N'Takashimaya', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071331/u4eqvx3f0ahlzrdggjqh.jpg', N'Trung tâm mua sắm thời thượng, thoáng mát, có nhiều cửa hàng cao cấp, nhà hàng tinh tế và không gian lộng lẫy.')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'9709bf89-31af-4f69-942d-add5bcae8999', N'Twin''s Gift Shop - Binondo Branch', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071357/kmkffew5ezrqz5jcfs1i.jpg', N'Cửa hàng đồ mới lạ ở Manila, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'318f9a5b-2b6a-45ad-85d7-bd2def5219ee', N'Cutting Edge', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071174/drgdniaa0yw46k2i2msj.png', N'Cửa hàng quà tặng ở Thành phố Quezon, Philippines')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'2dc94cf0-7967-4d80-84d9-cf98bb59bb83', N'The Blooming Branches', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071305/fbqoydmbcwukjlipm0mm.png', N'Cửa hàng quà tặng ở Kolkata, Ấn Độ')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'0f105294-39fe-44ab-bdd0-cfccce5c002b', N'MUJI', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071223/rcvdopkxugcgeh0y2la5.png', N'Nhà bán lẻ Nhật Bản theo phong cách tối giản, có nhiều mặt hàng phổ biến như quần áo và đồ gia dụng.')
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description]) VALUES (N'39e22609-c309-4346-8349-d9846a85d8da', N'Starbucks Saigon Centre', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653071249/m3w3oni0blvyjvja4zjd.png', N'Chuỗi quán cà phê có trụ sở tại Seattle, nổi tiếng với các loại cà phê rang xay đặc trưng, đồ ăn nhẹ và có Wi-Fi.')
GO
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'aaccae2a-979d-4d55-9fc3-016300472f33', CAST(N'2022-05-15T13:59:47.367' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'5c346bd5-5b7e-4cd8-94c3-03e1fd112f02', CAST(N'2022-05-18T00:17:22.760' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'1e1446b8-ed3e-49b9-bb59-09c650128835', CAST(N'2022-05-18T22:33:42.530' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'4d2c2745-57e1-4be8-83b2-0ee80cca8532', CAST(N'2022-05-18T22:34:37.113' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'046228aa-f095-4a6f-8a61-0f8f1027791b', CAST(N'2022-04-27T23:01:39.803' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'96585ba7-9d26-47a5-b73e-14123397e534', CAST(N'2022-05-18T22:32:17.337' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'bc64aa09-202e-48cc-81c3-1483eafb4257', CAST(N'2022-05-18T22:33:40.730' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'd91031ac-1d3b-4874-acfa-17084a94e319', CAST(N'2022-04-28T16:46:39.947' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'3d6afa40-4dbd-476b-a110-179e0a6924fd', CAST(N'2022-04-27T23:01:38.010' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'a071126a-efc6-4a6e-9055-187a4b54815f', CAST(N'2022-05-01T11:19:40.717' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'2579a40b-34fb-47ba-abf3-1d59ef477ffa', CAST(N'2022-05-01T11:19:47.947' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'f45fe8f3-a157-4d56-aa01-1dac82b1c763', CAST(N'2022-05-17T23:14:22.027' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'3fde4389-14e3-486f-983f-1dadf5623d46', CAST(N'2022-05-18T22:12:37.457' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'26b5e1b7-e3c4-4ff0-b370-2071973349ea', CAST(N'2022-05-19T20:05:51.390' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'76fd2125-b66c-40d5-aab5-208ec86fb98e', CAST(N'2022-05-18T21:12:55.617' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'b8a9c44a-3b8e-423d-a1ba-22bce7c394b1', CAST(N'2022-05-18T21:15:02.917' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'87b5c30a-f7ae-4779-b17d-272310b6dd60', CAST(N'2022-05-18T21:18:43.707' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'7bc0927e-6f2a-4ecb-9550-27381e7ddc2c', CAST(N'2022-05-20T14:43:33.430' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'ff448c2a-7941-4a06-8de9-2a32c68265a5', CAST(N'2022-04-28T20:51:52.383' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'ed373028-5d84-417e-92b2-2bab2699e31f', CAST(N'2022-05-18T22:06:07.943' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'f1149237-c559-4a8e-ae07-2f700a198314', CAST(N'2022-05-18T22:37:45.197' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'5bf01e91-a01a-4d72-a050-2fadbeeac710', CAST(N'2022-05-18T21:08:26.900' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'acf25c17-fc53-463b-a6d4-30ac21d87340', CAST(N'2022-05-18T22:35:20.297' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'014cb281-3b4d-4413-9854-316e3a255478', CAST(N'2022-05-19T20:08:54.433' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'd4bc8dbf-521e-44d0-90f3-31b0144ca143', CAST(N'2022-05-18T22:34:34.467' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'88c45ed8-59a8-48e0-a240-347151dc0ed9', CAST(N'2022-05-16T15:37:53.560' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'475dde12-c973-43ea-9e85-359aa5e75fe0', CAST(N'2022-05-18T22:32:12.523' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'aa81d466-6b21-4164-9dfa-373ae2166dca', CAST(N'2022-05-18T16:28:56.290' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'cbae6978-9f9e-45a7-97a8-3aa06fe5b91c', CAST(N'2022-05-18T22:42:04.383' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c7957a79-0333-4456-82e1-3b73dc374cbb', CAST(N'2022-05-14T11:06:59.470' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c19fecfe-2806-4393-a287-3ec0b9c99008', CAST(N'2022-05-18T22:32:10.627' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'17db6317-4c72-457c-8c69-4069a3e90884', CAST(N'2022-05-17T23:14:26.223' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'fa7cf975-f36f-4734-aac6-4504de24583d', CAST(N'2022-05-18T22:09:45.513' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'57352ab0-fae4-4968-bbee-474f6a565473', CAST(N'2022-05-18T16:28:53.943' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'8eb04ce4-b71b-43a2-a1f7-4936d54cb1cf', CAST(N'2022-05-21T00:55:49.223' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'dfef9a16-6b89-421b-8da8-4cfa623616a0', CAST(N'2022-05-18T21:08:21.787' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'e66c91a5-62f3-4dc5-8903-501b85412882', CAST(N'2022-05-01T11:19:42.693' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'ade5f74a-3c1e-4d1b-a83c-50586f1213a1', CAST(N'2022-05-16T15:37:56.817' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'102c4b40-6665-42b5-83f4-51bb90478e1a', CAST(N'2022-05-18T22:37:40.237' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'5cc4be4e-c137-4981-976e-5532989e211b', CAST(N'2022-05-18T22:09:43.670' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'9a1b7342-6491-4bb9-b389-59a0933cdedb', CAST(N'2022-05-18T22:32:16.073' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'a41fdc69-f9c3-4c13-a72e-5ca78d452c5b', CAST(N'2022-05-19T22:38:25.203' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'9e5e54c7-4072-4cca-9d81-5e186b8e5729', CAST(N'2022-05-18T00:17:25.673' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'fc592810-32de-4f71-9e3a-63d1d36a6f9f', CAST(N'2022-05-18T21:15:22.113' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'3bc05b77-40e3-436d-abc0-63ff3ae7e3d0', CAST(N'2022-04-30T20:30:10.880' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'0faf12ab-8a17-455c-b232-64cd58d0f750', CAST(N'2022-04-28T16:46:41.787' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'9b87a945-6448-4a52-a580-682d9ab91ff9', CAST(N'2022-04-29T23:23:16.137' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'36fc502d-a934-4aaa-b783-73c8a2bbd393', CAST(N'2022-05-18T21:15:15.557' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'e7679cd7-3915-4cd7-a2da-7418f03e3588', CAST(N'2022-05-17T23:14:24.677' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'a287d354-d3be-4d04-87b1-74bc134c7036', CAST(N'2022-05-21T00:55:43.163' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'218c23e0-ea41-446c-b5df-8106e0a3cc2e', CAST(N'2022-05-18T16:22:53.287' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'28f7b6d9-00b3-414c-bcde-829bdf4a11b5', CAST(N'2022-05-18T21:18:42.040' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'b9be4118-d728-4347-a597-831000f5fc41', CAST(N'2022-05-18T21:15:18.450' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c095fa13-19d7-4778-aefa-83d3e00d01c6', CAST(N'2022-04-28T16:44:50.620' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'6343f517-d088-4bac-9ea1-85dcc30904f0', CAST(N'2022-05-18T22:12:41.400' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'cb80f0db-d190-481f-9ac3-866a7b67a54e', CAST(N'2022-05-18T22:34:36.013' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'd9168a77-e4bd-44d1-a411-898e2368d653', CAST(N'2022-05-18T21:08:25.477' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'f70287f0-4abd-4edc-90f6-8ab4d1cdfda7', CAST(N'2022-05-14T11:07:04.783' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'5261f344-1a75-42d5-a167-8eab09b573ed', CAST(N'2022-05-18T21:17:03.447' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c941c3a9-2504-4b15-b4fc-8eb25552a0ea', CAST(N'2022-05-18T22:32:14.077' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'164a65a9-5821-4c1e-b15b-9494477ee66a', CAST(N'2022-05-18T22:33:44.023' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c07806ed-4a89-46b7-8249-9a973aead13c', CAST(N'2022-05-18T21:12:54.093' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'6803f210-a035-4acd-b7be-9aa69926b95b', CAST(N'2022-04-27T23:01:32.540' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'36fc66fd-e973-4dec-813a-9d1c50b1de90', CAST(N'2022-05-18T21:18:39.530' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'aafc7e28-e290-45d8-9fce-9d6896fa0b6d', CAST(N'2022-05-18T00:17:36.200' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'5c80399c-7dfb-406a-aa11-a0c7121ab598', CAST(N'2022-05-18T21:15:04.547' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'0c61cade-6e9a-49bf-b4ad-a1ae5833bc55', CAST(N'2022-05-18T22:45:16.260' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'bee1e804-c641-4d3e-8543-ab1856d3b6ef', CAST(N'2022-05-18T21:12:57.317' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'0997ea3a-82ac-491f-93da-ad49a547d86d', CAST(N'2022-05-18T22:12:39.623' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'0eb372b4-2c2e-415b-b573-b042d6cea227', CAST(N'2022-05-21T00:55:37.797' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c52b0bea-e3ff-4d76-9d56-b6bdeeafff15', CAST(N'2022-05-18T21:12:51.667' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'648356b7-c447-4743-9ba2-b9a17ddc1015', CAST(N'2022-05-18T21:15:00.907' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'57020460-a295-440f-b83b-be595a7c8435', CAST(N'2022-05-18T16:33:17.407' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'4c448185-796f-4216-9b52-bf82b52e3ef8', CAST(N'2022-04-29T23:22:45.930' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'f943a534-718c-4135-88f3-c42e513bff05', CAST(N'2022-05-21T01:00:05.520' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'a1b3a5ff-a12f-476c-9ecf-c5ebcd75d453', CAST(N'2022-05-18T16:21:06.450' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'669b6a10-4ce0-4f5a-b676-cb476c3e3133', CAST(N'2022-05-18T21:17:11.957' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'3ac66184-3892-4d66-a84b-cb9eab8a31ee', CAST(N'2022-05-18T22:34:32.787' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'07181a4c-1657-4f6a-a56d-ce7b5b1c1567', CAST(N'2022-05-18T21:17:15.680' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'240b9e7c-ff09-46fd-858a-d10b7894bb21', CAST(N'2022-05-18T22:33:47.567' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'87ca316a-dc42-4104-9a65-d1459b77a1ab', CAST(N'2022-04-29T23:22:54.887' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'cbcba9df-26a1-4119-b3a8-d2ce5cea768f', CAST(N'2022-05-18T22:46:12.380' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'6e6621af-e8ab-4e69-bebe-d49f8f05e181', CAST(N'2022-05-18T22:33:45.887' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'6ccdf273-2b37-497d-a638-d6fdd1dead00', CAST(N'2022-05-19T22:38:23.127' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'6e6ede20-31e3-498b-aa38-dd03d6370323', CAST(N'2022-05-18T21:08:31.080' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'c0d7d9d7-cf9a-4b91-a943-e2514324547e', CAST(N'2022-05-18T22:35:24.227' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'6a442214-36fc-48a7-92a9-e42cb9d4107a', CAST(N'2022-05-21T00:55:59.490' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'd2325578-4dfe-40b6-b597-e45ef88d9410', CAST(N'2022-04-30T20:30:13.767' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'd7fd31aa-dfdd-4f85-93d8-e5c85dca8d26', CAST(N'2022-05-18T21:18:45.160' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'1b50cb49-4c4c-4476-bbc9-ed567b2ce30a', CAST(N'2022-05-21T00:54:16.697' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'58c3e235-c63c-40ba-8ebc-edda6a40c45e', CAST(N'2022-05-18T21:17:13.837' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'70ab4a9e-e932-49f8-8145-f345e4da646e', CAST(N'2022-05-18T22:37:43.353' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'd3121c84-a45c-4efb-a83c-f351ffc8e442', CAST(N'2022-05-18T21:08:28.277' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'5572142d-0146-440c-adfc-f58a7bd54c26', CAST(N'2022-05-18T00:17:49.840' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'92d03884-34f9-4fb8-91e6-fbb97e17996b', CAST(N'2022-05-18T16:23:10.443' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'4da53243-ec33-48fd-b5ca-fccde6edcf75', CAST(N'2022-04-29T23:22:51.860' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565')
GO
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'3377aacb-adde-48a8-bd3c-1b53c03dc621', N'Home Decor', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'f6fd639b-2737-4b3b-aa4b-25de8a4b2063', N'Bar Accessories', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'3d2c39ce-f501-418d-bb66-268f03315d60', N'Tech Accessories', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'c8a422d1-5b96-40a1-8a2d-3f1116546ad4', N'Customer Favorites', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'26e9ffa5-0030-4fb6-a884-3f1752669a96', N'Toys & Games', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'0f9c0343-77be-4f71-b239-5a94456cc226', N'Bags & Travel Accessories', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'a54b013f-8830-46e2-808f-68862e5e0f98', N'Ornaments', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'c6bf654f-c126-40ee-9b94-6a308669d26a', N'Women''s Bags', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'43afdfc8-fc58-4693-b244-6b598dc82b0b', N'Drinkware', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'ec8ca6bb-d60e-486f-8631-a51dc352b8bb', N'Gifts by Price', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'415c72c8-85a0-4284-a3d3-ac4f298ad1dc', N'Kids', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'b61d794a-94bb-4521-9b0b-e05ecd53b1a7', N'Gifts by Recipients', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'Jewelry & Accessories', NULL)
GO
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'87891ae5-fc65-4ce4-a714-149b8e6c1d68', N'Trắng', N'color1', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068545/hhxl3zkpwyrjtonbza1s.jpg', N'20d54d9e-6a96-4677-a8e2-61f8acec5ade')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'b5327ba9-149e-4048-8265-1780793a054c', N'Vàng', N'color2', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068680/hn1yv4g2lvwb796v5bw2.jpg', N'c0a24c44-fd71-4c02-9a3b-6283472d1e94')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'8b09bb24-d2ca-4aad-8829-1b58726ac62c', N'Vàng', N'color3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068809/jhonkmnuarfzvnb21ha7.jpg', N'b4ef212a-5290-4279-a069-9c06f6c473cc')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'bb2d1487-7e10-4c9f-ad3b-1e1bebb61c31', N'Xám', N'color2', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068666/mcni5n9k2zthzb6djzvl.jpg', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'6d901903-0bac-4640-a5ac-1ee909dfce16', N'Xám', N'color3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068597/szpia9ptiookanw25zab.jpg', N'e98936d7-1901-4933-8e0e-e3fefe3dfcc8')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'0a1645e4-2beb-4171-9287-34f7907ad546', N'Xanh', N'color5', N'https://res.cloudinary.com/doimf2dji/image/upload/v1652371277/ldunj8uazb9eqr3qjfvf.jpg', N'b323b351-a898-4259-a7ad-b4382b575288')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'7ae82c51-cd93-4131-8b1e-374c22b7baeb', N'Đỏ', N'color6', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068510/g6mt1qbxxwz1oilnnorb.png', N'44c33778-af86-46c3-bd5d-5f9e759ff141')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'57ae987e-303b-4ac8-b74e-38f55b35d65f', N'Cam', N'color7', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068458/frfl97nf3bjt1qxmvbux.jpg', N'd0bb81e7-5bba-43e1-84c8-84456e77fb25')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'6836ad77-d56b-4c98-a2ea-3cec016957f3', N'Nâu', N'color8', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068496/i93xphhylkcjsgucv7cp.jpg', N'fddd0132-25a4-4d79-b413-4516fd22f7cf')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'd18a039c-1413-4037-adb1-43ab07da017f', N'Xám', N'color3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068650/ufqscepg6x2psvm3mxu8.jpg', N'becb46b7-198a-4a18-8370-b768adfd6902')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'abe5ac98-9307-4565-a762-47fef0df65f7', N'Xám', N'color3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068560/rlejqpkmt49yphtlrd2e.jpg', N'b318365a-47fe-4cb5-8a41-c7f776f7df1c')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'c90be89a-f34f-471f-8dab-545b55cdf592', N'Xám', N'color3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068579/is6xnfkdnpeagvm7aob6.jpg', N'740f4098-fda7-45d8-ac4a-71acc3517f99')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'3fc234e4-bb78-4732-a582-5c647974a768', N'Vàng', N'color3', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068529/hl6jpjrsf2dejlbfls6n.jpg', N'98c703b3-cbf8-4c88-8348-ddcf6985c2c9')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'b4b4fa9d-eb15-4ac6-b60c-636ee01232f8', N'Nâu', N'color8', N'
https://res.cloudinary.com/doimf2dji/image/upload/v1653068848/gaz3zml4jcym7bc96kjy.jpg', N'55d901be-b7b2-4576-9c02-19904a11c543')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'c7c84b76-4ff3-450c-bc8b-66f63822356b', N'Đen', N'color4', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068872/u83q12xchca8e5ugaqbk.jpg', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'7117b61c-9c43-40f3-9d19-6878e6bfad5e', N'Đen', N'color4', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068821/ivcnjm0joxy8uuc0f2ml.png', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'defb7ad5-cc89-4578-b519-6bcdaa515628', N'Đen', N'color4', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068693/p9shgm2sfukzrjyxvvgt.jpg', N'3b552a97-6d96-4988-a793-be8195c16377')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'c5c798d6-e9df-4fea-823d-6f77b7d828a1', N'Đen', N'color4', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068481/rnh5qjnkq2nidapvnxkv.jpg', N'b4ef212a-5290-4279-a069-9c06f6c473cc')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'ce7aabad-ce37-466f-b83e-6f831a089843', N'Xanh', N'color5', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068623/ezwgmfhspn9j6cxbnjtk.webp', N'b323b351-a898-4259-a7ad-b4382b575288')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'518fd95e-d5d7-45e2-994c-9c2fe1100de8', N'Cam', N'color7', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068860/ntr7uf7xrfzf76badc6x.png', N'0647194e-c5ad-40d8-b73d-1822e3751b47')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'a4d8d365-5a6c-4d99-b7d5-9c950dc504ee', N'Nâu', N'color8', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653068610/h2rer8j6jghhp5xscbcg.jpg', N'7e38f882-9661-4a7e-9609-c34a0691f887')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'6d18b03a-abce-44f3-a14b-a2f113882ad0', N'Đỏ', N'color6', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653070205/avxyg3ovddfpgmvp2lxv.jpg', N'b318365a-47fe-4cb5-8a41-c7f776f7df1c')
INSERT [dbo].[Color] ([color_id], [name], [code], [img], [product_id]) VALUES (N'09af2ec4-2a57-4c9e-a5cd-cd8362b6fdaa', N'Đỏ', N'color6', N'https://res.cloudinary.com/doimf2dji/image/upload/v1653070280/jfqkfvyogcxbthdrgw62.jpg', N'98e38f42-937b-4267-8eb4-219c6f05641b')
GO
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'38b9df1e-e3b9-4b92-975e-736e440071e9', N'HOME', N'/home')
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'3a8629b5-6809-410d-9a63-79a0defb50f7', N'SHOP', N'/shop')
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'b0e3d96e-17f5-44ca-8d6c-d95b634c9ba4', N'CART', N'/print')
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'd2c620fc-9287-4e98-ba73-df4f834b025d', N'CHECKOUT', N'/check')
GO
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'50f2fd0b-2007-484e-b36c-00c8fabd3f72', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 3, 0, CAST(N'2022-05-18T21:15:28.110' AS DateTime), CAST(N'2022-05-18T21:15:28.110' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'2195e664-a421-4315-b142-072acd5f4b53', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 5, 0, CAST(N'2022-05-18T21:12:39.090' AS DateTime), CAST(N'2022-05-18T21:12:39.090' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'990105d2-493e-41ee-8b15-0ceedc0752c9', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 1, 0, CAST(N'2022-05-15T14:00:01.833' AS DateTime), CAST(N'2022-05-15T14:00:01.833' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'990105d2-493e-41ee-8b15-0ceedc0752c9', N'0647194e-c5ad-40d8-b73d-1822e3751b47', 1, 0, CAST(N'2022-05-15T14:00:01.927' AS DateTime), CAST(N'2022-05-15T14:00:01.927' AS DateTime), 0, 258.1400)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'990105d2-493e-41ee-8b15-0ceedc0752c9', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2', 1, 0, CAST(N'2022-05-15T14:00:01.887' AS DateTime), CAST(N'2022-05-15T14:00:01.887' AS DateTime), 0.05000000074505806, 52.1700)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'991ebd53-7a5e-43fd-8596-256cd211cb13', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 4, 0, CAST(N'2022-05-18T21:13:03.763' AS DateTime), CAST(N'2022-05-18T21:13:03.763' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'0b2cd2a2-55ff-42be-986b-27e893a83fe9', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 3, 0, CAST(N'2022-05-18T22:12:45.277' AS DateTime), CAST(N'2022-05-18T22:12:45.277' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'4f50c25a-07da-439d-95fb-4971f720b3e8', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 5, 0, CAST(N'2022-05-18T22:32:38.947' AS DateTime), CAST(N'2022-05-18T22:32:38.947' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'd0ef8f56-396d-4e85-812b-623231d79e20', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 2, 0, CAST(N'2022-05-18T22:09:53.787' AS DateTime), CAST(N'2022-05-18T22:09:53.787' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'2ac66779-9ca9-4e78-9195-6de2cfc884c3', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 4, 0, CAST(N'2022-05-18T21:18:51.083' AS DateTime), CAST(N'2022-05-18T21:18:51.083' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'cf1bf512-96ab-4ccf-9173-7c66013d6f9d', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 1, 0, CAST(N'2022-05-18T16:33:21.427' AS DateTime), CAST(N'2022-05-18T16:33:21.427' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'ed60b24e-0a98-46e4-a629-8500e074123b', N'becb46b7-198a-4a18-8370-b768adfd6902', 3, 0, CAST(N'2022-05-17T23:14:31.010' AS DateTime), CAST(N'2022-05-17T23:14:31.010' AS DateTime), 0, 77.2000)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'c1c7f206-3206-458e-8487-88dee1b1730c', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 2, 0, CAST(N'2022-04-30T20:30:35.943' AS DateTime), CAST(N'2022-04-30T20:30:35.943' AS DateTime), 0, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'c1c7f206-3206-458e-8487-88dee1b1730c', N'fddd0132-25a4-4d79-b413-4516fd22f7cf', 3, 0, CAST(N'2022-04-01T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime), 0, 356.0000)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'128993a3-0426-4d87-a603-891a2019ea27', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 4, 0, CAST(N'2022-05-18T21:17:20.750' AS DateTime), CAST(N'2022-05-18T21:17:20.750' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'60427d1a-9549-4ef3-b1a5-92be07e37170', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 2, 0, CAST(N'2022-05-18T22:35:46.503' AS DateTime), CAST(N'2022-05-18T22:35:46.503' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'436d2e0b-4d4c-4540-88ea-9ad929c81d39', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 1, 0, CAST(N'2022-05-19T20:09:04.753' AS DateTime), CAST(N'2022-05-19T20:09:04.753' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'436d2e0b-4d4c-4540-88ea-9ad929c81d39', N'0647194e-c5ad-40d8-b73d-1822e3751b47', 1, 0, CAST(N'2022-05-19T20:09:04.867' AS DateTime), CAST(N'2022-05-19T20:09:04.867' AS DateTime), 0, 258.1400)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'fa104eaf-0e2b-402f-b5a9-a14c8ee68509', N'55d901be-b7b2-4576-9c02-19904a11c543', 4, 0, CAST(N'2022-05-18T22:34:53.047' AS DateTime), CAST(N'2022-05-18T22:34:53.047' AS DateTime), 0.05000000074505806, 258.0000)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'cf758658-26f7-496a-84c2-a77463882080', N'55d901be-b7b2-4576-9c02-19904a11c543', 2, 0, CAST(N'2022-05-01T11:20:02.570' AS DateTime), CAST(N'2022-05-01T11:20:02.570' AS DateTime), 0, 258.0000)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'cf758658-26f7-496a-84c2-a77463882080', N'98e38f42-937b-4267-8eb4-219c6f05641b', 1, 0, CAST(N'2022-05-01T11:20:02.507' AS DateTime), CAST(N'2022-05-01T11:20:02.507' AS DateTime), 0, 123.2500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'a0ff41c8-552c-44ed-8990-ad99934cf2a5', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 2, 0, CAST(N'2022-05-18T16:23:20.633' AS DateTime), CAST(N'2022-05-18T16:23:20.633' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'9a87cc31-e1db-4701-9800-b7d43de1727a', N'0647194e-c5ad-40d8-b73d-1822e3751b47', 3, 0, CAST(N'2022-05-16T15:37:21.603' AS DateTime), CAST(N'2022-05-16T15:37:21.603' AS DateTime), 0, 258.1400)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'6b121fd2-1eaf-442b-860c-c0f60ad2e0fc', N'55d901be-b7b2-4576-9c02-19904a11c543', 5, 0, CAST(N'2022-05-18T22:34:00.247' AS DateTime), CAST(N'2022-05-18T22:34:00.247' AS DateTime), 0.05000000074505806, 258.0000)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'd07d93c1-a185-4dca-b647-d17d9ec461b0', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 2, 0, CAST(N'2022-05-18T16:28:59.767' AS DateTime), CAST(N'2022-05-18T16:28:59.767' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'3fdb8cb8-a453-42c9-ae2e-dc4008461b1d', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 3, 0, CAST(N'2022-05-18T22:39:54.983' AS DateTime), CAST(N'2022-05-18T22:39:54.983' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'341701e1-471c-49b4-bcb1-e0d84eb7a2bb', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 3, 0, CAST(N'2022-05-18T22:37:48.530' AS DateTime), CAST(N'2022-05-18T22:37:48.530' AS DateTime), 0.05000000074505806, 25.1500)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'5260d2af-0f15-463c-8973-f2d15b5658f4', N'fddd0132-25a4-4d79-b413-4516fd22f7cf', 1, 0, CAST(N'2022-05-16T15:38:40.947' AS DateTime), CAST(N'2022-05-16T15:38:40.947' AS DateTime), 0.05000000074505806, 22.0000)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'7c3cd4da-5286-4067-874e-fb607f827edc', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 1, 0, CAST(N'2022-05-18T22:06:17.713' AS DateTime), CAST(N'2022-05-18T22:06:17.713' AS DateTime), 0.05000000074505806, 25.1500)
GO
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'50f2fd0b-2007-484e-b36c-00c8fabd3f72', N'Confirm', CAST(N'2022-05-18T21:15:28.063' AS DateTime), CAST(N'2022-05-18T21:15:28.063' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'2195e664-a421-4315-b142-072acd5f4b53', N'Confirm', CAST(N'2022-05-18T21:12:39.047' AS DateTime), CAST(N'2022-05-18T21:12:39.047' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'990105d2-493e-41ee-8b15-0ceedc0752c9', N'Confirm', CAST(N'2022-05-15T14:00:01.797' AS DateTime), CAST(N'2022-05-15T14:00:01.797' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'991ebd53-7a5e-43fd-8596-256cd211cb13', N'Confirm', CAST(N'2022-05-18T21:13:03.723' AS DateTime), CAST(N'2022-05-18T21:13:03.723' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'0b2cd2a2-55ff-42be-986b-27e893a83fe9', N'Confirm', CAST(N'2022-05-18T22:12:45.250' AS DateTime), CAST(N'2022-05-18T22:12:45.250' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'4f50c25a-07da-439d-95fb-4971f720b3e8', N'Confirm', CAST(N'2022-05-18T22:32:38.907' AS DateTime), CAST(N'2022-05-18T22:32:38.907' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'd0ef8f56-396d-4e85-812b-623231d79e20', N'Confirm', CAST(N'2022-05-18T22:09:53.710' AS DateTime), CAST(N'2022-05-18T22:09:53.710' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'2ac66779-9ca9-4e78-9195-6de2cfc884c3', N'Confirm', CAST(N'2022-05-18T21:18:51.010' AS DateTime), CAST(N'2022-05-18T21:18:51.010' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'cf1bf512-96ab-4ccf-9173-7c66013d6f9d', N'Confirm', CAST(N'2022-05-18T16:33:21.317' AS DateTime), CAST(N'2022-05-18T16:33:21.317' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'ed60b24e-0a98-46e4-a629-8500e074123b', N'Confirm', CAST(N'2022-05-17T23:14:30.977' AS DateTime), CAST(N'2022-05-17T23:14:30.977' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'c1c7f206-3206-458e-8487-88dee1b1730c', N'Cancel', CAST(N'2022-04-30T20:30:35.893' AS DateTime), CAST(N'2022-04-30T20:30:35.893' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'128993a3-0426-4d87-a603-891a2019ea27', N'Confirm', CAST(N'2022-05-18T21:17:20.700' AS DateTime), CAST(N'2022-05-18T21:17:20.700' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'60427d1a-9549-4ef3-b1a5-92be07e37170', N'Confirm', CAST(N'2022-05-18T22:35:46.487' AS DateTime), CAST(N'2022-05-18T22:35:46.487' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'436d2e0b-4d4c-4540-88ea-9ad929c81d39', N'Confirm', CAST(N'2022-05-19T20:09:04.687' AS DateTime), CAST(N'2022-05-19T20:09:04.687' AS DateTime), N'b9738c1d-0b00-4eb6-8377-9166914a706c', 0, NULL, N'01217329')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'fa104eaf-0e2b-402f-b5a9-a14c8ee68509', N'Confirm', CAST(N'2022-05-18T22:34:53.037' AS DateTime), CAST(N'2022-05-18T22:34:53.037' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'cf758658-26f7-496a-84c2-a77463882080', N'Confirm', CAST(N'2022-05-01T11:20:02.477' AS DateTime), CAST(N'2022-05-01T11:20:02.477' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'e54b39a8-2ef9-4812-a34b-aa55825c9016', N'Check', CAST(N'2022-05-18T22:09:37.347' AS DateTime), CAST(N'2022-05-18T22:09:37.347' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'a0ff41c8-552c-44ed-8990-ad99934cf2a5', N'Confirm', CAST(N'2022-05-18T16:23:20.603' AS DateTime), CAST(N'2022-05-18T16:23:20.603' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'9a87cc31-e1db-4701-9800-b7d43de1727a', N'Confirm', CAST(N'2022-05-16T15:37:21.567' AS DateTime), CAST(N'2022-05-16T15:37:21.567' AS DateTime), N'3dd17b27-e4dc-4519-87f8-4f14077f25a1', 0, N'', N'')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'b7f8fffb-0244-4fdd-b31f-bc21dd1fa755', N'Check', CAST(N'2022-05-18T22:12:31.127' AS DateTime), CAST(N'2022-05-18T22:12:31.127' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'6b121fd2-1eaf-442b-860c-c0f60ad2e0fc', N'Confirm', CAST(N'2022-05-18T22:34:00.220' AS DateTime), CAST(N'2022-05-18T22:34:00.220' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'd07d93c1-a185-4dca-b647-d17d9ec461b0', N'Confirm', CAST(N'2022-05-18T16:28:59.740' AS DateTime), CAST(N'2022-05-18T16:28:59.740' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'3fdb8cb8-a453-42c9-ae2e-dc4008461b1d', N'Confirm', CAST(N'2022-05-18T22:39:54.960' AS DateTime), CAST(N'2022-05-18T22:39:54.960' AS DateTime), N'4a65093a-c274-4647-95af-cb84b183065b', 0, N'', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'341701e1-471c-49b4-bcb1-e0d84eb7a2bb', N'Confirm', CAST(N'2022-05-18T22:37:48.510' AS DateTime), CAST(N'2022-05-18T22:37:48.510' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'dda1977f-9a97-4bd2-a7f1-e5639ab577f6', N'Check', CAST(N'2022-05-18T21:08:51.633' AS DateTime), CAST(N'2022-05-18T21:08:51.633' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'5260d2af-0f15-463c-8973-f2d15b5658f4', N'Confirm', CAST(N'2022-05-16T15:38:40.910' AS DateTime), CAST(N'2022-05-16T15:38:40.910' AS DateTime), N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', 0, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'7c3cd4da-5286-4067-874e-fb607f827edc', N'Confirm', CAST(N'2022-05-18T22:06:17.653' AS DateTime), CAST(N'2022-05-18T22:06:17.653' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'24 duong 1 khu pho 1 tam binh thu duc', N'0932904529')
GO
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'771a3613-4c6b-427f-a830-2fdd3de53730', N'Update', N'update', 1, CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'490bc7d0-77c5-4df9-aefe-62bb1be073fc', N'Create', N'create', 1, CAST(N'2022-11-04' AS Date), NULL)
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'f267b702-d71a-41e5-912b-b24f52a410d5', N'Read', N'read', 1, CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'05ed6d9c-af9d-4da7-8f97-cfcd703b317d', N'Delete', N'delete', 1, CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', N'DIY Pumpkin Spice Candles', 25.1500, 0.05000000074505806, N'DIY Pumpkin Spice Candles', N'Learn all secrets of how to make DIY pumpkin spice candles with soy wax and essential oils! This homemade candle making tutorial includes a pumpkin spice essential oil recipe, tips to choose the best materials, and tricks to make soy candles with essential oils smell stronger. The candle making instructions come with free printable candle labels and gift tags to package and decorate your all-natural soy candles for gifting.', 0, 1, N'None', CAST(N'2022-02-02T00:00:00.000' AS DateTime), CAST(N'2022-05-14T18:30:20.770' AS DateTime), 200, 188, N'9a3ee436-c053-4975-8e46-8d582a0cb29f', N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'0647194e-c5ad-40d8-b73d-1822e3751b47', N'DIY Wrap Skater Midi Dress', 258.1400, 0, N'DIY Wrap Skater Midi Dress// Seqing tutorial by tintofmint', N'Welcome back to another DIY tutorial. Yes, another one. Since I bought my new sewing machine a few months ago, all I do in my free time is sewing. Today I want to share with you my most recent make, which is this white polka dot wrap midi dress. I absolutely adore this shape of a dress and I’m planning to make a lot more in different prints. This weekend we had such beautiful weather, just perfect to photograph this dress and I’m so thankful for that.

', 0, 1, N'X,L,ML', CAST(N'2022-02-02T00:00:00.000' AS DateTime), CAST(N'2022-02-02T00:00:00.000' AS DateTime), 150, 148, N'9a3ee436-c053-4975-8e46-8d582a0cb29f', N'5514cc62-cf56-4961-999f-838e35e91b6d', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'55d901be-b7b2-4576-9c02-19904a11c543', N'Silk Slip Dress', 258.0000, 0.05000000074505806, N'DIY Silk Slip Dress', N'Do you have a casual dress that you can wear anytime as a date night outfit or also as a mid length dress for work? This DIY silk slip dress is a classic wardrobe piece and will become your new favorite little black dress.', 1, 1, N'None', CAST(N'2019-07-11T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 41, 37, N'a6a66a06-9cf7-4cfa-beb9-a9ea6efa085d', N'39e22609-c309-4346-8349-d9846a85d8da', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'98e38f42-937b-4267-8eb4-219c6f05641b', N'Pet Toys', 123.2500, 0, N' ASPCA estimates', N'The ASPCA estimates there are about 70-80 million dogs alone within the United States, and the APPA indicates that more than $60 billion is spent on the pet industry each year. Needless to say, people love their pets–and they’re happy to shell out some money to make them happy. You can tap into this massive market by creating handmade, eco-friendly toys for pets that are made from low-cost recycled materials. There are a lot of YouTube video tutorials for such DIY crafts.', 1, 1, N'a', CAST(N'2019-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-03T00:00:00.000' AS DateTime), 25, 24, N'631d4929-0629-4875-ba31-1d105e075006', N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'146786a3-7e44-4d94-8620-3ff6f12a6cc2', N'40+ Beautiful Christmas Gift Wrapping Ideas', 52.1700, 0.05000000074505806, N'40+ Beautiful Christmas Gift Wrapping Ideas', N'Every year, I decide that I''m going to wrap my presents even better than last year. Wrapping presents during Christmastime is almost more fun that actually picking them out, and wrapping trends change so much', 0, 0, N'None', CAST(N'2017-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-16T15:34:47.767' AS DateTime), 89, 88, N'a91012b5-6710-4cc3-9a49-7d5c89369b6c', N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'fddd0132-25a4-4d79-b413-4516fd22f7cf', N'Holzperle Christbaumkugel', 22.0000, 0.05000000074505806, N'Holzperle Christbaumkugel weiß oder natürliche Dekoration Wohnkultur Bauer', N'Holzperle Christbaumkugel weiß oder natürliche Dekoration Wohnkultur Bauernhaus Baumschmuck B 
 Ra Mona

Holzperle Christbaumkugel weiß oder natürliche Dekoration Home Decor Bauernhaus Baumschmuck B', 1, 0, N'None', CAST(N'2020-01-24T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 59, 56, N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'43431ed9-ae1a-41fd-b7c9-3164781c3577', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'44c33778-af86-46c3-bd5d-5f9e759ff141', N'Bath Products', 32.0200, 0.05000000074505806, N'Bath Products | Body Products', N'Explore essential and unique bath and body products at Anthropologie from top beauty brands. Free shipping for AnthroPerks members every day.', 1, 1, N'None', CAST(N'2022-11-04T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 66, 2, N'631d4929-0629-4875-ba31-1d105e075006', N'8028f124-eedc-49c7-a37e-01b2e34635eb', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'20d54d9e-6a96-4677-a8e2-61f8acec5ade', N'Torquay Product Photographer', 55.4300, 0, N'Torquay Product Photographer || Castleton Collective — Leslie Carvitto Photography', N'Artisanal and sustainable ceramics handmade in Jan Juc, Victoria by Caitie Ross. Caitie creates everything from incense plates and small jewellery dishes to mugs and tea light holders. Each piece is one of a kind and made with love and care. Caitie fell in love with ceramics 3 years ago and has', 0, 1, N'a', CAST(N'2015-08-07T00:00:00.000' AS DateTime), CAST(N'2020-07-11T00:00:00.000' AS DateTime), 200, 120, N'decbb7d7-ac47-4c21-ab6a-cafb781ff363', N'6c684c2f-c1df-4ad8-b066-3a0e4decdb40', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'c0a24c44-fd71-4c02-9a3b-6283472d1e94', N'Fabric Gift Bag Tutorial', 46.9100, 0, N'Fabric Gift Bag Tutorial', N'Drawstring Bag Tutorial, Gift Bags. Idea Drawstring Pouch. Pattern + DIY in Pictures.', 0, 0, N'a', CAST(N'2019-11-08T00:00:00.000' AS DateTime), CAST(N'2020-05-08T00:00:00.000' AS DateTime), 20, 7, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'740f4098-fda7-45d8-ac4a-71acc3517f99', N'Wax Sealed Candle Wrapping', 525.2500, 0, N'Wax Sealed Candle Wrapping', N'Wax seals are an awesome addition for a more brand customizable vibe.', 0, 0, N'a', CAST(N'2010-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-08T00:00:00.000' AS DateTime), 1560, 600, N'a91012b5-6710-4cc3-9a49-7d5c89369b6c', N'0f105294-39fe-44ab-bdd0-cfccce5c002b', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'd0bb81e7-5bba-43e1-84c8-84456e77fb25', N'Cafenohut', 25.1700, 0, N'Sew Illustrated Blog Tur / Sew Illustrated Blog Tour / GIVEAWAY', N'I am sure that most of you already know sweet Minki. I had previously shared here the wonderful gifts which sent by her to me and I had written my thoughts about her in there. I love so much  her style and personality... She is so talented that I admire her much more every passing day.

Through Minki I also got to meet dear Kristin. She is also so kind and sweet. Both have been a great duo.', 0, 0, N'a', CAST(N'2019-06-07T00:00:00.000' AS DateTime), CAST(N'2020-09-16T00:00:00.000' AS DateTime), 58, 8, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'5514cc62-cf56-4961-999f-838e35e91b6d', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'b4ef212a-5290-4279-a069-9c06f6c473cc', N'Fun and colorful stationery packaging', 56.0000, 0.05000000074505806, N'Fun and colorful stationery packaging', N'If your stationery already has bold colors, why not go for something plain with your packaging and have your brand stand out with a singular color? Switch up your packaging this 2021 with noissue!', 0, 0, N'None', CAST(N'2022-05-16T15:31:45.820' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 100, 100, N'631d4929-0629-4875-ba31-1d105e075006', N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'ce5b8b3e-3e04-455b-ad80-af0bad9450ab', N'Round Bag Shoulder Bag Yellow Fabric Cotton Lining', 98.2100, 0, N'Round bag, shoulder bag, yellow fabric, cotton lining', N'From interior to external pocket and lengthy shoulder strap, this will become your must-have purse for casual and going out looks. Here is Luna circle purse sewing pattern to add to your DIY bag collection.', 1, 0, N'a', CAST(N'2015-06-07T00:00:00.000' AS DateTime), CAST(N'2021-08-06T00:00:00.000' AS DateTime), 70, 6, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'318f9a5b-2b6a-45ad-85d7-bd2def5219ee', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'b323b351-a898-4259-a7ad-b4382b575288', N'DIY Bias Satin Skirt', 257.0200, 0.05000000074505806, N'DIY Bias Satin Skirt', N'Step by step easy sewing tutorial on how to make bias cut midi satin skirt. Manchester based Fashion Blogger @tint.ofmint created a new DIY blog post.', 0, 0, N'None', CAST(N'2022-11-04T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 501, 100, N'26339763-bd76-4825-889a-c75685f6ffcb', N'318f9a5b-2b6a-45ad-85d7-bd2def5219ee', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'becb46b7-198a-4a18-8370-b768adfd6902', N'Vela aromática canela', 77.2000, 0, N'Vela aromática canela', N'Esta vela de soja, con canela y limón, evoca al dulce hogar en otoño con su aroma de canela KandelaArgia velas', 1, 1, N'a', CAST(N'2015-08-07T00:00:00.000' AS DateTime), CAST(N'2020-02-08T00:00:00.000' AS DateTime), 59, 56, N'd14a21a5-5988-45d6-9d83-905e91a1d4d8', N'39e22609-c309-4346-8349-d9846a85d8da', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'3b552a97-6d96-4988-a793-be8195c16377', N'Candles', 25.0500, 0, N'Candles are DIY crafts', N'Candles are DIY crafts that can be sold year-round. Since most people won’t splurge on quality candles for themselves, they make great gifts. With birthdays, anniversaries, and many holidays year round, you’ve always got a reason to keep customers coming back for more. By purchasing bulk wax and scented oils, you can create many different scent combinations in a variety of different sizes and shapes. And the really good news: You can launch a candle-making operation for under $100.', 1, 1, N'a', CAST(N'2021-02-13T00:00:00.000' AS DateTime), CAST(N'2020-02-08T00:00:00.000' AS DateTime), 12, 5, N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'7e38f882-9661-4a7e-9609-c34a0691f887', N'Most Memorable Handmade Christmas Ornaments', 85.6600, 0, N'26 of Our Most Memorable Handmade Christmas Ornaments', N'A handmade ornament is more than a decorative addition to your Christmas tree—it''s a memory: one that is made with your kids and family, celebrating the season, and cherishing time together. Browse our best projects here including felted woodland animals, ribbons and rosettes, shooting stars, and more.', 1, 1, N'a', CAST(N'2020-06-13T00:00:00.000' AS DateTime), CAST(N'2020-02-08T00:00:00.000' AS DateTime), 79, 0, N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'b318365a-47fe-4cb5-8a41-c7f776f7df1c', N'Artist Uses Real Found Flowers', 80.9000, 0, N'Artist Uses Real Found Flowers to Create Delicate One-of-a-Kind Ceramics', N'Artist Hessa Al Ajmani has found a unique way to immortalize bouquets.', 0, 1, N'a', CAST(N'2010-05-25T00:00:00.000' AS DateTime), CAST(N'2010-05-05T00:00:00.000' AS DateTime), 85, 85, N'ba41cb0c-3c49-43cc-b048-2a4e01a71ab4', N'0f105294-39fe-44ab-bdd0-cfccce5c002b', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'98c703b3-cbf8-4c88-8348-ddcf6985c2c9', N'Unique Candle Holders', 589.3200, 0.05000000074505806, N'Unique Candle Holders: Taper, Pillar and Tea Light | CB2', N'LOOK, AND FEEL FREE TO TOUCH, TOOROUGH-HEWN TEXTURE FEELS REFINED IN SIMPLE SHAPES AND NEUTRAL TONES', 1, 0, N'None', CAST(N'2022-05-14T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 100, 100, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'e98936d7-1901-4933-8e0e-e3fefe3dfcc8', N'Ponto a Ponto', 85.0000, 0.05000000074505806, N'MOLDES PARA TRICOTIN - Tricotin Ponto a Ponto', N'PACOTE COM + DE 1000 MOLDES EM PDF PARA TRICOTIN. ENTRE ELES NOMES, DESENHOS, NÚMEROS, ALFABETO, TOPO DE BOLO, GRÁFICO PARA TAPETE. MOLDES NO FORMATO 3D PARA VOCÊ IDENTIFICAR MAIS FÁCIL PARA ONDE VÃO AS DOBRAS DO ARAME. ASSIM FACILITANDO SEU TRABALHO.', 0, 1, N'None', CAST(N'2016-02-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 16, 15, N'631d4929-0629-4875-ba31-1d105e075006', N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'b9738c1d-0b00-4eb6-8377-9166914a706c')
GO
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'7bc0927e-6f2a-4ecb-9550-27381e7ddc2c', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 200, 25.1500)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'a41fdc69-f9c3-4c13-a72e-5ca78d452c5b', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 200, 25.1500)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'0eb372b4-2c2e-415b-b573-b042d6cea227', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 200, 25.1500)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'f943a534-718c-4135-88f3-c42e513bff05', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 200, 25.1500)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'6ccdf273-2b37-497d-a638-d6fdd1dead00', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 200, 25.1500)
GO
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'26e9ffa5-0030-4fb6-a884-3f1752669a96', N'ce5b8b3e-3e04-455b-ad80-af0bad9450ab')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'0f9c0343-77be-4f71-b239-5a94456cc226', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'0f9c0343-77be-4f71-b239-5a94456cc226', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'a54b013f-8830-46e2-808f-68862e5e0f98', N'740f4098-fda7-45d8-ac4a-71acc3517f99')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'a54b013f-8830-46e2-808f-68862e5e0f98', N'e98936d7-1901-4933-8e0e-e3fefe3dfcc8')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'43afdfc8-fc58-4693-b244-6b598dc82b0b', N'fddd0132-25a4-4d79-b413-4516fd22f7cf')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'43afdfc8-fc58-4693-b244-6b598dc82b0b', N'c0a24c44-fd71-4c02-9a3b-6283472d1e94')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'43afdfc8-fc58-4693-b244-6b598dc82b0b', N'b323b351-a898-4259-a7ad-b4382b575288')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'ec8ca6bb-d60e-486f-8631-a51dc352b8bb', N'd0bb81e7-5bba-43e1-84c8-84456e77fb25')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'ec8ca6bb-d60e-486f-8631-a51dc352b8bb', N'3b552a97-6d96-4988-a793-be8195c16377')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'415c72c8-85a0-4284-a3d3-ac4f298ad1dc', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'b61d794a-94bb-4521-9b0b-e05ecd53b1a7', N'55d901be-b7b2-4576-9c02-19904a11c543')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'44c33778-af86-46c3-bd5d-5f9e759ff141')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'740f4098-fda7-45d8-ac4a-71acc3517f99')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'becb46b7-198a-4a18-8370-b768adfd6902')
GO
INSERT [dbo].[Role] ([role_id], [title], [active], [description], [created_at], [update_at]) VALUES (N'4df7559c-9c34-485a-9421-5e351b682866', N'User01', 1, N'user no acc', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Role] ([role_id], [title], [active], [description], [created_at], [update_at]) VALUES (N'c26865ae-4fcf-427e-94ed-b56af8b7de42', N'Admin01', 1, N'admin', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
GO
INSERT [dbo].[Role_Permission] ([role_id], [permission_id]) VALUES (N'4df7559c-9c34-485a-9421-5e351b682866', N'490bc7d0-77c5-4df9-aefe-62bb1be073fc')
INSERT [dbo].[Role_Permission] ([role_id], [permission_id]) VALUES (N'4df7559c-9c34-485a-9421-5e351b682866', N'05ed6d9c-af9d-4da7-8f97-cfcd703b317d')
INSERT [dbo].[Role_Permission] ([role_id], [permission_id]) VALUES (N'c26865ae-4fcf-427e-94ed-b56af8b7de42', N'771a3613-4c6b-427f-a830-2fdd3de53730')
INSERT [dbo].[Role_Permission] ([role_id], [permission_id]) VALUES (N'c26865ae-4fcf-427e-94ed-b56af8b7de42', N'490bc7d0-77c5-4df9-aefe-62bb1be073fc')
INSERT [dbo].[Role_Permission] ([role_id], [permission_id]) VALUES (N'c26865ae-4fcf-427e-94ed-b56af8b7de42', N'f267b702-d71a-41e5-912b-b24f52a410d5')
INSERT [dbo].[Role_Permission] ([role_id], [permission_id]) VALUES (N'c26865ae-4fcf-427e-94ed-b56af8b7de42', N'05ed6d9c-af9d-4da7-8f97-cfcd703b317d')
GO
INSERT [dbo].[Slides] ([slides_id], [img], [caption], [contents]) VALUES (N'80d384cf-7b5a-4ba2-80fc-6b461e11e502', NULL, N'30 Great Japanese Food Packaging Designs', N'Check out a collection of 30 Japanese Food Packaging Designs')
INSERT [dbo].[Slides] ([slides_id], [img], [caption], [contents]) VALUES (N'25296f00-5406-4881-84b6-8c79e0280503', NULL, N'Gift Wrap Ideas (6): Craft Paper - PaintSewGlueChew', N'12 Days of Gift Wrap Ideas')
INSERT [dbo].[Slides] ([slides_id], [img], [caption], [contents]) VALUES (N'e249f3b9-0896-49b8-8219-b31cea99849d', NULL, N'Bigelow Tea Redesign | Branding and Packaging', N'Redesigning the logo and packaging of Bigelow Tea')
GO
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'1edc78f8-968c-4f40-bcfa-06849ee29c84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'28feee97-0bc1-4eaf-a797-0bd32b0c4565', N'AN Ti13', N'', N'', N'', NULL, NULL, N'1350410712077431', N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'95cdcac1-8ca8-443a-ac59-0de06214dfe9', N'qr', N'e', NULL, N'porkoe3443334@gmail.com', N'123', N'123', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'844e8eec-dfae-4781-9ac2-11ceb366577c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'af1ff0aa-afa0-47a4-9a09-13556be3433f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'dfb22725-8519-4c3a-8ee2-1a21fe97bb14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'29be9a4e-7a49-481c-9e01-1dce6d2b25c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'3695e255-5f79-4ce0-bb96-20e77cf807b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'374e7a3f-40c7-455d-8ec0-2221bcd13392', N'quaynh', N'ba', NULL, N'porkoe3443334@gmail.com', N'12589999999', N'123', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'6c4b0d91-a634-40d2-b6cf-27a71c77ff5a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'e493e167-1140-4d60-9a19-29cc486848ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'9fb4ef22-7b3a-420a-8098-2d428be482de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'93ff35aa-cb5a-4259-96aa-30050ba4edbc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'c74eeef5-7991-442c-a009-38ad2188472c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'93234381-6529-418e-a350-3e69aaa5df36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'a84c84cb-7681-477f-a1b7-3ffe00805530', N'555555556', N'5555', NULL, N'porkoe3443334@gmail.com', N'123888888', N'123', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'f3d5a182-839e-4c29-a42c-450f5b49abce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'459878a5-6535-4601-bca7-4ace38239073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'776179bc-00b4-4c74-a8d8-4ccbcc16f9a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'd5920a1a-db5f-409c-8064-4df25e73aabb', N'anhhhhhhhhh', N'thuuuuuuuu', NULL, N'porkoe3443334@gmail.com', N'01235588777', N'123', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'3dd17b27-e4dc-4519-87f8-4f14077f25a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'ab0e13f0-032d-4e88-a91f-52073ec223c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'9629b2fb-de94-483f-bd82-552a23e642b4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'1653f859-2e6a-4134-a89c-563919bbe98c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'54eebf86-9cc8-4f2a-8627-5a8915fe622b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'd3fefd38-e887-4aed-8c0e-5ae1d23eed82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'7314a8f0-78a2-40c0-b816-5b34213e5032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'145b63b0-2599-4981-ab56-5be9bed81101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'4aef1ddf-98d4-453a-b12a-5bf07a6a023b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'e253d719-6097-4b2d-ab91-5e10d0cbdf8c', N'a', N'a', NULL, N'porkoe3443334@gmail.com', N'02333333333', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'a25027ba-584e-42ad-b887-62aa496512d9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'5f952c85-ce14-40ff-8876-62c1eb909d47', N'Anh', N'Ty', NULL, N'porkoe3443334@gmail.com', N'03666999885', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'3c625f1c-ab09-4124-bcad-62db73e4bf2c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'4e37fc97-65ee-4f9f-b44d-665963d77a49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'f14484df-e8ad-4adf-b2e5-675fede89c92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'73b55294-6c73-439b-a56f-69ba0c4cc795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'5930501c-5660-4afc-a654-6d53e1ee4d5e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'ca3c8c72-ad03-4493-96b4-6feede733a6c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'47c9d046-d0d8-4e74-8c0e-70913e2cbffa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'c81ae3c0-5fc1-43d5-89e4-71a882d02f89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'cf96519a-2268-4c9a-b85b-72b80c78be70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'd9e8799d-6241-44d5-a821-7357d9255531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'e4ae9a85-ba53-4849-aba0-73c713bef1e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'4368c402-961e-4f96-a4a6-73d5d5130d4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'0e1982d5-5195-41f5-a8c8-76086ab90f17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'a3c9b12d-733c-4228-96a4-787f5daaaa9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'9990f5a2-c6b1-4e11-bf38-79384dd7c9af', N'Ty', N'Khung', NULL, N'porkoe3443334@gmail.com', N'0388888888', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'ecd0bc35-b32c-4405-af31-7bf3fdc28020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'c9f2352b-d4db-47dc-a84e-7f3f0b22009b', N'a', N'a', NULL, N'porkoe3443334@gmail.com', N'123988888', N'123', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'8ed69788-de96-4923-a7a1-804b56343d85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'3d7353dc-ddb2-4e2e-babd-81774fb4349c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'b63683d0-37af-4c5b-801e-824cbec4e1ba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'1441337c-a812-48f1-a458-8320a69a5e55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'c620a989-c1a3-49bf-9da1-867f725d1c37', N'Anh', N'Thu', NULL, N'porkoe3443334@gmail.com', N'02389975855', N'$2a$10$F8fixgcJ2dlYBxvMWXGxWOCvOtuV7ZT3OaBGDXfRPFav9vDCWdJKe', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'5e705d0b-5a01-4966-b960-8d0a0f25398a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'0c750cfa-65e4-426e-bd0e-8d8a1851d0dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'cbf066a4-e2ad-469f-a501-8dbaa8664782', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'44aca44f-a061-40c1-ae3e-9020179feed4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'a06fa047-ca04-434b-b4d3-902173ed083b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'b9738c1d-0b00-4eb6-8377-9166914a706c', N'Anhhhhhh', N'Thu Ne', N'24 duong 1 khu pho 1 tam binh thu duc', N'', N'01217329', N'$2a$10$D8wTX4OsE2VJF8XxjWZqhe6b04/pP6LTHDfmTJCN2b/YybKNZOywe', NULL, N'c26865ae-4fcf-427e-94ed-b56af8b7de42')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'd391031e-c277-4ebb-a6d8-93d3bc6615ff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'888a8ee5-8f3d-4a2d-a59d-95e28871f9c0', N'Æ°Æ¡iiii', N'ee', NULL, N'porkoe3443334@gmail.com', N'12358888774', N'123', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'7c5d56a4-9594-4348-83fd-98aa8e951a51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'0a00a800-937a-41a9-bad8-9adf6be88749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'40b01117-7c91-46f8-a7de-9db983f6fa36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'07a7a6bc-7b8f-46c7-913b-a1a351f010ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'55b7e568-8a6e-4c18-b10c-a2e5955394e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'100c39a7-400e-40df-ba43-a31b7ada4bac', N'Anh', N'Thu Ne', N'13 duong hiep binh chanh', N'porkoe3443334@gmail.com', N'0123588795', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'7d6a05b7-2fd0-4f3e-9aa2-a34cbd4e9940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'8c11906a-337f-40e6-b90c-a3e1ca83e988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'206dcd8e-d25d-497d-9585-a4570f16fde1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'a8e28305-1753-435d-9f5a-a6dc63d7ebfe', N'quynh', N'nhu', NULL, N'porkoe3443334@gmail.com', N'013289999', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'd508711e-7174-4823-94ce-a90e40d330c9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'56f45819-31ea-4f78-9435-aa49bf2e98bd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'0c4cefad-ac93-4275-a0fb-aa87ac85440a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'9de0cc66-0cb1-423d-a5e8-ab08c3909aa4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'b22c8902-5e73-45fc-b199-ad5af445b2eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'ef734147-e430-438d-8984-b0a81a84006c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'f632b389-4021-4b05-9401-b147c6b40052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'77349a6d-2d57-4eb5-89ce-b7fd3bc7a44d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'66ced017-9036-4cdb-8e7d-ba5b18d50261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'9c147fa8-e473-433d-9291-bc7ca935900d', N'undefined', NULL, NULL, NULL, NULL, NULL, N'undefined', N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'7740d162-e996-4c67-aa0a-beba5e842591', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'286890ed-5447-4067-b819-c01a4969c0a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'2d947f95-cf88-4b53-9065-c39d6afc5f2e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'0bdb6c60-547a-4ba1-89af-c45a9a928464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'1d4251b4-f643-49eb-856c-c774e5dc73c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'f7401165-465b-4bb6-a562-c945d826376a', N'Quan', N'Tu', NULL, N'quantu211154@gmail.com', N'0123456789', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'738e1ca7-a5da-427c-b7be-c9dcb0501cb5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'4a65093a-c274-4647-95af-cb84b183065b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'5dae9532-8594-4379-a153-cea389fe0813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'7a4d8b5a-08e8-4fd2-bdc9-cfbb8e693379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'c9dea9b3-20b4-4f01-a08b-d476f691c7b0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'2526f245-9db8-4e0f-9ef8-d7629b02e27d', N'Anh Ne', N'Em Iu', NULL, N'anhthu29240@gmail.com', N'011111111', N'$2a$10$S6pk11RDCLzjpH17R0HhY.YkVGrWjOQQ79U.9.TNdGHmYooBpKiw.', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'ffdc76bf-122e-411a-bdfe-d7938a1cbf86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'98e91960-eff9-432a-ac37-daf6f2d08624', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'88029403-a2b4-4507-8903-dddefeef8c1e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'32cda0db-1dc1-41dc-ac6f-df6008a253ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'dbd54029-df8e-4ac5-9392-e0b1205806ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'0f1761a1-90bf-40cf-b1d3-e0d811275f47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
GO
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'b78d84eb-1155-4056-a31e-e3f98b0289c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'7e6a0d3d-b283-47ea-984f-e4d6761f3340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'bf832d0d-a988-4095-a2cf-e96ca327c101', N'Anh', N'Thu Baka', N'24 duong 1 khu pho 1 tam binh thu duc', N'porkoe3443334@gmail.com', N'0932904529', N'$2a$10$F8fixgcJ2dlYBxvMWXGxWOCvOtuV7ZT3OaBGDXfRPFav9vDCWdJKe', NULL, N'c26865ae-4fcf-427e-94ed-b56af8b7de42')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'341ed12e-2a66-4ee5-a45d-e9e6685e01ac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'973b8cf6-c3bc-4769-9ebb-ed83daec7e7d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'dcbb992d-5bed-4041-90f3-ef9b793f2c41', N'aaaa', N'aaa', NULL, N'porkoe3443334@gmail.com', N'1023999999', N'1234', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'b94196c2-cfc4-466d-b537-eff21d4f9f1c', N'Má»t GhÃª', N'Ä', NULL, N'porkoe3443334@gmail.com', N'0123456', N'$2a$10$9/RZXwur4HtpuZx3wjRIg.npKJGNdweFLGFtYaZYA2BrnPOKIXMei', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'292476cd-aea7-4678-ab86-f34887007e9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'78b14bb2-db14-4e50-a607-f3b71b1a2221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'21fcb582-0177-4796-bfeb-f45f9b2d95ff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'5c4f4aec-2af3-4489-af65-f502ea03e77f', N'qq', N'qq', NULL, N'porkoe3443334@gmail.com', N'0289999999', N'878', NULL, N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'a5fc94d1-3745-45dc-8429-f9ef444814cb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'74ce71b6-8add-4724-ad60-fc2f94973d79', N'Uyên Phương', NULL, NULL, NULL, NULL, NULL, N'3302300640057134', N'4df7559c-9c34-485a-9421-5e351b682866')
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'2edfacff-5066-4bd5-b3f6-fcd336be64dc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'02f60242-e4e2-46fb-a10c-ffd85160526b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'6a302681-e7b2-4d82-b5d5-17f54419958d', N'LCMF58B', CAST(N'2022-05-19' AS Date), CAST(N'2022-05-19' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'631d4929-0629-4875-ba31-1d105e075006', N'FSWEDDING', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'ba41cb0c-3c49-43cc-b048-2a4e01a71ab4', N'UPTO50', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'SPPPHIM4N', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'a91012b5-6710-4cc3-9a49-7d5c89369b6c', N'SPPDIEN4N', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'4FREEBIES', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'9a3ee436-c053-4975-8e46-8d582a0cb29f', N'SPPNUOC4N', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'd14a21a5-5988-45d6-9d83-905e91a1d4d8', N'SHIP49', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'a6a66a06-9cf7-4cfa-beb9-a9ea6efa085d', N'SPPNET4N', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'26339763-bd76-4825-889a-c75685f6ffcb', N'SPPFIN4N', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'decbb7d7-ac47-4c21-ab6a-cafb781ff363', N'UPGRADE', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Voucher] ([voucher_id], [code], [created_at], [update_at]) VALUES (N'39b315e1-fed2-4bb9-8024-fe50f5e40d57', N'CARD4U', CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_Table_1_aboutId]  DEFAULT (newid()) FOR [about_id]
GO
ALTER TABLE [dbo].[Branchs] ADD  CONSTRAINT [DF_Branchs_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF_Table_1_cartId]  DEFAULT (newid()) FOR [cart_id]
GO
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF_Table_1_userID_1]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_category_id]  DEFAULT (newid()) FOR [category_id]
GO
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [DF_Table_1_colorId]  DEFAULT (newid()) FOR [color_id]
GO
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [DF_Table_1_productId_1]  DEFAULT (newid()) FOR [product_id]
GO
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menus_menus_id]  DEFAULT (newid()) FOR [menus_id]
GO
ALTER TABLE [dbo].[Order_Detail] ADD  CONSTRAINT [DF_Order_Detail_order_id]  DEFAULT (newid()) FOR [order_id]
GO
ALTER TABLE [dbo].[Order_Detail] ADD  CONSTRAINT [DF_Order_Detail_product_id]  DEFAULT (newid()) FOR [product_id]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Table_1_orderId]  DEFAULT (newid()) FOR [order_id]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Table_1_userID]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[Permission] ADD  CONSTRAINT [DF_Permission_permissionId]  DEFAULT (newid()) FOR [permission_id]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Table_1_productId]  DEFAULT (newid()) FOR [product_id]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Table_1_voucherId]  DEFAULT (newid()) FOR [voucher_id]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Table_1_branchId]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_saller_id]  DEFAULT (newid()) FOR [saller_id]
GO
ALTER TABLE [dbo].[Product_Cart] ADD  CONSTRAINT [DF_Product_Cart_cart_id]  DEFAULT (newid()) FOR [cart_id]
GO
ALTER TABLE [dbo].[Product_Cart] ADD  CONSTRAINT [DF_Product_Cart_product_id]  DEFAULT (newid()) FOR [product_id]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Table_1_categoryId_1]  DEFAULT (newid()) FOR [category_id]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Table_1_productId_2]  DEFAULT (newid()) FOR [product_id]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[Role_Permission] ADD  CONSTRAINT [DF_Table_1_roleId]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[Role_Permission] ADD  CONSTRAINT [DF_Table_1_permissionId]  DEFAULT (newid()) FOR [permission_id]
GO
ALTER TABLE [dbo].[Slides] ADD  CONSTRAINT [DF_Slides_slides_id]  DEFAULT (newid()) FOR [slides_id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Table_1_userID_2]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Table_1_roleId_1]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_voucher_id]  DEFAULT (newid()) FOR [voucher_id]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_Product]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Branchs] FOREIGN KEY([branch_id])
REFERENCES [dbo].[Branchs] ([branch_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Branchs]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User1] FOREIGN KEY([saller_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Voucher]
GO
ALTER TABLE [dbo].[Product_Cart]  WITH CHECK ADD  CONSTRAINT [FK_Product_Cart_Cart1] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Cart] ([cart_id])
GO
ALTER TABLE [dbo].[Product_Cart] CHECK CONSTRAINT [FK_Product_Cart_Cart1]
GO
ALTER TABLE [dbo].[Product_Cart]  WITH CHECK ADD  CONSTRAINT [FK_Product_Cart_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Product_Cart] CHECK CONSTRAINT [FK_Product_Cart_Product]
GO
ALTER TABLE [dbo].[Product_Category]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product_Category] CHECK CONSTRAINT [FK_Product_Category_Category]
GO
ALTER TABLE [dbo].[Product_Category]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_Product1] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Product_Category] CHECK CONSTRAINT [FK_Product_Category_Product1]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Role_Permission_Permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [FK_Role_Permission_Permission]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Role_Permission_Role1] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [FK_Role_Permission_Role1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Role1]
GO
