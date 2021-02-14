use ContrCheck
go


IF OBJECT_ID(N'fns.rUL', N'U') IS NOT NULL
	DROP TABLE fns.rUL

create table fns.rUL
(
	ogrn		varchar(13)	   not null, --����
	inn			varchar(10)		null, --���
	kpp			varchar(9)		null, --���
	[name]		varchar(256)	not null, --������ ��� �����������
	nameS		varchar(256)	null, --����������� ��� �����������;
	regAddress	varchar(max)	not null,--����� �����������
	isActive	int				null, --������� ��������� ������� ��������
	updateDate	datetime		default( getdate())

	CONSTRAINT PK_LegalEntitie	PRIMARY KEY CLUSTERED (ogrn) WITH FILLFACTOR = 90
)