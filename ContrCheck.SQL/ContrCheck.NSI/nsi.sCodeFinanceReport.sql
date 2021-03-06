use ContrCheck
go

--�������� http://docs.cntd.ru/document/542627429
IF OBJECT_ID(N'nsi.sCodeFinanceReport', N'U') IS NOT NULL
	DROP TABLE nsi.sCodeFinanceReport

create table nsi.sCodeFinanceReport
(
	[code]  int not null,
	translate varchar(512) null

	CONSTRAINT PK_sCodeFinanceReport	PRIMARY KEY CLUSTERED ([code]) WITH FILLFACTOR = 90
)

insert into nsi.sCodeFinanceReport values
	(11103,'�������������� ������ �� ����� ��������� ����'),
	(11104,'�������������� ������ �� ����� ����������� ����'),
	(11203,'���������� ������������ � ���������� �� ����� ��������� ����'),
	(11204,'���������� ������������ � ���������� �� ����� ����������� ����'),
	(11303,'�������������� ��������� ������ �� ����� ��������� ����'),
	(11304,'�������������� ��������� ������ �� ����� ����������� ����'),
	(11403,'������������ ��������� ������ �� ����� ��������� ����'),
	(11404,'������������ ��������� ������ �� ����� ����������� ����'),
	(11503,'�������� �������� �� ����� ��������� ����'),
	(11504,'�������� �������� �� ����� ����������� ����'),
	(11603,'�������� �������� � ������������ �������� �� ����� ��������� ����'),
	(11604,'�������� �������� � ������������ �������� �� ����� ����������� ����'),
	(11703 ,'���������� �������� �� ����� ��������� ����'),
	(11704,'���������� �������� �� ����� ����������� ����'),	
	(11803,'���������� ��������� ������ �� ����� ��������� ����'),	
	(11804,'���������� ��������� ������ �� ����� ����������� ����'),
	(11903,'������ ������������ ������ �� ����� ��������� ����'),
	(11904,'������ ������������ ������ �� ����� ����������� ����'),
	(11003,'����� ������������ ������� �� ����� ��������� ����'),
	(11004,'����� ������������ ������� �� ����� ����������� ����'),
	(12103,'������ �� ����� ��������� ����'),
	(12104,'������ �� ����� ����������� ����'),
	(12203,'����� �� ����������� ��������� �� ������������� ��������� �� ����� ��������� ����'),
	(12204,'����� �� ����������� ��������� �� ������������� ��������� �� ����� ����������� ����'),
	(12303,'����������� ������������� �� ����� ��������� ����'),
	(12304,'����������� ������������� �� ����� ����������� ����'),
	(12403,'���������� �������� (�� ����������� �������� ������������) �� ����� ��������� ����'),
	(12404,'���������� �������� (�� ����������� �������� ������������) �� ����� ����������� ����'),
	(12503,'�������� �������� � �������� ����������� �� ����� ��������� ����'),
	(12504,'�������� �������� � �������� ����������� �� ����� ����������� ����'),
	(12603,'������ ��������� ������ �� ����� ��������� ����'),
	(12604,'������ ��������� ������ �� ����� ����������� ����'),
	(12003,'����� ��������� ������� �� ����� ��������� ����'),
	(12004,'����� ��������� ������� �� ����� ����������� ����'),
	(16003,'������ (�����) �� ����� ��������� ����'),
	(16004,'������ (�����) �� ����� ����������� ����'),
	(13103,'�������� ������� (���������� �������, �������� ����, ������ ���������)/������ ���� (��� �������������� �����������) �� ����� ��������� ����'),
	(13104,'�������� ������� (���������� �������, �������� ����, ������ ���������)/������ ���� (��� �������������� �����������) �� ����� ����������� ����'),
	(13203,'����������� �����, ����������� � ����������/������� ������� (��� �������������� �����������) ������� ��������� ����'),
	(13204,'����������� �����, ����������� � ����������/������� ������� (��� �������������� �����������) �� ����� ����������� ����'),
	(13403,'���������� ������������ ������� �� ����� ��������� ����'),
	(13404,'���������� ������������ ������� �� ����� ����������� ����'),
	(13503,'���������� ������� (��� ����������)/������� �������� (��� �������������� �����������) �� ����� ��������� ����'),
	(13504,'���������� ������� (��� ����������)/������� �������� (��� �������������� �����������) �� ����� ����������� ����'),
	(13603,'��������� �������/���� ����������� � ����� ������� ��������� ��������� (��� �������������� �����������) �� ����� ��������� ����'),
	(13604,'��������� �������/���� ����������� � ����� ������� ��������� ��������� (��� �������������� �����������) �� ����� ����������� ����'),
	(13703,'���������������� ������� (���������� ������)/��������� � ���� ������� ����� (��� �������������� �����������) �� ����� ��������� ����'),
	(13704,'���������������� ������� (���������� ������)/��������� � ���� ������� ����� (��� �������������� �����������) �� ����� ����������� ����'),
	(13003,'����� �������� �� ����� ��������� ����'),
	(13004,'����� �������� �� ����� ����������� ����'),
	(14103,'������������ ������� �������� �� ����� ��������� ����'),
	(14104,'������������ ������� �������� �� ����� ����������� ����'),
	(14203,'���������� ��������� ������������� �� ����� ��������� ����'),
	(14204,'���������� ��������� ������������� �� ����� ����������� ����'),
	(14303,'��������� ������������� �� ����� ��������� ����'),
	(14304,'��������� ������������� �� ����� ����������� ����'),
	(14503,'������ ������������ ������������� �� ����� ��������� ����'),
	(14504,'������ ������������ ������������� �� ����� ����������� ����'),
	(14003,'����� ������������ ������������ �� ����� ��������� ����'),
	(14004,'����� ������������ ������������ �� ����� ����������� ����'),
	(15103,'������������� ������� ������������� �� ����� ��������� ����'),
	(15104,'������������� ������� ������������� �� ����� ����������� ����'),
	(15203,'������������� ������������ ������������� �� ����� ��������� ����'),
	(15204,'������������� ������������ ������������� �� ����� ����������� ����'),
	(15303,'������ ������� �������� �� ����� ��������� ����'),
	(15304,'������ ������� �������� �� ����� ����������� ����'),
	(15403,'��������� ������������� �� ����� ��������� ����'),
	(15404,'��������� ������������� �� ����� ����������� ����'),
	(15503,'������ ������������� ������������� �� ����� ��������� ����'),
	(15504,'������ ������������� ������������� �� ����� ����������� ����'),
	(15003,'����� ������������� ������������ �� ����� ��������� ����'),
	(15004,'����� ������������� ������������ �� ����� ����������� ����'),
	(17003,'������ (������) �� ����� ��������� ����'),
	(17004,'������ (������) �� ����� ����������� ����'),
	(21103,'������� �� �������� ���'),
	(21104,'������� �� ���������� ���'),
	(21203,'������������� ������ �� �������� ���'),
	(21204,'������������� ������ �� ���������� ���'),
	(21003,'������� ������� (������) �� �������� ���'),
	(21004,'������� ������� (������) �� ���������� ���'),
	(22103,'������������ ������� �� �������� ���'),
	(22104,'������������ ������� �� ���������� ���'),
	(22203,'�������������� ������� �� �������� ���'),	
	(22204,'�������������� ������� �� ���������� ���'),
	(22003,'������� (������) �� ������ �� �������� ���'),
	(22004,'������� (������) �� ������ �� ���������� ���'),
	(23103,'������ �� ������� � ������ ������������ �� �������� ���'),
	(23104,'������ �� ������� � ������ ������������ �� ���������� ���'),
	(23203,'�������� � ��������� �� �������� ���'),
	(23204,'�������� � ��������� �� ���������� ���'),
	(23303,'�������� � ������ �� �������� ���'),
	(23304,'�������� � ������ �� ���������� ���'),
	(23403,'������ ������ �� �������� ���'),
	(23404,'������ ������ �� ���������� ���'),
	(23503,'������ ������� �� �������� ���'),
	(23504,'������ ������� �� ���������� ���'),
	(23003,'������� (������) �� ��������������� �� �������� ���'),
	(23004,'������� (������) �� ��������������� �� ���������� ���'),
	(24103,'������� ����� �� ������� �� �������� ���'),
	(24104,'������� ����� �� ������� �� ���������� ���'),
	(24213,'���������� ��������� ������������� (������) �� �������� ���'),
	(24214,'���������� ��������� ������������� (������) �� ���������� ���'),
	(24303,'��������� ���������� ��������� ������������ �� �������� ���'),
	(24304,'��������� ���������� ��������� ������������ �� ���������� ���'),
	(24503,'��������� ���������� ��������� ������� �� �������� ���'),
	(24504,'��������� ���������� ��������� ������� �� ���������� ���'),
	(24603,'������ �� �������� ���'),
	(24604,'������ �� ���������� ���'),
	(24003,'������ ������� (������) �� �������� ���'),
	(24004,'������ ������� (������) �� ���������� ���'),
	(25103,'��������� �� ���������� ������������ �������, �� ���������� � ������ ������� (������) �� �������� ���'),
	(25104,'��������� �� ���������� ������������ �������, �� ���������� � ������ ������� (������) �� ���������� ���'),
	(25203,'��������� �� ������ ��������, �� ���������� � ������ ������� (������) ������� �� �������� ���'),
	(25204,'��������� �� ������ ��������, �� ���������� � ������ ������� (������) ������� �� ���������� ���'),
	(25003,'���������� ���������� ��������� ������� �� �������� ���'),
	(25004,'���������� ���������� ��������� ������� �� ���������� ���'),
	(32003,'�������� �������� �� 31 ������� ����������� ���� (�������� �������)'),
	(32004,'�������� �������� �� 31 ������� ����������� ���� (����������� �����, ����������� � ����������)'),
	(32005,'�������� �������� �� 31 ������� ����������� ���� (���������� �������)'),
	(32006,'�������� �������� �� 31 ������� ����������� ���� (��������� �������)'),
	(32007,'�������� �������� �� 31 ������� ����������� ���� (���������������� ������� (���������� ������)'),
	(32008,'�������� �������� �� 31 ������� ����������� ���� (�����)'),
	(33103,'���������� �������� - ����� (�������� �������)'),
	(33104,'���������� �������� - ����� (����������� �����, ����������� � ����������)'),
	(33105,'���������� �������� - ����� (���������� �������)'),
	(33106,'���������� �������� - ����� (��������� �������)'),
	(33107,'���������� �������� - ����� (���������������� ������� (���������� ������)'),
	(33108,'���������� �������� - ����� (�����)'),
	(33117,'������ ������� (���������������� ������� (���������� ������)'),
	(33118,'������ ������� (�����)'),
	(33125,'���������� ��������� (���������� �������)'),
	(33127,'���������� ��������� (���������������� ������� (���������� ������)'),
	(33128,'���������� ��������� (�����)'),
	(33135,'������, ����������� ��������������� �� ���������� �������� (���������� �������)'),
	(33137,'������, ����������� ��������������� �� ���������� �������� (���������������� ������� (���������� ������)'),
	(33138,'������, ����������� ��������������� �� ���������� �������� (�����)'),
	(33143,'�������������� ������ ����� (�������� �������)'),
	(33144,'�������������� ������ ����� (����������� �����, ����������� � ����������)'),
	(33145,'�������������� ������ ����� (���������� �������)'),
	(33148,'�������������� ������ ����� (�����)'),
	(33153,'���������� ����������� ��������� ����� (�������� �������)'),
	(33154,'���������� ����������� ��������� ����� (����������� �����, ����������� � ����������)'),
	(33155,'���������� ����������� ��������� ����� (���������� �������)'),
	(33157,'���������� ����������� ��������� ����� (���������������� ������� (���������� ������)'),
	(33163,'������������� ������������ ���� (�������� �������)'),
	(33164,'������������� ������������ ���� (����������� �����, ����������� � ����������)'),
	(33165,'������������� ������������ ���� (���������� �������)'),
	(33166,'������������� ������������ ���� (��������� �������)'),
	(33167,'������������� ������������ ���� (���������������� ������� (���������� ������)'),
	(33168,'������������� ������������ ���� (�����)'),
	(33203,'���������� �������� - ����� (�������� �������)'),
	(33204,'���������� �������� - ����� (����������� �����, ����������� � ����������)'),
	(33205,'���������� �������� - ����� (���������� �������)'),
	(33206,'���������� �������� - ����� (��������� �������)'),
	(33207,'���������� �������� - ����� (���������������� ������� (���������� ������)'),
	(33208,'���������� �������� - ����� (�����)'),
	(33217,'������ (���������������� ������� (���������� ������)'),
	(33218,'������ (�����)'),
	(33225,'���������� ��������� (���������� �������)'),
	(33227,'���������� ��������� (���������������� ������� (���������� ������)'),
	(33228,'���������� ��������� (�����)'),
	(33235,'�������, ����������� ��������������� �� ���������� �������� (���������� �������)'),
	(33237,'�������, ����������� ��������������� �� ���������� �������� (���������������� ������� (���������� ������)'),
	(33238,'�������, ����������� ��������������� �� ���������� �������� (�����)'),
	(33243,'���������� ����������� ��������� ����� (�������� �������)'),
	(33244,'���������� ����������� ��������� ����� (����������� �����, ����������� � ����������)'),
	(33245,'���������� ����������� ��������� ����� (���������� �������)'),
	(33247,'���������� ����������� ��������� ����� (���������������� ������� (���������� ������)'),
	(33248,'���������� ����������� ��������� ����� (�����)'),
	(33253,'���������� ���������� ����� (�������� �������)'),
	(33254,'���������� ���������� ����� (����������� �����, ����������� � ����������) ��������'),
	(33255,'���������� ���������� ����� (���������� �������)'),
	(33257,'���������� ���������� ����� (���������������� ������� (���������� ������)'),
	(33258,'���������� ���������� ����� (�����)'),
	(33263,'������������� ������������ ���� (�������� �������)'),
	(33264,'������������� ������������ ���� (����������� �����, ����������� � ����������)'),
	(33265,'������������� ������������ ���� (���������� �������)'),
	(33266,'������������� ������������ ���� (��������� �������)'),
	(33267,'������������� ������������ ���� (���������������� ������� (���������� ������)'),
	(33268,'������������� ������������ ���� (�����)'),
	(33277,'��������� (���������������� ������� (���������� ������)'),
	(33278,'��������� (�����)'),
	(33305,'��������� ����������� �������� (���������� �������)'),
	(33306,'��������� ����������� �������� (��������� �������)'),
	(33307,'��������� ����������� �������� (���������������� �������) (���������� ������)'),
	(33406,'��������� ���������� �������� (��������� �������)'),
	(33407,'��������� ���������� �������� (���������������� ������� (���������� ������)'),
	(33003,'�������� �������� �� 31 ������� ��������� ���� (�������� �������)'),
	(33004,'�������� �������� �� 31 ������� ��������� ���� (����������� �����, ����������� � ����������)'),
	(33005,'�������� �������� �� 31 ������� ��������� ���� (���������� �������)'),
	(33006,'�������� �������� �� 31 ������� ��������� ���� (��������� �������)'),
	(33007,'�������� �������� �� 31 ������� ��������� ���� (���������������� ������� (���������� ������)'),
	(33008,'�������� �������� �� 31 ������� ��������� ���� (�����)'),
	(36003,'������ ������ �� 31 ������� ��������� ����'),
	(36004,'������ ������ �� 31 ������� ����������� ����'),
	(41103,'����������� - ����� �� �������� ���'),
	(41113,'�� ������� ���������, �������, ����� � ����� �� �������� ���'),
	(41123,'�������� ��������, ������������ ��������, ������, ������������ � ���� ����������� �������� �� �������� ���'),
	(41133,'�� ����������� ���������� �������� �� �������� ���'),
	(41193,'������ ����������� �� �������� ���'),
	(41203,'������� - ����� �� �������� ���'),
	(41213,'����������� (�����������) �� �����, ���������, ������, ������ �� �������� ���'),
	(41223,'� ����� � ������� ����� ���������� �� �������� ���'),
	(41233,'�������� �� �������� �������������� �� �������� ���'),
	(41243,'������ �� ������� ����������� �� �������� ���'),
	(41293,'������ ������� �� �������� ���'),
	(41003,'������ �������� ������� �� ������� �������� �� �������� ���'),
	(42103,'����������� - ����� �� �������� ���'),
	(42113,'�� ������� ������������ ������� (����� ���������� ��������) �� �������� ���'),
	(42123,'�� ������� ����� ������ ����������� (����� �������) �� �������� ���'),
	(42133,'�� �������� ��������������� ������, �� ������� �������� ������ ����� (���� ���������� �������� ������� � ������ �����) �� �������� ���'),
	(42143,'����������, ��������� �� �������� ���������� ��������� � ����������� ����������� �� �������� ������� � ������ ������������ �� �������� ���'),
	(42193,'������ ����������� �� �������� ���'),
	(42203,'������� - ����� �� �������� ���'),
	(42213,'� ����� � �������������, ���������, �������������, �������������� � ����������� � ������������� ������������ ������� �� �������� ���'),
	(42223,'� ����� � ������������� ����� ������ ����������� (����� �������) �� �������� ���'),
	(42233,'� ����� � ������������� �������� ������ ����� (���� ���������� �������� ������� � ������ �����), �������������� ������ ������ ����� �� �������� ���'),
	(42243,'��������� �� �������� ��������������, ���������� � ��������� ��������������� ������ �� �������� ���'),
	(42293,'������ ������� �� �������� ���'),
	(42003,'������ �������� ������� �� �������������� �������� �� �������� ���'),
	(43103,'����������� - ����� �� �������� ���'),
	(43113,'��������� �������� � ������ �� �������� ���'),
	(43123,'�������� ������� ������������� (����������) �� �������� ���'),
	(43133,'�� ������� �����, ���������� ����� ������� �� �������� ���'),
	(43143,'�� ������� ���������, �������� � ������ �������� ������ ����� � ��. �� �������� ���'),
	(43193,'������ ����������� �� �������� ���'),
	(43203,'������� - ����� �� �������� ���'),
	(43213,'������������� (����������) � ����� � ������� � ��� ����� (����� �������) ����������� ��� �� ������� �� ������� ���������� �� �������� ���'),
	(43223,'�� ������ ���������� � ���� �������� �� ������������� ������� � ������ ������������� (����������) �� �������� ���'),
	(43233,'� ����� � ���������� (�������) �������� � ������ �������� ������ �����, ������� �������� � ������ �� �������� ���'),
	(43293,'������ ������� �� �������� ���'),
	(43003,'������ �������� ������� �� ���������� �������� �� �������� ���'),
	(44003,'������ �������� ������� �� �������� ������'),
	(44903,'�������� ������� ��������� ����� ����������� ������ �� ��������� � ����� �� �������� ���'),
	(61003,'������� ������� �� ������ ��������� ����'),
	(62103,'������������� ������ �� �������� ���'),
	(62153,'�������� ������ �� �������� ���'),
	(62203,'������� ������ �� �������� ���'),
	(62303,'������������ ������������� ������ � ������������� �� �������� ���'),
	(62403,'������� �� ���������� ����� ������������ �� �������� ���'),
	(62503,'������ �� �������� ���'),
	(62003,'��������� ������� - ����� �� �������� ���'),
	(63103,'������� �� ������� ����������� �� �������� ���'),
	(63113,'� ��� �����: ���������� � ����������������� ������ �� �������� ���'),
	(63123,'���������� �����������, ���������, ��������� � �.�. �� �������� ���'),
	(63133,'���� ����������� �� �������� ���'),
	(63203,'������� �� ���������� �������� ���������� �� �������� ���'),
	(63213,'� ��� �����: �������, ��������� � ������� ����� (������� ����������) �� �������� ���'),
	(63223,'�������, �� ��������� � ������� ����� �� �������� ���'),
	(63233,'������� �� ��������� ������������ � ������� ������� �� �������� ���'),
	(63243,'���������� ���������, ������, �������������� ���������� � ����� ��������� (����� �������) �� �������� ���'),
	(63253,'������ �������� ������� � ����� ��������� �� �������� ���'),
	(63263,'������ �� �������� ���'),
	(63303,'������������ �������� �������, ��������� � ����� ��������� �� �������� ���'),
	(63503,'������ �� �������� ���'),
	(63003,'������������ ������� - ����� �� �������� ���'),
	(64003,'������� ������� �� ����� ��������� ����')
