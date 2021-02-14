use ContrCheck
go
--Бухгалтерская (финансовая) отчетность предприятий и организаций 
--https://www.gks.ru/opendata/7708234640-7708234640bdboo2018

IF OBJECT_ID(N'gks.rFinanceReport', N'U') IS NOT NULL
	DROP TABLE gks.rFinanceReport

create table gks.rFinanceReport
(
	inn			varchar(10)		not null, --ИНН
	code		varchar(5)		 null, --код экономического показателя (НСИ)
	[value]		varchar(15)		 null --значение	

	CONSTRAINT PK_rFinanceReport	PRIMARY KEY CLUSTERED (inn) WITH FILLFACTOR = 90
)
