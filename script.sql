USE [fashion]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](500) NULL,
	[Photo] [nvarchar](500) NULL,
	[Created_At] [date] NULL,
	[Admin_Id] [int] NULL,
	[Link] [nvarchar](100) NULL,
	[Detail] [nvarchar](500) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NULL,
	[Quantity_Cart] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Cart_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[Photo] [nvarchar](500) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[Created_At] [datetime] NULL,
	[Update_At] [datetime] NULL,
	[Content] [nvarchar](500) NULL,
	[User_Id] [int] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[NoiDung] [nvarchar](200) NULL,
	[Image] [nvarchar](50) NULL,
	[Star] [int] NULL,
	[Day] [date] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Fullname] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Payment] [nvarchar](200) NULL,
	[Phonenumber] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[TotalMoney] [int] NULL,
	[Status] [nvarchar](100) NULL,
	[Note] [nvarchar](500) NULL,
	[Created_At] [date] NULL,
	[Updated_At] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiSD]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiSD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Created_At] [date] NULL,
	[Role_Id] [int] NULL,
	[FullName] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Number] [int] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[Photo] [nvarchar](500) NULL,
	[Updated_At] [date] NULL,
	[Category_Id] [int] NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Quantity] [int] NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductGalery]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGalery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](100) NULL,
	[Product_Id] [int] NOT NULL,
 CONSTRAINT [PK_ProductGalery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[programPromotion]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programPromotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenCTKM] [nvarchar](100) NULL,
	[rate] [int] NULL,
	[Due] [nvarchar](50) NULL,
 CONSTRAINT [PK_programPromotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url_Img] [nchar](100) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Id], [Title], [Content], [Photo], [Created_At], [Admin_Id], [Link], [Detail]) VALUES (1, N'Xu hướng thời trang Mùa Đông 2022 dành cho mọi lứa tuổi', N'Quần ống loe, ống thụng, áo choàng dày, các sắc độ của màu tím... là những xu hướng được nhiều nhà mốt lăng-xê trên sàn diễn thu đông năm 2022', N'blog1.jpg', CAST(N'2022-10-13' AS Date), 1, N'BlogDetail', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Photo], [Created_At], [Admin_Id], [Link], [Detail]) VALUES (2, N'Blazer – Món đồ cá tính biến tấu mọi phong cách thời trang', N'Việc tặng quà sinh nhật cho nam tưởng dễ mà lại khó không tưởng. Dù được mệnh danh là phái dễ tính nhưng để mua quà sinh nhật cho nam đúng ý trở thành thử thách của tất cả chị em phụ nữ', N'blog2.jpg', CAST(N'2022-10-13' AS Date), 2, N'BlogDetail1', NULL)
