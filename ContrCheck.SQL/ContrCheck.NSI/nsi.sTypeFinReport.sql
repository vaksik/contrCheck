use ContrCheck
go

--0 - Социально ориентированные некоммерческие организации,
--1 - Субъекты малого предпринимательства/упрощённая форма бухгалтерской отчетности,
--2 - Полный отчет
IF OBJECT_ID(N'nsi.sTypeFinReport', N'U') IS NOT NULL
	DROP TABLE nsi.sTypeFinReport

create table nsi.sTypeFinReport
(
	[code]  int not null,
	translate varchar(128) null

	CONSTRAINT PK_sTypeFinReport	PRIMARY KEY CLUSTERED ([code]) WITH FILLFACTOR = 90
)

insert into nsi.sTypeFinReport 
values (0,'Социально ориентированные некоммерческие организации'),
(1,'Субъекты малого предпринимательства/упрощённая форма бухгалтерской отчетности'),
(2,'Полный отчет')

