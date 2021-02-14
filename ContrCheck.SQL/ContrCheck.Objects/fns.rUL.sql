use ContrCheck
go


IF OBJECT_ID(N'fns.rUL', N'U') IS NOT NULL
	DROP TABLE fns.rUL

create table fns.rUL
(
	ogrn		varchar(13)	   not null, --ОГРН
	inn			varchar(10)		null, --ИНН
	kpp			varchar(9)		null, --КПП
	[name]		varchar(256)	not null, --Полное имя организации
	nameS		varchar(256)	null, --Сокращенное имя огранизации;
	regAddress	varchar(max)	not null,--Адрес регистрации
	isActive	int				null, --Признак активного статуса компании
	updateDate	datetime		default( getdate())

	CONSTRAINT PK_LegalEntitie	PRIMARY KEY CLUSTERED (ogrn) WITH FILLFACTOR = 90
)