INSERT [dbo].[Blog] ([Id], [Title], [Content], [Photo], [Created_At], [Admin_Id], [Link], [Detail]) VALUES (3, N'Thời trang là gì? Phong cách thời trang ẤN TƯỢNG hợp xu hướng', N'Xu hướng thời trang hot mùa Thu Đông 2022: Regencycore · Xuyên thấu · Áo choàng tắm ấm áp · Drop Waist: Đầm hạ eo thấp · Cut out hở lườn · Váy áo', N'blog3.jpg', CAST(N'2022-10-13' AS Date), 3, N'BlogDetail2', NULL)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name]) VALUES (1, N'Zara')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (2, N'Herschel')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (3, N'Trench Coat ')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (4, N'Prada')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (5, N'Chanel')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (6, N'D&G')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (7, N'Calvin Klein')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (8, N'ZOFAL')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [Product_Id], [Quantity_Cart], [UserId]) VALUES (91, 10, 2, 7)
INSERT [dbo].[Cart] ([id], [Product_Id], [Quantity_Cart], [UserId]) VALUES (92, 10, 1, 2)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Description], [Photo]) VALUES (1, N'Áo thun - Áo polo', N'Xu hướng mới', N'1.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Description], [Photo]) VALUES (2, N'Đầm', N'Xu hướng mới', N'2.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Description], [Photo]) VALUES (3, N'Quần', N'Xuân-Hè 2022', N'3.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Description], [Photo]) VALUES (4, N'Set bộ', N'Xuân-Hè 2022', N'4.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Description], [Photo]) VALUES (5, N'Phụ kiện', N'Xuân-Hè 2022', N'5.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (55, N'Hỗ trợ về vấn đề đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi cần hỗ trợ về vấn đề đặt hàng, tạo sao đơn hàng của tôi đã vận chuyển sau 7 ngày vẫn chưa nhận được', 8)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (56, N'Hỗ trợ về sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi đã mua áo online và mặc chật, tôi muốn đổi lên size lớn hơn. Áo vẫn còn tem mác đầy đủ.', 8)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (57, N'Hỗ trợ về ứng tuyển nhân viên', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Qua bài đăng tuyển nhân viên của shop, tôi muốn ứng tuyển khi đã đủ điều kiện. Tôi nên làm gì tiếp theo', 10)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (58, N'Hỗ trợ về sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi đặt áo màu đen nhưng giao lại là màu xanh. Tôi muốn đổi hàng', 12)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (59, N'Hỗ trợ về sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Shop bán hàng thực sự rất tuyệt, tôi sẽ ủng hộ trong những lần tiếp theo.', 15)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (60, N'Hỗ trợ về vấn đề đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi đã sử sụng một số mã khuyến mãi cho sản phẩm. Liệu tôi có vi phạm chính sách gì không', 17)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (61, N'Hỗ trợ vấn đề tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tài khoản của tôi mới được tạo, tôi cần được hướng dẫn về việc xác nhận số điện thoại và các thông tin cá nhân', 16)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (62, N'Hỗ trợ vấn đề tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tài khoản của tôi đã bị khóa. Tôi cần liên hệ để mở lại.', 14)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (63, N'Hỡ trợ vấn đề thanh toán', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi chưa liên kết ngân hàng với tài khoản, gặp môt số vấn đề nên muốn gặp trực tiếp nhân viên. Tôi cần một cuộc hẹn.', 12)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (64, N'Hỗ trợ vấn đề đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi đã sử sụng một số mã khuyến mãi cho sản phẩm. Liệu tôi có vi phạm chính sách gì không', 14)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (65, N'Hỗ trợ về bảo mật tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi muốn bảo mật tài khoản của mình, tôi nên làm gì?', 13)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (66, N'Hồ trợ về hoàn trả hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi muốn hoàn trả hàng, liệu tôi có thể khi vẫn còn nguyên tem mác?', 13)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (67, N'Hỗ trợ về tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tài khoản của tôi đã bị khóa, tôi cần làm gì để mở lại?', 17)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (68, N'Hồ trợ về sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Chiếc túi Herschel liệu bao lâu mới nhập nguồn hàng mới?', 11)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (69, N'Hỗ trợ về thanh toán', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi muốn thanh toán bằng tiền mặt, liệu có chậm hơn so với thanh toán bằng thẻ?', 15)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (70, N'Hỗ trợ về tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi muốn đăng ký thêm tài khoản nhưng chỉ có 1 email, tôi nên làm gì?', 16)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (71, N'Hồ trợ về sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi muốn tư vấn thêm về chất liệu của kính Elly 800000vnđ', 16)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (72, N'Hồ trợ về đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi cần hỗ trợ về vấn đề đặt hàng, tạo sao đơn hàng của tôi đã vận chuyển sau 14 ngày vẫn chưa nhận được', 12)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (73, N'Hồ trợ về đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Hàng order không có sẵn thì sau bao lâu sẽ nhận được hàng?', 8)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (74, N'Hỗ trợ về thanh toán', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Đơn hàng chưa thanh toán có được hủy không? Hàng có chuyển về shop hay tôi phải chịu trách nhiệm?', 13)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (75, N'Hồ trợ về tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tài khoản của tôi có dấu hiệu bị xâm phạm bởi người ngoài, tôi nên làm gì để bảo mật tài khoản?', 11)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (76, N'Hỗ trợ vấn đề đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi đã sử sụng một số mã khuyến mãi cho sản phẩm. Tôi có thể dùng tối đa bao nhiêu mã giảm giá?', 20)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (77, N'Hỗ trợ về vấn đề sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Sản phẩm của tôi trong thời gian bảo hành đã có một số lỗi, tôi cần làm gì để liên hệ sửa chữa?', 21)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (78, N'Hồ trợ về đặt hàng', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Hàng order không có sẵn thì sau bao lâu sẽ nhận được hàng? Liệu tôi có nhận được áo trước mùa đông không?', 17)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (79, N'Hỗ trợ vấn đề tài khoản', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Tôi không nhớ mật khẩu tài khoản, liệu tôi nên làm gì?', 18)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (80, N'Hỗ trợ về ứng tuyển nhân viên', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Qua bài đăng tuyển nhân viên của shop, tôi muốn ứng tuyển khi đã đủ điều kiện. Tôi nên làm gì tiếp theo', 21)
INSERT [dbo].[Contact] ([Id], [Subject], [Created_At], [Update_At], [Content], [User_Id]) VALUES (81, N'Hỗ trợ về sản phẩm', CAST(N'2022-10-13T00:00:00.000' AS DateTime), NULL, N'Shop bán hàng thực sự rất đẹp và hoàn hảo, tôi sẽ ủng hộ trong những lần tiếp theo. Chúc may mắn!!', 20)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (4, 1, 2, N'xin chào', N'img.jpg', 5, CAST(N'2022-02-02' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (9, 5, 1, N'xìn chào tôi là bạn', N'abc.jpg', 5, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (10, 5, 1, N'xìn chào tôi là bạn oko you', N'abc.jpg', 5, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (12, 5, 1, N'xìn chào tôi là bạn oko you', N'abc.jpg', 5, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (16, 5, 1, N'xìn chào tôi là bạn oko you', N'abc.jpg', 5, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (18, 5, 1, N'xìn chào tôi là bạn oko you', N'abc.jpg', 5, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (19, 5, 1, N'xìn chào tôi là bạn oko you', N'abc.jpg', 5, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (27, 2, 16, N'Sản phẩm như cứt', NULL, 5, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (28, 2, 16, N'Chất lượng sản phẩm tuyệt vời', NULL, 5, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (29, 2, 16, N'Chất lượng sản phẩm Qúa là OK', NULL, 5, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (30, 1, 8, N'Chất lượng sản phẩm trên cả tuyệt vời, dùng thcsh lắm, đi lại dễ dàng, mát mẻ , thấm mồ hôi, đáng đồng tiền bát gạon ghê', NULL, 5, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (31, 2, 8, N'Sản phẩm dùng rất ổn áp', NULL, 4, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (33, 2, 8, N'Chất vải khó mỏng , đi mua hẹ hơi nóng', NULL, 2, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (35, 2, 10, N'đẹp', NULL, 0, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (36, 48, 10, N'rất tốt', NULL, 5, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (37, 48, 10, N'dhagd', NULL, 3, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (38, 73, 12, N'Sẩn phẩm quá tuyệt vời', NULL, 4, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (39, 73, 14, N'Sản phẩm dùng tạm ổn, vải khá khô và rát', NULL, 3, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (40, 73, 15, N'Có vẻ là ổn', NULL, 2, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[DanhGia] ([Id], [User_Id], [Product_Id], [NoiDung], [Image], [Star], [Day]) VALUES (41, 7, 10, N'Sản phầm chất lượng, Vải mát, mặc thích lắm', NULL, 5, CAST(N'2023-06-23' AS Date))
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (90, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 4449998, N'Đơn hàng được chuẩn bị xong', N'Gửi nhanh hộ bố cái shop ạ', CAST(N'2023-04-09' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (92, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 2599999, N'Đang tiến hành', N'Gửi nhanh hộ bố cái shop ạ', CAST(N'2023-04-23' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (93, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Đường 236, Hoàng Quốc Việt, Bắc Từ Liêm, Thành Phố Hồ Chí Minh', 4900000, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-05-12' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (94, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 1800000, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-05-22' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (95, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 3000000, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-05-22' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (97, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 4500000, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-06-12' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (100, 73, N'Romelu Lukaku', N'trinhcosi2xx@gmail.com', N'MBBank', N'0358261006', N'Xã Hưng Nhân Huyện Vĩnh Bảo Thành phố Hải Phòng', 12516, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-06-22' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (101, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 6490000, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-06-23' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (102, 2, N'Nguyễn Duy Hòa', N'Admin02@gmail.com', N'MBBank', N'8.43688e+008', N'Bình Phước', 600000, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-06-23' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (103, 7, N'Nguyễn Khánh Tùng', N'User01@gmail.com', N'MBBank', N'8.48383e+008', N'Tây Ninh', 1225032, N'Đang tiến hành', N'Gửi nhanh cái shop ạ', CAST(N'2023-06-23' AS Date), CAST(N'2023-04-09' AS Date))
INSERT [dbo].[DonHang] ([Id], [UserId], [Fullname], [Email], [Payment], [Phonenumber], [Address], [TotalMoney], [Status], [Note], [Created_At], [Updated_At]) VALUES (104, 7, N'Nguyễn Khánh Tùng', N'User01@gmail.com', N'MBBank', N'8.48383e+008', N'236 Hoàng Quốc Việt, Bắc Từ Liêm Hà Nội', 9790000, N'Đơn hàng được chuẩn bị xong', N'Gửi nhanh cái shop ạ', CAST(N'2023-06-23' AS Date), CAST(N'2023-04-09' AS Date))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (1, N'admin                                             ', N'admin                                             ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (2, N't                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (3, N't                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (4, N't                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (5, N'vip                                               ', N'123                                               ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (6, N't                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (7, N'k                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (8, N'k                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (9, N'k                                                 ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (10, N'krinh                                             ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (11, N'kriaanh                                           ', N'1                                                 ')
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (12, N'trinhno', NULL)
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (13, N'trinhno', NULL)
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (14, N'trinhno', NULL)
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (15, N'trinhno', NULL)
INSERT [dbo].[Login] ([id], [username], [pass]) VALUES (16, N'Enter', N'123')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiSD] ON 

INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (1, N'idontknow', N'123456', N'Admin01@gmail.com', N'8.43688e+008', N'Hà Nội', CAST(N'2022-10-13' AS Date), 1, N'Nguyễn Duy Trọng')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (2, N'Admin02', N'111111', N'Admin02@gmail.com', N'8.43688e+008', N'Bình Phước', CAST(N'2022-10-13' AS Date), 1, N'Nguyễn Duy Hòa')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (3, N'Admin03', N'738929', N'Admin03@gmail.com', N'8.17384e+008', N'Thanh Hóa', CAST(N'2022-10-13' AS Date), 1, N'Trương Thế Vinh')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (4, N'Admin04', N'393929', N'Admin04@gmail.com', N'8.47372e+009', N'Bắc Giang', CAST(N'2022-10-13' AS Date), 1, N'Nguyễn Văn Công')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (5, N'Admin05', N'888383', N'Admin05@gmail.com', N'8.48292e+008', N'Thái Bình', CAST(N'2022-10-13' AS Date), 1, N'Đỗ Quang Hạnh')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (6, N'Admin06', N'112233', N'Admin06@gmail.com', N'8.41229e+008', N'Quảng Ninh', CAST(N'2022-10-13' AS Date), 1, N'Hà Công Quốc Bảo')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (7, N'User01', N'789987', N'User01@gmail.com', N'8.48383e+008', N'Tây Ninh', CAST(N'2022-10-13' AS Date), 2, N'Nguyễn Khánh Tùng')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (8, N'User02', N'939929', N'User02@gmail.com', N'8.47289e+008', N'Hà Nội', CAST(N'2022-10-13' AS Date), 2, N'Đặng Tuấn Linh')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (9, N'User03', N'773882', N'User03@gmail.com', N'8.43839e+009', N'Quảng Ninh', CAST(N'2022-10-13' AS Date), 2, N'Lê Thế Cường')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (71, N'Tinhno', N'1', N'trinhcosi2xx@gmail.com', N'0358261006', N'Xã Khánh Xuân Huyện Bảo Lạc Tỉnh Cao Bằng', NULL, NULL, N'NGUYEN DUY TRINH')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (72, N'Tinhno01', N'1', N'trinhcosi2xx@gmail.com', N'0358261006', N'Xã Hố Quáng Phìn Huyện Đồng Văn Tỉnh Hà Giang', NULL, NULL, N'David Beckhom')
INSERT [dbo].[NguoiSD] ([Id], [Username], [Password], [Email], [PhoneNumber], [Address], [Created_At], [Role_Id], [FullName]) VALUES (73, N'SHA256', N'1', N'trinhcosi2xx@gmail.com', N'0358261006', N'Xã Hưng Nhân Huyện Vĩnh Bảo Thành phố Hải Phòng', NULL, 2, N'Romelu Lukaku')
SET IDENTITY_INSERT [dbo].[NguoiSD] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (48, 90, 24, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (49, 90, 8, 2)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (52, 92, 8, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (53, 92, 19, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (54, 93, 12, 3)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (55, 93, 16, 2)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (56, 93, 10, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (57, 94, 19, 3)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (58, 95, 10, 2)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (61, 97, 10, 3)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (64, 100, 8, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (65, 101, 37, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (66, 102, 76, 1)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (67, 103, 8, 2)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (68, 103, 76, 2)
INSERT [dbo].[Order_Detail] ([Id], [Order_Id], [Product_Id], [Number]) VALUES (69, 104, 38, 1)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (8, N'Áo thun xám cá tính', 12516, N'women_xam_f2bd0dacdb5247e9917b46_zzunbx.png', CAST(N'2022-10-12' AS Date), 1, N'Đỏ', N'XXL', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 10, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (10, N'Áo thun trắng dễ thương', 1500000, N'women_trang_ao_thun_nu_regular_f_rwch6n.png', CAST(N'2022-10-12' AS Date), 1, N'Nâu', N'M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (12, N'Áo thun xanh vài cutton', 800000, N'kid_xanh__4__06cb37c1f5f04d61932_icfisu', CAST(N'2022-10-12' AS Date), 1, N'Ghi', N'XL', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 30)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (14, N'Áo thun nhập khẩu từ Úc', 1000000, N'women_trang__9__83c2a2ae72ab43b3_i4s4ag', CAST(N'2022-10-12' AS Date), 1, N'Đen', N'M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (15, N'Áo phông hình xương rồng', 450000, N'women_den_ao_thun_nu_regular_fit_gjvfuh', CAST(N'2022-10-12' AS Date), 1, N'Trắng', N'L', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (16, N'Áo Croptop ngắn tay Chanel', 500000, N'women_reu__11__459f26b86b7946379_lrcfv7', CAST(N'2022-10-12' AS Date), 1, N'Đen', N'XL', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (19, N'Quần jean nữ D&G', 600000, N'women_be-dam_ao_thun_nu_relax_fi_f7txqa', CAST(N'2022-10-12' AS Date), 1, N'Xanh', N'L', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (21, N'Áo Croptop tay lửng', 400000, N'kid_xam__1__dfc45ed4406641a891cd_ohdqe6', CAST(N'2022-10-12' AS Date), 1, N'Đen', N'S', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (22, N'Áo thun CK', 250000, N'kid_trang__5__29ae02e28ff54db7b8_ms6vby', CAST(N'2022-10-12' AS Date), 1, N'Xám', N'M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 15)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (24, N'Áo Croptop tay dài', 450000, N'kid_nau-nhat__2__8bcb370320c7496_vyhs9l', CAST(N'2022-10-12' AS Date), 1, N'Trắng', N'L', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 15)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (25, N'Áo phông Culprit', 250000, N'kid_trang__3__7b38770ddfd449298f_zfuyst', CAST(N'2022-10-12' AS Date), 1, N'Xám', N'M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 15)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (27, N'Set Jumpsuit công sở', 2000000, N'kid_trang__5__c866e2130d9441b1a5_rkoldq', CAST(N'2022-10-12' AS Date), 1, N'Trắng', N'L', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 15)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (28, N'Áo thun tay lở', 279000, N'kid_trang__5__4cba9ff9eff64dc490_n3rlpd', CAST(N'2022-10-12' AS Date), 1, N'Trắng', N'S', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 15)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (29, N'Áo thun hồng lady', 300000, N'kid_hong__3__fe700f97c6954210a78_b5eszh', CAST(N'2022-10-12' AS Date), 1, N'Vàng', N'S', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 25, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (31, N'Đầm họa tiết rực rỡ', 2750000, N'20_1dd76646453d43f6bc90b69591bfa_dsyhhx', CAST(N'2022-10-12' AS Date), 2, N'Bạc', N'L - S -XL', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (32, N'Đầm cách điệu CaliFonia', 6900000, N'bia_web_4375c3357054465a9635b3e0_mt2sjf', CAST(N'2022-10-12' AS Date), 2, N'Bạch kim', N'43mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 30)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (33, N'Đầm sọc xanh caro mát mẻ', 2440000, N'5_f7f1d054a44c46a08909c4fd3f85d9_qq10f1.png', CAST(N'2022-10-12' AS Date), 2, N'Vàng ,Xanh', N'26mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 30)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (35, N'Đầm nâu sành điệu', 3500000, N'5_76e99b64123e417c9424e5164ebea9_o90gqc.png', CAST(N'2022-10-12' AS Date), 2, N'Bạc', N'34mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (37, N'Đầm vải mỏng du lịch mùa hè', 6490000, N'2_d9bf7e4196394b058b87c148eb25f3_rgnnhj.png', CAST(N'2022-10-12' AS Date), 2, N'Hồng', N'34mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (38, N'Đầm đen ôm dáng ', 9790000, N'2_cb4c8f1e1c354cfdb2ecf799221e59_wjetfk.png', CAST(N'2022-10-12' AS Date), 2, N'Trắng', N'41mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (40, N'Đầm hoa mai trắng linh tinh', 9200000, N'2_41ff4fbea8aa48fa97c257b269ae37_anf3vx.png', CAST(N'2022-10-12' AS Date), 2, N'Đen / Xanh', N'45mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 60)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (43, N'Đầm xanh ngắn tay', 3044000, N'1_46a5ec3e067d4ac0a882ebb6f0300a_raw2px.png', CAST(N'2022-10-12' AS Date), 2, N'Đen / Xanh', N'32mm', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 5, 60)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (45, N'Đầm dài tay có tuổi', 500000, N'1_300e07afacb148e69c769e79e9aed8_dkwgen.png', CAST(N'2022-10-13' AS Date), 2, N'Xanh / Tím', N'L', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 12)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (46, N'Quần Tây ngắn dịu dàng', 600000, N'2_f03efd6c68c74ce89e8aab10c7fe10_fgonl3.png', CAST(N'2022-10-13' AS Date), 3, N'Xanh / Lam', N'M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (48, N'Quần ngắn hồng nữ tính', 800000, N'2_efb4eba5e041432ea2c0fc09ae646c_rj276u.png', CAST(N'2022-10-13' AS Date), 3, N'Xanh / Cam', N'S', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (51, N'Quần dài xám cách điệu', 700000, N'4_2d50f6961a734bd983596e58a74a84_erh7bg.png', CAST(N'2022-10-13' AS Date), 3, N'Xanh dương', N'M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (52, N'Quần ống xuông kaki', 700000, N'4_6ce0eddfb56d4a72a92a8f5a6d18d8_1_cs9lkr.png', CAST(N'2022-10-13' AS Date), 3, N'Xanh dương', N'L', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (53, N'Quần Đen thanh lịch', 1100000, N'3_e855985d842340f2bfff35a083ae25_eie0cl.png', CAST(N'2022-10-13' AS Date), 3, N'Đen / Đỏ', N'S', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (58, N'Quần Jean rách gối', 850000, N'3_7e67f3a83efb4470bfacdb14c861ea_blsysh.png', CAST(N'2022-10-13' AS Date), 3, N'Trắng / Nâu', N'XL', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (59, N'Quần Tây phong cách châu Á', 900000, N'2_825a7b3bd1b6452c9bfca1a0f268cd_veaxgw.png', CAST(N'2022-10-13' AS Date), 3, N'Trắng / Hồng', N'XL -L -M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (62, N'Quần vải lưới rách rưới', 750000, N'2_03a5f8910ce84e30a278961dd62ff6_xpu0sq.png', CAST(N'2022-10-13' AS Date), 3, N'Trắng / Đen', N'M- L -M', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (65, N'Quần cam tan tành', 1200000, N'9_f1b74686a9074670b3a8fb0bac89cb_pdyuep.png', CAST(N'2022-10-13' AS Date), 3, N'Xanh / Trắng', N'M-L-XX', N'Áo Thun Nữ Regular Fit FastX In “You Ride You Fight” WTS 2273. Ý tưởng thiết kế: “Được lấy ý tưởng từ cuộc đua với Dante Reyes của Dominic Toretto để bảo vệ gia đình mà mình yêu thương. Trước đây đua xe để được dành được sự tôn trọng, còn bây giờ Dom đua để ngăn chặn kẻ xấu tàn sát gia đình của mình, đua để bảo vệ những người mình coi là gia đình”. Chất liệu 100% cotton dệt mịn cao cấp, thoáng mát. Kĩ thuật in tram dẻo mỏng nhẹ, không hầm bí dù in mảng lớn trước ngực.
Chất liệu: Thun Single 2 chiều, thành phần 100% Cotton, trọng lượng 210GSM
Form: Regular
Màu sắc: Đen, Be Đậm, Xám
Sản xuất: Việt Nam', 20, 50)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (69, N'Bộ chơi hè', 1100000, N'7_fe26067ed7a54927976898652c851c_cqzonc.png', CAST(N'2022-10-13' AS Date), 4, N'Trắng', N'XL-L-M', NULL, 10, 80)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (70, N'Bộ áo xanh thành đạt', 1400000, N'9_013d0247506548129692acab16e857_ueujek.png', CAST(N'2022-10-13' AS Date), 4, N'Đen', N'S-L-XL', NULL, 10, 90)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (71, N'Bộ áo tây balo', 1300000, N'6_fa1b8bab1412415f8d45e05d88dc58_r9ax79.png', CAST(N'2022-10-13' AS Date), 4, N'Hồng', N'L-XL', NULL, 10, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (72, N'Bộ đồ ngủ gợi cảm', 1600000, N'4_2ec16daba65d4f90b220cb5a9bea30_p6lace.png', CAST(N'2022-10-13' AS Date), 4, N'Hồng', NULL, NULL, 10, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (73, N'Bộ đồ đi biển kẻ dừa', 1000000, N'3_a6078d87d967401e83c938c6480d9b_htmvl9.png', CAST(N'2022-10-13' AS Date), 4, N'Nâu', NULL, NULL, 10, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (74, N'Bộ vay holitech nique', 1750000, N'2_ff19cd8bc77c4da9ae87d7d12870df_yszqcz.png', CAST(N'2022-10-13' AS Date), 4, N'Trắng', NULL, NULL, 10, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (75, N'Bộ áo ngắn tay thanh lịch', 1800000, N'2_901a15e0a2f347c996079d8dea30a8_ut6zsk.png', CAST(N'2022-10-13' AS Date), 4, N'Xanh', NULL, NULL, 10, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (76, N'Bộ áo đi làm, đi chơi', 600000, N'2_14fc4472c66344859d14f28e2e2fbf_brk6sa.png', CAST(N'2022-10-13' AS Date), 4, N'Đen', NULL, NULL, 10, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (77, N'Bộ áo quần vàng ánh nắng chói', 500000, N'2_5f698519b1784a04a508372121a058_psyagd.png', CAST(N'2022-10-13' AS Date), 4, N'Trắng', NULL, NULL, 10, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (78, N'Quần Jean Rách tơi tả', 850000, N'women_xanh-nhat__1__cb0097541bd4_pmpase.png', CAST(N'2022-10-13' AS Date), 3, N'Trắng', NULL, NULL, 10, 30)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (79, N'Quần đùi Jean mài', 600000, N'women_xanh-nhat__1__e5cdb707d7a2_mrgyhz.png', CAST(N'2022-10-13' AS Date), 3, N'Vàng', NULL, NULL, 10, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (80, N'Quần Jean đen', 900000, N'women_xam__4__2fd5c693f8fd4150ad_hycfi1.png', CAST(N'2022-10-13' AS Date), 3, N'Đen', NULL, NULL, 10, 30)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (81, N'Bộ vet công sở', 1800000, N'19_97f78bc7907a42bc8243b674f3879_talxdu.png', CAST(N'2022-10-13' AS Date), 4, N'Nâu', NULL, NULL, 10, 40)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (82, N'Bộ đồ giả lập hoa hồng', 2000000, N'3_1f82ee17adee48b6a313bc74463d7a_bn1zli.png', CAST(N'2022-10-13' AS Date), 4, N'Đen', NULL, NULL, 10, 10)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (83, N'Bộ đồ ngủ cao cấp', 1000000, N'3_0768381f5f9b4d2fabd213b5ef71c0_pkklix.png', CAST(N'2022-10-13' AS Date), 4, N'Trắng', NULL, NULL, 10, 30)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (84, N'Bộ váy kaki xanh lè', 1200000, N'6_434327b4ae224ab18ef7fabeac3c59_byxvlt.png', CAST(N'2022-10-13' AS Date), 4, N'Trắng', NULL, NULL, 10, 20)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Photo], [Updated_At], [Category_Id], [Color], [Size], [Description], [Quantity], [discount]) VALUES (85, N'Bộ đồ ngủ tím gợi cảm', 1400000, N'2_69220acba3b844519dd6946461abe3_cmvqgh.png', CAST(N'2022-10-13' AS Date), 4, N'Đen', NULL, NULL, 10, 20)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductGalery] ON 

INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (1, N'women_xam_f2bd0dacdb5247e9917b46_zzunbx.png', 8)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (2, N'women_trang_ao_thun_nu_regular_f_rwch6n.png', 8)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (3, N'kid_xanh__4__06cb37c1f5f04d61932_icfisu', 8)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (4, N'women_trang__9__83c2a2ae72ab43b3_i4s4ag', 8)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (5, N'women_trang_ao_thun_nu_regular_f_rwch6n.png', 10)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (6, N'women_be-dam_ao_thun_nu_relax_fi_f7txqa', 10)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (7, N'kid_xam__1__dfc45ed4406641a891cd_ohdqe6', 10)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (8, N'kid_trang__5__29ae02e28ff54db7b8_ms6vby', 10)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (9, N'kid_xanh__4__06cb37c1f5f04d61932_icfisu', 12)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (10, N'kid_trang__5__c866e2130d9441b1a5_rkoldq', 12)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (11, N'women_trang__9__83c2a2ae72ab43b3_i4s4ag', 12)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (12, N'kid_trang__5__4cba9ff9eff64dc490_n3rlpd', 12)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (13, N'women_trang__9__83c2a2ae72ab43b3_i4s4ag', 14)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (14, N'kid_xanh__4__06cb37c1f5f04d61932_icfisu', 14)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (15, N'women_xam_f2bd0dacdb5247e9917b46_zzunbx.png', 14)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (16, N'kid_nau-nhat__2__8bcb370320c7496_vyhs9l', 14)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (17, N'women_den_ao_thun_nu_regular_fit_gjvfuh', 15)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (18, N'women_trang_ao_thun_nu_regular_f_rwch6n.png', 15)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (19, N'kid_xam__1__dfc45ed4406641a891cd_ohdqe6', 15)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (20, N'kid_trang__5__29ae02e28ff54db7b8_ms6vby', 15)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (21, N'women_reu__11__459f26b86b7946379_lrcfv7', 16)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (22, N'women_den_ao_thun_nu_regular_fit_gjvfuh', 16)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (23, N'women_trang__9__83c2a2ae72ab43b3_i4s4ag', 16)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (24, N'women_trang_ao_thun_nu_regular_f_rwch6n.png', 16)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (25, N'women_be-dam_ao_thun_nu_relax_fi_f7txqa', 19)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (26, N'kid_xam__1__dfc45ed4406641a891cd_ohdqe6', 19)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (27, N'kid_xanh__4__06cb37c1f5f04d61932_icfisu', 19)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (28, N'women_xam_f2bd0dacdb5247e9917b46_zzunbx.png', 19)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (29, N'20_1dd76646453d43f6bc90b69591bfa_dsyhhx', 31)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (30, N'bia_web_4375c3357054465a9635b3e0_mt2sjf', 31)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (31, N'5_76e99b64123e417c9424e5164ebea9_o90gqc.png', 31)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (32, N'2_d9bf7e4196394b058b87c148eb25f3_rgnnhj.png', 31)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (33, N'2_f03efd6c68c74ce89e8aab10c7fe10_fgonl3.png', 46)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (34, N'2_efb4eba5e041432ea2c0fc09ae646c_rj276u.png', 46)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (35, N'4_2d50f6961a734bd983596e58a74a84_erh7bg.png', 46)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (36, N'4_6ce0eddfb56d4a72a92a8f5a6d18d8_1_cs9lkr.png', 46)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (37, N'7_fe26067ed7a54927976898652c851c_cqzonc.png', 69)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (38, N'9_013d0247506548129692acab16e857_ueujek.png', 69)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (39, N'6_fa1b8bab1412415f8d45e05d88dc58_r9ax79.png', 69)
INSERT [dbo].[ProductGalery] ([Id], [Photo], [Product_Id]) VALUES (40, N'4_2ec16daba65d4f90b220cb5a9bea30_p6lace.png', 69)
SET IDENTITY_INSERT [dbo].[ProductGalery] OFF
GO
SET IDENTITY_INSERT [dbo].[programPromotion] ON 

INSERT [dbo].[programPromotion] ([Id], [TenCTKM], [rate], [Due]) VALUES (1, N'Mùa hè rực rỡ. Chào hè 2023 MTA shop giảm 10% giá trên mọi sản phẩm ', 50, NULL)
INSERT [dbo].[programPromotion] ([Id], [TenCTKM], [rate], [Due]) VALUES (2, N'Chào mừng ngày 30/4 -1/5. Siêu ưu đãi chỉ có tại MTA shop, giảm 13% giá trên mọi sản phẩm', 13, NULL)
SET IDENTITY_INSERT [dbo].[programPromotion] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([id], [url_Img]) VALUES (1, N'banner8.jpg                                                                                         ')
INSERT [dbo].[Slide] ([id], [url_Img]) VALUES (2, N'banner9.jpg                                                                                         ')
INSERT [dbo].[Slide] ([id], [url_Img]) VALUES (3, N'banner10.jpg                                                                                        ')
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_User] FOREIGN KEY([Admin_Id])
REFERENCES [dbo].[NguoiSD] ([Id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_User]
GO
ALTER TABLE [dbo].[NguoiSD]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[NguoiSD] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[DonHang] ([Id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductGalery]  WITH CHECK ADD  CONSTRAINT [FK_ProductGalery_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductGalery] CHECK CONSTRAINT [FK_ProductGalery_Product]
GO
/****** Object:  StoredProcedure [dbo].[AddCart]    Script Date: 6/23/2023 2:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddCart] (@masp int, @quantity int,@user_id int )
AS
BEGIN

DECLARE @countSP int
SELECT @countSP=COUNT(Product_Id) FROM Cart WHERE Product_Id=@masp and UserId=@user_id
IF(@countSP>0 )
BEGIN
UPDATE Cart Set Quantity_Cart=Quantity_Cart+1 Where Product_Id=@masp and UserId=@user_id
END
ELSE
BEGIN
INSERT Cart
VALUES (@masp,@quantity, @user_id)
END
END
GO
