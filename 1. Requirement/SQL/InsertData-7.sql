--INSERT DATA FARMHUB--

use FarmHub
go

Set xact_abort on
go 

begin tran	
	
		--Status--
	
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Chuyển Tiền') 
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Nhận Tiền')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Chưa Nhận Được Tiền ')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Gia Hạn Giao Tiền')

	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Sẵn Sàng Giao Hàng')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Gia Hạn Giao Hàng')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Chưa Nhận Được Hàng ')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Nhận Được Hàng ')
	
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Mới Thiết Lập')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Bên Mua Đặt Lại')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Bên Bán Đặt Lại')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Đồng Ý')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Từ Chối')

	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Bên Mua Hủy ')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Bên Bán Hủy ')


		--Offers--
	


	--USER_KIND--
	Insert into USER_KIND (Name_UserKind) values ('Farmer')
	Insert into USER_KIND (Name_UserKind) values ('Trader')
	Insert into USER_KIND (Name_UserKind) values ('Admin')
	Insert into USER_KIND (Name_UserKind) values ('Mod')

	--USER_AUTHENTICATION--
	Insert into USER_AUTHENTICATION (Id_UserKind,Name_User,Password_User,Created_Date,Status_User) values (1,'farmer1','202cb962ac59075b964b07152d234b70',1/1/2019,1)
	Insert into USER_AUTHENTICATION (Id_UserKind,Name_User,Password_User,Created_Date,Status_User) values (1,'farmer2','202cb962ac59075b964b07152d234b70',1/1/2019,1)
	Insert into USER_AUTHENTICATION (Id_UserKind,Name_User,Password_User,Created_Date,Status_User) values (1,'farmer3','202cb962ac59075b964b07152d234b70',1/1/2019,1)

	Insert into USER_AUTHENTICATION (Id_UserKind,Name_User,Password_User,Created_Date,Status_User) values (2,'trader1','202cb962ac59075b964b07152d234b70',1/1/2019,1)
	Insert into USER_AUTHENTICATION (Id_UserKind,Name_User,Password_User,Created_Date,Status_User) values (2,'trader2','202cb962ac59075b964b07152d234b70',1/1/2019,1)
	Insert into USER_AUTHENTICATION (Id_UserKind,Name_User,Password_User,Created_Date,Status_User) values (2,'trader3','202cb962ac59075b964b07152d234b70',1/1/2019,1)

	--FARMER--
	Insert into FARMER (Id_User,Name_Farmer,Birthday_Farmer,Gender_Farmer,Address_Farmer,Telephone_Farmer,Email_Farmer,Is_Deleted) 
	values (1,'Farmer A',1/1/2019,1,'Address A',0817777777,null,0)
	Insert into FARMER (Id_User,Name_Farmer,Birthday_Farmer,Gender_Farmer,Address_Farmer,Telephone_Farmer,Email_Farmer,Is_Deleted) 
	values (2,'Farmer B',1/1/2019,1,'Address B',0817777777,null,0)
	Insert into FARMER (Id_User,Name_Farmer,Birthday_Farmer,Gender_Farmer,Address_Farmer,Telephone_Farmer,Email_Farmer,Is_Deleted) 
	values (3,'Farmer C',1/1/2019,1,'Address C',0817777777,null,0)

	--TRADER--
	Insert into TRADER (Id_User,Name_Trader,Birthday_Trader,Gender_Trader,Address_Trader,Telephone_Trader,Email_Trader,Is_Deleted) 
	values (4,'Trader A',1/1/2019,1,'Address A',0817999999,null,0)
	Insert into TRADER (Id_User,Name_Trader,Birthday_Trader,Gender_Trader,Address_Trader,Telephone_Trader,Email_Trader,Is_Deleted) 
	values (5,'Trader B',1/1/2019,1,'Address B',0817999999,null,0)
	Insert into TRADER (Id_User,Name_Trader,Birthday_Trader,Gender_Trader,Address_Trader,Telephone_Trader,Email_Trader,Is_Deleted) 
	values (6,'Trader C',1/1/2019,1,'Address C',0817999999,null,0)

	--MASS_UNIT--
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg,Is_Deleted) values (N'Tấn', 1000,0)
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg,Is_Deleted) values (N'Tạ', 100,0)
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg,Is_Deleted) values (N'Yến', 10,0)
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg,Is_Deleted) values (N'Kg', 1,0)

	--FARM--
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (1,'Farm A','Address A',N'Hà Lội',100,'Somethings',0)
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (1,'Farm AA','Address AA',N'ĐB Sông Cửu Long',100,'Somethings',0)
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (1,'Farm AAA','Address AAA',N'Đà Lạt',100,'Somethings',0)

	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (2,'Farm B','Address B',N'Hà Lội',100,'Somethings',0)
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (2,'Farm BB','Address BB',N'ĐB Sông Cửu Long',100,'Somethings',0)
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (2,'Farm BBB','Address BBB',N'Đà Lạt',100,'Somethings',0)

	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (3,'Farm C','Address C',N'Hà Lội',100,'Somethings',0)
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (3,'Farm CC','Address CC',N'ĐB Sông Cửu Long',100,'Somethings',0)
	Insert into FARM (Id_Farmer,Name_Farm,Address_Farm,City_Farm,Acreage,Description_Farm,Is_Deleted)
	values (3,'Farm CCC','Address CCC',N'Đà Lạt',100,'Somethings',0)

	--PRODUCT_KIND--
	Insert into PRODUCT_KIND(Name_ProductKind,Is_Deleted) values (N'Quả',0)
	Insert into PRODUCT_KIND(Name_ProductKind,Is_Deleted) values (N'Rau',0)
	Insert into PRODUCT_KIND(Name_ProductKind,Is_Deleted) values (N'Củ',0)
	Insert into PRODUCT_KIND(Name_ProductKind,Is_Deleted) values (N'Nấm',0)
	Insert into PRODUCT_KIND(Name_ProductKind,Is_Deleted) values (N'Hạt các loại',0)

	--PRODUCT--

	--Quả--
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Dưa Hấu','\Data\Image\Farmer\Base\watermelon.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Táo','\Data\Image\Farmer\Base\apple.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Sầu Riêng','\Data\Image\Farmer\Base\durian.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Cam','\Data\Image\Farmer\Base\orange.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Chuối','\Data\Image\Farmer\Base\banana.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Nho','\Data\Image\Farmer\Base\grapes.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (1,N'Dâu','\Data\Image\Farmer\Base\strawberry.jpeg',0)

	--Rau--
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (2,N'Đậu','\Data\Image\Farmer\Base\beans.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (2,N'Cải Bắp','\Data\Image\Farmer\Base\cabbage.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (2,N'Rau Muống','\Data\Image\Farmer\Base\water-spinach.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (2,N'Bông cải xanh','\Data\Image\Farmer\Base\broccoli.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (2,N'Cà Chua','\Data\Image\Farmer\Base\tomato.jpeg',0)

	--Củ--
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (3,N'Củ Khoai Tây','\Data\Image\Farmer\Base\potato.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (3,N'Củ Cải Đỏ','\Data\Image\Farmer\Base\radish.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (3,N'Củ Cà Rốt','\Data\Image\Farmer\Base\carrot.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (3,N'Củ Dền','\Data\Image\Farmer\Base\beetroot.jpeg',0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (3,N'Củ Su Hào','\Data\Image\Farmer\Base\kohlrabi-bulbs.jpeg',0)

	--Nấm--
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (4,N'Nấm Hương','\Data\Image\Farmer\Base\shiitake.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (4,N'Nấm Mộc Nhĩ','\Data\Image\Farmer\Base\fungus.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (4,N'Nấm Rơm','\Data\Image\Farmer\Base\mushoom.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (4,N'Nấm Linh Chi','\Data\Image\Farmer\Base\lingzhi-mushroom.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (4,N'Nấm Kim Châm','\Data\Image\Farmer\Base\enokitake.jpeg', 0)

	--Các Loại Hạt--
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (5,N'Hạt Hạnh Nhân','\Data\Image\Farmer\Base\almond.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (5,N'Hạt Điều','\Data\Image\Farmer\Base\cashew.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (5,N'Hạt Hồ Đào','\Data\Image\Farmer\Base\pecan.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (5,N'Hạt Dẻ','\Data\Image\Farmer\Base\chesnut.jpeg', 0)
	Insert into PRODUCT (Id_ProductKind,Name_Product,Image_Product,Is_Deleted) values (5,N'Hạt Đậu Phộng','\Data\Image\Farmer\Base\peanut.jpeg', 0)

	--SEED--

	--Farm A--
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed A','SDA001',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed B','SDB002',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed C','SDC003',0)

	--Farm B--
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed D','SDD004',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed E','SDE005',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed F','SDF006',0)

	--Farm C--
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed G','SDG007',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed H','SDH008',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed I','SDI009',0)

	--Farm AA--
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed AA','SDA001',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed BB','SDB002',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed CC','SDC003',0)

	--Farm B--
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed DD','SDD004',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed EE','SDE005',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed FF','SDF006',0)

	--Farm C--
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed GG','SDG007',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed HH','SDH008',0)
	Insert into SEED (Name_Seed,Code_Seed,Is_Deleted) values ('Seed II','SDI009',0)

	--PRODUCT_DETAIL--

	--Farm A--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (1,1,1,N'Đảo Mai An Tiêm','\Data\Image\Farmer\Base\watermelon1.jpeg',100,'Crop A',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (1,1,2,N'Đảo Mai An Tiêm','\Data\Image\Farmer\Base\watermelon2.jpeg',100,'Crop B',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (1,1,3,N'Đảo Mai An Tiêm','\Data\Image\Farmer\Base\watermelon3.jpeg',100,'Crop C',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)	

	--Farm AA--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (4,2,10,N'Hà Tĩnh','\Data\Image\Farmer\Base\orange1.jpeg',100,'Crop AA',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (4,2,11,N'Hà Tĩnh','\Data\Image\Farmer\Base\orange2.jpeg',100,'Crop BB',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (4,2,12,N'Hà Tĩnh','\Data\Image\Farmer\Base\orange3.jpeg',100,'Crop CC',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm B--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (2,4,4,N'Đà Lạt','\Data\Image\Farmer\Base\apple1.jpeg',200,'Crop DD',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (2,4,5,N'Đà Lạt','\Data\Image\Farmer\Base\apple2.jpeg',200,'Crop EE',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (2,4,6,N'Đà Lạt','\Data\Image\Farmer\Base\apple3.jpeg',200,'Crop FF',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm BB--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (5,5,13,N'Quảng Nam','\Data\Image\Farmer\Base\banana.jpeg',200,'Crop DD',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (5,5,14,N'Quảng Namt','\Data\Image\Farmer\Base\banana.jpeg',200,'Crop EE',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (5,5,15,N'Quảng Nam','\Data\Image\Farmer\Base\banana.jpeg',200,'Crop FF',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm C--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (3,7,7,N'Bình Phước','\Data\Image\Farmer\Base\durian1.jpeg',300,'Crop G',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (3,7,8,N'Bình Phước','\Data\Image\Farmer\Base\durian2.jpeg',300,'Crop H',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (3,7,9,N'Bình Phước','\Data\Image\Farmer\Base\durian3.jpeg',300,'Crop I',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm CC--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (6,8,16,N'Ninh Thuậnc','\Data\Image\Farmer\Base\grapes1.jpeg',300,'Crop G',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (6,8,17,N'Ninh Thuận','\Data\Image\Farmer\Base\grapes2.jpeg',300,'Crop H',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (6,8,18,N'Ninh Thuận','\Data\Image\Farmer\Base\grapes3.jpeg',300,'Crop I',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	
	--** SALE_OFFER **--

									--Farm A: ID = 1, Id_ProductDetail = 1, 2, 3 --	
	--Id_ProductDetail ID = 1, Year 2019
	Insert into SALE_OFFER values (1, 1, 1, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 1, Year 2018
	Insert into SALE_OFFER values (1, 1, 1, 1/1/2018, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 2/2/2018, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 3/3/2018, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 4/4/2018, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 5/5/2018, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 6/6/2018, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 7/7/2018, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 1, Year 2017
	Insert into SALE_OFFER values (1, 1, 1, 1/1/2017, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 2/2/2017, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 3/3/2017, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 4/4/2017, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 5/5/2017, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 6/6/2017, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 1, 7/7/2017, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 2, Year 2019
	Insert into SALE_OFFER values (1, 1, 2, 1/1/2019, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 2/2/2019, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 3/3/2019, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 4/4/2019, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 2, Year 2018
	Insert into SALE_OFFER values (1, 1, 2, 1/1/2018, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 2/2/2018, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 3/3/2018, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 4/4/2018, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 5/5/2018, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 6/6/2018, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 7/7/2018, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 2, Year 2017
	Insert into SALE_OFFER values (1, 1, 2, 1/1/2017, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 2/2/2017, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 3/3/2017, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 4/4/2017, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 5/5/2017, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 6/6/2017, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 2, 7/7/2017, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 3, Year 2019
	Insert into SALE_OFFER values (1, 1, 3, 1/1/2019, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 2/2/2019, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 3/3/2019, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 4/4/2019, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 3, Year 2018
	Insert into SALE_OFFER values (1, 1, 3, 1/1/2018, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 2/2/2018, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 3/3/2018, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 4/4/2018, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 5/5/2018, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 6/6/2018, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 7/7/2018, 100000, 700, 70, 0, 7, 7, 1, 0)
	--Id_ProductDetail ID = 3, Year 2018
	Insert into SALE_OFFER values (1, 1, 3, 1/1/2017, 100000, 100, 10, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 2/2/2017, 100000, 200, 20, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 3/3/2017, 100000, 300, 30, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 4/4/2017, 100000, 400, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 5/5/2017, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 6/6/2017, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (1, 1, 3, 7/7/2017, 100000, 700, 70, 0, 7, 7, 1, 0)

									--DUMB DATA--
	--ID_Farm = 2, ID_ProductDetail = 4--
	Insert into SALE_OFFER values (2, 1, 4, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 4, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 4, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 4, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 4, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 4, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 4, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--ID_Farm = 2, ID_ProductDetail = 5--
	Insert into SALE_OFFER values (2, 1, 5, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 5, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 5, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 5, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 5, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 5, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 5, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--ID_Farm = 2, ID_ProductDetail = 6--
	Insert into SALE_OFFER values (2, 1, 6, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 6, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 6, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 6, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 6, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 6, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (2, 1, 6, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--ID_Farm = 4, ID_ProductDetail = 7--
	Insert into SALE_OFFER values (4, 1, 7, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 7, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 7, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 7, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 7, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 7, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 7, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--ID_Farm = 4, ID_ProductDetail = 8--
	Insert into SALE_OFFER values (4, 1, 8, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 8, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 8, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 8, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 8, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 8, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 8, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--ID_Farm = 4, ID_ProductDetail = 9--
	Insert into SALE_OFFER values (4, 1, 9, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 9, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 9, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 9, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 9, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 9, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (4, 1, 9, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--ID_Farm = 5, ID_ProductDetail = 10--
	Insert into SALE_OFFER values (5, 1, 10, 1/1/2019, 100000, 100, 40, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (5, 1, 10, 2/2/2019, 100000, 200, 320, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (5, 1, 10, 3/3/2019, 100000, 300, 730, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (5, 1, 10, 4/4/2019, 100000, 400, 140, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (5, 1, 10, 5/5/2019, 100000, 500, 50, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (5, 1, 10, 6/6/2019, 100000, 600, 60, 0, 7, 7, 1, 0)
	Insert into SALE_OFFER values (5, 1, 10, 7/7/2019, 100000, 700, 70, 0, 7, 7, 1, 0)

	--** SALE_OFFER_DETAIL **--
	Insert into SALE_OFFER_DETAIL values (1, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (2, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (3, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (4, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (5, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (6, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (7, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (8, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (9, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (10, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (11, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (12, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (13, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (14, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (15, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (16, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (17, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (18, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (19, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (20, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (21, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (22, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (23, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (24, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (25, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (26, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (27, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (28, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (29, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (30, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (31, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (32, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (33, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (34, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (35, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (36, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (37, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (38, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (39, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (40, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (41, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (42, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (43, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (44, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (45, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (46, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (47, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (48, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (49, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (50, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (51, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (52, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (53, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (54, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (55, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (56, 630, 0, 0)

	Insert into SALE_OFFER_DETAIL values (57, 90, 0, 0)
	Insert into SALE_OFFER_DETAIL values (58, 180, 0, 0)
	Insert into SALE_OFFER_DETAIL values (59, 270, 0, 0)
	Insert into SALE_OFFER_DETAIL values (60, 360, 0, 0)
	Insert into SALE_OFFER_DETAIL values (61, 450, 0, 0)
	Insert into SALE_OFFER_DETAIL values (62, 540, 0, 0)
	Insert into SALE_OFFER_DETAIL values (63, 630, 0, 0)

	--** PURCHASE_OFFER **--

										--TRADER 1--
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 1/1/2018, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 2/2/2018, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 3/3/2018, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 4/4/2018, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 5/5/2018, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 6/6/2018, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 7/7/2018, 100000, 630, 0, 0, 7, 7, 1, 0)

	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 1/1/2017, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 2/2/2017, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 3/3/2017, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 4/4/2017, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 5/5/2017, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 6/6/2017, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 1, 1, 7/7/2017, 100000, 630, 0, 0, 7, 7, 1, 0)

											--TRADER 2--
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 1/1/2019, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 2/2/2019, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 3/3/2019, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 1/1/2018, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 2/2/2018, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 3/3/2018, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 4/4/2018, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 5/5/2018, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 6/6/2018, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 7/7/2018, 100000, 630, 0, 0, 7, 7, 1, 0)

	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 1/1/2017, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 2/2/2017, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 3/3/2017, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 4/4/2017, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 5/5/2017, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 6/6/2017, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 1, 1, 7/7/2017, 100000, 630, 0, 0, 7, 7, 1, 0)

											--TRADER 3--
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 1/1/2019, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 2/2/2019, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 3/3/2019, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 1/1/2018, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 2/2/2018, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 3/3/2018, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 4/4/2018, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 5/5/2018, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 6/6/2018, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 7/7/2018, 100000, 630, 0, 0, 7, 7, 1, 0)

	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 1/1/2017, 100000, 90, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 2/2/2017, 100000, 180, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 3/3/2017, 100000, 270, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 4/4/2017, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 5/5/2017, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 6/6/2017, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 1, 1, 7/7/2017, 100000, 630, 0, 0, 7, 7, 1, 0)

												--DUMB DATA--
	-- ID_Trader = 1, ID_Product = 2--
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 2, 2, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)


	-- ID_Trader = 2, ID_Product = 3--
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (2, 1, 3, 3, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	-- ID_Trader = 3, ID_Product = 4--
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (3, 1, 4, 4, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	-- ID_Trader = 1, ID_Product = 5--
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 5, 5, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	-- ID_Trader = 1, ID_Product = 6--
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 6, 6, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	-- ID_Trader = 1, ID_Product = 7--
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 1/1/2019, 100000, 120, 20, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 2/2/2019, 100000, 220, 40, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 3/3/2019, 100000, 570, 300, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 4/4/2019, 100000, 360, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 5/5/2019, 100000, 450, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 6/6/2019, 100000, 540, 0, 0, 7, 7, 1, 0)
	Insert into PURCHASE_OFFER values (1, 1, 7, 7, 7/7/2019, 100000, 630, 0, 0, 7, 7, 1, 0)

	--** PURCHASE_OFFER_DETAIL **--
	Insert into PURCHASE_OFFER_DETAIL values (1, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (2, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (3, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (4, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (5, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (6, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (7, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (8, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (9, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (10, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (11, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (12, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (13, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (14, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (15, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (16, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (17, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (18, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (19, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (20, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (12, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (22, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (23, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (24, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (25, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (26, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (27, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (28, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (29, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (30, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (31, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (32, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (33, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (34, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (35, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (36, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (37, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (38, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (29, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (40, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (41, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (42, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (43, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (44, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (45, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (46, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (47, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (48, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (49, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (50, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (51, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (52, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (53, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (54, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (55, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (56, 630, 0, 0)

	Insert into PURCHASE_OFFER_DETAIL values (57, 90, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (58, 180, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (59, 270, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (60, 360, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (61, 450, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (62, 540, 0, 0)
	Insert into PURCHASE_OFFER_DETAIL values (63, 630, 0, 0)

	--** TRANSACTION_ORDER **--

	-- Id_ProductDetail = 1--
	--2019--
	Insert into TRANSACTION_ORDER values (1, 1, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 1/1/2019, 90, N'Tấn', 100000, 100000,12,5, 4, 0)
	Insert into TRANSACTION_ORDER values (2, 2, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 2/2/2019, 180, N'Tấn', 100000, 100000,12,5, 4, 0)
	Insert into TRANSACTION_ORDER values (3, 3, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 3/3/2019, 270, N'Tấn', 100000, 100000,12,5, 4, 0)
	Insert into TRANSACTION_ORDER values (4, 4, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 4/4/2019, 360, N'Tấn', 100000, 100000,12,5, 4, 0)
	Insert into TRANSACTION_ORDER values (5, 5, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 5/5/2019, 450, N'Tấn', 100000, 100000,12,5, 6, 0)
	Insert into TRANSACTION_ORDER values (6, 6, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 6/6/2019, 540, N'Tấn', 100000, 100000,12,5, 6, 0)
	Insert into TRANSACTION_ORDER values (7, 7, 1, '\Data\Image\Trader\Invoices\trans_order1.png', 7/71/2019, 630, N'Tấn', 100000, 100000,12,5, 6, 0)
	--2018--
	Insert into TRANSACTION_ORDER values (8, 8, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 1/1/2018, 90, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (9, 9, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 2/2/2018, 180, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (10, 10, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 3/3/2018, 270, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (11, 11, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 4/4/2018, 360, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (12, 12, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 5/5/2018, 450, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (13, 13, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 6/6/2018, 540, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (14, 14, 1, '\Data\Image\Trader\Invoices\trans_order2.png', 7/7/2018, 630, N'Tấn', 100000, 100000,12,5, 1, 0)
	--2017--
	Insert into TRANSACTION_ORDER values (15, 15, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 1/1/2017, 90, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (16, 16, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 2/2/2017, 180, N'Tấn', 100000, 100000,12,5, 1, 0)
	Insert into TRANSACTION_ORDER values (17, 17, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 3/3/2017, 270, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (18, 18, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 4/4/2017, 360, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (19, 19, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 5/5/2017, 450, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (20, 20, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 6/6/2017, 540, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (21, 21, 1, '\Data\Image\Trader\Invoices\trans_order3.png', 7/7/2017, 630, N'Tấn', 100000, 100000,12,5, 2, 0)

	-- Id_ProductDetail = 2--
	--2019--
	Insert into TRANSACTION_ORDER values (22, 22, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 1/1/2019, 90, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (23, 23, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 2/2/2019, 180, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (24, 24, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 3/3/2019, 270, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (25, 25, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 4/4/2019, 360, N'Tấn', 100000, 100000,12,5, 2, 0)
	Insert into TRANSACTION_ORDER values (26, 26, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 5/5/2019, 450, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (27, 27, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 6/6/2019, 540, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (28, 28, 2, '\Data\Image\Trader\Invoices\trans_order4.png', 6/6/2019, 630, N'Tấn', 100000, 100000,12,5, 3, 0)
	--2018--
	Insert into TRANSACTION_ORDER values (29, 29, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 1/1/2018, 90, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (30, 30, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 2/2/2018, 180, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (31, 31, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 3/3/2018, 270, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (32, 32, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 4/4/2018, 360, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (33, 33, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 5/5/2018, 450, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (34, 34, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 6/6/2018, 540, N'Tấn', 100000, 100000,12,5, 3, 0)
	Insert into TRANSACTION_ORDER values (35, 35, 2, '\Data\Image\Trader\Invoices\trans_order5.png', 7/7/2018, 630, N'Tấn', 100000, 100000,12,5, 5, 0)
	--2017--
	Insert into TRANSACTION_ORDER values (36, 36, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 1/1/2017, 90, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (37, 37, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 2/2/2017, 180, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (38, 38, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 3/3/2017, 270, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (39, 39, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 4/4/2017, 360, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (40, 40, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 5/5/2017, 450, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (41, 41, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 6/6/2017, 540, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (42, 42, 2, '\Data\Image\Trader\Invoices\trans_order1.png', 7/7/2017, 630, N'Tấn', 100000, 100000,12,5, 5, 0)

	-- Id_ProductDetail = 3--
	--2019--
	Insert into TRANSACTION_ORDER values (43, 43, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 1/1/2019, 90, N'Tấn', 100000, 100000,12,5, 5, 0)
	Insert into TRANSACTION_ORDER values (44, 44, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 2/2/2019, 180, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (45, 45, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 3/3/2019, 270, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (46, 46, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 4/4/2019, 360, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (47, 47, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 5/5/2019, 450, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (48, 48, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 6/6/2019, 540, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (49, 49, 3, '\Data\Image\Trader\Invoices\trans_order2.png', 7/7/2019, 630, N'Tấn', 100000, 100000,12,5, 7, 0)
	--2018--
	Insert into TRANSACTION_ORDER values (50, 50, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 1/1/2018, 90, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (51, 51, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 2/2/2018, 180, N'Tấn', 100000, 100000,12,5, 7, 0)
	Insert into TRANSACTION_ORDER values (52, 52, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 3/3/2018, 270, N'Tấn', 100000, 100000, 12,5,7, 0)
	Insert into TRANSACTION_ORDER values (53, 53, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 4/4/2018, 360, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (54, 54, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 5/5/2018, 450, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (55, 55, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 6/6/2018, 540, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (56, 56, 3, '\Data\Image\Trader\Invoices\trans_order3.png', 7/7/2018, 630, N'Tấn', 100000, 100000,12,5, 8, 0)
	--2017--
	Insert into TRANSACTION_ORDER values (57, 57, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 1/1/2017, 90, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (58, 58, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 2/2/2017, 180, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (59, 59, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 3/3/2017, 270, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (60, 60, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 4/4/2017, 360, N'Tấn', 100000, 100000, 12,5,8, 0)
	Insert into TRANSACTION_ORDER values (61, 61, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 5/5/2017, 450, N'Tấn', 100000, 100000,12,5, 8, 0)
	Insert into TRANSACTION_ORDER values (62, 62, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 6/6/2017, 540, N'Tấn', 100000, 100000, 12,5,1, 0)
	Insert into TRANSACTION_ORDER values (63, 63, 3, '\Data\Image\Trader\Invoices\trans_order4.png', 7/7/2017, 630, N'Tấn', 100000, 100000,12,5, 1, 0)
	

	--** Topic **--
	Insert into TOPIC (Name_Topic) values(N'Bổ sung thêm nông sản')
	Insert into TOPIC (Name_Topic) values(N'Bổ sung thêm hạt giống')
	Insert into TOPIC (Name_Topic) values(N'Lấy lại mật khẩu ')
	Insert into TOPIC (Name_Topic) values(N'Góp ý')
	
commit tran