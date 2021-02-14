use ContrCheck
go

--������, ��������� ��� ��������������� ����������� 
--� �������� ����� ���������� ����������� ������������ ������

--������ �� ����� ������: https://www.nalog.ru/opendata/7707329152-masaddress/


IF OBJECT_ID(N'fns.rMasAddress', N'U') IS NOT NULL
	DROP TABLE fns.rMasAddress

create table fns.rMasAddress
(
	Id			int				identity(1,1)	not null,	
	region		varchar(150)	null, --������
	district	varchar(150)	null, --�����
	town		varchar(150)	null, --�����
	locality	varchar(150)	null, --���������� �����
	street		varchar(150)	null, --�����
	house		varchar(4)		null, --����� ����
	caseNumber  varchar(4)		null, --����� �������
	apartment	varchar(4)		null, --�������� (����)
	countUl		int				not null, --���������� ����������� ���
	updateDate	datetime		default(getdate())

	CONSTRAINT PK_rMasAddress	PRIMARY KEY CLUSTERED (Id) WITH FILLFACTOR = 90
)




	