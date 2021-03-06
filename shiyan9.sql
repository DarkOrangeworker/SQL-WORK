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
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT]) VALUES (N'S9', N'张海涛  ', N'男', 19, N'信息      ')
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
