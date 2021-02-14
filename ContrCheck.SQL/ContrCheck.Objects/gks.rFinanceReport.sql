use ContrCheck
go
--������������� (����������) ���������� ����������� � ����������� 
--https://www.gks.ru/opendata/7708234640-7708234640bdboo2018

IF OBJECT_ID(N'gks.rFinanceReport', N'U') IS NOT NULL
	DROP TABLE gks.rFinanceReport

create table gks.rFinanceReport
(
	inn			varchar(10)		not null, --���
	code		varchar(5)		 null, --��� �������������� ���������� (���)
	[value]		varchar(15)		 null --��������	

	CONSTRAINT PK_rFinanceReport	PRIMARY KEY CLUSTERED (inn) WITH FILLFACTOR = 90
)
