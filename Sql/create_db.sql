/****** Object:  Table [TableParams]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [TableParams]
GO
/****** Object:  Table [Servers]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Servers]
GO
/****** Object:  Table [Games]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Games]
GO
/****** Object:  Table [Control.LobbyTypes]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Control.LobbyTypes]
GO
/****** Object:  Table [Control.LimitTypes]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Control.LimitTypes]
GO
/****** Object:  Table [Control.GameTypes]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Control.GameTypes]
GO
/****** Object:  Table [Control.GameSubTypes]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Control.GameSubTypes]
GO
/****** Object:  Table [Control.BlindTypes]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Control.BlindTypes]
GO
/****** Object:  Table [Commands]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Commands]
GO
/****** Object:  Table [Clients]    Script Date: 2015-09-20 16:30:10 ******/
DROP TABLE [Clients]
GO
/****** Object:  Table [Clients]    Script Date: 2015-09-20 16:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientIdentification] [nvarchar](200) NOT NULL,
	[ImplementedProtocol] [nvarchar](20) NOT NULL,
	[ClientStartedAt] [datetime] NOT NULL,
	[Hostname] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Commands]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Commands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExecutionTime] [datetime] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsFromServer] [bit] NOT NULL,
	[ServerId] [int] NOT NULL,
	[ClientId] [int] NULL,
	[Type] [nvarchar](50) NOT NULL,
	[GameId] [int] NULL,
	[Detail] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Control.BlindTypes]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Control.BlindTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Control.GameSubTypes]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Control.GameSubTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameTypeId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Control.GameTypes]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Control.GameTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Control.LimitTypes]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Control.LimitTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Control.LobbyTypes]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Control.LobbyTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Games]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableParamId] [int] NOT NULL,
	[GameStartedAt] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Servers]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Servers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServerIdentification] [nvarchar](200) NOT NULL,
	[ImplementedProtocol] [nvarchar](20) NOT NULL,
	[ServerStartedAt] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [TableParams]    Script Date: 2015-09-20 16:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TableParams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](200) NOT NULL,
	[GameSubTypeId] [int] NOT NULL,
	[MinPlayerToStart] [int] NOT NULL,
	[MaxPlayer] [int] NOT NULL,
	[Arguments] [nvarchar](2000) NULL,
	[LobbyTypeId] [int] NOT NULL,
	[BlindTypeId] [int] NOT NULL,
	[LimitTypeId] [int] NOT NULL,
	[ServerId] [int] NOT NULL,
	[TableStartedAt] [datetime] NOT NULL
) ON [PRIMARY]

GO
