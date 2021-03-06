USE [n5now_test]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/06/2022 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppPermissions]    Script Date: 15/06/2022 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppPermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[PermissionTypeId] [int] NOT NULL,
 CONSTRAINT [PK_AppPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppPermissionTypes]    Script Date: 15/06/2022 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppPermissionTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_AppPermissionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220614165749_Initial', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[AppPermissions] ON 

INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (1, N'Jose', N'Kaspar', 1)
INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (3, N'Antonio', N'Mendoza', 1)
INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (6, N'string', N'stringasdasd', 1)
INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (8, N'Test1', N'test2', 2)
INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (9, N'Prueba11', N'Prueba11', 2)
INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (10, N'test123', N'test123', 2)
INSERT [dbo].[AppPermissions] ([Id], [Name], [Surname], [PermissionTypeId]) VALUES (13, N'dasdsa', N'asdasdasd', 2)
SET IDENTITY_INSERT [dbo].[AppPermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[AppPermissionTypes] ON 

INSERT [dbo].[AppPermissionTypes] ([Id], [Description]) VALUES (1, N'Administrator')
INSERT [dbo].[AppPermissionTypes] ([Id], [Description]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[AppPermissionTypes] OFF
GO
ALTER TABLE [dbo].[AppPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AppPermissions_AppPermissionTypes_PermissionTypeId] FOREIGN KEY([PermissionTypeId])
REFERENCES [dbo].[AppPermissionTypes] ([Id])
GO
ALTER TABLE [dbo].[AppPermissions] CHECK CONSTRAINT [FK_AppPermissions_AppPermissionTypes_PermissionTypeId]
GO
