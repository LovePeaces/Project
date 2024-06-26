USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userName] [varchar](10) NOT NULL,
	[passWord] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[idDepartment] [nvarchar](50) NOT NULL,
	[nameDepartment] [nvarchar](50) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[idDepartment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[idEmployee] [nvarchar](50) NOT NULL,
	[nameEmployee] [nvarchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[idDepartment] [nvarchar](50) NULL,
	[idPosition] [nvarchar](50) NULL,
	[levelSalary] [int] NULL,
	[start] [date] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[idEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayRoll]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayRoll](
	[idPayRoll] [int] IDENTITY(1,1) NOT NULL,
	[idTimeSheet] [nvarchar](50) NULL,
	[idEmployee] [nvarchar](50) NULL,
	[nameEmployee] [nvarchar](100) NULL,
	[total] [int] NULL,
	[levelSalary] [int] NULL,
	[basicSalary] [int] NULL,
	[coefficient] [float] NULL,
	[bonus] [int] NULL,
	[fines] [int] NULL,
	[salary] [int] NULL,
 CONSTRAINT [PK_PayRoll_1] PRIMARY KEY CLUSTERED 
(
	[idPayRoll] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[idPosition] [nvarchar](50) NOT NULL,
	[namePosition] [nvarchar](50) NULL,
	[describe] [nvarchar](max) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[idPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[levelSalary] [int] NOT NULL,
	[basicSalary] [int] NULL,
	[coefficient] [float] NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[levelSalary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistical]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistical](
	[id] [varchar](max) NOT NULL,
	[idEmployee] [nvarchar](50) NULL,
	[nameEmployee] [nvarchar](100) NULL,
	[reason] [nvarchar](max) NULL,
	[lateTime] [int] NULL,
	[time] [date] NULL,
	[bonus] [int] NULL,
	[fines] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[idTimeSheet] [nvarchar](50) NOT NULL,
	[month] [int] NULL,
	[year] [int] NULL,
	[day] [date] NULL,
	[number] [int] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[idTimeSheet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheetDetail]    Script Date: 1/30/2024 8:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheetDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTimeSheet] [nvarchar](50) NULL,
	[idEmployee] [nvarchar](50) NULL,
	[nameEmployee] [nvarchar](100) NULL,
	[workDay] [int] NULL,
	[excused] [int] NULL,
	[unExcused] [int] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK__TimeShee__3213E83FBD4BE1B5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
