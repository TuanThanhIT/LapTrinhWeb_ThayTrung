USE [Ltwebct2_thayTrung]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/21/2024 2:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [nvarchar](50) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 9/21/2024 2:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[images] [nvarchar](50) NULL,
	[roleid] [int] NULL,
	[phone] [nvarchar](50) NULL,
	[createdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (1, N'Admin')
INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (2, N'User')
INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (3, N'Manager')
INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (4, N'Seller')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [email], [password], [fullname], [images], [roleid], [phone], [createdate]) VALUES (1, N'ntthanh', N'tuanthanh@gmail.com', N'123456789', N'Nguyen Tuan Thanh', N'abcdefgh', 1, N'0321456789', NULL)
INSERT [dbo].[users] ([id], [username], [email], [password], [fullname], [images], [roleid], [phone], [createdate]) VALUES (6, N'nguyenhai3324', N'tuanthanh07082004@gmail.com', N'123', N'Tran Tien Dung', NULL, 1, N'0123456789', N'2024-09-18')
INSERT [dbo].[users] ([id], [username], [email], [password], [fullname], [images], [roleid], [phone], [createdate]) VALUES (7, N'DUYFBI00', N'dphat2601@gmail.com', N'123', N'Tran Tien Dung', NULL, 1, N'0147258369', N'2024-09-18')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
