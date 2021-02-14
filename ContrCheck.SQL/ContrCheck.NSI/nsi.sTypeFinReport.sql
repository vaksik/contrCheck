use ContrCheck
go

--0 - ��������� ��������������� �������������� �����������,
--1 - �������� ������ �������������������/���������� ����� ������������� ����������,
--2 - ������ �����
IF OBJECT_ID(N'nsi.sTypeFinReport', N'U') IS NOT NULL
	DROP TABLE nsi.sTypeFinReport

create table nsi.sTypeFinReport
(
	[code]  int not null,
	translate varchar(128) null

	CONSTRAINT PK_sTypeFinReport	PRIMARY KEY CLUSTERED ([code]) WITH FILLFACTOR = 90
)

insert into nsi.sTypeFinReport 
values (0,'��������� ��������������� �������������� �����������'),
(1,'�������� ������ �������������������/���������� ����� ������������� ����������'),
(2,'������ �����')

