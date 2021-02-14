use ContrCheck
go

--Адреса, указанные при государственной регистрации 
--в качестве места нахождения несколькими юридическими лицами

--Ссылка на набор данных: https://www.nalog.ru/opendata/7707329152-masaddress/


IF OBJECT_ID(N'fns.rMasAddress', N'U') IS NOT NULL
	DROP TABLE fns.rMasAddress

create table fns.rMasAddress
(
	Id			int				identity(1,1)	not null,	
	region		varchar(150)	null, --Регион
	district	varchar(150)	null, --Район
	town		varchar(150)	null, --Город
	locality	varchar(150)	null, --Населенный пункт
	street		varchar(150)	null, --Улица
	house		varchar(4)		null, --Номер дома
	caseNumber  varchar(4)		null, --Номер корпуса
	apartment	varchar(4)		null, --Квартира (офис)
	countUl		int				not null, --Количество юридических лиц
	updateDate	datetime		default(getdate())

	CONSTRAINT PK_rMasAddress	PRIMARY KEY CLUSTERED (Id) WITH FILLFACTOR = 90
)




	