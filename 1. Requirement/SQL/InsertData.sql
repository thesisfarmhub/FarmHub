--INSERT DATA FARMHUB--

use FarmHub
go

Set xact_abort on
go 

begin tran	
	
		--Status--
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Đặt Hàng')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Đồng Ý')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Từ Chối')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Đặt Lại')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Thanh Toán')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đang Giao Lại')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Hoàn Tất')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Hủy Đơn')
		--Offers--
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Còn Hàng')
	Insert into STATUS_TRANS(Name_StatusTrans) values(N'Đã Hết')


	--USER_KIND--
	Insert into USER_KIND (Name_UserKind) values ('Farmer')
	Insert into USER_KIND (Name_UserKind) values ('Trader')
	Insert into USER_KIND (Name_UserKind) values ('Admin')

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
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg) values (N'Tấn', 1000)
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg) values (N'Tạ', 100)
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg) values (N'Yến', 10)
	Insert into MASS_UNIT(Name_MassUnit,Weight_To_Kg) values (N'Kg', 1)

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

	--Farm B--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (2,4,4,N'Đà Lạt','\Data\Image\Farmer\Base\apple1.jpeg',200,'Crop DD',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (2,4,5,N'Đà Lạt','\Data\Image\Farmer\Base\apple2.jpeg',200,'Crop EE',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (2,4,6,N'Đà Lạt','\Data\Image\Farmer\Base\apple3.jpeg',200,'Crop FF',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm C--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (3,7,7,N'Bình Phước','\Data\Image\Farmer\Base\durian1.jpeg',300,'Crop G',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (3,7,8,N'Bình Phước','\Data\Image\Farmer\Base\durian2.jpeg',300,'Crop H',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (3,7,9,N'Bình Phước','\Data\Image\Farmer\Base\durian3.jpeg',300,'Crop I',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm AA--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (4,2,10,N'Hà Tĩnh','\Data\Image\Farmer\Base\orange1.jpeg',100,'Crop AA',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (4,2,11,N'Hà Tĩnh','\Data\Image\Farmer\Base\orange2.jpeg',100,'Crop BB',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (4,2,12,N'Hà Tĩnh','\Data\Image\Farmer\Base\orange3.jpeg',100,'Crop CC',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm BB--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (5,5,13,N'Quảng Nam','\Data\Image\Farmer\Base\banana.jpeg',200,'Crop DD',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (5,5,14,N'Quảng Namt','\Data\Image\Farmer\Base\banana.jpeg',200,'Crop EE',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (5,5,15,N'Quảng Nam','\Data\Image\Farmer\Base\banana.jpeg',200,'Crop FF',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)

	--Farm CC--
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (6,8,16,N'Ninh Thuậnc','\Data\Image\Farmer\Base\grapes1.jpeg',300,'Crop G',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (6,8,17,N'Ninh Thuận','\Data\Image\Farmer\Base\grapes2.jpeg',300,'Crop H',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	Insert into PRODUCT_DETAIL (Id_Product,Id_Farm,Id_Seed,Geography_Location,Image_ProductDetail,Min_Mass,Name_Crop,Start_Time,End_Time,Harvest_StartTime,Harvest_EndTime,Quantity_Expected,Is_Deleted)
	values (6,8,18,N'Ninh Thuận','\Data\Image\Farmer\Base\grapes3.jpeg',300,'Crop I',1/1/2019,1/2/2019,1/3/2019,1/4/2019,100,0)
	
	--** SALE_OFFER **--

	--Farm A--
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1/1/2019,1,500,0,10,0,5,7,2,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,2,2/2/2019,1,1000,0,10,0,5,7,2,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,3,3/3/2019,1,1500,0,10,0,5,7,2,0)

	-- Remain > 0--
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1/1/2018,1,2000,2000,10,0,5,7,0,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,2,2/2/2018,1,2500,2500,10,0,5,7,0,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,3,3/3/2018,1,3000,3000,10,0,5,7,0,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,4/4/2019,2,1000,1000,10,0,5,7,2,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,2,5/5/2019,2,1000,1000,10,0,5,7,2,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,3,6/6/2019,2,1500,1500,10,0,5,7,2,0)

	--Farm B--
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (4,1,4,4/4/2019,1,2000,0,10,1,5,7,2,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (4,1,5,5/5/2019,1,2500,0,10,1,5,7,2,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (4,1,6,6/6/2019,1,3000,0,10,1,5,7,2,0)

	--Remain > 0--
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (4,1,4,4/4/2018,1,4000,4000,9,1,5,7,0,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (4,1,5,5/5/2018,1,5000,5000,9,1,5,7,0,0)
	Insert into SALE_OFFER (Id_Farm,Id_MassUnit,Id_ProductDetail,Date_SaleOffer,Price_Offer,Quantity_SaleOffer,Remain_SaleQuantity,Status_SaleOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (4,1,6,6/6/2018,1,6000,6000,9,1,5,7,0,0)

	--Farm C--

	--Remain > 0--

	--** SALE_OFFER_DETAIL **--

	--Farm A--
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (1,100,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (1,400,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (2,300,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (2,700,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (3,1000,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (3,500,0,0)

	--Farm B--
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted) 
	values (4,800,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted)
	values (4,1200,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted)
	values (5,2000,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted)
	values (5,500,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted)
	values (6,1600,0,0)
	Insert into SALE_OFFER_DETAIL (Id_SaleOffer,Quantity_SaleOfferDetail,Fine,Is_Deleted)
	values (6,1400,0,0)
	

	--** PURCHASE_OFFER **--

	--Farm A--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1,1/1/2019,1,100,100,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,1,1,2/2/2019,1,200,200,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1,3/3/2019,1,300,300,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,1,1,4/4/2019,1,400,400,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1,5/5/2019,1,500,500,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,1,1,6/6/2019,1,600,600,0,1,5,7,1,0)


	--Farm B--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (1,1,4,1,4/4/2019,800,800,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,4,2,4/4/2019,1200,1200,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,5,3,5/5/2019,2000,2000,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (3,1,4,4,5/5/2019,500,500,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,6,5,6/6/2019,1600,1600,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,6,6,6/6/2019,1400,1400,0,1,0,5,7,1,0)

	--Trader 1--
	--Year: 2019--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1,1/1/2019,1,100,100,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,1,2,1/1/2019,400,400,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,2,3,2/2/2019,300,300,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (3,1,2,4,2/2/2019,700,700,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,3,5,3/3/2019,1000,1000,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,3,6,3/3/2019,500,500,0,1,1,5,7,1,0)
	

	--Year: 2018--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1,1/1/2019,1,100,100,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,1,2,1/1/2019,400,400,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,2,3,2/2/2019,300,300,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (3,1,2,4,2/2/2019,700,700,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,3,5,3/3/2019,1000,1000,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,3,6,3/3/2019,500,500,0,1,1,5,7,1,0)
	

	--Year: 2017--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,1,1,1/1/2019,1,100,100,0,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,1,2,1/1/2019,400,400,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,2,3,2/2/2019,300,300,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (3,1,2,4,2/2/2019,700,700,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,3,5,3/3/2019,1000,1000,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,3,6,3/3/2019,500,500,0,1,1,5,7,1,0)

	--Trader 2--
	--Year: 2019--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (1,1,4,1,4/4/2019,800,800,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,4,2,4/4/2019,1200,1200,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,5,3,5/5/2019,2000,2000,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (3,1,4,4,5/5/2019,500,500,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,6,5,6/6/2019,1600,1600,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,6,6,6/6/2019,1400,1400,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,1,1,4/4/2019,800,800,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,1,2,4/4/2019,800,800,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,1,3,4/4/2019,800,800,0,1,0,5,7,1,0)

	--Year: 2018--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (1,1,4,1,4/4/2019,1,800,800,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,4,2,4/4/2019,1,1200,1200,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,5,3,5/5/2019,1,2000,2000,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (3,1,4,4,5/5/2019,1,500,500,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,6,5,6/6/2019,1,1600,1600,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,6,6,6/6/2019,1,1400,1400,1,0,5,7,1,0)

	--Year: 2017--
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (1,1,4,1,4/4/2019,800,800,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,4,2,4/4/2019,1200,1200,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (2,1,5,3,5/5/2019,2000,2000,0,1,1,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted)  
	values (3,1,4,4,5/5/2019,500,500,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (1,1,6,5,6/6/2019,1600,1600,0,1,0,5,7,1,0)
	Insert into PURCHASE_OFFER (Id_Trader,Id_MassUnit,Id_Product,Id_Seed,Date_PurchaseOffer,Price_Purchase,Quantity_PurchaseOffer,Remain_PurchaseQuantity,Status_PurchaseOffer,Can_Bargain,Paying_Time,Delivering_Time,Number_Of_Orders,Is_Deleted) 
	values (2,1,6,6,6/6/2019,1400,1400,0,1,0,5,7,1,0)
	

	--** PURCHASE_OFFER_DETAIL **--

	--Farm A--
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (1,100,0,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted)  
	values (2,400,0,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (3,300,0,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (4,700,0,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (5,1000,0,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (6,500,0,0)

	--Farm B--
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (7,800,1,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (8,1200,1,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (9,2000,1,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (10,500,1,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (11,1600,1,0)
	Insert into PURCHASE_OFFER_DETAIL (Id_PurchasesOffer,Quantity_PurchaseOfferDetail,Fine,Is_Deleted) 
	values (12,1400,1,0)

	--** TRANSACTION_ORDER **--

	--Farm A--
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (1,1,1,1/1/2019,100,'Tons',1,100,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (2,2,1,1/1/2019,400,'Tons',1,400,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (3,3,2,2/2/2019,300,'Tons',1,300,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (4,4,2,2/2/2019,700,'Tons',1,700,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (5,5,3,3/3/2019,1000,'Tons',1,1000,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (6,6,3,3/3/2019,500,'Tons',1,500,7,0)

	--Farm B--
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (7,7,4,4/4/2019,800,'Tons',1,800,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (8,8,4,4/4/2019,1200,'Tons',1,1200,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (9,9,5,5/5/2019,2000,'Tons',1,2000,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (10,10,5,5/5/2019,500,'Tons',1,500,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (11,11,6,6/6/2019,1600,'Tons',1,1600,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (12,12,6,6/6/2019,1400,'Tons',1,1400,7,0)

	--Dumb--
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (1,1,1,1/1/2018,100,'Tons',1,100,1,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (2,2,1,1/1/2018,400,'Tons',1,400,2,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (3,3,2,2/2/2018,300,'Tons',1,300,3,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (4,4,2,2/2/2018,700,'Tons',1,700,4,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (5,5,3,3/3/2018,1000,'Tons',1,1000,5,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (6,6,3,3/3/2018,500,'Tons',1,500,6,0)

	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (1,1,1,1/1/2017,100,'Tons',1,100,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (2,2,1,1/1/2017,400,'Tons',1,400,8,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (3,3,2,2/2/2017,300,'Tons',1,300,1,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (4,4,2,2/2/2017,700,'Tons',1,700,2,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (5,5,3,3/3/2017,1000,'Tons',1,1000,3,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (6,6,3,3/3/2017,500,'Tons',1,500,4,0)

	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (7,7,4,4/4/2018,800,'Tons',1,800,5,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (8,8,4,4/4/2018,1200,'Tons',1,1200,6,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (9,9,5,5/5/2018,2000,'Tons',1,2000,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (10,10,5,5/5/2018,500,'Tons',1,500,8,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (11,11,6,6/6/2018,1600,'Tons',1,1600,1,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (12,12,6,6/6/2018,1400,'Tons',1,1400,2,0)

	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (7,7,4,4/4/2017,800,'Tons',1,800,3,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (8,8,4,4/4/2017,1200,'Tons',1,1200,4,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (9,9,5,5/5/2017,2000,'Tons',1,2000,5,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (10,10,5,5/5/2017,500,'Tons',1,500,6,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (11,11,6,6/6/2017,1600,'Tons',1,1600,7,0)
	Insert into TRANSACTION_ORDER (Id_SaleOfferDetail,Id_PurchaseOfferDetail,Id_ProductDetail,Transaction_Date,Transaction_Mass,Transaction_Unitmass,Transaction_Price,Transaction_TotalMoney,Id_StatusTrans,Is_Deleted) 
	values (12,12,6,6/6/2017,1400,'Tons',1,1400,8,0)

	--** Topic **--
	Insert into TOPIC (Name_Topic) values(N'Bổ sung thêm nông sản')
	Insert into TOPIC (Name_Topic) values(N'Bổ sung thêm hạt giống')
	Insert into TOPIC (Name_Topic) values(N'Lấy lại mật khẩu ')
	Insert into TOPIC (Name_Topic) values(N'Góp ý')
	
commit tran