--
-- ONLY CREATES
-- 
DROP DATABASE IF EXISTS `@@DB2_NAME_CHANGE@@`;
CREATE DATABASE `@@DB2_NAME_CHANGE@@`;
USE `@@DB2_NAME_CHANGE@@`; 

CREATE TABLE LoginData (
  Year int(11) NOT NULL default '0',
  Month tinyint(3) NOT NULL default '0',
  Day tinyint(3) NOT NULL default '0',
  Age00 int(11) NOT NULL default '0',
  Age10 int(11) NOT NULL default '0',
  Age20 int(11) NOT NULL default '0',
  Age30 int(11) NOT NULL default '0',
  Age40 int(11) NOT NULL default '0',
  Age50 int(11) NOT NULL default '0',
  Age60 int(11) NOT NULL default '0',
  AgeETC int(11) NOT NULL default '0',
  GenderMale int(11) NOT NULL default '0',
  GenderFemale int(11) NOT NULL default '0',
  GenderUnknown int(11) NOT NULL default '0',
  Area00 int(11) NOT NULL default '0',
  Area01 int(11) NOT NULL default '0',
  Area02 int(11) NOT NULL default '0',
  Area03 int(11) NOT NULL default '0',
  Area04 int(11) NOT NULL default '0',
  Area05 int(11) NOT NULL default '0',
  Area06 int(11) NOT NULL default '0',
  Area07 int(11) NOT NULL default '0',
  Area08 int(11) NOT NULL default '0',
  Area09 int(11) NOT NULL default '0',
  Area10 int(11) NOT NULL default '0',
  Area11 int(11) NOT NULL default '0',
  Area12 int(11) NOT NULL default '0',
  Area13 int(11) NOT NULL default '0',
  Area14 int(11) NOT NULL default '0',
  Area15 int(11) NOT NULL default '0',
  Area16 int(11) NOT NULL default '0',
  Area17 int(11) NOT NULL default '0',
  Area18 int(11) NOT NULL default '0',
  AreaETC int(11) NOT NULL default '0'
) ENGINE=MyISAM;

CREATE TABLE LoginPlayerData (
  PlayerID varchar(10) NOT NULL default '',
  SSN varchar(20) NOT NULL default '',
  ZipCode varchar(7) NOT NULL default '',
  `Date` date NOT NULL default '0000-00-00',
  `Time` time NOT NULL default '00:00:00',
  IP varchar(15) NOT NULL default '',
  KEY IDX_LoginPlayerData2 (PlayerID),
  KEY IDX_DATE (Date),
  KEY LoginPlayerData_IP (IP)
) ENGINE=MyISAM;

CREATE TABLE LogoutPlayerData (
  PlayerID varchar(10) NOT NULL default '',
  SSN varchar(20) NOT NULL default '',
  ZipCode varchar(7) NOT NULL default '',
  `Date` date NOT NULL default '0000-00-00',
  `Time` time NOT NULL default '00:00:00',
  IP varchar(15) NOT NULL default '',
  KEY IDX_LogoutPlayerData2 (PlayerID),
  KEY IDX_DATE (Date)
) ENGINE=MyISAM;

CREATE TABLE UserStat (
  Year int(11) NOT NULL default '0',
  Month int(11) NOT NULL default '0',
  Day int(11) NOT NULL default '0',
  Hour int(11) NOT NULL default '0',
  Minute int(11) NOT NULL default '0',
  CurrentUser00 int(11) NOT NULL default '0',
  CurrentUser01 int(11) NOT NULL default '0',
  CurrentUser02 int(11) NOT NULL default '0',
  CurrentUser03 int(11) NOT NULL default '0',
  CurrentUser04 int(11) NOT NULL default '0',
  CurrentUser05 int(11) NOT NULL default '0',
  CurrentUser06 int(11) NOT NULL default '0',
  CurrentUser07 int(11) NOT NULL default '0',
  CurrentUser08 int(11) NOT NULL default '0',
  CurrentUser09 int(11) NOT NULL default '0',
  CurrentUser200 int(11) NOT NULL default '0',
  CurrentUser201 int(11) NOT NULL default '0',
  CurrentUser202 int(11) NOT NULL default '0',
  CurrentUser203 int(11) NOT NULL default '0',
  CurrentUser204 int(11) NOT NULL default '0',
  CurrentUser205 int(11) NOT NULL default '0',
  CurrentUser206 int(11) NOT NULL default '0',
  CurrentUser207 int(11) NOT NULL default '0',
  CurrentUser208 int(11) NOT NULL default '0',
  CurrentUser209 int(11) NOT NULL default '0',
  CurrentUser300 int(11) NOT NULL default '0',
  CurrentUser301 int(11) NOT NULL default '0',
  CurrentUser302 int(11) NOT NULL default '0',
  CurrentUser303 int(11) NOT NULL default '0',
  CurrentUser304 int(11) NOT NULL default '0',
  CurrentUser305 int(11) NOT NULL default '0',
  CurrentUser306 int(11) NOT NULL default '0',
  CurrentUser307 int(11) NOT NULL default '0',
  CurrentUser308 int(11) NOT NULL default '0',
  CurrentUser309 int(11) NOT NULL default '0',
  TotalUser int(11) NOT NULL default '0',
  TotalBillUser int(11) NOT NULL default '0',
  PlayerCount int(11) NOT NULL default '0',
  BillingPlayerCount int(11) NOT NULL default '0',
  KEY IDX_UserStat (Year,Month,Day,Hour,Minute,TotalUser,PlayerCount),
  KEY UserStat_2 (Year,Month,Day)
) ENGINE=MyISAM;

CREATE TABLE UserStatus (
  WorldID tinyint(10) NOT NULL default '0',
  CurrentUser tinyint(3) NOT NULL default '0',
  ServerID int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM;