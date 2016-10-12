USE [base_yii2]
GO
/****** Object:  Table [dbo].[audit_data]    Script Date: 12/10/2016 12:05:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[data] [text] NULL,
	[created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_entry]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_entry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created] [datetime] NOT NULL,
	[user_id] [int] NULL,
	[duration] [float] NULL,
	[ip] [varchar](45) NULL,
	[request_method] [varchar](16) NULL,
	[ajax] [int] NOT NULL,
	[route] [varchar](255) NULL,
	[memory_max] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_error]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_error](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[message] [text] NOT NULL,
	[code] [int] NULL,
	[file] [varchar](512) NULL,
	[line] [int] NULL,
	[trace] [text] NULL,
	[hash] [varchar](32) NULL,
	[emailed] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_javascript]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_javascript](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[type] [varchar](20) NOT NULL,
	[message] [text] NOT NULL,
	[origin] [varchar](512) NULL,
	[data] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_mail]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_mail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[successful] [int] NOT NULL,
	[from] [varchar](255) NULL,
	[to] [varchar](255) NULL,
	[reply] [varchar](255) NULL,
	[cc] [varchar](255) NULL,
	[bcc] [varchar](255) NULL,
	[subject] [varchar](255) NULL,
	[text] [text] NULL,
	[html] [text] NULL,
	[data] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_trail]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_trail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NULL,
	[user_id] [int] NULL,
	[action] [varchar](255) NOT NULL,
	[model] [varchar](255) NOT NULL,
	[model_id] [varchar](255) NOT NULL,
	[field] [varchar](255) NULL,
	[old_value] [text] NULL,
	[new_value] [text] NULL,
	[created] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[auth_assignment]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_assignment](
	[item_name] [nvarchar](64) NOT NULL,
	[user_id] [nvarchar](64) NOT NULL,
	[created_at] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[item_name] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auth_item]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_item](
	[name] [nvarchar](64) NOT NULL,
	[type] [int] NOT NULL,
	[description] [text] NULL,
	[rule_name] [nvarchar](64) NULL,
	[data] [text] NULL,
	[created_at] [int] NULL,
	[updated_at] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auth_item_child]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_item_child](
	[parent] [nvarchar](64) NOT NULL,
	[child] [nvarchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parent] ASC,
	[child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auth_rule]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_rule](
	[name] [nvarchar](64) NOT NULL,
	[data] [text] NULL,
	[created_at] [int] NULL,
	[updated_at] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[logs]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](250) NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[acceso] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[migration]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[migration](
	[version] [varchar](180) NOT NULL,
	[apply_time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profile]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[user_id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[public_email] [nvarchar](255) NULL,
	[gravatar_email] [nvarchar](255) NULL,
	[gravatar_id] [nvarchar](32) NULL,
	[location] [nvarchar](255) NULL,
	[website] [nvarchar](255) NULL,
	[bio] [text] NULL,
	[timezone] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[social_account]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[social_account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[provider] [nvarchar](255) NOT NULL,
	[client_id] [nvarchar](255) NOT NULL,
	[data] [text] NULL,
	[code] [nvarchar](32) NULL,
	[created_at] [int] NULL,
	[email] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[token]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[token](
	[user_id] [int] NOT NULL,
	[code] [nvarchar](32) NOT NULL,
	[created_at] [int] NOT NULL,
	[type] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 12/10/2016 12:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password_hash] [nvarchar](60) NOT NULL,
	[auth_key] [nvarchar](32) NOT NULL,
	[confirmed_at] [int] NULL,
	[unconfirmed_email] [nvarchar](255) NULL,
	[blocked_at] [int] NULL,
	[registration_ip] [nvarchar](45) NULL,
	[created_at] [int] NOT NULL,
	[updated_at] [int] NOT NULL,
	[flags] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[audit_data] ON 

INSERT [dbo].[audit_data] ([id], [entry_id], [type], [data], [created]) VALUES (4078, 1364, N'audit/db', N'0x789ced586d6fe23810fede5f61f1052ab55ddb79738c3889eb666f7b626105f4f64ba4e0266e9b5b92b071a8caaefadf6f1cda429b20ddb6bd4587a8d460ec99f13c9e67c6130427fc87e28c3712a994b892aad116f0f547cc890d234b8f705b71c3e68dd1c7c117f4e1bcd743a783def9a7fe087d180e3ea18998477111c8b4c81793461b34e19f61785050a484371671ec4717fe699624228d38ff3697f9424b1aed8813d3b129731c424f98ed5ad472b16b52835146a8053226b841976e94fe286ef2c6653c950db0cec0f353eedf8a6436f3af8b280b952fa2244e6355e4228cb33410d37992662ad0d30a26fc1b994659ee5fc8487e8faf521fbca3c725065fe5a1dfd5a393d9f54cdb87ada6712ab5af9459edf2a42ee769588021bd4e40e04a1663713195a3f05a2642cf5abc114e8552a584f1887f25005ac5625622a0bc71fc5ba37da78f6dbbf828ade263253c4f87f639300a5f9eece12ff728ed6f0079a7613aafe1956bbf8457ccc516c6d866b66d5a1676f6d4da4d6ab9ebd4b2b10bdcf27adee9f800c1dfd7707e1266a94617a745908a441ead2d68accf26737929739986320a0a1d86cdcb6bea072579e3f432cb13a1c106aa0cce8378118b69b0f243a1ee08e5e1c19f83b37e9dd657b978b03ed7055a8bc3e668d02ffd6895cf1a78a128c434bb421d305e373f183e6ab636a89e8d505f6765b7ff7e83917b89c3d2d4a116ac3be925928a27f7d31b94f4515654caf3fdf2d11b7af5b63a2802cf2e8492add29bd2e83274351207f7c056b185e5e65ad5693eb35127f2ba0bcf25d474b0616207662cd7b12d7b5f9976b03251bcaf4cfbcab49dcaf4b296c9a5966960c7316dc61c8aa148ed7ba69dac4cc67a652216889df547de708ccefae3c1d3261cb52679362fe4e4084de64ae6411ce9613cd34ff1b7b8d59fb9044ea9224864719d95eb612e4521a3c921faabdb3bf746a8d5547121dfc569246f9b47081fa126e7e47ef4873786519362621f137c4c2822985b1627b47958bd6c8d2aa5e5ad0cc1c91a52bb04ba7fc7350c861dc3313070db79e0b4b189d304e3370f7a924572aa96b129a359430062db5502c0ba1237b212fcd531fc0e05a40bf2377228c32c8f7e8adfdbc26a9955a8f062983f2258076b38f54caf6cb4113add76e962b5709779f28670397f4872f37f98e4ab7bebe792dc704d8a5d83992e61945078f75ff5d4fb2cdf67f9ee66f9935f6c19bc639c7f7edf1d7bcff27be48dd1249ae765333fe990138a2d68f6a0d77309312195139964f9224820d53b16a32e75285ab6b613a8051d62d8e66b2f62cba4b6e33accb62b29bab1b9dc5a8ab21adefec729fa2b796a90da46f3324ec534fefe964c5d359dce2f67ea4b6f13db25f0fa83316316c6fff2079a3d537784a97777ff005b3bfbbe', CAST(0x0000A6D800B3F4C0 AS DateTime))
INSERT [dbo].[audit_data] ([id], [entry_id], [type], [data], [created]) VALUES (4115, 1373, N'audit/log', N'0x789ced585b53db38187de75768f2129829ac6e966531ec0c85ec961d4876086c5f329328b6206e7d496d87423bfcf7fde42410c74edb6dcbb2d32d33218aaccbf98ece913e592ba23ee64aaa566cf25c5f9bbcb5af1591ea63a830949c7921570e51ad97695ae445a6a7e87d584c5060de1659388b07b3dc648387874a8d97c5ed9dd67ea8087c247c280cc36098bb301c8c756e0687d36914faba08d364a593edc2f60345b82ba8745d07efb998534a3de23a8e804ae1398c5007da718088d5c7fb7b3bcb0a5a8a55eb34d541985ca3380d669151c8a25c8743c50a9cb37943756d8a797103124e307399800ace09c7621d09fd52deb2b1f69f963726b0f08037e14ac918c6aeacf1c63ec79b45f9edbc011229010a110e1184305a47c22bbc3935dedea493242c6e92817ea36ffd6c163c2d779c61ea7ad4e11e611bb8732a88dd1ae2b109cc87f03a19c0f474a06741583c3566d7f33ccaa583b96052b844ba6b98c52a66c66a98edac517a3d380ef3a92efc49dd345f8b0dd011cf635c72eeb9d8c5750fbb152d92ba164b0abf5d8c004500515c80221b2d2c578170fc450b7bd884ed2bb91212332b3fc12528b04179deba57ba298aed7259b62ecf4f5106a1e77be832b71581b9d2b3a8281f4c7556d6c11a87fe5e0d2f9de37d6fc683cb2c3ad3099c099952b6973937ef66262f9a01134e3cc93de639ae431a37e8ca79423cd53a4f678541d97c541328d46ed7f0f0473c15fa263a09a2cf2082e5a582320f13d6e404523d32f8125091027b89427958985fc22430b735547865558fd2a4c8d228b23441bf43df026c42e40220e631c21c10bf6cdc5048e5ec6020ecfeabde6bf4dbe5e9293aea9d5e9e75fbe8b7f3de191a959a1b1a98fa6eb484c7978658882e1803b83806a694029eb2bb46549e87010bc7d8216b272b5dc902c006aa75155a3f41ba00f9c2911adcea783a1d4c8a20f5f3810ee23009ada27d887fa8a3599ca4f9d056e75031b831499066838a7376e7cec9337fee9ebde9646ac787a9a23029ad4ba5b35fe62757b364c12c88071a80c12ff438327dd8a2626d6bc1057ea4f3bc6cc11e28786c00bd8abb691901c87cf7d7d6fe63def06cf1515a8f4f96e175ece2ae0746e1c727769fc6204b6555ce790102ee4d4d623782e397c84f93c494b32b14dfe5ef223549f3e2204a7d1dd9d27e304e746c0eacde8776d29ae2d88ae21ec652294cb141739ec482630e9980fb53743face8645574b0e7f73ba79da38b2d047f6ffdd91e28cf461726c5d02aecc5ca031beb5a6566ae4c6612df04c3c22ec3e6c72bddb7ca0d334caed22c2e0f8f615e2eceb27911ea68f8882347877d94f95b7ff44eba4dbdde9abbe5e8337b61b2cd6172d4eb9638b6cbff0de1c1c1a5e1cc45073078537deffca1e7f686ae277dd4b527c161f778c3208b163be5503bb66113d3f3486a4816d51b3a592a6b5d4a7e5fbfea9c779ac73a400120b3dbc67689a61c74be740d2db616813dae2d3c6eaf9c74edb5319a9a7cfd6148f624f1980b1fe9628773ce9803bf7f6e4c3fdec6442ba91f8151fa26b7c0515ee80c72d14d2ab279e8a2e986e30d54445d4a20a9825c78ed76c136498860fcdd39863b9389f2391525790d7c1347d6f90636864360bca62259c97ae3699a80e5fe91949e2b4e87d7c384e43a337e9a05eb7132b75954b58936864e9f7b9768585508d7cf8c2ecc770c57a9a59f68d54fd0eca4dbef9c5fa093ee45af7a5b41dba3ccdeb3462fd0c8be931b86812d8653fbdfbedab1df8b4be13036c5242d9fcfc107a31df4d7e1e965a78fb6db8f17b4f60b845fa0b6526451fabd7301a536c544ec12bc4b2822d8de931dd2def964f2ba3821ccadf16745fde501b89b53b8c8798c524fb80ef5e0ebf166f9df33b8107529c0f35cdfd484b0c2c34bb0b8bdc8dec00d7b69919f26ffbf9bbcf2ba5342327ff9e7f1e14567cddefdce051a05b3accc9a4707648f62070b49887d43e482936313a7d9dd3006a71f38121c24389ae79023d80a0ee046c8bed1a2920ab028f853386baf7e362671cf6650d9a0da2736e8bfa952461a13baab30d151f8e17bea7491dcdddfff0d7eefbac3', CAST(0x0000A6D800B42274 AS DateTime))
SET IDENTITY_INSERT [dbo].[audit_data] OFF
SET IDENTITY_INSERT [dbo].[audit_entry] ON 

INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1364, CAST(0x0000A6D800B3F4C0 AS DateTime), 0, 1.20525, N'::1', N'GET', 0, N'site/index', 5829272)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1365, CAST(0x0000A6D800B3F718 AS DateTime), 0, 1.28251, N'::1', N'GET', 0, N'user/security/login', 7430840)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1366, CAST(0x0000A6D800B3FE20 AS DateTime), 1, 1.58664, N'::1', N'POST', 0, N'user/security/login', 6261552)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1367, CAST(0x0000A6D800B3FF4C AS DateTime), 1, 1.2964, N'::1', N'GET', 0, N'site/index', 6912416)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1368, CAST(0x0000A6D800B40780 AS DateTime), 1, 1.40572, N'::1', N'GET', 0, N'user/admin/index', 9602168)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1369, CAST(0x0000A6D800B40C30 AS DateTime), 1, 1.40862, N'::1', N'GET', 0, N'audit/entry/index', 9932272)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1370, CAST(0x0000A6D800B41464 AS DateTime), 1, 1.31426, N'::1', N'GET', 0, N'audit/trail/index', 8090904)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1371, CAST(0x0000A6D800B41C98 AS DateTime), 1, 1.31484, N'::1', N'GET', 0, N'user/settings/account', 7665704)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1372, CAST(0x0000A6D800B42148 AS DateTime), 1, 1.23873, N'::1', N'POST', 0, N'site/logout', 5947736)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1373, CAST(0x0000A6D800B42274 AS DateTime), 0, 1.20507, N'::1', N'GET', 0, N'site/index', 5829264)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1374, CAST(0x0000A6D800B424CC AS DateTime), 0, 1.28452, N'::1', N'GET', 0, N'user/security/login', 7430840)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1375, CAST(0x0000A6D800B45D0C AS DateTime), 0, 1.15156, N'::1', N'GET', 0, N'site/index', 5829272)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1376, CAST(0x0000A6D800B45E38 AS DateTime), 0, 1.26854, N'::1', N'GET', 0, N'user/security/login', 7430904)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1377, CAST(0x0000A6D800C6456C AS DateTime), 0, 0.98417806625366, N'::1', N'GET', 0, N'user/security/login', 7454680)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1378, CAST(0x0000A6D800C66510 AS DateTime), 0, 0.34819197654724, N'::1', N'POST', 0, N'user/security/login', 7513464)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1379, CAST(0x0000A6D800C669C0 AS DateTime), 0, 0.14592909812927, N'::1', N'POST', 0, N'user/security/login', 7513368)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1380, CAST(0x0000A6D800C66C18 AS DateTime), 0, 0.15200805664062, N'::1', N'POST', 0, N'user/security/login', 7513368)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1381, CAST(0x0000A6D800C67578 AS DateTime), 1, 0.45884299278259, N'::1', N'POST', 0, N'user/security/login', 6297912)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1382, CAST(0x0000A6D800C67578 AS DateTime), 1, 0.13022398948669, N'::1', N'GET', 0, N'site/index', 6948336)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1383, CAST(0x0000A6D800C677D0 AS DateTime), 1, 0.21463084220886, N'::1', N'GET', 0, N'user/admin/index', 9638312)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1384, CAST(0x0000A6D800C67C80 AS DateTime), 1, 0.59534907341003, N'::1', N'GET', 0, N'user/admin/update', 7691648)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1385, CAST(0x0000A6D800C68004 AS DateTime), 1, NULL, N'::1', N'GET', 0, N'user/admin/info', NULL)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1386, CAST(0x0000A6D800C68A90 AS DateTime), 1, 0.14793705940247, N'::1', N'GET', 0, N'user/admin/update', 7691624)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1387, CAST(0x0000A6D800C68CE8 AS DateTime), 1, 0.85461902618408, N'::1', N'GET', 0, N'user/admin/assignments', 7855512)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1388, CAST(0x0000A6D800C69198 AS DateTime), 1, 0.38758897781372, N'::1', N'GET', 0, N'audit/entry/index', 10549216)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1389, CAST(0x0000A6D800C6A908 AS DateTime), 1, 0.17611694335938, N'::1', N'GET', 0, N'audit/trail/index', 8138336)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1390, CAST(0x0000A6D800C6C1A4 AS DateTime), 1, 0.12326192855835, N'::1', N'GET', 0, N'site/index', 6948560)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1391, CAST(0x0000A6D800C6C654 AS DateTime), 1, 0.16144990921021, N'::1', N'GET', 0, N'audit/trail/index', 8138216)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1392, CAST(0x0000A6D800C6E148 AS DateTime), 1, 0.74296903610229, N'::1', N'GET', 0, N'audit/entry/index', 10542592)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1393, CAST(0x0000A6D800C6EBD4 AS DateTime), 1, 0.17493796348572, N'::1', N'GET', 0, N'audit/trail/index', 8138336)
INSERT [dbo].[audit_entry] ([id], [created], [user_id], [duration], [ip], [request_method], [ajax], [route], [memory_max]) VALUES (1394, CAST(0x0000A6D800C6F408 AS DateTime), 1, 0.12576794624329, N'::1', N'GET', 0, N'site/index', 6950944)
SET IDENTITY_INSERT [dbo].[audit_entry] OFF
SET IDENTITY_INSERT [dbo].[audit_trail] ON 

INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (1, 296, 2, N'UPDATE', N'app\\models\\Post', N'1', N'post', N'EXAMEN FINAl', N'EXAMEN FINAL', CAST(0x0000A58800BA00CC AS DateTime))
INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (2, 333, 2, N'CREATE', N'app\\models\\Post', N'2', N'id', N'', N'2', CAST(0x0000A58800D68C9C AS DateTime))
INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (3, 333, 2, N'CREATE', N'app\\models\\Post', N'2', N'post', N'', N'NADA', CAST(0x0000A58800D68C9C AS DateTime))
INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (4, 333, 2, N'CREATE', N'app\\models\\Post', N'2', N'usuario', N'', N'1', CAST(0x0000A58800D68C9C AS DateTime))
INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (5, 333, 2, N'CREATE', N'app\\models\\Post', N'2', N'fecha', N'', N'2016-09-01', CAST(0x0000A58800D68C9C AS DateTime))
INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (6, 375, 2, N'DELETE', N'app\\models\\Post', N'2', NULL, NULL, NULL, CAST(0x0000A58800D72AD0 AS DateTime))
SET IDENTITY_INSERT [dbo].[audit_trail] OFF
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'admin', N'1', 1472570397)
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'user', N'2', 1472774935)
INSERT [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'admin', 1, N'Aministra', NULL, NULL, 1472566840, 1472566840)
INSERT [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'user', 1, N'Usuario de actividades', NULL, NULL, 1472774913, 1472774913)
SET IDENTITY_INSERT [dbo].[logs] ON 

INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso]) VALUES (1, N'test', N'::1', N'0')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso]) VALUES (2, N'test', N'::1', N'0')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso]) VALUES (3, N'superadmin', N'::1', N'0')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso]) VALUES (4, N'das', N'::1', N'0')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso]) VALUES (5, N'asdasd', N'::1', N'0')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso]) VALUES (6, N'asdasd', N'::1', N'0')
SET IDENTITY_INSERT [dbo].[logs] OFF
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm000000_000000_base', 1472563998)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140209_132017_init', 1472564003)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140403_174025_create_account_table', 1472564005)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140504_113157_update_tables', 1472564011)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140504_130429_create_token_table', 1472564014)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140506_102106_rbac_init', 1472564521)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140830_171933_fix_ip_field', 1472564015)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140830_172703_change_account_table_name', 1472564016)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm141222_110026_update_ip_field', 1472564016)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm141222_135246_alter_username_length', 1472564017)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150614_103145_update_social_account_table', 1472564020)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150623_212711_fix_username_notnull', 1472564021)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000001_create_audit_entry', 1472702894)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000002_create_audit_data', 1472702895)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000003_create_audit_error', 1472702896)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000004_create_audit_trail', 1472702898)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000005_create_audit_javascript', 1472702900)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000006_create_audit_mail', 1472702901)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150714_000001_alter_audit_data', 1472702902)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm151218_234654_add_timezone_to_profile', 1472564022)
INSERT [dbo].[profile] ([user_id], [name], [public_email], [gravatar_email], [gravatar_id], [location], [website], [bio], [timezone]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[profile] ([user_id], [name], [public_email], [gravatar_email], [gravatar_id], [location], [website], [bio], [timezone]) VALUES (2, N'', N'', N'', N'd41d8cd98f00b204e9800998ecf8427e', N'', N'', N'', N'America/Guayaquil')
INSERT [dbo].[token] ([user_id], [code], [created_at], [type]) VALUES (1, N'_Vww4DGJIMM-5emZOhFvVeurnUb3C5WR', 1472564610, 0)
INSERT [dbo].[token] ([user_id], [code], [created_at], [type]) VALUES (2, N'eB8RHzL_ziHUzkvGnJDR56ACl0TEWaHK', 1472566993, 2)
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (1, N'superadmin', N'superadmin@gmail.com', N'$2y$12$rQ3kv0tMJm9oyBJB18/pJOJ54PTqSTdYEP/ZsZ0I16VBmEOUbhugC', N'3RKcjLUns0L5O-yfxik3XzT8LK3HLwZ4', 1472566181, NULL, NULL, N'::1', 1472564609, 1472564609, 0, 10)
INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (2, N'marc', N'user1@correo.com', N'$2y$12$q.r0Li.eNoh2kBSz8EdoWuE4ndQXPjMAgqOV5NIZ.RwZ.RUpY2UE2', N'0Addadl8ti25Xdc_6BkMVfgsZliKpEzX', 1472566292, N'marc1@correo.com', NULL, N'::1', 1472566292, 1472566994, 0, 0)
SET IDENTITY_INSERT [dbo].[user] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [account_unique]    Script Date: 12/10/2016 12:05:02 ******/
ALTER TABLE [dbo].[social_account] ADD  CONSTRAINT [account_unique] UNIQUE NONCLUSTERED 
(
	[provider] ASC,
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [account_unique_code]    Script Date: 12/10/2016 12:05:02 ******/
ALTER TABLE [dbo].[social_account] ADD  CONSTRAINT [account_unique_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [token_unique]    Script Date: 12/10/2016 12:05:02 ******/
ALTER TABLE [dbo].[token] ADD  CONSTRAINT [token_unique] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[code] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [user_unique_email]    Script Date: 12/10/2016 12:05:02 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [user_unique_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [user_unique_username]    Script Date: 12/10/2016 12:05:02 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [user_unique_username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[audit_data] ADD  DEFAULT (NULL) FOR [created]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [duration]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [ip]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [request_method]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT ('0') FOR [ajax]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [route]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [memory_max]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT (NULL) FOR [file]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT (NULL) FOR [line]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT (NULL) FOR [hash]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT ('0') FOR [emailed]
GO
ALTER TABLE [dbo].[audit_javascript] ADD  DEFAULT (NULL) FOR [origin]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [from]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [to]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [reply]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [cc]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [bcc]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[audit_trail] ADD  DEFAULT (NULL) FOR [entry_id]
GO
ALTER TABLE [dbo].[audit_trail] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[audit_trail] ADD  DEFAULT (NULL) FOR [field]
GO
ALTER TABLE [dbo].[auth_assignment] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[auth_item] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[auth_item] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[auth_rule] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[auth_rule] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[migration] ADD  DEFAULT (NULL) FOR [apply_time]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [public_email]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [gravatar_email]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [gravatar_id]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [location]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [website]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [timezone]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [confirmed_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [unconfirmed_email]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [blocked_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [registration_ip]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0') FOR [flags]
GO
ALTER TABLE [dbo].[audit_data]  WITH CHECK ADD  CONSTRAINT [fk_audit_data_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_data] CHECK CONSTRAINT [fk_audit_data_entry_id]
GO
ALTER TABLE [dbo].[audit_error]  WITH CHECK ADD  CONSTRAINT [fk_audit_error_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_error] CHECK CONSTRAINT [fk_audit_error_entry_id]
GO
ALTER TABLE [dbo].[audit_javascript]  WITH CHECK ADD  CONSTRAINT [fk_audit_javascript_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_javascript] CHECK CONSTRAINT [fk_audit_javascript_entry_id]
GO
ALTER TABLE [dbo].[audit_mail]  WITH CHECK ADD  CONSTRAINT [fk_audit_mail_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_mail] CHECK CONSTRAINT [fk_audit_mail_entry_id]
GO
