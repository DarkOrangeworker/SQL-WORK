USE [jxsk]
GO
/****** Object:  Table [dbo].[C]    Script Date: 2018/10/18 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C](
	[CNO] [char](2) NOT NULL,
	[CN] [char](10) NOT NULL,
	[CT] [tinyint] NULL,
 CONSTRAINT [PK_C] PRIMARY KEY CLUSTERED 
(
	[CNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S]    Script Date: 2018/10/18 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S](
	[SNO] [char](2) NOT NULL,
	[SN] [char](8) NOT NULL,
	[SEX] [char](2) NULL,
	[AGE] [tinyint] NULL,
	[DEPT] [char](10) NULL,
 CONSTRAINT [PK_S] PRIMARY KEY CLUSTERED 
(
	[SNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SC]    Script Date: 2018/10/18 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[SNO] [char](2) NOT NULL,
	[CNO] [char](2) NOT NULL,
	[SCORE] [tinyint] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[SNO] ASC,
	[CNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T]    Script Date: 2018/10/18 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T](
	[TNO] [char](2) NOT NULL,
	[TN] [char](8) NOT NULL,
	[SEX] [char](2) NULL,
	[AGE] [tinyint] NULL,
	[PROF] [char](10) NULL,
	[SAL] [smallint] NULL,
	[COMM] [smallint] NULL,
	[DEPT] [char](10) NULL,
 CONSTRAINT [PK_T] PRIMARY KEY CLUSTERED 
(
	[TNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TC]    Script Date: 2018/10/18 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TC](
	[TNO] [char](2) NOT NULL,
	[CNO] [char](2) NOT NULL,
	[Evaluation] [char](20) NULL,
 CONSTRAINT [PK_TC] PRIMARY KEY CLUSTERED 
(
	[TNO] ASC,
	[CNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_C] FOREIGN KEY([CNO])
REFERENCES [dbo].[C] ([CNO])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_C]
GO
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_S] FOREIGN KEY([SNO])
REFERENCES [dbo].[S] ([SNO])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_S]
GO
ALTER TABLE [dbo].[TC]  WITH CHECK ADD  CONSTRAINT [FK_TC_T] FOREIGN KEY([TNO])
REFERENCES [dbo].[T] ([TNO])
GO
ALTER TABLE [dbo].[TC] CHECK CONSTRAINT [FK_TC_T]
GO
ALTER TABLE [dbo].[TC]  WITH CHECK ADD  CONSTRAINT [FK_TC_TC] FOREIGN KEY([CNO])
REFERENCES [dbo].[C] ([CNO])
GO
ALTER TABLE [dbo].[TC] CHECK CONSTRAINT [FK_TC_TC]
GO
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T1', N'李力    ', N'男', 47, N'教授      ', 1800, 3000, N'计算机    ')
GO
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T2', N'王平    ', N'女', 28, N'讲师      ', 850, 1200, N'信息      ')
GO
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T3', N'刘伟    ', N'男', 30, N'讲师      ', 900, 1200, N'计算机    ')
GO
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T4', N'张雪    ', N'女', 51, N'教授      ', 1900, 3000, N'自动化    ')
GO
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T5', N'张兰    ', N'女', 39, N'副教授    ', 1300, 2000, N'信息      ')
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C1', N'程序设计  ', 60)
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C2', N'微机原理  ', 80)
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C3', N'数字逻辑  ', 60)
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C4', N'数据结构  ', 80)
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C5', N'数据库    ', 60)
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C6', N'编译原理  ', 60)
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C7', N'操作系统  ', 60)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T1', N'C1', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T1', N'C4', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T2', N'C5', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T3', N'C1', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T3', N'C5', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T4', N'C2', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T4', N'C3', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T5', N'C5', NULL)
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T5', N'C7', NULL)
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S0', N'王青山  ', N'男', 19, N'计算机    ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S1', N'赵亦    ', N'女', 17, N'计算机    ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S2', N'钱尔    ', N'男', 18, N'信息      ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S3', N'张晓明  ', N'男', 18, N'信息      ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S4', N'李思    ', N'男', 21, N'自动化    ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S5', N'周武    ', N'男', 19, N'计算机    ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S6', N'吴丽    ', N'女', 20, N'自动化    ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S7', N'范思萌  ', N'女', 18, N'信息      ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S8', N'孙姗    ', N'女', 20, N'信息      ')
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S9', N'张海涛  ', N'男', NULL, N'信息      ')
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S1', N'C1', 90)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S1', N'C2', 85)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S2', N'C5', 50)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S2', N'C6', 80)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S3', N'C1', 75)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S3', N'C2', 70)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S3', N'C4', 85)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S4', N'C1', 93)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S4', N'C2', 85)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S4', N'C3', 83)
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S5', N'C2', 89)
GO
