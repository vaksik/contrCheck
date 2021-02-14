use ContrCheck
go

--Реестр классификаторов

IF OBJECT_ID(N'gks.rFinanceReportClassification', N'U') IS NOT NULL
	DROP TABLE gks.rFinanceReportClassification

create table gks.rFinanceReportClassification
(
	inn			varchar(10)		not null, --ИНН
	okpo		varchar(8)		null, --классификатор предприятий и организаций
	okopf		varchar(5)		null, --классификатор организационно-правовых форм
	okfs		varchar(2)		null, --классификатор форм собственности
	okved		varchar(8)		null,--классификатор видов экономической деятельности
	okei		varchar(3)		null, --классификатор единиц измерения
	typeReport	int				null, -- тип отчета
	updateDate	datetime		default(getdate()) 

	CONSTRAINT PK_rFinanceReportClassification	PRIMARY KEY CLUSTERED (inn) WITH FILLFACTOR = 90
)