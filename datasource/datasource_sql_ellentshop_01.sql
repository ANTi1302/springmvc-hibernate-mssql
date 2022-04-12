USE [Ellent_shop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Branchs]    Script Date: 4/11/2022 6:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branchs](
	[branch_id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](500) NULL,
	[img] [nvarchar](500) NULL,
	[description] [nvarchar](1000) NULL,
	[icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branchs] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 4/11/2022 6:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](500) NULL,
	[icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 4/11/2022 6:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[color_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](500) NULL,
	[code] [nvarchar](500) NULL,
	[img] [nvarchar](1000) NULL,
	[product_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 4/11/2022 6:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
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
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Permission]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 4/11/2022 6:28:34 PM ******/
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
	[created_at] [date] NULL,
	[update_at] [date] NULL,
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
/****** Object:  Table [dbo].[Product_Cart]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Product_Category]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[Slides]    Script Date: 4/11/2022 6:28:34 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 4/11/2022 6:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/11/2022 6:28:34 PM ******/
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
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'8028f124-eedc-49c7-a37e-01b2e34635eb', N'The gift shop', NULL, N'Cửa hàng quà tặng ở Hồ Chí Minh', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'4bbb66d2-e1f3-40ce-ba17-111c116873dd', N'RD', NULL, N'Cửa hàng quà tặng ở Vũng Tàu', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'43431ed9-ae1a-41fd-b7c9-3164781c3577', N'Krystel Gift Shop & Foreign Exchange Buyer - Branch I', NULL, N'Cửa hàng quà tặng ở Manila, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'6c684c2f-c1df-4ad8-b066-3a0e4decdb40', N'BLOOMS AND BEARS', NULL, N'Cửa hàng quà tặng ở Bacolod, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'Pinkido Boutique & Gift Shop UE Branch', NULL, N'Cửa hàng quà tặng ở Manila, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'Sincere Gift Shop STA Cruz Branch', NULL, N'Cửa hàng quà tặng ở Manila, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'3bda05c5-0d2f-4daa-a30f-7604b8db9453', N'Papemelroti Gift Shop - SM Fairview', NULL, N'Cửa hàng quà tặng ở Thành phố Quezon, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'1d9a823c-f715-411e-a0a3-7b0da4081a7a', N'Annam Gourmet Saigon Centre', NULL, N'Cửa hàng bán thực phẩm đặc sản', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'S-Liquor BKK3', NULL, N'Cửa hàng rượu bia', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'5514cc62-cf56-4961-999f-838e35e91b6d', N'Takashimaya', NULL, N'Trung tâm mua sắm thời thượng, thoáng mát, có nhiều cửa hàng cao cấp, nhà hàng tinh tế và không gian lộng lẫy.', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'9709bf89-31af-4f69-942d-add5bcae8999', N'Twin''s Gift Shop - Binondo Branch', NULL, N'Cửa hàng đồ mới lạ ở Manila, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'318f9a5b-2b6a-45ad-85d7-bd2def5219ee', N'Cutting Edge', NULL, N'Cửa hàng quà tặng ở Thành phố Quezon, Philippines', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'2dc94cf0-7967-4d80-84d9-cf98bb59bb83', N'The Blooming Branches', NULL, N'Cửa hàng quà tặng ở Kolkata, Ấn Độ', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'0f105294-39fe-44ab-bdd0-cfccce5c002b', N'MUJI', NULL, N'Nhà bán lẻ Nhật Bản theo phong cách tối giản, có nhiều mặt hàng phổ biến như quần áo và đồ gia dụng.', NULL)
INSERT [dbo].[Branchs] ([branch_id], [title], [img], [description], [icon]) VALUES (N'39e22609-c309-4346-8349-d9846a85d8da', N'Starbucks Saigon Centre', NULL, N'Chuỗi quán cà phê có trụ sở tại Seattle, nổi tiếng với các loại cà phê rang xay đặc trưng, đồ ăn nhẹ và có Wi-Fi.', NULL)
GO
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'763576b2-1c7e-4740-9f27-3dd53ced2fae', CAST(N'2022-05-13T00:00:00.000' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'394a5ae9-46df-44c7-918a-50b961e1e1be', CAST(N'2022-04-11T00:04:00.000' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Cart] ([cart_id], [created_at], [user_id]) VALUES (N'4c145f76-bc69-4bbe-b3e9-62570178ba3d', CAST(N'2022-04-11T00:03:00.000' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101')
GO
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'3377aacb-adde-48a8-bd3c-1b53c03dc621', N'Home Decor', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'6432dadd-103e-434d-81eb-257a9d4b18b1', N'Apparel', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'f6fd639b-2737-4b3b-aa4b-25de8a4b2063', N'Bar Accessories', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'3d2c39ce-f501-418d-bb66-268f03315d60', N'Tech Accessories', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'c8a422d1-5b96-40a1-8a2d-3f1116546ad4', N'Customer Favorites', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'26e9ffa5-0030-4fb6-a884-3f1752669a96', N'Toys & Games', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'0f9c0343-77be-4f71-b239-5a94456cc226', N'Bags & Travel Accessories', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'a54b013f-8830-46e2-808f-68862e5e0f98', N'Ornaments', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'43afdfc8-fc58-4693-b244-6b598dc82b0b', N'Drinkware', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'ec8ca6bb-d60e-486f-8631-a51dc352b8bb', N'Gifts by Price', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'415c72c8-85a0-4284-a3d3-ac4f298ad1dc', N'Kids', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'b61d794a-94bb-4521-9b0b-e05ecd53b1a7', N'Gifts by Recipients', NULL)
INSERT [dbo].[Category] ([category_id], [name], [icon]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'Jewelry & Accessories', NULL)
GO
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'38b9df1e-e3b9-4b92-975e-736e440071e9', N'SHOP', NULL)
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'3a8629b5-6809-410d-9a63-79a0defb50f7', N'CHECKOUT', NULL)
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'24c920d7-7ec4-4313-b7c0-ca8564fa21e1', N'LOGIN', NULL)
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'f1f5892a-e99a-476a-bc55-d2875bef9878', N'HOME', NULL)
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'b0e3d96e-17f5-44ca-8d6c-d95b634c9ba4', N'CART', NULL)
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'd2c620fc-9287-4e98-ba73-df4f834b025d', N'LOGOUT', NULL)
INSERT [dbo].[Menus] ([menus_id], [name], [url]) VALUES (N'cafcdbc8-a49d-4c51-983b-e948f73ec8f0', N'REGISTER', NULL)
GO
INSERT [dbo].[Order] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'59023bc7-8b28-4350-8401-37e6d37521c8', N'COMPLETED', CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), N'100c39a7-400e-40df-ba43-a31b7ada4bac', 0, N'24 duong 1 thanh pho thu duc', N'0932904529')
INSERT [dbo].[Order] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'36b4e1d6-388d-4c09-8cc9-c857bd3821cb', N'CANCELLED', CAST(N'2020-02-05T00:00:00.000' AS DateTime), CAST(N'2020-02-19T00:00:00.000' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', NULL, NULL, NULL)
INSERT [dbo].[Order] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'9b909e22-65a4-4531-8627-e41ac161b291', N'RATED', CAST(N'2021-08-19T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), N'bf832d0d-a988-4095-a2cf-e96ca327c101', 0, N'25/8 le loi go vap thanh pho ho chi minh', N'0125889475')
INSERT [dbo].[Order] ([order_id], [status], [created_at], [update_at], [user_id], [discount], [ship_Address], [ship_Phone]) VALUES (N'0e6d12f4-97b8-485a-8d94-eaf3aa9059b3', N'RATED', CAST(N'2022-02-13T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), N'100c39a7-400e-40df-ba43-a31b7ada4bac', 0, N'24 duong 1 thanh pho thu duc', N'0932904529')
GO
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'59023bc7-8b28-4350-8401-37e6d37521c8', N'0647194e-c5ad-40d8-b73d-1822e3751b47', 2, 2, CAST(N'2022-04-11T00:00:00.000' AS DateTime), NULL, 0, 356.2300)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'59023bc7-8b28-4350-8401-37e6d37521c8', N'55d901be-b7b2-4576-9c02-19904a11c543', 6, 6, CAST(N'2020-05-09T00:00:00.000' AS DateTime), NULL, 0.5, 256.0200)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'59023bc7-8b28-4350-8401-37e6d37521c8', N'44c33778-af86-46c3-bd5d-5f9e759ff141', 1, 1, CAST(N'2022-04-11T00:00:00.000' AS DateTime), NULL, 0, 52.8900)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [amount], [amount_ship], [created_at], [update_at], [discount], [price]) VALUES (N'9b909e22-65a4-4531-8627-e41ac161b291', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 2, 2, CAST(N'2020-05-09T00:00:00.000' AS DateTime), NULL, 0.6, 689.2000)
GO
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'771a3613-4c6b-427f-a830-2fdd3de53730', N'Update', N'update', 1, CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'490bc7d0-77c5-4df9-aefe-62bb1be073fc', N'Create', N'create', 1, CAST(N'2022-11-04' AS Date), NULL)
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'f267b702-d71a-41e5-912b-b24f52a410d5', N'Read', N'read', 1, CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Permission] ([permission_id], [title], [description], [active], [created_at], [update_at]) VALUES (N'05ed6d9c-af9d-4da7-8f97-cfcd703b317d', N'Delete', N'delete', 1, CAST(N'2022-04-11' AS Date), CAST(N'2022-04-11' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', N'DIY Pumpkin Spice Candles', 25.1500, 0, N'DIY Pumpkin Spice Candles', N'Learn all secrets of how to make DIY pumpkin spice candles with soy wax and essential oils! This homemade candle making tutorial includes a pumpkin spice essential oil recipe, tips to choose the best materials, and tricks to make soy candles with essential oils smell stronger. The candle making instructions come with free printable candle labels and gift tags to package and decorate your all-natural soy candles for gifting.', 0, 1, NULL, CAST(N'2015-05-18' AS Date), CAST(N'2018-05-09' AS Date), 100, 25, N'a91012b5-6710-4cc3-9a49-7d5c89369b6c', N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'0647194e-c5ad-40d8-b73d-1822e3751b47', N'DIY Wrap Skater Midi Dress', 258.1400, 0, N'DIY Wrap Skater Midi Dress// Seqing tutorial by tintofmint', N'Welcome back to another DIY tutorial. Yes, another one. Since I bought my new sewing machine a few months ago, all I do in my free time is sewing. Today I want to share with you my most recent make, which is this white polka dot wrap midi dress. I absolutely adore this shape of a dress and I’m planning to make a lot more in different prints. This weekend we had such beautiful weather, just perfect to photograph this dress and I’m so thankful for that.

', 0, 1, N'X,L,ML', CAST(N'2022-02-02' AS Date), CAST(N'2022-02-02' AS Date), 150, 30, N'9a3ee436-c053-4975-8e46-8d582a0cb29f', N'5514cc62-cf56-4961-999f-838e35e91b6d', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'55d901be-b7b2-4576-9c02-19904a11c543', N'Silk Slip Dress', 258.0000, 0, N'DIY Silk Slip Dress', N'Do you have a casual dress that you can wear anytime as a date night outfit or also as a mid length dress for work? This DIY silk slip dress is a classic wardrobe piece and will become your new favorite little black dress.', 1, 1, N'X,L', CAST(N'2019-07-11' AS Date), CAST(N'2020-02-08' AS Date), 40, 5, N'a6a66a06-9cf7-4cfa-beb9-a9ea6efa085d', N'39e22609-c309-4346-8349-d9846a85d8da', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'98e38f42-937b-4267-8eb4-219c6f05641b', N'Pet Toys', 123.2500, 0, N' ASPCA estimates', N'The ASPCA estimates there are about 70-80 million dogs alone within the United States, and the APPA indicates that more than $60 billion is spent on the pet industry each year. Needless to say, people love their pets–and they’re happy to shell out some money to make them happy. You can tap into this massive market by creating handmade, eco-friendly toys for pets that are made from low-cost recycled materials. There are a lot of YouTube video tutorials for such DIY crafts.', 1, 1, NULL, CAST(N'2019-02-20' AS Date), CAST(N'2021-02-03' AS Date), 25, 5, N'631d4929-0629-4875-ba31-1d105e075006', N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'146786a3-7e44-4d94-8620-3ff6f12a6cc2', N'40+ Beautiful Christmas Gift Wrapping Ideas', 52.1700, 0, N'40+ Beautiful Christmas Gift Wrapping Ideas', N'Every year, I decide that I''m going to wrap my presents even better than last year. Wrapping presents during Christmastime is almost more fun that actually picking them out, and wrapping trends change so much', 0, 0, NULL, CAST(N'2017-05-18' AS Date), CAST(N'2021-08-30' AS Date), 81, 0, N'd14a21a5-5988-45d6-9d83-905e91a1d4d8', N'39e22609-c309-4346-8349-d9846a85d8da', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'fddd0132-25a4-4d79-b413-4516fd22f7cf', N'Holzperle Christbaumkugel', 22.0000, 0, N'Holzperle Christbaumkugel weiß oder natürliche Dekoration Wohnkultur Bauer', N'Holzperle Christbaumkugel weiß oder natürliche Dekoration Wohnkultur Bauernhaus Baumschmuck B …
– Ra Mona

Holzperle Christbaumkugel weiß oder natürliche Dekoration Home Decor Bauernhaus Baumschmuck B…', 1, 0, NULL, CAST(N'2020-01-24' AS Date), CAST(N'2022-04-11' AS Date), 56, 0, N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'43431ed9-ae1a-41fd-b7c9-3164781c3577', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'44c33778-af86-46c3-bd5d-5f9e759ff141', N'Bath Products', 32.0200, 0, N'
Bath Products | Body Products', N'Explore essential and unique bath and body products at Anthropologie from top beauty brands. Free shipping for AnthroPerks members every day.', 1, 1, NULL, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-04' AS Date), 65, 2, N'631d4929-0629-4875-ba31-1d105e075006', N'8028f124-eedc-49c7-a37e-01b2e34635eb', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'20d54d9e-6a96-4677-a8e2-61f8acec5ade', N'Torquay Product Photographer', 55.4300, 0, N'Torquay Product Photographer || Castleton Collective — Leslie Carvitto Photography', N'Artisanal and sustainable ceramics handmade in Jan Juc, Victoria by Caitie Ross. Caitie creates everything from incense plates and small jewellery dishes to mugs and tea light holders. Each piece is one of a kind and made with love and care. Caitie fell in love with ceramics 3 years ago and has', 0, 1, NULL, CAST(N'2015-08-07' AS Date), CAST(N'2020-07-11' AS Date), 200, 120, N'decbb7d7-ac47-4c21-ab6a-cafb781ff363', N'6c684c2f-c1df-4ad8-b066-3a0e4decdb40', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'c0a24c44-fd71-4c02-9a3b-6283472d1e94', N'Fabric Gift Bag Tutorial', 46.9100, 0, N'Fabric Gift Bag Tutorial', N'Drawstring Bag Tutorial, Gift Bags. Idea Drawstring Pouch. Pattern + DIY in Pictures.', 0, 0, NULL, CAST(N'2019-11-08' AS Date), CAST(N'2020-05-08' AS Date), 20, 7, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'740f4098-fda7-45d8-ac4a-71acc3517f99', N'Wax Sealed Candle Wrapping', 525.2500, 0, N'Wax Sealed Candle Wrapping', N'Wax seals are an awesome addition for a more brand customizable vibe.', 0, 0, NULL, CAST(N'2010-08-04' AS Date), CAST(N'2021-08-08' AS Date), 1560, 600, N'a91012b5-6710-4cc3-9a49-7d5c89369b6c', N'0f105294-39fe-44ab-bdd0-cfccce5c002b', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'd0bb81e7-5bba-43e1-84c8-84456e77fb25', N'Cafenohut', 25.1700, 0, N'Sew Illustrated Blog Tur / Sew Illustrated Blog Tour / GIVEAWAY', N'I am sure that most of you already know sweet Minki. I had previously shared here the wonderful gifts which sent by her to me and I had written my thoughts about her in there. I love so much  her style and personality... She is so talented that I admire her much more every passing day.

Through Minki I also got to meet dear Kristin. She is also so kind and sweet. Both have been a great duo.', 0, 0, NULL, CAST(N'2019-06-07' AS Date), CAST(N'2020-09-16' AS Date), 58, 8, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'5514cc62-cf56-4961-999f-838e35e91b6d', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'ce5b8b3e-3e04-455b-ad80-af0bad9450ab', N'Round Bag Shoulder Bag Yellow Fabric Cotton Lining', 98.2100, 0, N'Round bag, shoulder bag, yellow fabric, cotton lining', N'From interior to external pocket and lengthy shoulder strap, this will become your must-have purse for casual and going out looks. Here is Luna circle purse sewing pattern to add to your DIY bag collection.', 1, 0, NULL, CAST(N'2015-06-07' AS Date), CAST(N'2021-08-06' AS Date), 70, 6, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'318f9a5b-2b6a-45ad-85d7-bd2def5219ee', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'b323b351-a898-4259-a7ad-b4382b575288', N'DIY Bias Satin Skirt', 257.0200, 0, N'DIY Bias Satin Skirt', N'Step by step easy sewing tutorial on how to make bias cut midi satin skirt. Manchester based Fashion Blogger @tint.ofmint created a new DIY blog post.', 0, 0, N'X,L,ML', CAST(N'2022-11-04' AS Date), CAST(N'2022-11-04' AS Date), 500, 100, N'26339763-bd76-4825-889a-c75685f6ffcb', N'318f9a5b-2b6a-45ad-85d7-bd2def5219ee', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'becb46b7-198a-4a18-8370-b768adfd6902', N'Vela aromática canela', 77.2000, 0, N'Vela aromática canela', N'Esta vela de soja, con canela y limón, evoca al dulce hogar en otoño con su aroma de canela KandelaArgia velas', 1, 1, NULL, CAST(N'2015-08-07' AS Date), CAST(N'2020-02-08' AS Date), 59, 0, N'd14a21a5-5988-45d6-9d83-905e91a1d4d8', N'39e22609-c309-4346-8349-d9846a85d8da', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'3b552a97-6d96-4988-a793-be8195c16377', N'Candles', 25.0500, 0, N'Candles are DIY crafts', N'Candles are DIY crafts that can be sold year-round. Since most people won’t splurge on quality candles for themselves, they make great gifts. With birthdays, anniversaries, and many holidays year round, you’ve always got a reason to keep customers coming back for more. By purchasing bulk wax and scented oils, you can create many different scent combinations in a variety of different sizes and shapes. And the really good news: You can launch a candle-making operation for under $100.', 1, 1, NULL, CAST(N'2021-02-13' AS Date), CAST(N'2020-02-08' AS Date), 12, 5, N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'61f7ec2b-6f76-4975-8dcf-43c6820a6d8d', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'7e38f882-9661-4a7e-9609-c34a0691f887', N'Most Memorable Handmade Christmas Ornaments', 85.6600, 0, N'26 of Our Most Memorable Handmade Christmas Ornaments', N'A handmade ornament is more than a decorative addition to your Christmas tree—it''s a memory: one that is made with your kids and family, celebrating the season, and cherishing time together. Browse our best projects here including felted woodland animals, ribbons and rosettes, shooting stars, and more.', 1, 0, NULL, CAST(N'2020-06-13' AS Date), CAST(N'2020-09-02' AS Date), 79, 9, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'054d3860-0c07-41a2-a366-5356d3bac3ab', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'b318365a-47fe-4cb5-8a41-c7f776f7df1c', N'Artist Uses Real Found Flowers', 80.9000, 0, N'Artist Uses Real Found Flowers to Create Delicate One-of-a-Kind Ceramics', N'Artist Hessa Al Ajmani has found a unique way to immortalize bouquets.', 0, 1, NULL, CAST(N'2010-05-25' AS Date), CAST(N'2010-05-05' AS Date), 85, 85, N'ba41cb0c-3c49-43cc-b048-2a4e01a71ab4', N'0f105294-39fe-44ab-bdd0-cfccce5c002b', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'7ffbc91c-24a1-4080-bad5-d6bd41e9ff2f', N'DIY Monogramm Geschenkanhänger & ein fulminanter Bastelabend', 59.2800, 0, N'DIY Monogramm Geschenkanhänger & ein fulminanter Bastelabend', N'Vor ein paar Wochen war ich zu einem Blogger-Wochenende in Freiburg eingeladen. Der OZ-Verlag hatte – zusammen mit einigen führenden Bastelbedarf-Herstellern – zu einem Craft´n Chat (hier findest du den offiziellen Bericht des Verlages zur Veranstaltung) Abend unter DIY-Bloggern geladen. Nach einer kleinen Stadtführung ging es abends ins Ballhaus, wo schon alles für uns vorbereitet war.', 1, 0, NULL, CAST(N'2019-08-19' AS Date), CAST(N'2022-05-06' AS Date), 56, 20, N'91c09f24-f84b-47f2-9ed5-8c518b1472d7', N'3bda05c5-0d2f-4daa-a30f-7604b8db9453', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'd65258a7-c777-44ca-bfd3-db428a77a134', N'Reversible Drawstring Bag Tutorial', 56.4700, 0, N'Reversible Drawstring Bag. DIY Pattern & Tutorial', N'You can carry your cosmetics there, you can carry your everyday usable items, even fruits – literary everything can be carried by this bag. You can adjust the sizing and it may very well serve you as a backpack. And above all that it is a reversible bag, what else can we anticipate from a single tutorial.
', 0, 1, NULL, CAST(N'2015-08-09' AS Date), CAST(N'2019-08-08' AS Date), 100, 0, N'f53e4bc3-8aef-4ebd-8dbe-49ae8be6a8e9', N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
INSERT [dbo].[Product] ([product_id], [name], [price], [sale], [title], [details], [highlight], [new_product], [size], [created_at], [update_at], [amount], [quatity], [voucher_id], [branch_id], [saller_id]) VALUES (N'e98936d7-1901-4933-8e0e-e3fefe3dfcc8', N'Ponto a Ponto', 85.0000, 0, N'MOLDES PARA TRICOTIN - Tricotin Ponto a Ponto', N'PACOTE COM + DE 1000 MOLDES EM PDF PARA TRICOTIN. ENTRE ELES NOMES, DESENHOS, NÚMEROS, ALFABETO, TOPO DE BOLO, GRÁFICO PARA TAPETE. MOLDES NO FORMATO 3D PARA VOCÊ IDENTIFICAR MAIS FÁCIL PARA ONDE VÃO AS DOBRAS DO ARAME. ASSIM FACILITANDO SEU TRABALHO.', 0, 1, NULL, CAST(N'2016-02-08' AS Date), CAST(N'2016-02-25' AS Date), 50, 15, N'631d4929-0629-4875-ba31-1d105e075006', N'4d01869d-278f-4915-a77a-7d93d5b8b402', N'bf832d0d-a988-4095-a2cf-e96ca327c101')
GO
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'763576b2-1c7e-4740-9f27-3dd53ced2fae', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04', 5, 28.2600)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'763576b2-1c7e-4740-9f27-3dd53ced2fae', N'0647194e-c5ad-40d8-b73d-1822e3751b47', 2, 32.0000)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'394a5ae9-46df-44c7-918a-50b961e1e1be', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2', 1, 58.2900)
INSERT [dbo].[Product_Cart] ([cart_id], [product_id], [quatity], [price]) VALUES (N'394a5ae9-46df-44c7-918a-50b961e1e1be', N'20d54d9e-6a96-4677-a8e2-61f8acec5ade', 2, 12.9800)
GO
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'6432dadd-103e-434d-81eb-257a9d4b18b1', N'98e38f42-937b-4267-8eb4-219c6f05641b')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'f6fd639b-2737-4b3b-aa4b-25de8a4b2063', N'20d54d9e-6a96-4677-a8e2-61f8acec5ade')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'3d2c39ce-f501-418d-bb66-268f03315d60', N'b323b351-a898-4259-a7ad-b4382b575288')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'3d2c39ce-f501-418d-bb66-268f03315d60', N'd65258a7-c777-44ca-bfd3-db428a77a134')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'c8a422d1-5b96-40a1-8a2d-3f1116546ad4', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'c8a422d1-5b96-40a1-8a2d-3f1116546ad4', N'0647194e-c5ad-40d8-b73d-1822e3751b47')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'c8a422d1-5b96-40a1-8a2d-3f1116546ad4', N'740f4098-fda7-45d8-ac4a-71acc3517f99')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'26e9ffa5-0030-4fb6-a884-3f1752669a96', N'0647194e-c5ad-40d8-b73d-1822e3751b47')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'26e9ffa5-0030-4fb6-a884-3f1752669a96', N'ce5b8b3e-3e04-455b-ad80-af0bad9450ab')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'0f9c0343-77be-4f71-b239-5a94456cc226', N'e8fe923f-fa39-4267-aa23-0a6cfc636c04')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'0f9c0343-77be-4f71-b239-5a94456cc226', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'a54b013f-8830-46e2-808f-68862e5e0f98', N'740f4098-fda7-45d8-ac4a-71acc3517f99')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'a54b013f-8830-46e2-808f-68862e5e0f98', N'e98936d7-1901-4933-8e0e-e3fefe3dfcc8')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'43afdfc8-fc58-4693-b244-6b598dc82b0b', N'b323b351-a898-4259-a7ad-b4382b575288')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'ec8ca6bb-d60e-486f-8631-a51dc352b8bb', N'3b552a97-6d96-4988-a793-be8195c16377')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'415c72c8-85a0-4284-a3d3-ac4f298ad1dc', N'146786a3-7e44-4d94-8620-3ff6f12a6cc2')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'b61d794a-94bb-4521-9b0b-e05ecd53b1a7', N'55d901be-b7b2-4576-9c02-19904a11c543')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'740f4098-fda7-45d8-ac4a-71acc3517f99')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'becb46b7-198a-4a18-8370-b768adfd6902')
INSERT [dbo].[Product_Category] ([category_id], [product_id]) VALUES (N'5ac5eefa-0694-473f-af98-e4d655617d88', N'd65258a7-c777-44ca-bfd3-db428a77a134')
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
INSERT [dbo].[User] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'100c39a7-400e-40df-ba43-a31b7ada4bac', N'Phuong', N'Thao', N'52/8 binh tan thanh pho ho chi minh', N'phuongthao@gmail,com', N'0123588795', N'1234', NULL, N'c26865ae-4fcf-427e-94ed-b56af8b7de42')
INSERT [dbo].[User] ([user_id], [first_Name], [last_Name], [address], [email], [phone], [password], [access_tokenID], [role_id]) VALUES (N'bf832d0d-a988-4095-a2cf-e96ca327c101', N'Anh', N'Thu', N'24 duong 1 khu pho 1 tam binh thu duc', N'porkoe3443334@gmail.com', N'0932904529', N'1234', NULL, N'c26865ae-4fcf-427e-94ed-b56af8b7de42')
GO
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
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Table_1_orderId]  DEFAULT (newid()) FOR [order_id]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Table_1_userID]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[Order_Detail] ADD  CONSTRAINT [DF_Order_Detail_order_id]  DEFAULT (newid()) FOR [order_id]
GO
ALTER TABLE [dbo].[Order_Detail] ADD  CONSTRAINT [DF_Order_Detail_product_id]  DEFAULT (newid()) FOR [product_id]
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
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_Table_1_userID_2]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_Table_1_roleId_1]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_voucher_id]  DEFAULT (newid()) FOR [voucher_id]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Branchs] FOREIGN KEY([branch_id])
REFERENCES [dbo].[Branchs] ([branch_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Branchs]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([saller_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
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
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
