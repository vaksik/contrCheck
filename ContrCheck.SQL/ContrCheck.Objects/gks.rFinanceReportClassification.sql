use ContrCheck
go

--������ ���������������

IF OBJECT_ID(N'gks.rFinanceReportClassification', N'U') IS NOT NULL
	DROP TABLE gks.rFinanceReportClassification

create table gks.rFinanceReportClassification
(
	inn			varchar(10)		not null, --���
	okpo		varchar(8)		null, --������������� ����������� � �����������
	okopf		varchar(5)		null, --������������� ��������������-�������� ����
	okfs		varchar(2)		null, --������������� ���� �������������
	okved		varchar(8)		null,--������������� ����� ������������� ������������
	okei		varchar(3)		null, --������������� ������ ���������
	typeReport	int				null, -- ��� ������
	updateDate	datetime		default(getdate()) 

	CONSTRAINT PK_rFinanceReportClassification	PRIMARY KEY CLUSTERED (inn) WITH FILLFACTOR = 90
)