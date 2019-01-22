-- MySQL dump 9.11
--
-- Database: DARKEDEN
-- ------------------------------------------------------

DROP DATABASE IF EXISTS `@@DB_NAME_CHANGE@@`;
CREATE DATABASE `@@DB_NAME_CHANGE@@`;
USE `@@DB_NAME_CHANGE@@`; 

CREATE TABLE ARInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(11) NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ARObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  BulletCount tinyint(3) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_ARObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE AbnormalList (
  PlayerID varchar(15) NOT NULL default '',
  PRIMARY KEY  (PlayerID)
) TYPE=MyISAM;


CREATE TABLE AdvancementClassEXPInfo (
  Level int(11) NOT NULL default '0',
  GoalExp int(11) NOT NULL default '0',
  AccumExp bigint(11) NOT NULL default '0',
  KEY IDX_Level (Level)
) TYPE=MyISAM;

CREATE TABLE AttrInfo (
  attrID int(11) NOT NULL default '0',
  attr1 int(11) NOT NULL default '0',
  attr2 int(11) NOT NULL default '0',
  comm varchar(200) NOT NULL default '',
  PRIMARY KEY  (attrID)
) TYPE=MyISAM;

CREATE TABLE BeltInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  PocketCount tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BeltObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_BeltObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE BladeInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  MaxSilver smallint(5) unsigned NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BladeObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_BladeObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE BloodBibleBonusInfo (
  Type int(11) NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  OptionList text NOT NULL,
  PRIMARY KEY  (Type)
) TYPE=MyISAM;

CREATE TABLE BloodBibleInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BloodBibleObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType tinyint(3) unsigned NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Status int(11) NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_BloodBibleObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE BloodBibleSignInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BloodBibleSignObject (
  ItemID bigint(20) unsigned NOT NULL auto_increment,
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  PRIMARY KEY  (ItemID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE BombInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BombMaterialInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BombMaterialObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY BombMaterialObject_m1 (OwnerID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE BombObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY BombObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE BraceletInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE BraceletObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_BraceletObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE BugReportLog (
  BugID int(10) unsigned NOT NULL auto_increment,
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  ReportTime datetime NOT NULL default '0000-00-00 00:00:00',
  ReportLog text NOT NULL,
  PRIMARY KEY  (BugID)
) TYPE=MyISAM;


CREATE TABLE BulletinBoardObject (
  ID int(10) unsigned NOT NULL auto_increment,
  ServerID tinyint(3) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  X smallint(5) unsigned NOT NULL default '0',
  Y smallint(5) unsigned NOT NULL default '0',
  Message varchar(100) NOT NULL default '',
  Type smallint(5) unsigned NOT NULL default '0',
  TimeLimit datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (ID),
  KEY IDX_ZONEID (ServerID,ZoneID)
) TYPE=MyISAM;


CREATE TABLE CanEnterGDRLair (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  KEY CanEnterGDRLair_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE CardCount (
  CARDKIND smallint(5) NOT NULL default '0',
  CARDCOUNT int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (CARDKIND)
) TYPE=MyISAM;

CREATE TABLE CarryingReceiverInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CarryingReceiverObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID)
) TYPE=MyISAM;


CREATE TABLE CastleInfo (
  ServerID smallint(5) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  ShrineID smallint(5) unsigned NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  GuildID int(10) unsigned NOT NULL default '0',
  Race smallint(5) unsigned NOT NULL default '0',
  ItemTaxRatio int(10) unsigned NOT NULL default '0',
  EntranceFee int(10) unsigned NOT NULL default '0',
  TaxBalance int(10) unsigned NOT NULL default '0',
  BonusOptionType text NOT NULL,
  FirstResurrectZoneID smallint(5) unsigned NOT NULL default '0',
  FirstResurrectX int(10) unsigned NOT NULL default '0',
  FirstResurrectY int(10) unsigned NOT NULL default '0',
  SecondResurrectZoneID smallint(5) unsigned NOT NULL default '0',
  SecondResurrectX int(10) unsigned NOT NULL default '0',
  SecondResurrectY int(10) unsigned NOT NULL default '0',
  ThirdResurrectZoneID smallint(5) unsigned NOT NULL default '0',
  ThirdResurrectX int(10) unsigned NOT NULL default '0',
  ThirdResurrectY int(10) unsigned NOT NULL default '0',
  ZoneIDList text NOT NULL,
  PRIMARY KEY  (ServerID,ZoneID)
) TYPE=MyISAM;

CREATE TABLE CastleShrineInfo (
  ID smallint(5) unsigned NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  GuardZoneID smallint(5) unsigned NOT NULL default '0',
  GuardX int(10) unsigned NOT NULL default '0',
  GuardY int(10) unsigned NOT NULL default '0',
  GuardMType smallint(5) unsigned NOT NULL default '0',
  HolyZoneID smallint(5) unsigned NOT NULL default '0',
  HolyX int(10) unsigned NOT NULL default '0',
  HolyY int(10) unsigned NOT NULL default '0',
  HolyMType smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE CastleSkillInfo (
  SkillType int(11) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (SkillType,ZoneID)
) TYPE=MyISAM;

CREATE TABLE CastleStatInfo (
  WorldID smallint(5) unsigned NOT NULL default '0',
  ServerGroupID smallint(5) unsigned NOT NULL default '0',
  FollowServerID smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (WorldID,ServerGroupID)
) TYPE=MyISAM;

CREATE TABLE CastleSymbolInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CastleSymbolObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType tinyint(3) unsigned NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Status int(11) NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_CastleSymbolObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE ClientVersion (
  Version int(10) unsigned NOT NULL default '0',
  GuildMarkVersion int(10) unsigned NOT NULL default '0',
  LastGuildMarkVersion int(10) unsigned NOT NULL default '0',
  TempGuildMarkVersion int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE ClientVersion_bak (
  Version int(10) unsigned NOT NULL default '0',
  GuildMarkVersion int(10) unsigned NOT NULL default '0',
  LastGuildMarkVersion int(10) unsigned NOT NULL default '0',
  TempGuildMarkVersion int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE CoatInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CoatObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  MainColor tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_CoatObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE CodeSheetInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CodeSheetObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(30) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_RESURRECT_ITEM (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ComposMeiInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Effect varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ComposMeiObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_ComposMeiObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE CoreZapInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  OptionClass tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CoreZapObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY CoreZapObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE CoupleInfo (
  ID smallint(5) unsigned NOT NULL auto_increment,
  MalePartnerName char(10) NOT NULL default '',
  FemalePartnerName char(10) NOT NULL default '',
  Race tinyint(4) NOT NULL default '0',
  CoupleDate date NOT NULL default '0000-00-00',
  PRIMARY KEY  (ID),
  KEY CoupleInfo_m1 (MalePartnerName),
  KEY CoupleInfo_m2 (FemalePartnerName)
) TYPE=MyISAM;

CREATE TABLE CoupleRingInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CoupleRingObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(30) default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  Name varchar(10) default '',
  ItemFlag tinyint(4) NOT NULL default '0',
  PartnerItemID bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY CoupleRingObject_m1 (OwnerID),
  KEY IDX_PartnerItemID (PartnerItemID)
) TYPE=MyISAM;


CREATE TABLE CrashLog (
  BugID int(10) unsigned NOT NULL auto_increment,
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  ReportTime datetime NOT NULL default '0000-00-00 00:00:00',
  ExecutableTime datetime NOT NULL default '0000-00-00 00:00:00',
  Version tinyint(3) NOT NULL default '0',
  Address varchar(10) NOT NULL default '',
  Message text NOT NULL,
  PRIMARY KEY  (BugID),
  KEY IDX_ADDRESS (Address)
) TYPE=MyISAM;


CREATE TABLE CrashReportLog (
  BugID int(10) unsigned NOT NULL auto_increment,
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  ReportTime datetime NOT NULL default '0000-00-00 00:00:00',
  ExecutableTime datetime NOT NULL default '0000-00-00 00:00:00',
  Version smallint(3) unsigned default NULL,
  Address varchar(10) NOT NULL default '',
  OS text NOT NULL,
  CallStack text NOT NULL,
  Message text NOT NULL,
  PRIMARY KEY  (BugID),
  KEY IDX_ADDRESS (Address)
) TYPE=MyISAM;


CREATE TABLE CrossInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  MaxSilver smallint(5) unsigned NOT NULL default '0',
  MPBonus smallint(5) unsigned NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE CrossObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_CrossObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE DEXBalanceInfo (
  Level int(11) NOT NULL auto_increment,
  GoalExp int(11) NOT NULL default '0',
  AccumExp bigint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (Level)
) TYPE=MyISAM;

CREATE TABLE DarkLightInfo (
  Month tinyint(3) unsigned NOT NULL default '0',
  Hour tinyint(3) unsigned NOT NULL default '0',
  Minute tinyint(3) unsigned NOT NULL default '0',
  DarkLevel tinyint(3) unsigned NOT NULL default '0',
  LightLevel tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (Month,Hour,Minute)
) TYPE=MyISAM;

CREATE TABLE DefaultOptionSetInfo (
  Type int(11) NOT NULL default '0',
  OptionList varchar(50) NOT NULL default '0',
  PRIMARY KEY  (Type)
) TYPE=MyISAM;

CREATE TABLE DeleteChar (
  PlayerID varchar(15) NOT NULL default '',
  WorldID tinyint(3) unsigned NOT NULL default '0',
  Name varchar(10) NOT NULL default '',
  delDate datetime NOT NULL default '0000-00-00 00:00:00',
  KEY IDX_PlayerID (PlayerID)
) TYPE=MyISAM;


CREATE TABLE DermisInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE DermisObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID)
) TYPE=MyISAM;


CREATE TABLE DirectiveSet (
  ID int(10) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  Content text NOT NULL,
  DeadContent text NOT NULL,
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE DonationGuild200501 (
  GuildID int(10) unsigned NOT NULL default '0',
  GuildName varchar(20) NOT NULL default '',
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(20) NOT NULL default '',
  WorldID int(10) unsigned NOT NULL default '0',
  Amount bigint(20) unsigned NOT NULL default '0',
  DonationDateTime datetime NOT NULL default '0000-00-00 00:00:00',
  KEY IDX_NAME (GuildID,PlayerID,Name,WorldID)
) TYPE=MyISAM;


CREATE TABLE DonationPersonal200501 (
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  WorldID int(10) unsigned NOT NULL default '0',
  Amount bigint(20) unsigned NOT NULL default '0',
  DonationDateTime datetime NOT NULL default '0000-00-00 00:00:00',
  KEY IDX_NAME (PlayerID,Name,WorldID)
) TYPE=MyISAM;


CREATE TABLE DyePotionInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(1) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  FunctionFlag tinyint(3) unsigned NOT NULL default '0',
  FunctionValue smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE DyePotionObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_DyePotionObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ETCInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ETCObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY IDX_ETCObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectAcidTouch (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectAftermath (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  KEY IDX_EffectAftermath (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectBehemothForceScroll (
  OwnerID varchar(10) NOT NULL default '',
  RemainTime int(10) unsigned NOT NULL default '0',
  KEY EffectBehemothForceScroll_m1 (OwnerID)
) TYPE=MyISAM;

CREATE TABLE EffectBloodDrain (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  Level tinyint(3) unsigned NOT NULL default '0',
  KEY IDX_EffectBloodDrain (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectCarnelianForceScroll (
  OwnerID varchar(10) NOT NULL default '',
  RemainTime int(10) unsigned NOT NULL default '0',
  KEY EffectCarnelianForceScroll_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectDetectHidden (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectFlare (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  Level int(10) unsigned NOT NULL default '0',
  OldSight tinyint(3) unsigned NOT NULL default '0',
  KEY IDX_EffectFlare (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  EffectClass smallint(3) unsigned NOT NULL default '0',
  TimeSec int(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE EffectItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_RESURRECT_ITEM (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectKillAftermath (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectLight (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  OldSight tinyint(3) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectMute (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  KEY EffectMute_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectPKZoneRegen (
  ID int(10) NOT NULL default '0',
  ZoneID smallint(6) NOT NULL default '0',
  LeftX int(10) NOT NULL default '0',
  TopY int(10) NOT NULL default '0',
  RightX int(10) NOT NULL default '0',
  BottomY int(10) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY EffectPKZoneRegen_ZoneID (ZoneID)
) TYPE=MyISAM;

CREATE TABLE EffectParalysis (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectPoison (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  Level tinyint(3) unsigned NOT NULL default '0',
  Point tinyint(3) unsigned NOT NULL default '0',
  Delay smallint(5) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectPoisonousHands (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectProtectionFromParalysis (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  SkillLevel tinyint(3) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectProtectionFromPoison (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  SkillLevel tinyint(3) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EffectRestore (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  KEY EffectRestore_m1 (OwnerID)
) TYPE=MyISAM;

CREATE TABLE EffectSafeForceScroll (
  OwnerID varchar(10) NOT NULL default '',
  RemainTime int(10) unsigned NOT NULL default '0',
  KEY EffectSafeForceScroll_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EffectYellowPoisonToCreature (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  Level int(10) unsigned NOT NULL default '0',
  OldSight tinyint(3) unsigned NOT NULL default '0',
  KEY IDX_EffectYellowPoisionToCreature (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EnemyErase (
  OwnerID varchar(10) NOT NULL default '',
  YearTime int(10) unsigned NOT NULL default '0',
  DayTime int(10) unsigned NOT NULL default '0',
  EnemyName varchar(10) NOT NULL default '',
  KEY IDX_EnemyErase (OwnerID)
) TYPE=MyISAM;


CREATE TABLE Event200501Main (
  PlayerID varchar(15) NOT NULL default '',
  WebLoginDate date NOT NULL default '0000-00-00',
  RecvPremiumDate date NOT NULL default '0000-00-00',
  RecvItemDate date NOT NULL default '0000-00-00',
  PayPremiumDate date NOT NULL default '0000-00-00',
  OrderID int(10) unsigned NOT NULL default '0',
  RecvPremiumItemDate date NOT NULL default '0000-00-00',
  PRIMARY KEY  (PlayerID)
) TYPE=MyISAM;


CREATE TABLE Event200501Recommend (
  UniqueID int(10) unsigned NOT NULL auto_increment,
  PlayerID varchar(15) NOT NULL default '',
  Recommender varchar(10) NOT NULL default '',
  RecommendDate date NOT NULL default '0000-00-00',
  RecvItemDate date NOT NULL default '0000-00-00',
  PRIMARY KEY  (UniqueID),
  KEY IDX_PlayerID (PlayerID)
) TYPE=MyISAM;


CREATE TABLE EventETCInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(50) NOT NULL default '',
  EName varchar(50) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Function int(10) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE EventETCObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY EventETCObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EventGiftBoxInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE EventGiftBoxObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY EventGiftBoxObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EventItemCount (
  ItemClass smallint(5) NOT NULL default '0',
  ItemType smallint(5) NOT NULL default '0',
  Count int(11) NOT NULL default '0',
  PRIMARY KEY  (ItemClass,ItemType)
) TYPE=MyISAM;

CREATE TABLE EventItemCount2 (
  Race int(11) NOT NULL default '0',
  ItemIndex int(11) NOT NULL default '0',
  Count int(11) NOT NULL default '0',
  PRIMARY KEY  (Race,ItemIndex)
) TYPE=MyISAM;

CREATE TABLE EventItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE EventItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EventLotto (
  PlayerID varchar(15) NOT NULL default '',
  Type tinyint(3) NOT NULL default '0',
  count int(10) NOT NULL default '0',
  Kind varchar(20) NOT NULL default 'ChoboEvent',
  PRIMARY KEY  (PlayerID,Type),
  KEY ID_IDX (PlayerID)
) TYPE=MyISAM;


CREATE TABLE EventQuestAdvance (
  QuestLevel int(10) NOT NULL default '0',
  OwnerID varchar(20) NOT NULL default '',
  Status tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (OwnerID,QuestLevel),
  KEY EventQuestAdvance_Owner (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EventQuestLootingInfo (
  ID int(11) NOT NULL auto_increment,
  QuestLevel smallint(5) NOT NULL default '0',
  LootingType enum('ZONE','MONSTER','BOTH','NONE') NOT NULL default 'NONE',
  LootingZone smallint(5) NOT NULL default '0',
  LootingMType smallint(5) NOT NULL default '0',
  LootingIClass smallint(5) NOT NULL default '0',
  LootingITypeMin smallint(5) NOT NULL default '0',
  LootingITypeMax smallint(5) NOT NULL default '0',
  Race tinyint(3) NOT NULL default '0',
  MinGrade smallint(5) NOT NULL default '0',
  MaxGrade smallint(5) NOT NULL default '0',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE EventQuestRewardInfo (
  RewardID int(10) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  Status int(10) unsigned NOT NULL default '0',
  Grade tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (RewardID)
) TYPE=MyISAM;

CREATE TABLE EventQuestRewardRecord (
  PlayerID varchar(15) NOT NULL default '',
  RewardID int(10) unsigned NOT NULL default '0',
  Time datetime NOT NULL default '0000-00-00 00:00:00',
  RealPlayerID varchar(10) NOT NULL default ''
) TYPE=MyISAM;


CREATE TABLE EventQuestRewardSchedule (
  RewardID int(10) unsigned NOT NULL default '0',
  QuestLevel int(10) unsigned NOT NULL default '0',
  Count int(10) unsigned NOT NULL default '0',
  Time datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;


CREATE TABLE EventQuestStatus (
  ID varchar(10) NOT NULL default '',
  Status tinyint(3) unsigned NOT NULL default '0',
  Count int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE EventStarInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  FunctionFlag tinyint(3) unsigned NOT NULL default '0',
  FunctionValue smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE EventStarObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY EventStarObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EventTreeInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE EventTreeObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY EventTreeObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE EventZoneInfo (
  ID smallint(5) unsigned NOT NULL default '0',
  EventID smallint(5) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  EnterX int(10) unsigned NOT NULL default '0',
  EnterY int(10) unsigned NOT NULL default '0',
  ResurrectX int(10) unsigned NOT NULL default '0',
  ResurrectY int(10) unsigned NOT NULL default '0',
  PCLimit int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY EventZoneInfo_ZoneID (ZoneID)
) TYPE=MyISAM;

CREATE TABLE FasciaInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE FasciaObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID)
) TYPE=MyISAM;


CREATE TABLE FirstNameInfo (
  MonsterType varchar(10) NOT NULL default 'BASIC',
  Name varchar(20) NOT NULL default ''
) TYPE=MyISAM;

CREATE TABLE FlagPolePosition (
  ZoneID smallint(5) unsigned NOT NULL default '0',
  CenterX int(10) unsigned NOT NULL default '0',
  CenterY int(10) unsigned NOT NULL default '0',
  Width int(10) unsigned NOT NULL default '0',
  Height int(10) unsigned NOT NULL default '0',
  Race enum('SLAYER','VAMPIRE','OUSTERS') NOT NULL default 'SLAYER',
  MonsterType smallint(5) unsigned NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE FlagSet (
  OwnerID varchar(30) NOT NULL default '',
  FlagData varchar(24) default NULL,
  PRIMARY KEY  (OwnerID)
) TYPE=MyISAM;

CREATE TABLE FlagWarHistory (
  FlagWarID varchar(10) NOT NULL default '',
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  Race tinyint(1) unsigned NOT NULL default '0',
  ServerID tinyint(1) unsigned NOT NULL default '0',
  FlagNum tinyint(3) unsigned NOT NULL default '0',
  KEY IDX_FlagWarID (FlagWarID)
) TYPE=MyISAM;


CREATE TABLE FlagWarStat (
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  Race tinyint(1) unsigned NOT NULL default '0',
  ServerID tinyint(1) unsigned NOT NULL default '0',
  ItemID bigint(20) unsigned NOT NULL default '0',
  KEY IDX_FlagWarStat (Name,ItemID)
) TYPE=MyISAM;


CREATE TABLE GQuestItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE GQuestItemObject (
  ItemID bigint(20) unsigned NOT NULL auto_increment,
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  PRIMARY KEY  (ItemID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE GQuestSave (
  QuestID smallint(5) NOT NULL default '0',
  OwnerID varchar(20) NOT NULL default '',
  Time datetime NOT NULL default '2003-01-01 00:00:00',
  Status tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (QuestID,OwnerID),
  KEY IDX_OWNER (OwnerID)
) TYPE=MyISAM;


CREATE TABLE GSStringPool (
  ID int(11) NOT NULL default '0',
  String text NOT NULL,
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE GameServerGroupInfo (
  GroupID int(10) unsigned NOT NULL default '0',
  WorldID int(10) unsigned NOT NULL default '0',
  GroupName char(20) NOT NULL default '',
  Stat tinyint(1) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE GameServerInfo (
  ServerID int(10) unsigned NOT NULL default '0',
  Nickname varchar(20) NOT NULL default '',
  IP varchar(15) NOT NULL default '',
  TCPPort int(10) unsigned NOT NULL default '0',
  UDPPort int(10) unsigned NOT NULL default '0',
  WorldID int(10) unsigned NOT NULL default '0',
  GroupID int(10) unsigned NOT NULL default '0',
  Stat tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (Nickname)
) TYPE=MyISAM;

CREATE TABLE GatherItemQuestInfo (
  QuestID int(10) NOT NULL default '0',
  NPC varchar(20) NOT NULL default '0',
  TargetIClass smallint(5) NOT NULL default '0',
  TargetIType smallint(5) NOT NULL default '0',
  Goal int(10) NOT NULL default '0',
  TimeLimitSec int(10) NOT NULL default '0',
  Race tinyint(3) NOT NULL default '0',
  MinGrade int(10) NOT NULL default '0',
  MaxGrade int(10) NOT NULL default '0',
  RewardClass int(10) NOT NULL default '0',
  EventQuest tinyint(3) NOT NULL default '0',
  QuestLevel smallint(5) NOT NULL default '0',
  PRIMARY KEY  (QuestID)
) TYPE=MyISAM;

CREATE TABLE GiftBoxCount (
  BOXKIND smallint(5) NOT NULL default '0',
  BOXCOUNT int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (BOXKIND)
) TYPE=MyISAM;

CREATE TABLE GloveInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE GloveObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_GloveObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE GoodsList (
  KeyId int(10) unsigned NOT NULL auto_increment,
  KeyCode int(12) unsigned NOT NULL default '0',
  WorldID varchar(5) NOT NULL default '',
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(15) NOT NULL default '',
  InputTime datetime NOT NULL default '0000-00-00 00:00:00',
  Num int(3) unsigned NOT NULL default '0',
  ItemType int(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (KeyId),
  KEY KeyNum (KeyCode)
) TYPE=MyISAM;


CREATE TABLE GoodsListInfo (
  GoodsID int(10) unsigned NOT NULL auto_increment,
  Name varchar(30) NOT NULL default '',
  Description text NOT NULL,
  Pay enum('FREE','PAY') NOT NULL default 'FREE',
  Limited enum('LIMITED','UNLIMITED','FOREVER') NOT NULL default 'LIMITED',
  Hour int(10) unsigned NOT NULL default '0',
  Race enum('SLAYER','VAMPIRE','OUSTERS','COMMON') NOT NULL default 'COMMON',
  Sex enum('MALE','FEMALE','COMMON') NOT NULL default 'COMMON',
  Kind enum('ITEM','ARMOR','WEAPON','ACCESSORY','UNIQUE','SET','RICECAKE','DYE','FIRECRACKER','ETC','RARE','PET','MOVE','SPECIAL','ENCHANT') NOT NULL default 'ITEM',
  ItemClass smallint(10) NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '4',
  OptionType varchar(10) NOT NULL default '',
  Num tinyint(3) unsigned NOT NULL default '1',
  Img varchar(30) NOT NULL default '',
  ShowWeb tinyint(3) NOT NULL default '1',
  Recom tinyint(3) NOT NULL default '0',
  HotCount int(10) unsigned NOT NULL default '0',
  RegistDate datetime NOT NULL default '2003-05-05 00:00:00',
  Price int(10) unsigned NOT NULL default '0',
  GroupItem int(4) NOT NULL default '0',
  NewGoods tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (GoodsID)
) TYPE=MyISAM;

CREATE TABLE GoodsListInfo_bak (
  GoodsID int(10) unsigned NOT NULL auto_increment,
  Name varchar(30) NOT NULL default '',
  Description text NOT NULL,
  Pay enum('FREE','PAY') NOT NULL default 'FREE',
  Limited enum('LIMITED','UNLIMITED','FOREVER') NOT NULL default 'LIMITED',
  Hour int(10) unsigned NOT NULL default '0',
  Race enum('SLAYER','VAMPIRE','OUSTERS','COMMON') NOT NULL default 'COMMON',
  Sex enum('MALE','FEMALE','COMMON') NOT NULL default 'COMMON',
  Kind enum('ITEM','ARMOR','WEAPON','ACCESSORY','UNIQUE','SET','RICECAKE','DYE','FIRECRACKER','ETC','RARE','PET','MOVE','SPECIAL','ENCHANT') NOT NULL default 'ITEM',
  ItemClass smallint(10) NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '4',
  OptionType varchar(10) NOT NULL default '',
  Num tinyint(3) unsigned NOT NULL default '1',
  Img varchar(30) NOT NULL default '',
  ShowWeb tinyint(3) NOT NULL default '1',
  Recom tinyint(3) NOT NULL default '0',
  HotCount int(10) unsigned NOT NULL default '0',
  RegistDate datetime NOT NULL default '2003-05-05 00:00:00',
  Price int(10) unsigned NOT NULL default '0',
  GroupItem int(4) NOT NULL default '0',
  NewGoods tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (GoodsID)
) TYPE=MyISAM;

CREATE TABLE GoodsListObject (
  BuyID varchar(16) NOT NULL default '',
  ID bigint(20) unsigned NOT NULL auto_increment,
  World tinyint(3) unsigned NOT NULL default '0',
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  GoodsID int(10) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  Status enum('NOT','GET') NOT NULL default 'NOT',
  PRIMARY KEY  (ID),
  KEY IDX_BuyID (BuyID),
  KEY IDX_PlayerID (PlayerID),
  KEY IDX_Name (Name)
) TYPE=MyISAM;


CREATE TABLE GroupListInfo (
  GroupID int(10) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  G1 int(10) unsigned NOT NULL default '0',
  G2 int(10) unsigned NOT NULL default '0',
  G3 int(10) unsigned NOT NULL default '0',
  G4 int(10) unsigned NOT NULL default '0',
  G5 int(10) unsigned NOT NULL default '0',
  G6 int(10) unsigned NOT NULL default '0',
  G7 int(10) unsigned NOT NULL default '0',
  G8 int(10) unsigned NOT NULL default '0',
  G9 int(10) unsigned NOT NULL default '0',
  G10 int(10) unsigned NOT NULL default '0',
  G11 int(10) unsigned NOT NULL default '0',
  G12 int(10) unsigned NOT NULL default '0',
  G13 int(10) unsigned NOT NULL default '0',
  G14 int(10) unsigned NOT NULL default '0',
  G15 int(10) unsigned NOT NULL default '0',
  G16 int(10) unsigned NOT NULL default '0',
  G17 int(10) unsigned NOT NULL default '0',
  G18 int(10) unsigned NOT NULL default '0',
  G19 int(10) unsigned NOT NULL default '0',
  G20 int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (GroupID)
) TYPE=MyISAM;

CREATE TABLE GuildInfo (
  GuildID int(10) unsigned NOT NULL default '0',
  GuildName varchar(20) NOT NULL default '',
  GuildType tinyint(3) unsigned NOT NULL default '0',
  GuildRace tinyint(3) unsigned NOT NULL default '0',
  GuildState tinyint(3) unsigned NOT NULL default '0',
  ServerGroupID tinyint(3) unsigned NOT NULL default '0',
  GuildZoneID smallint(5) unsigned NOT NULL default '0',
  Master varchar(10) NOT NULL default '',
  MemberCount int(10) unsigned NOT NULL default '0',
  Date varchar(11) NOT NULL default '',
  Fame int(10) unsigned NOT NULL default '0',
  Notoriety int(10) unsigned NOT NULL default '0',
  Gold int(10) unsigned NOT NULL default '0',
  Intro text NOT NULL,
  UNIQUE KEY GuildInfo_u1 (GuildID)
) TYPE=MyISAM;

CREATE TABLE GuildMember (
  GuildID int(10) unsigned NOT NULL default '0',
  Name varchar(10) NOT NULL default '',
  Rank tinyint(3) unsigned NOT NULL default '0',
  Intro text NOT NULL,
  ExpireDate varchar(7) NOT NULL default '',
  RequestDateTime datetime default '0000-00-00 00:00:00',
  LogOn tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (Name),
  KEY IDX_GuildID (GuildID)
) TYPE=MyISAM;


CREATE TABLE GuildRegistrationInfo (
  GuildID int(10) unsigned NOT NULL default '0',
  GuildType tinyint(3) unsigned NOT NULL default '0',
  Deadline varchar(30) NOT NULL default '',
  PRIMARY KEY  (GuildID)
) TYPE=MyISAM;


CREATE TABLE GuildUnionInfo (
  UnionID int(10) unsigned NOT NULL auto_increment,
  MasterGuildID int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (UnionID)
) TYPE=MyISAM;

CREATE TABLE GuildUnionMember (
  UnionID int(10) unsigned NOT NULL default '0',
  OwnerGuildID int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (OwnerGuildID,UnionID),
  KEY IDX_Owner (OwnerGuildID),
  KEY IDX_Union (UnionID)
) TYPE=MyISAM;

CREATE TABLE GuildUnionOffer (
  UnionID int(10) unsigned NOT NULL default '0',
  OfferType enum('JOIN','QUIT','ESCAPE') NOT NULL default 'JOIN',
  OwnerGuildID int(10) unsigned NOT NULL default '0',
  OfferTime datetime NOT NULL default '2004-10-01 00:00:00',
  PRIMARY KEY  (OwnerGuildID),
  KEY IDX_Union (UnionID)
) TYPE=MyISAM;

CREATE TABLE GuildVoteDataInfo (
  VoteID int(10) unsigned NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  Casted tinyint(3) unsigned NOT NULL default '0',
  Vote tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (VoteID,Name)
) TYPE=MyISAM;


CREATE TABLE GuildVoteInfo (
  VoteID int(10) unsigned NOT NULL default '0',
  GuildID int(10) unsigned NOT NULL default '0',
  VoteType tinyint(3) unsigned NOT NULL default '0',
  Deadline varchar(30) NOT NULL default '',
  PRIMARY KEY  (VoteID)
) TYPE=MyISAM;


CREATE TABLE GuildWarHistory (
  WarID int(10) unsigned NOT NULL default '0',
  GuildWarID varchar(10) NOT NULL default '',
  ServerID tinyint(1) unsigned NOT NULL default '0',
  CastleName varchar(20) NOT NULL default '',
  DefenseGuildID int(10) unsigned NOT NULL default '0',
  DefenseGuildName varchar(20) NOT NULL default '',
  AttackGuildID int(10) unsigned NOT NULL default '0',
  AttackGuildName varchar(20) NOT NULL default '',
  WinnerGuildID int(10) unsigned NOT NULL default '0',
  WinnerGuildName varchar(20) NOT NULL default '',
  PRIMARY KEY  (WarID),
  KEY IDX_GuildWarID (GuildWarID)
) TYPE=MyISAM;


CREATE TABLE HeadCount (
  ID int(10) unsigned NOT NULL auto_increment,
  Name varchar(20) NOT NULL default '',
  Time datetime NOT NULL default '0000-00-00 00:00:00',
  FirstLevel smallint(5) unsigned NOT NULL default '0',
  LastLevel smallint(5) unsigned NOT NULL default '0',
  HeadCount int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;


CREATE TABLE HelmInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE HelmObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_HelmObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE HolyWaterInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE HolyWaterObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY IDX_HolyWaterObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE INTBalanceInfo (
  Level int(11) NOT NULL auto_increment,
  GoalExp int(11) NOT NULL default '0',
  AccumExp bigint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (Level)
) TYPE=MyISAM;

CREATE TABLE IPBlockInfo (
  IP varchar(15) NOT NULL default '',
  first varchar(15) NOT NULL default '',
  last varchar(15) NOT NULL default '',
  class smallint(5) NOT NULL default '0',
  KEY IP (IP)
) TYPE=MyISAM;

CREATE TABLE IllegalPlayerInfo (
  loginTime datetime NOT NULL default '0000-00-00 00:00:00',
  IP char(15) default NULL,
  MAC char(12) default NULL,
  PRIMARY KEY  (loginTime)
) TYPE=MyISAM;


CREATE TABLE ItemClass (
  ItemClass int(11) NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  PRIMARY KEY  (ItemClass)
) TYPE=MyISAM;

CREATE TABLE ItemGradeRatioInfo (
  Grade tinyint(3) unsigned NOT NULL default '0',
  Ratio smallint(3) unsigned NOT NULL default '0',
  GambleRatio smallint(3) unsigned NOT NULL default '0',
  BeadRatio smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (Grade)
) TYPE=MyISAM;

CREATE TABLE ItemMineInfo (
  ID int(11) NOT NULL default '0',
  ItemClass varchar(30) NOT NULL default '0',
  ItemType smallint(5) NOT NULL default '0',
  ItemOption varchar(50) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE ItemRewardInfo (
  RewardClass int(10) NOT NULL default '0',
  NPC varchar(20) NOT NULL default '',
  RewardID int(10) NOT NULL auto_increment,
  IClass smallint(5) NOT NULL default '0',
  IType smallint(5) NOT NULL default '0',
  OptionType varchar(50) NOT NULL default '',
  TimeLimitSec int(10) NOT NULL default '0',
  PRIMARY KEY  (RewardID),
  KEY ItemRewardInfo_RewardClass (RewardClass)
) TYPE=MyISAM;

CREATE TABLE ItemTraceLog (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ItemClass varchar(25) NOT NULL default '',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(30) NOT NULL default '',
  PreOwnerID varchar(10) NOT NULL default '',
  OwnerID varchar(10) NOT NULL default '',
  LogType enum('CREATE','TRADE','DELETE','MOVE','NONE') NOT NULL default 'NONE',
  DetailType enum('COMMAND','SHOPBUY','PICKUP','EVENTNPC','SHOPSELL','TIMEOUT','ENCHANT','OPCLEAR','DROP','TRADE','ETC') NOT NULL default 'ETC',
  Time datetime NOT NULL default '0000-00-00 00:00:00',
  KEY IDX_ItemTraceLog (ItemClass,ItemID),
  KEY IDX_PreOwnerID (PreOwnerID(4)),
  KEY IDX_OwnerID (OwnerID(4))
) TYPE=MyISAM;


CREATE TABLE KeyInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  OptionType tinyint(3) unsigned NOT NULL default '0',
  TargetType smallint(5) unsigned NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE KeyObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Target int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_KeyObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE LarvaInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Effect varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE LarvaObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_LarvaObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE LastNameInfo (
  MonsterType varchar(10) NOT NULL default 'BASIC',
  Name varchar(20) NOT NULL default ''
) TYPE=MyISAM;

CREATE TABLE LearningItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  SkillType smallint(5) unsigned NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE LearningItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_LearningItemObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE LevelWarHistory (
  Level smallint(5) NOT NULL default '0',
  LevelWarID varchar(10) NOT NULL default '',
  SlayerOldSweeper varchar(30) NOT NULL default '',
  VampireOldSweeper varchar(30) NOT NULL default '',
  OustersOldSweeper varchar(30) NOT NULL default '',
  DefaultOldSweeper varchar(30) NOT NULL default '',
  SlayerSweeper varchar(30) NOT NULL default '',
  VampireSweeper varchar(30) NOT NULL default '',
  OustersSweeper varchar(30) NOT NULL default '',
  DefaultSweeper varchar(30) NOT NULL default '',
  KEY IDX_Level (Level),
  KEY IDX_LevelWarID (LevelWarID)
) TYPE=MyISAM;

CREATE TABLE LevelWarZoneInfo (
  ID int(10) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  SweeperTypeMin smallint(11) unsigned NOT NULL default '0',
  SweeperTypeMax smallint(11) unsigned NOT NULL default '0',
  SlayerMin smallint(11) unsigned NOT NULL default '0',
  SlayerMax smallint(11) unsigned NOT NULL default '0',
  VampireMin smallint(11) unsigned NOT NULL default '0',
  VampireMax smallint(11) unsigned NOT NULL default '0',
  OustersMin smallint(11) unsigned NOT NULL default '0',
  OustersMax smallint(11) unsigned NOT NULL default '0',
  ZoneIDList text NOT NULL,
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE LogUserInfo (
  Name varchar(20) NOT NULL default ''
) TYPE=MyISAM;

CREATE TABLE LuckInfo (
  Level tinyint(4) NOT NULL default '0',
  UpgradeItemType1 int(11) NOT NULL default '0',
  UpgradeItemType2 int(11) NOT NULL default '0',
  UpgradeItemType3 int(11) NOT NULL default '0',
  PRIMARY KEY  (Level)
) TYPE=MyISAM;

CREATE TABLE LuckyBagCount (
  BAGKIND smallint(5) NOT NULL default '0',
  BAGCOUNT int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (BAGKIND)
) TYPE=MyISAM;

CREATE TABLE LuckyBagInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(50) NOT NULL default '',
  EName varchar(50) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE LuckyBagObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_LuckyBagObject (OwnerID),
  KEY IDX_LuckyBagObject2 (Storage)
) TYPE=MyISAM;


CREATE TABLE MACBlockInfo (
  LockMAC varchar(20) NOT NULL default '00000000',
  State enum('ALLOW','DENY') NOT NULL default 'DENY',
  PRIMARY KEY  (LockMAC)
) TYPE=MyISAM;

CREATE TABLE MaceInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  MaxSilver smallint(5) unsigned NOT NULL default '0',
  MPBonus smallint(5) unsigned NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MaceObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_MaceObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE MagazineInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  MaxBullets tinyint(3) unsigned NOT NULL default '0',
  MaxSilverBullets tinyint(3) unsigned NOT NULL default '0',
  Vivid tinyint(3) unsigned NOT NULL default '0',
  GunType enum('AR','SMG','SG','SR') NOT NULL default 'AR',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MagazineObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  nBullets tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_MagazineObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE MasterLairInfo (
  ZoneID smallint(5) unsigned NOT NULL default '0',
  MasterNotReadyMonsterType smallint(5) unsigned NOT NULL default '0',
  MasterMonsterType smallint(5) unsigned NOT NULL default '0',
  MasterRemainNotReady tinyint(3) unsigned NOT NULL default '0',
  MasterX smallint(5) unsigned NOT NULL default '0',
  MasterY smallint(5) unsigned NOT NULL default '0',
  MasterDir tinyint(3) unsigned NOT NULL default '0',
  MaxPassPlayer tinyint(3) unsigned NOT NULL default '0',
  SummonX smallint(5) unsigned NOT NULL default '0',
  SummonY smallint(5) unsigned NOT NULL default '0',
  FirstRegenDelay smallint(5) unsigned NOT NULL default '0',
  RegenDelay smallint(5) unsigned NOT NULL default '0',
  StartDelay smallint(5) unsigned NOT NULL default '0',
  EndDelay smallint(5) unsigned NOT NULL default '0',
  KickOutDelay smallint(5) unsigned NOT NULL default '0',
  KickZoneID smallint(5) unsigned NOT NULL default '0',
  KickZoneX smallint(5) unsigned NOT NULL default '0',
  KickZoneY smallint(5) unsigned NOT NULL default '0',
  LairAttackTick smallint(5) unsigned NOT NULL default '0',
  LairAttackMinNumber smallint(5) unsigned NOT NULL default '0',
  LairAttackMaxNumber smallint(5) unsigned NOT NULL default '0',
  MasterSummonSay text,
  MasterDeadSlayerSay text,
  MasterDeadVampireSay text,
  MasterNotDeadSay text,
  PRIMARY KEY  (ZoneID)
) TYPE=MyISAM;

CREATE TABLE MeetNPCQuestInfo (
  QuestID int(10) NOT NULL default '0',
  NPC varchar(20) NOT NULL default '0',
  TargetNPCID int(10) unsigned NOT NULL default '0',
  SecondNPCID int(10) unsigned NOT NULL default '0',
  TimeLimitSec int(10) NOT NULL default '0',
  Race tinyint(3) NOT NULL default '0',
  MinGrade int(10) NOT NULL default '0',
  MaxGrade int(10) NOT NULL default '0',
  RewardClass int(10) NOT NULL default '0',
  EventQuest tinyint(3) NOT NULL default '0',
  QuestLevel smallint(5) NOT NULL default '0',
  PRIMARY KEY  (QuestID)
) TYPE=MyISAM;


CREATE TABLE Messages (
  Receiver varchar(10) NOT NULL default '',
  Sender varchar(10) NOT NULL default '',
  Message varchar(255) NOT NULL default '',
  KEY IDX_Receiver (Receiver)
) TYPE=MyISAM;


CREATE TABLE MiddleNameInfo (
  MonsterType varchar(10) NOT NULL default 'BASIC',
  Name varchar(20) NOT NULL default ''
) TYPE=MyISAM;

CREATE TABLE MineInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MineObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  NUM tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY MineObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE MiniGameQuestInfo (
  QuestID int(10) NOT NULL default '0',
  NPC varchar(20) NOT NULL default '0',
  GameType smallint(5) NOT NULL default '0',
  TimeLimitSec int(10) NOT NULL default '0',
  Race tinyint(3) NOT NULL default '0',
  MinGrade int(10) NOT NULL default '0',
  MaxGrade int(10) NOT NULL default '0',
  RewardClass int(10) NOT NULL default '0',
  EventQuest tinyint(3) NOT NULL default '0',
  QuestLevel smallint(5) NOT NULL default '0',
  PRIMARY KEY  (QuestID)
) TYPE=MyISAM;

CREATE TABLE MiniGameScores (
  Name varchar(20) NOT NULL default '',
  Type tinyint(3) NOT NULL default '0',
  Level tinyint(3) NOT NULL default '0',
  Score int(20) NOT NULL default '0',
  Time datetime NOT NULL default '2003-06-24 15:47:00',
  KEY IDX_SCORE (Score),
  KEY IDX_NAME (Name),
  KEY IDX_TYPE (Type),
  KEY IDX_LEVEL (Level)
) TYPE=MyISAM;


CREATE TABLE MittenInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MittenObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  MainColor tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY MittenObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE MixingItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(50) NOT NULL default '',
  EName varchar(50) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Target enum('WEAPON','ARMOR','ACCESSORY','ALL') NOT NULL default 'ACCESSORY',
  Type enum('MIX','DETACH','CLEAR') NOT NULL default 'MIX',
  SlayerLevel tinyint(3) unsigned NOT NULL default '0',
  VampireLevel tinyint(3) unsigned NOT NULL default '0',
  OustersLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MixingItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE MofusLog (
  OwnerID varchar(20) NOT NULL default '',
  SaveTime datetime NOT NULL default '2004-12-21 17:00:00',
  RecvPoint smallint(5) NOT NULL default '0',
  SavePoint smallint(5) NOT NULL default '0',
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;

CREATE TABLE MofusPowerPoint (
  OwnerID varchar(30) NOT NULL default '',
  Point int(11) NOT NULL default '0',
  PRIMARY KEY  (OwnerID)
) TYPE=MyISAM;


CREATE TABLE MoneyInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  UNIQUE KEY MoneyInfo_u1 (ItemType)
) TYPE=MyISAM;

CREATE TABLE MoneyObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Amount int(10) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_MoneyObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE MoneyTraceLog (
  PreOwnerID char(10) NOT NULL default '',
  OwnerID char(10) NOT NULL default '',
  LogType enum('CREATE','TRADE','DELETE','MOVE','NONE') NOT NULL default 'NONE',
  DetailType enum('COMMAND','DROP','PICKUP','TRADE','TIMEOUT','ETC') NOT NULL default 'ETC',
  Amount int(10) unsigned default '0',
  Time datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;


CREATE TABLE MonsterInfo (
  MType smallint(5) unsigned NOT NULL default '0',
  SType smallint(5) unsigned NOT NULL default '0',
  HName varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Level smallint(3) unsigned default NULL,
  STR smallint(3) unsigned default NULL,
  DEX smallint(3) unsigned default NULL,
  INTE smallint(3) unsigned default NULL,
  BSize tinyint(4) default NULL,
  Fame int(10) unsigned default '0',
  Exp int(10) unsigned default '0',
  MColor tinyint(3) unsigned default '1',
  SColor tinyint(3) unsigned default '1',
  Align tinyint(3) unsigned default NULL,
  AOrder tinyint(3) unsigned default NULL,
  Moral tinyint(3) unsigned default NULL,
  Delay smallint(5) unsigned default NULL,
  ADelay smallint(5) unsigned default NULL,
  Sight tinyint(3) unsigned default NULL,
  MeleeRange int(10) unsigned default '1',
  MissileRange int(10) unsigned default '6',
  RegenPortal int(10) unsigned default '0',
  RegenInvisible int(10) unsigned default '0',
  RegenBat int(10) unsigned default '0',
  UnburrowChance int(10) unsigned default '128',
  MMode enum('WALK','FLY','BURROW') default NULL,
  AIType smallint(3) unsigned default NULL,
  Enhance text,
  SlayerTreasure longtext,
  VampireTreasure longtext,
  Master tinyint(4) NOT NULL default '0',
  ClanType tinyint(4) NOT NULL default '1',
  MonsterSummonInfo text,
  DefaultEffects text,
  Chief tinyint(4) NOT NULL default '0',
  NormalRegen tinyint(4) NOT NULL default '1',
  HasTreasure tinyint(4) NOT NULL default '1',
  MonsterClass tinyint(4) NOT NULL default '0',
  SkullType tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (MType)
) TYPE=MyISAM;

CREATE TABLE MonsterKillLog (
  WorldID tinyint(4) NOT NULL default '0',
  ZoneID smallint(6) NOT NULL default '0',
  MonsterType smallint(6) NOT NULL default '0',
  KillDt datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;


CREATE TABLE MonsterKillQuestInfo (
  QuestID int(10) NOT NULL default '0',
  NPC varchar(20) NOT NULL default '',
  TargetSType smallint(5) NOT NULL default '0',
  IsChief tinyint(3) NOT NULL default '0',
  Goal int(10) NOT NULL default '0',
  TimeLimitSec int(10) NOT NULL default '0',
  Race tinyint(3) NOT NULL default '0',
  MinGrade int(10) NOT NULL default '0',
  MaxGrade int(10) NOT NULL default '0',
  RewardClass int(10) NOT NULL default '0',
  EventQuest tinyint(3) NOT NULL default '0',
  QuestLevel smallint(5) NOT NULL default '0',
  PRIMARY KEY  (QuestID)
) TYPE=MyISAM;

CREATE TABLE MoonCardInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MoonCardObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_MoonCardObject (OwnerID),
  KEY IDX_MoonCardObject2 (Storage)
) TYPE=MyISAM;

CREATE TABLE MotorcycleInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  CC smallint(5) unsigned NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE MotorcycleObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_MotorcycleObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE NPC (
  Name varchar(50) NOT NULL default '',
  NPCID int(10) unsigned NOT NULL default '0',
  SpriteType int(10) unsigned NOT NULL default '0',
  Race int(10) unsigned NOT NULL default '0',
  MainColor int(10) unsigned NOT NULL default '0',
  SubColor int(10) unsigned NOT NULL default '0',
  ZoneID int(10) unsigned NOT NULL default '0',
  ClanType int(10) unsigned NOT NULL default '0',
  ShowInMinimap tinyint(3) unsigned NOT NULL default '0',
  Description text NOT NULL,
  TaxingCastleZoneID int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE NecklaceInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE NecklaceObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_NecklaceObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE NicknameBook (
  nID int(10) unsigned NOT NULL default '0',
  OwnerID varchar(20) NOT NULL default '',
  NickType tinyint(3) NOT NULL default '0',
  NickIndex smallint(6) NOT NULL default '0',
  Nickname varchar(22) NOT NULL default '',
  Time datetime NOT NULL default '2004-06-01 14:00:00',
  PRIMARY KEY  (nID,OwnerID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;

CREATE TABLE NicknameIndex (
  NickIndex smallint(6) NOT NULL default '0',
  Nickname varchar(22) NOT NULL default '',
  NickType enum('LEVEL','ETC') NOT NULL default 'ETC',
  Race tinyint(3) NOT NULL default '0',
  Level10 tinyint(3) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE NonPKServerList (
  WorldID tinyint(3) unsigned NOT NULL default '0',
  ServerGroupID tinyint(3) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE OlympicStat (
  PlayerID varchar(15) NOT NULL default '',
  OwnerID varchar(20) NOT NULL default '',
  Race tinyint(3) NOT NULL default '0',
  Type tinyint(3) NOT NULL default '0',
  Day date NOT NULL default '2004-07-30',
  count int(10) NOT NULL default '0',
  PRIMARY KEY  (PlayerID,OwnerID,Type,Day),
  KEY NAME_IDX (OwnerID),
  KEY ID_IDX (PlayerID)
) TYPE=MyISAM;


CREATE TABLE OpCreate (
  OpName varchar(10) NOT NULL default '',
  DateTime varchar(30) NOT NULL default '',
  ItemDesc text NOT NULL
) TYPE=MyISAM;

CREATE TABLE OptionClassInfo (
  OptionClassType int(11) NOT NULL default '0',
  Name varchar(50) NOT NULL default '',
  HName varchar(50) NOT NULL default '',
  Level int(11) NOT NULL default '0',
  TotalGrade int(11) NOT NULL default '0',
  OptionGroup smallint(5) NOT NULL default '0',
  PRIMARY KEY  (OptionClassType)
) TYPE=MyISAM;

CREATE TABLE OptionInfo (
  OptionType int(11) NOT NULL default '0',
  Nickname varchar(50) NOT NULL default '',
  Name varchar(50) NOT NULL default '',
  HName varchar(50) NOT NULL default '',
  Class int(11) NOT NULL default '0',
  PlusPoint int(11) NOT NULL default '0',
  PriceMultiplier int(11) NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  Color int(11) NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  OptionLevel int(11) NOT NULL default '0',
  GambleLevel int(11) NOT NULL default '0',
  UpgradeOptionType int(11) NOT NULL default '0',
  UpgradeRatio int(11) NOT NULL default '0',
  UpgradeSecondRatio int(11) NOT NULL default '0',
  UpgradeCrashPercent tinyint(3) NOT NULL default '0',
  PreviousOptionType tinyint(3) unsigned NOT NULL default '0',
  NextOptionRatio tinyint(3) NOT NULL default '0',
  Grade int(11) NOT NULL default '0',
  PRIMARY KEY  (OptionType)
) TYPE=MyISAM;

CREATE TABLE Ousters (
  Name varchar(10) NOT NULL default '',
  PlayerID varchar(15) NOT NULL default '',
  Slot enum('SLOT1','SLOT2','SLOT3') NOT NULL default 'SLOT1',
  ServerGroupID tinyint(3) unsigned NOT NULL default '0',
  Active enum('ACTIVE','INACTIVE') default NULL,
  AdvancementClass smallint(5) NOT NULL default '0',
  AdvancementGoalExp int(5) NOT NULL default '0',
  Sex enum('MALE','FEMALE') NOT NULL default 'MALE',
  MasterEffectColor smallint(5) NOT NULL default '0',
  STR smallint(5) unsigned NOT NULL default '15',
  DEX smallint(5) unsigned NOT NULL default '15',
  INTE smallint(5) unsigned NOT NULL default '15',
  HP smallint(5) unsigned NOT NULL default '100',
  CurrentHP smallint(5) unsigned NOT NULL default '100',
  MP smallint(5) unsigned NOT NULL default '100',
  CurrentMP smallint(5) unsigned NOT NULL default '100',
  Fame int(10) unsigned NOT NULL default '0',
  Notoriety int(10) unsigned NOT NULL default '0',
  Exp int(10) unsigned NOT NULL default '0',
  GoalExp int(10) unsigned NOT NULL default '125',
  ExpOffset int(10) unsigned NOT NULL default '0',
  Level tinyint(3) unsigned NOT NULL default '1',
  Bonus smallint(5) unsigned NOT NULL default '0',
  SkillBonus smallint(5) unsigned NOT NULL default '0',
  Rank smallint(5) unsigned NOT NULL default '0',
  RankExp int(10) unsigned NOT NULL default '0',
  RankGoalExp int(10) unsigned NOT NULL default '0',
  Gold int(10) unsigned default '0',
  GuildID int(10) unsigned NOT NULL default '66',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  XCoord tinyint(3) unsigned NOT NULL default '0',
  YCoord tinyint(3) unsigned NOT NULL default '0',
  Sight tinyint(3) unsigned NOT NULL default '13',
  Alignment int(10) NOT NULL default '7500',
  StashGold int(10) unsigned NOT NULL default '0',
  StashNum tinyint(3) unsigned NOT NULL default '0',
  Competence tinyint(3) unsigned NOT NULL default '3',
  ResurrectZone int(10) unsigned NOT NULL default '0',
  SilverDamage int(10) unsigned NOT NULL default '0',
  SMSCharge int(10) NOT NULL default '0',
  LastPlayDate date NOT NULL default '0000-00-00',
  CoatType tinyint(3) unsigned NOT NULL default '0',
  ArmType tinyint(3) unsigned NOT NULL default '0',
  CoatColor smallint(5) unsigned NOT NULL default '0',
  HairColor smallint(5) unsigned NOT NULL default '400',
  ArmColor smallint(5) unsigned NOT NULL default '0',
  BootsColor smallint(5) unsigned NOT NULL default '0',
  CompetenceShape tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (Name),
  KEY IDX_Ousters1 (PlayerID),
  KEY IDX_Ousters2 (Slot),
  KEY Ousters_m1 (GuildID)
) TYPE=MyISAM;

CREATE TABLE OustersArmsbandInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  PocketCount tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersArmsbandObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersArmsbandObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersBootsInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersBootsObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersBootsObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersChakramInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersChakramObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersChakramObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE OustersCircletInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersCircletObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersCircletObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersCoatInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersCoatObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersCoatObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersEXPBalanceInfo (
  Level int(11) NOT NULL default '0',
  GoalExp int(11) NOT NULL default '0',
  AccumExp bigint(11) NOT NULL default '0',
  SkillPointBonus int(11) NOT NULL default '0',
  KEY IDX_Level (Level)
) TYPE=MyISAM;

CREATE TABLE OustersPendentInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersPendentObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersPendentObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersRingInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersRingObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersRingObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersSkillSave (
  OwnerID varchar(10) NOT NULL default '',
  SkillType int(10) unsigned NOT NULL default '0',
  SkillLevel tinyint(3) unsigned NOT NULL default '0',
  Delay smallint(5) unsigned NOT NULL default '0',
  CastingTime int(10) unsigned NOT NULL default '0',
  NextTime int(10) unsigned NOT NULL default '0',
  KEY IDX_OustersSkillSave (OwnerID,SkillType)
) TYPE=MyISAM;


CREATE TABLE OustersStoneInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  ElementalType tinyint(3) unsigned NOT NULL default '0',
  Elemental tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersStoneObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersStoneObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersSummonItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  MaxCharge smallint(3) unsigned NOT NULL default '0',
  Effect smallint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersSummonItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Charge smallint(6) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY OwnerID_IDX (OwnerID)
) TYPE=MyISAM;


CREATE TABLE OustersWristletInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  ElementalType tinyint(3) unsigned NOT NULL default '0',
  Elemental tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE OustersWristletObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_OustersWristletObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE PCRoomIPInfo (
  ID int(10) unsigned NOT NULL default '0',
  IP varchar(15) NOT NULL default '255.255.255.255',
  PRIMARY KEY  (ID,IP),
  KEY IDX_PCRoomIPInfo_ID (ID),
  KEY IDX_PCRoomIPInfo_IP (IP)
) TYPE=MyISAM;


CREATE TABLE PCRoomInfo (
  ID int(10) unsigned NOT NULL auto_increment,
  Account varchar(20) NOT NULL default '',
  Name varchar(20) NOT NULL default '',
  Password varchar(16) NOT NULL default '',
  Sname varchar(30) NOT NULL default '',
  Regist_NO varchar(30) NOT NULL default '',
  Ssno varchar(14) NOT NULL default '',
  Email varchar(30) NOT NULL default '',
  ZipCode2 varchar(7) default NULL,
  Address2 varchar(100) default NULL,
  Line varchar(20) default NULL,
  Kind varchar(20) default NULL,
  Kind2 varchar(20) default NULL,
  T_admin varchar(30) default NULL,
  Telephone varchar(15) default NULL,
  Cellular varchar(15) default NULL,
  ZipCode varchar(7) default NULL,
  Address varchar(100) default NULL,
  PayType tinyint(1) unsigned NOT NULL default '1',
  PayStartDate datetime NOT NULL default '2002-07-12 00:00:00',
  PayPlayDate datetime NOT NULL default '2002-07-15 00:00:00',
  PayPlayHours int(10) unsigned NOT NULL default '0',
  PayPlayFlag int(10) unsigned NOT NULL default '0',
  UserLimit tinyint(3) unsigned NOT NULL default '0',
  UserMax tinyint(3) unsigned NOT NULL default '0',
  PayIPType tinyint(1) unsigned NOT NULL default '0',
  PCAmount smallint(5) unsigned NOT NULL default '0',
  AgencyID varchar(20) NOT NULL default '',
  Author tinyint(2) NOT NULL default '2',
  creation_date datetime NOT NULL default '0000-00-00 00:00:00',
  RegionType tinyint(2) NOT NULL default '1',
  AgencyType enum('Y','N') NOT NULL default 'N',
  PayTimeType enum('TIME','FIX') NOT NULL default 'TIME',
  PRIMARY KEY  (ID),
  UNIQUE KEY Account (Account),
  KEY IDX_PCRoomInfo_Name (Name)
) TYPE=MyISAM;


CREATE TABLE PCRoomLottoObject (
  ID int(10) unsigned NOT NULL auto_increment,
  PCRoomID int(10) unsigned NOT NULL default '0',
  PlayerID varchar(15) NOT NULL default '',
  DimensionID int(10) unsigned NOT NULL default '0',
  WorldID int(10) unsigned NOT NULL default '0',
  Name varchar(10) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  Amount tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY IDX_PCROOMID (PCRoomID),
  KEY IDX_PLAYERID (PlayerID),
  KEY IDX_DIMENSIONID (DimensionID),
  KEY IDX_WORLDID (WorldID),
  KEY IDX_NAME (Name)
) TYPE=MyISAM;


CREATE TABLE PCRoomPayList (
  PCRoomID int(10) unsigned NOT NULL default '0',
  Year int(10) unsigned NOT NULL default '0',
  Month int(10) unsigned NOT NULL default '0',
  PayPlayMinute int(10) unsigned NOT NULL default '0',
  KEY PCRoomPayList_IDX1 (PCRoomID),
  KEY PCRoomPayList_IDX2 (Year),
  KEY PCRoomPayList_IDX3 (Month)
) TYPE=MyISAM;


CREATE TABLE PCRoomUserInfo (
  ID int(10) unsigned NOT NULL default '0',
  PlayerID varchar(15) NOT NULL default '',
  PRIMARY KEY  (ID,PlayerID),
  KEY IDX_PCRoomUserInfo_PlayerID (PlayerID)
) TYPE=MyISAM;


CREATE TABLE PKServerList (
  WorldID tinyint(3) unsigned NOT NULL default '0',
  ServerGroupID tinyint(3) unsigned NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE PKZoneInfo (
  ID smallint(5) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  Race tinyint(2) unsigned NOT NULL default '0',
  EnterX int(10) unsigned NOT NULL default '0',
  EnterY int(10) unsigned NOT NULL default '0',
  ResurrectX int(10) unsigned NOT NULL default '0',
  ResurrectY int(10) unsigned NOT NULL default '0',
  PCLimit int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY PKZoneInfo_ZoneID (ZoneID)
) TYPE=MyISAM;

CREATE TABLE PersonaInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE PersonaObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  MainColor tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY PersonaObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE PetAttrBalanceInfo (
  PetAttr tinyint(3) NOT NULL default '0',
  Level int(11) NOT NULL default '0',
  AddAttr int(11) NOT NULL default '0',
  AccumAttr int(11) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE PetAttrInfo (
  PetAttr tinyint(3) NOT NULL default '0',
  EnchantRatio tinyint(3) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE PetEnchantItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Function tinyint(3) unsigned NOT NULL default '0',
  FunctionGrade tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE PetEnchantItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_PetEnchantItemObject (OwnerID),
  KEY IDX_PetEnchantItemObject2 (Storage)
) TYPE=MyISAM;

CREATE TABLE PetEnchantOptionRatioInfo (
  OptionType int(11) NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  PRIMARY KEY  (OptionType)
) TYPE=MyISAM;

CREATE TABLE PetExpInfo (
  PetLevel tinyint(3) NOT NULL default '0',
  PetGoalExp int(11) NOT NULL default '0',
  PetAccumExp int(11) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE PetFoodInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Target tinyint(3) unsigned NOT NULL default '0',
  PetHP smallint(5) unsigned NOT NULL default '0',
  TameRatio tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE PetFoodObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_PetFoodObject (OwnerID),
  KEY IDX_PetFoodObject2 (Storage)
) TYPE=MyISAM;


CREATE TABLE PetItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE PetItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PetCreatureType smallint(5) unsigned NOT NULL default '0',
  PetLevel tinyint(3) unsigned NOT NULL default '0',
  PetExp int(10) unsigned NOT NULL default '0',
  PetHP smallint(5) unsigned NOT NULL default '0',
  PetAttr tinyint(3) unsigned NOT NULL default '0',
  PetAttrLevel tinyint(3) unsigned NOT NULL default '0',
  PetOption tinyint(3) unsigned NOT NULL default '0',
  FoodType tinyint(3) unsigned NOT NULL default '0',
  CanGamble tinyint(3) unsigned NOT NULL default '0',
  CanCutHead tinyint(3) unsigned NOT NULL default '0',
  LastFeedTime datetime NOT NULL default '2003-11-16 00:00:00',
  CanAttack tinyint(3) unsigned NOT NULL default '0',
  Nickname varchar(22) NOT NULL default '',
  PRIMARY KEY  (ItemID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE PetTypeInfo (
  PetType tinyint(3) unsigned NOT NULL default '0',
  OriginalMonsterType smallint(5) unsigned NOT NULL default '0',
  CreatureType1 smallint(5) unsigned NOT NULL default '0',
  CreatureType2 smallint(5) unsigned NOT NULL default '0',
  CreatureType3 smallint(5) unsigned NOT NULL default '0',
  CreatureType4 smallint(5) unsigned NOT NULL default '0',
  CreatureType5 smallint(5) unsigned NOT NULL default '0',
  FoodType smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (PetType)
) TYPE=MyISAM;

CREATE TABLE PetTypeInfo_bak (
  PetType tinyint(3) unsigned NOT NULL default '0',
  OriginalMonsterType smallint(5) unsigned NOT NULL default '0',
  CreatureType1 smallint(5) unsigned NOT NULL default '0',
  CreatureType2 smallint(5) unsigned NOT NULL default '0',
  CreatureType3 smallint(5) unsigned NOT NULL default '0',
  CreatureType4 smallint(5) unsigned NOT NULL default '0',
  CreatureType5 smallint(5) unsigned NOT NULL default '0',
  FoodType smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (PetType)
) TYPE=MyISAM;

CREATE TABLE Player (
  PlayerID varchar(15) NOT NULL default '',
  Password varchar(16) NOT NULL default '',
  Name varchar(20) NOT NULL default '',
  Sex enum('MALE','FEMALE') default NULL,
  SSN varchar(20) NOT NULL default '',
  Telephone varchar(15) default NULL,
  Cellular varchar(15) default NULL,
  ZipCode varchar(7) default NULL,
  Address varchar(100) default NULL,
  Nation tinyint(3) unsigned default NULL,
  Email varchar(50) default NULL,
  Homepage varchar(50) default NULL,
  Profile varchar(255) default NULL,
  Pub enum('PRIVATE','PUBLIC') NOT NULL default 'PRIVATE',
  CurrentWorldID tinyint(3) unsigned NOT NULL default '1',
  CurrentServerGroupID tinyint(3) unsigned NOT NULL default '0',
  LogOn enum('LOGOFF','LOGON','GAME') NOT NULL default 'LOGOFF',
  Access enum('ALLOW','DENY','WAIT','OUT') NOT NULL default 'ALLOW',
  SpecialEventCount int(10) unsigned NOT NULL default '0',
  Number int(10) unsigned NOT NULL default '0',
  IYear int(10) unsigned NOT NULL default '0',
  IMonth int(10) unsigned NOT NULL default '0',
  IDay int(10) unsigned NOT NULL default '0',
  Event varchar(5) NOT NULL default '',
  LoginIP varchar(15) default '255.255.255.255',
  LastSlot tinyint(1) default '0',
  creation_date date default NULL,
  CurrentLoginServerID tinyint(3) unsigned NOT NULL default '0',
  PayType tinyint(1) unsigned NOT NULL default '0',
  PayPlayDate datetime NOT NULL default '2002-07-15 00:00:00',
  PayPlayHours int(10) unsigned NOT NULL default '0',
  PayPlayFlag int(10) unsigned NOT NULL default '0',
  LastLoginDate date NOT NULL default '2002-07-01',
  LastLogoutDate datetime NOT NULL default '0000-00-00 00:00:00',
  BillingUserKey int(10) unsigned NOT NULL default '0',
  SuggestCID varchar(30) default '',
  Author tinyint(1) NOT NULL default '2',
  FamilyPayPlayDate datetime NOT NULL default '2002-07-15 00:00:00',
  mailing enum('Y','N') default 'Y',
  PRIMARY KEY  (PlayerID),
  KEY IDX_SSN (SSN),
  KEY IDX_PayPlayDate (PayPlayDate),
  KEY IDX_Player (LogOn,CurrentLoginServerID)
) TYPE=MyISAM;

CREATE TABLE PotionInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Effect varchar(50) NOT NULL default '',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE PotionObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_PotionObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE PupaInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Effect varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE PupaObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_PupaObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE QuestItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  BonusRatio int(11) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE QuestItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY QuestItemObject_m1 (OwnerID)
) TYPE=MyISAM;

CREATE TABLE RaceWarHistory (
  RaceWarID varchar(10) NOT NULL default '',
  SlayerNum int(10) unsigned NOT NULL default '0',
  VampireNum int(10) unsigned NOT NULL default '0',
  OustersNum int(10) unsigned NOT NULL default '0',
  SlayerOldBloodBible varchar(30) NOT NULL default '',
  VampireOldBloodBible varchar(30) NOT NULL default '',
  OustersOldBloodBible varchar(30) NOT NULL default '',
  SlayerBloodBible varchar(30) NOT NULL default '',
  VampireBloodBible varchar(30) NOT NULL default '',
  OustersBloodBible varchar(30) NOT NULL default '',
  KEY IDX_RaceWarID (RaceWarID)
) TYPE=MyISAM;

CREATE TABLE RaceWarPCLimit (
  ID int(11) NOT NULL default '0',
  Race tinyint(1) NOT NULL default '0',
  MinLevel smallint(11) NOT NULL default '0',
  MaxLevel smallint(11) NOT NULL default '0',
  LimitNum smallint(11) NOT NULL default '0',
  CurrentNum smallint(11) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE RaceWarPCList (
  Name char(10) NOT NULL default '',
  Race tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (Name)
) TYPE=MyISAM;


CREATE TABLE RankBonusData (
  OwnerID varchar(10) NOT NULL default '',
  Type int(11) NOT NULL default '0',
  KEY IDX_RankBonusData (OwnerID,Type)
) TYPE=MyISAM;


CREATE TABLE RankBonusInfo (
  Type int(11) NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  Rank tinyint(4) NOT NULL default '0',
  Point tinyint(4) NOT NULL default '0',
  Race tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (Type)
) TYPE=MyISAM;

CREATE TABLE RankEXPInfo (
  RankType tinyint(3) unsigned NOT NULL default '0',
  Level int(11) NOT NULL default '0',
  GoalExp int(11) NOT NULL default '0',
  AccumExp int(11) NOT NULL default '0',
  PRIMARY KEY  (RankType,Level)
) TYPE=MyISAM;

CREATE TABLE RareEnchantInfo (
  ID int(11) NOT NULL auto_increment,
  Level int(11) NOT NULL default '0',
  TotalGrade int(11) NOT NULL default '0',
  Grade int(11) NOT NULL default '0',
  RatioWhenFail int(11) NOT NULL default '0',
  RatioWhenSuccess int(11) NOT NULL default '0',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE RegenZonePosition (
  ID int(10) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  ZoneX int(10) unsigned NOT NULL default '0',
  ZoneY int(10) unsigned NOT NULL default '0',
  Owner tinyint(3) unsigned NOT NULL default '3',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE ReinforceRegisterInfo (
  WarID int(10) unsigned NOT NULL default '0',
  ServerID smallint(5) unsigned NOT NULL default '0',
  ReinforceGuildID smallint(5) unsigned NOT NULL default '0',
  Status enum('WAIT','ACCEPT','DENY') NOT NULL default 'WAIT',
  KEY WarID_IDX (WarID)
) TYPE=MyISAM;

CREATE TABLE RelicInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  RelicType enum('RELIC_TYPE_SLAYER','RELIC_TYPE_VAMPIRE') NOT NULL default 'RELIC_TYPE_SLAYER',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  XCoord int(11) NOT NULL default '0',
  YCoord int(11) NOT NULL default '0',
  MonsterType smallint(5) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE RelicObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType tinyint(3) unsigned NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_RingObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ResurrectItemCount (
  Count int(10) unsigned NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE ResurrectItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  ResurrectType tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ResurrectItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_RESURRECT_ITEM (OwnerID)
) TYPE=MyISAM;


CREATE TABLE RingInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE RingObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_RingObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE SGInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(11) NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SGObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  BulletCount tinyint(3) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_SGObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE SMGInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(11) NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SMGObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  BulletCount tinyint(3) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_SMGObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE SMSAddressBook (
  eID int(10) unsigned NOT NULL default '0',
  OwnerID varchar(20) NOT NULL default '',
  CharacterName varchar(20) NOT NULL default '',
  CustomName varchar(40) NOT NULL default '',
  Number varchar(11) NOT NULL default '',
  Time datetime NOT NULL default '2004-06-01 14:00:00',
  PRIMARY KEY  (eID,OwnerID),
  KEY IDX_OwnerID (OwnerID)
) TYPE=MyISAM;


CREATE TABLE SMSItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Charge int(10) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SMSItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_RESURRECT_ITEM (OwnerID),
  KEY IDX_RESURRECT_ITEM_2 (Storage)
) TYPE=MyISAM;


CREATE TABLE SRInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(11) NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SRObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  BulletCount tinyint(3) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_SRObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE SSStringPool (
  ID int(11) NOT NULL default '0',
  String text NOT NULL,
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE STRBalanceInfo (
  Level int(11) NOT NULL auto_increment,
  GoalExp int(11) NOT NULL default '0',
  AccumExp bigint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (Level)
) TYPE=MyISAM;

CREATE TABLE Script (
  ScriptID int(10) unsigned NOT NULL default '0',
  OwnerID varchar(30) default NULL,
  Subject text,
  Content text,
  PRIMARY KEY  (ScriptID)
) TYPE=MyISAM;

CREATE TABLE SerumInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  SerumEffect varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SerumObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY IDX_SerumObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ShieldInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ShieldObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_ShieldObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ShoesInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ShoesObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_ShoesObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ShopTemplate (
  ID int(10) unsigned NOT NULL default '0',
  ShopType tinyint(3) unsigned NOT NULL default '0',
  ItemClass tinyint(3) unsigned NOT NULL default '0',
  MinItemType tinyint(3) unsigned NOT NULL default '0',
  MaxItemType tinyint(3) unsigned NOT NULL default '0',
  MinOptionLevel tinyint(3) unsigned NOT NULL default '0',
  MaxOptionLevel tinyint(3) unsigned NOT NULL default '0',
  NPCID smallint(5) unsigned NOT NULL default '0',
  UNIQUE KEY ShopTemplate_u1 (ID)
) TYPE=MyISAM;

CREATE TABLE ShoulderArmorInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE ShoulderArmorObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  MainColor tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY ShoulderArmorObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE ShrineInfo (
  ID smallint(5) unsigned NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  SlayerGuardZoneID smallint(5) unsigned NOT NULL default '0',
  SlayerGuardX int(10) unsigned NOT NULL default '0',
  SlayerGuardY int(10) unsigned NOT NULL default '0',
  SlayerGuardMType smallint(5) unsigned NOT NULL default '0',
  VampireGuardZoneID smallint(5) unsigned NOT NULL default '0',
  VampireGuardX int(10) unsigned NOT NULL default '0',
  VampireGuardY int(10) unsigned NOT NULL default '0',
  VampireGuardMType smallint(5) unsigned NOT NULL default '0',
  OustersGuardZoneID smallint(5) unsigned NOT NULL default '0',
  OustersGuardX int(10) unsigned NOT NULL default '0',
  OustersGuardY int(10) unsigned NOT NULL default '0',
  OustersGuardMType smallint(5) unsigned NOT NULL default '0',
  HolyZoneID smallint(5) unsigned NOT NULL default '0',
  HolyX int(10) unsigned NOT NULL default '0',
  HolyY int(10) unsigned NOT NULL default '0',
  HolyMType smallint(5) unsigned NOT NULL default '0',
  OwnerRace tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE SkillBalance (
  Type int(11) NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  HName varchar(30) NOT NULL default '',
  Level tinyint(4) unsigned NOT NULL default '0',
  MinDam int(11) default NULL,
  MaxDam int(11) default NULL,
  MinDelay int(11) default NULL,
  MaxDelay int(11) default NULL,
  MinDur int(11) default NULL,
  MaxDur int(11) default NULL,
  Mana int(11) default NULL,
  MinRange int(11) default NULL,
  MaxRange int(11) default NULL,
  Target tinyint(4) default NULL,
  SubExp int(11) NOT NULL default '0',
  Point tinyint(4) NOT NULL default '0',
  EXP int(11) NOT NULL default '0',
  Domain tinyint(4) NOT NULL default '0',
  MagicDomain tinyint(4) NOT NULL default '0',
  Melee tinyint(4) NOT NULL default '0',
  Magic tinyint(4) NOT NULL default '0',
  Physic tinyint(4) NOT NULL default '0',
  SkillPoint tinyint(4) NOT NULL default '0',
  LevelUpPoint tinyint(4) NOT NULL default '0',
  RequireSkill varchar(30) NOT NULL default '',
  Condition varchar(150) NOT NULL default '',
  ElementalDomain tinyint(4) NOT NULL default '0',
  CanDelete tinyint(4) NOT NULL default '0',
  Available tinyint(1) NOT NULL default '0',
  UNIQUE KEY SkillBalance_u1 (Type)
) TYPE=MyISAM;

CREATE TABLE SkillDomainInfo (
  Type int(11) NOT NULL auto_increment,
  DomainType int(11) NOT NULL default '0',
  Level int(11) NOT NULL default '0',
  GoalExp int(11) NOT NULL default '0',
  AccumExp int(11) NOT NULL default '0',
  BestItemType tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (Type),
  KEY IDX_Level (DomainType,Level)
) TYPE=MyISAM;

CREATE TABLE SkillSave (
  OwnerID varchar(10) NOT NULL default '',
  SkillType int(10) unsigned NOT NULL default '0',
  SkillLevel tinyint(3) unsigned NOT NULL default '0',
  SkillExp int(10) unsigned NOT NULL default '0',
  Delay smallint(5) unsigned NOT NULL default '0',
  CastingTime int(10) unsigned NOT NULL default '0',
  NextTime int(10) unsigned NOT NULL default '0',
  KEY IDX_SkillSave (OwnerID,SkillType)
) TYPE=MyISAM;


CREATE TABLE SkillTreeInfo (
  SkillType int(11) NOT NULL default '0',
  Parent int(11) NOT NULL default '0'
) TYPE=MyISAM;

CREATE TABLE SkullInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SkullObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY IDX_SkullObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE Slang (
  Word char(20) NOT NULL default '',
  PRIMARY KEY  (Word),
  KEY IDX_Slang_Word (Word)
) TYPE=MyISAM;

CREATE TABLE Slayer (
  Race enum('SLAYER','VAMPIRE','OUSTERS') NOT NULL default 'SLAYER',
  Name varchar(10) NOT NULL default '',
  PlayerID varchar(15) NOT NULL default '',
  Slot enum('SLOT1','SLOT2','SLOT3') NOT NULL default 'SLOT1',
  ServerGroupID tinyint(3) unsigned NOT NULL default '0',
  Active enum('ACTIVE','INACTIVE') NOT NULL default 'ACTIVE',
  AdvancementClass smallint(5) NOT NULL default '0',
  AdvancementGoalExp int(5) NOT NULL default '0',
  Competence tinyint(3) unsigned NOT NULL default '3',
  Sex enum('MALE','FEMALE') default NULL,
  MasterEffectColor smallint(5) NOT NULL default '0',
  HairStyle enum('HAIR_STYLE1','HAIR_STYLE2','HAIR_STYLE3') default NULL,
  HairColor smallint(6) NOT NULL default '400',
  SkinColor smallint(6) NOT NULL default '410',
  Phone varchar(7) NOT NULL default '',
  STR smallint(5) unsigned NOT NULL default '0',
  STRExp int(10) unsigned NOT NULL default '0',
  STRGoalExp int(10) unsigned NOT NULL default '10',
  DEX smallint(5) unsigned NOT NULL default '0',
  DEXExp int(10) unsigned NOT NULL default '0',
  DEXGoalExp int(10) unsigned NOT NULL default '10',
  INTE smallint(5) unsigned NOT NULL default '0',
  INTExp int(10) unsigned NOT NULL default '0',
  INTGoalExp int(10) unsigned NOT NULL default '10',
  AdvancedSTR smallint(5) NOT NULL default '0',
  AdvancedDEX smallint(5) NOT NULL default '0',
  AdvancedINT smallint(5) NOT NULL default '0',
  Bonus smallint(5) NOT NULL default '0',
  HP smallint(5) unsigned NOT NULL default '0',
  CurrentHP smallint(5) unsigned NOT NULL default '0',
  MP smallint(5) unsigned NOT NULL default '0',
  CurrentMP smallint(5) unsigned NOT NULL default '0',
  Fame int(10) unsigned NOT NULL default '0',
  Notoriety int(10) unsigned NOT NULL default '0',
  Gold int(10) unsigned NOT NULL default '2000',
  GuildID int(10) unsigned NOT NULL default '99',
  BladeLevel tinyint(3) unsigned NOT NULL default '0',
  BladeExp int(10) unsigned NOT NULL default '0',
  BladeGoalExp int(10) unsigned NOT NULL default '50',
  SwordLevel tinyint(3) unsigned NOT NULL default '0',
  SwordExp int(10) unsigned NOT NULL default '1',
  SwordGoalExp int(10) unsigned NOT NULL default '50',
  GunLevel tinyint(3) unsigned NOT NULL default '0',
  GunExp int(10) unsigned NOT NULL default '0',
  GunGoalExp int(10) unsigned NOT NULL default '40',
  EnchantLevel tinyint(3) unsigned NOT NULL default '0',
  EnchantExp int(10) unsigned NOT NULL default '0',
  EnchantGoalExp int(10) unsigned NOT NULL default '30',
  HealLevel tinyint(3) unsigned NOT NULL default '0',
  HealExp int(10) unsigned NOT NULL default '0',
  HealGoalExp int(10) unsigned NOT NULL default '30',
  ETCLevel tinyint(3) unsigned NOT NULL default '0',
  ETCExp int(10) unsigned NOT NULL default '0',
  ETCGoalExp int(10) unsigned NOT NULL default '1000000',
  Rank smallint(5) unsigned NOT NULL default '0',
  RankExp int(10) unsigned NOT NULL default '0',
  RankGoalExp int(10) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  XCoord tinyint(3) unsigned NOT NULL default '0',
  YCoord tinyint(3) unsigned NOT NULL default '0',
  Sight tinyint(3) unsigned NOT NULL default '0',
  GunBonusExp tinyint(3) unsigned NOT NULL default '0',
  RifleBonusExp tinyint(3) unsigned NOT NULL default '0',
  Alignment int(10) NOT NULL default '7500',
  F9 smallint(6) NOT NULL default '-1',
  F10 smallint(6) NOT NULL default '-1',
  F11 smallint(6) NOT NULL default '-1',
  F12 smallint(6) NOT NULL default '-1',
  StashGold int(10) unsigned NOT NULL default '0',
  StashNum tinyint(3) unsigned NOT NULL default '0',
  ResurrectZone int(10) unsigned NOT NULL default '0',
  Shape int(10) unsigned NOT NULL default '0',
  HelmetColor smallint(5) unsigned NOT NULL default '0',
  JacketColor smallint(5) unsigned NOT NULL default '0',
  PantsColor smallint(5) unsigned NOT NULL default '0',
  WeaponColor smallint(5) unsigned NOT NULL default '0',
  ShieldColor smallint(5) unsigned NOT NULL default '0',
  CompetenceShape tinyint(3) unsigned NOT NULL default '1',
  Reward tinyint(3) default '0',
  SMSCharge int(10) NOT NULL default '0',
  LastPlayDate date NOT NULL default '0000-00-00',
  creation_date date default NULL,
  PRIMARY KEY  (Name),
  KEY IDX_Slayer1 (PlayerID),
  KEY IDX_Slayer2 (Slot),
  KEY Slayer_m1 (GuildID)
) TYPE=MyISAM;

CREATE TABLE SlayerPortalItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  MaxCharge int(11) NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SlayerPortalItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Charge tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY SlayerProtalItemObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE SlayerWeaponRewardInfo (
  RewardClass int(10) NOT NULL default '0',
  NPC varchar(20) NOT NULL default '',
  RewardID int(10) NOT NULL auto_increment,
  IClass smallint(5) NOT NULL default '14',
  IType smallint(5) NOT NULL default '0',
  OptionType varchar(50) NOT NULL default '',
  TimeLimitSec int(10) NOT NULL default '0',
  PRIMARY KEY  (RewardID)
) TYPE=MyISAM;

CREATE TABLE SpecialEvent (
  Name varchar(30) NOT NULL default '',
  Count int(10) NOT NULL default '0',
  PRIMARY KEY  (Name)
) TYPE=MyISAM;

CREATE TABLE SpeedHackPlayer (
  PlayerID varchar(15) NOT NULL default '',
  IP varchar(15) default NULL,
  Name varchar(20) default NULL,
  WorldID tinyint(5) unsigned NOT NULL default '0',
  ServerGroupID tinyint(5) unsigned NOT NULL default '0',
  Date datetime NOT NULL default '0000-00-00 00:00:00',
  Count int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (PlayerID)
) TYPE=MyISAM;


CREATE TABLE SubInventoryInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Width tinyint(3) unsigned NOT NULL default '0',
  Height tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SubInventoryObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID)
) TYPE=MyISAM;


CREATE TABLE SweeperBonusInfo (
  Type int(11) NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  OptionList text NOT NULL,
  OwnerRace tinyint(3) unsigned NOT NULL default '0',
  Level tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (Type)
) TYPE=MyISAM;

CREATE TABLE SweeperInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SweeperObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType tinyint(3) unsigned NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Status int(11) NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_SweeperObject (OwnerID),
  KEY IDX_SweeperObject2 (Storage)
) TYPE=MyISAM;

CREATE TABLE SweeperOwnerInfo (
  SweeperType int(11) NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  OwnerRace tinyint(3) unsigned NOT NULL default '0',
  SweeperSafeType int(11) NOT NULL default '0',
  PRIMARY KEY  (SweeperType)
) TYPE=MyISAM;

CREATE TABLE SweeperSetInfo (
  ID smallint(5) unsigned NOT NULL default '0',
  Name varchar(20) NOT NULL default '',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  SlayerX int(10) unsigned NOT NULL default '0',
  SlayerY int(10) unsigned NOT NULL default '0',
  SlayerMType smallint(5) unsigned NOT NULL default '0',
  VampireX int(10) unsigned NOT NULL default '0',
  VampireY int(10) unsigned NOT NULL default '0',
  VampireMType smallint(5) unsigned NOT NULL default '0',
  OustersX int(10) unsigned NOT NULL default '0',
  OustersY int(10) unsigned NOT NULL default '0',
  OustersMType smallint(5) unsigned NOT NULL default '0',
  DefaultX int(10) unsigned NOT NULL default '0',
  DefaultY int(10) unsigned NOT NULL default '0',
  DefaultMType smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

CREATE TABLE SwordInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  MaxSilver smallint(5) unsigned NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE SwordObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  Silver smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_SwordObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE SystemAvailabilities (
  SystemKind int(11) NOT NULL default '0',
  Available tinyint(1) NOT NULL default '0',
  Description varchar(50) NOT NULL default '',
  PRIMARY KEY  (SystemKind)
) TYPE=MyISAM;

CREATE TABLE TestClientUser (
  PlayerID varchar(15) NOT NULL default '',
  IP varchar(13) NOT NULL default '',
  LoginDate datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;


CREATE TABLE TimeLimitItems (
  ID int(10) NOT NULL auto_increment,
  OwnerID char(10) NOT NULL default '',
  ItemClass smallint(10) NOT NULL default '0',
  ItemID int(10) NOT NULL default '0',
  LimitDateTime datetime NOT NULL default '2003-04-04 12:00:00',
  Status tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY TimeLimitItems_m1 (OwnerID),
  KEY TimeLimitItems_m2 (ItemClass,ItemID)
) TYPE=MyISAM;


CREATE TABLE TradeLog (
  Timeline varchar(30) NOT NULL default '',
  Name1 varchar(10) NOT NULL default '',
  Name2 varchar(10) NOT NULL default '',
  Content text,
  IP1 varchar(15) NOT NULL default '',
  IP2 varchar(15) NOT NULL default '',
  KEY IDX_Name1 (Name1),
  KEY IDX_Name2 (Name2),
  KEY IDX_IP1 (IP1),
  KEY IDX_IP2 (IP2)
) TYPE=MyISAM;


CREATE TABLE TrapItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  Function int(11) NOT NULL default '0',
  Parameter int(11) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE TrapItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY OwnerID_IDX (OwnerID)
) TYPE=MyISAM;


CREATE TABLE Triggers (
  TriggerID int(10) unsigned NOT NULL auto_increment,
  TriggerType enum('NPC','QUEST','MONSTER') NOT NULL default 'NPC',
  NPC varchar(20) default NULL,
  QuestID int(10) unsigned default '0',
  Conditions text NOT NULL,
  Actions text NOT NULL,
  PRIMARY KEY  (TriggerID)
) TYPE=MyISAM;

CREATE TABLE Triggers_bak (
  TriggerID int(10) unsigned NOT NULL auto_increment,
  TriggerType enum('NPC','QUEST','MONSTER') NOT NULL default 'NPC',
  NPC varchar(20) default NULL,
  QuestID int(10) unsigned default '0',
  Conditions text NOT NULL,
  Actions text NOT NULL,
  PRIMARY KEY  (TriggerID)
) TYPE=MyISAM;

CREATE TABLE TrouserInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE TrouserObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_TrouserObject (OwnerID)
) TYPE=MyISAM;

CREATE TABLE UnderworldEvent (
  ID int(10) unsigned NOT NULL auto_increment,
  WorldID tinyint(3) unsigned NOT NULL default '0',
  ServerID tinyint(3) unsigned NOT NULL default '0',
  PlayerID varchar(15) NOT NULL default '',
  CharacterID varchar(20) NOT NULL default '',
  KillTime datetime NOT NULL default '2003-09-23 00:00:00',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;


CREATE TABLE UniqueItemInfo (
  ItemClass tinyint(3) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  LimitNumber int(10) unsigned NOT NULL default '0',
  CurrentNumber int(10) unsigned NOT NULL default '0',
  ItemClassName varchar(30) NOT NULL default '',
  PRIMARY KEY  (ItemClass,ItemType)
) TYPE=MyISAM;

CREATE TABLE UserIPInfo (
  Name varchar(10) NOT NULL default '',
  IP bigint(20) unsigned NOT NULL default '0',
  ServerID int(10) unsigned NOT NULL default '0',
  Port smallint(5) unsigned NOT NULL default '9858',
  PRIMARY KEY  (Name),
  KEY IDX_UserIPInfo (ServerID)
) TYPE=MyISAM;


CREATE TABLE VSPMInfo (
  id int(11) default NULL,
  host char(30) default NULL,
  name char(30) default NULL
) TYPE=MyISAM;


CREATE TABLE VampEXPBalanceInfo (
  Level int(11) NOT NULL default '0',
  GoalExp int(11) NOT NULL default '0',
  AccumExp bigint(11) NOT NULL default '0',
  KEY IDX_Level (Level)
) TYPE=MyISAM;

CREATE TABLE Vampire (
  Name varchar(10) NOT NULL default '',
  PlayerID varchar(15) NOT NULL default '',
  Slot enum('SLOT1','SLOT2','SLOT3') NOT NULL default 'SLOT1',
  ServerGroupID tinyint(3) unsigned NOT NULL default '0',
  Active enum('ACTIVE','INACTIVE') default NULL,
  AdvancementClass smallint(5) NOT NULL default '0',
  AdvancementGoalExp int(5) NOT NULL default '0',
  Sex enum('MALE','FEMALE') NOT NULL default 'MALE',
  MasterEffectColor smallint(5) NOT NULL default '0',
  BatColor smallint(5) unsigned NOT NULL default '0',
  SkinColor smallint(5) unsigned NOT NULL default '410',
  STR smallint(5) unsigned NOT NULL default '20',
  DEX smallint(5) unsigned NOT NULL default '20',
  INTE smallint(5) unsigned NOT NULL default '20',
  HP smallint(5) unsigned NOT NULL default '100',
  CurrentHP smallint(5) unsigned NOT NULL default '100',
  Fame int(10) unsigned NOT NULL default '0',
  Notoriety int(10) unsigned NOT NULL default '0',
  Exp int(10) unsigned NOT NULL default '0',
  GoalExp int(10) unsigned NOT NULL default '250',
  ExpOffset int(10) unsigned NOT NULL default '0',
  Level tinyint(3) unsigned NOT NULL default '1',
  Bonus smallint(5) unsigned NOT NULL default '0',
  Rank smallint(5) unsigned NOT NULL default '0',
  RankExp int(10) unsigned NOT NULL default '0',
  RankGoalExp int(10) unsigned NOT NULL default '0',
  Gold int(10) unsigned default '0',
  GuildID int(10) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  XCoord tinyint(3) unsigned NOT NULL default '0',
  YCoord tinyint(3) unsigned NOT NULL default '0',
  Sight tinyint(3) unsigned NOT NULL default '0',
  Alignment int(10) NOT NULL default '7500',
  F5 smallint(6) NOT NULL default '-1',
  F6 smallint(6) NOT NULL default '-1',
  F7 smallint(6) NOT NULL default '-1',
  F8 smallint(6) NOT NULL default '-1',
  F9 smallint(6) NOT NULL default '-1',
  F10 smallint(6) NOT NULL default '-1',
  F11 smallint(6) NOT NULL default '-1',
  F12 smallint(6) NOT NULL default '-1',
  StashGold int(10) unsigned NOT NULL default '0',
  StashNum tinyint(3) unsigned NOT NULL default '0',
  Competence tinyint(3) unsigned NOT NULL default '3',
  ResurrectZone int(10) unsigned NOT NULL default '0',
  SilverDamage int(10) unsigned NOT NULL default '0',
  Shape int(10) unsigned NOT NULL default '0',
  CoatColor smallint(5) unsigned NOT NULL default '0',
  CompetenceShape tinyint(3) unsigned NOT NULL default '1',
  RedistributeAttr tinyint(3) unsigned NOT NULL default '0',
  Reward tinyint(3) default '0',
  SMSCharge int(10) NOT NULL default '0',
  LastPlayDate date NOT NULL default '0000-00-00',
  PRIMARY KEY  (Name),
  KEY IDX_Vampire1 (PlayerID),
  KEY IDX_Vampire2 (Slot),
  KEY Vampire_m1 (GuildID)
) TYPE=MyISAM;

CREATE TABLE VampireAmuletInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireAmuletObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY VampireAmuletObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireBraceletInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireBraceletObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_VampireBraceletObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireCoatInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireCoatObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_VampireCoatObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireCoupleRingInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireCoupleRingObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(30) default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  Name varchar(10) default '',
  ItemFlag tinyint(4) NOT NULL default '0',
  PartnerItemID bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_OwnerID (OwnerID),
  KEY IDX_PartnerItemID (PartnerItemID)
) TYPE=MyISAM;


CREATE TABLE VampireETCInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireETCObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY IDX_VampireETCObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireEarringInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireEarringObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  UNIQUE KEY VampireEarringObject_u1 (ItemID),
  KEY VampireEarringObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireNecklaceInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  Ratio int(11) NOT NULL default '0',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireNecklaceObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_VampireNecklaceObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampirePortalItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  MaxCharge int(11) NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampirePortalItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Charge tinyint(3) unsigned NOT NULL default '0',
  TargetZID int(10) unsigned NOT NULL default '0',
  TargetX int(10) unsigned NOT NULL default '0',
  TargetY int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY VampirePortalItemObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireRingInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  Defense tinyint(3) unsigned NOT NULL default '0',
  Protection tinyint(3) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireRingObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY IDX_VampireRingObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE VampireSkillSave (
  OwnerID varchar(10) NOT NULL default '',
  SkillType int(10) unsigned NOT NULL default '0',
  Delay smallint(5) unsigned NOT NULL default '0',
  CastingTime int(10) unsigned NOT NULL default '0',
  NextTime int(10) unsigned NOT NULL default '0',
  KEY IDX_VampireSkillSave (OwnerID,SkillType)
) TYPE=MyISAM;


CREATE TABLE VampireWeaponInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Durability smallint(5) unsigned NOT NULL default '0',
  minDamage smallint(5) unsigned NOT NULL default '0',
  maxDamage smallint(5) unsigned NOT NULL default '0',
  ToHitBonus tinyint(3) unsigned NOT NULL default '0',
  Range tinyint(3) unsigned NOT NULL default '0',
  Speed smallint(5) unsigned NOT NULL default '0',
  ReqAbility varchar(50) NOT NULL default '',
  ItemLevel tinyint(3) unsigned NOT NULL default '0',
  CriticalBonus int(10) unsigned NOT NULL default '0',
  DefaultOption varchar(50) NOT NULL default '',
  UpgradeCrashPercent tinyint(4) NOT NULL default '0',
  UpgradeRatio smallint(6) NOT NULL default '0',
  NextOptionRatio tinyint(3) unsigned NOT NULL default '0',
  NextItemType tinyint(3) unsigned NOT NULL default '0',
  DowngradeRatio smallint(6) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE VampireWeaponObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  OptionType varchar(10) NOT NULL default '',
  Durability smallint(5) unsigned NOT NULL default '0',
  EnchantLevel smallint(5) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  Grade smallint(5) unsigned NOT NULL default '6',
  PRIMARY KEY  (ItemID),
  KEY VampireWeaponObject_m1 (OwnerID)
) TYPE=MyISAM;


CREATE TABLE WarItemInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE WarItemObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  ItemFlag tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (ItemID),
  KEY IDX_WarItemObject (OwnerID),
  KEY IDX_WarItemObject2 (Storage)
) TYPE=MyISAM;

CREATE TABLE WarScheduleInfo (
  WarID int(10) unsigned NOT NULL default '0',
  ServerID smallint(5) unsigned NOT NULL default '0',
  ZoneID smallint(5) unsigned NOT NULL default '0',
  WarType enum('GUILD','RACE') NOT NULL default 'GUILD',
  AttackerCount int(10) unsigned NOT NULL default '1',
  AttackGuildID int(10) unsigned NOT NULL default '0',
  AttackGuildID2 int(10) unsigned NOT NULL default '0',
  AttackGuildID3 int(10) unsigned NOT NULL default '0',
  AttackGuildID4 int(10) unsigned NOT NULL default '0',
  AttackGuildID5 int(10) unsigned NOT NULL default '0',
  WarFee int(10) unsigned NOT NULL default '0',
  StartTime datetime NOT NULL default '0000-00-00 00:00:00',
  Status enum('WAIT','START','END','CANCEL') NOT NULL default 'WAIT',
  PRIMARY KEY  (WarID),
  KEY WarScheduleInfo_m1 (ServerID,ZoneID)
) TYPE=MyISAM;

CREATE TABLE WaterInfo (
  ItemType tinyint(3) unsigned NOT NULL default '0',
  Name varchar(30) NOT NULL default '',
  EName varchar(30) NOT NULL default '',
  Price int(10) unsigned NOT NULL default '0',
  Volume tinyint(3) unsigned NOT NULL default '0',
  Weight tinyint(3) unsigned NOT NULL default '0',
  Ratio int(11) NOT NULL default '0',
  Race tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (ItemType)
) TYPE=MyISAM;

CREATE TABLE WaterObject (
  ItemID bigint(20) unsigned NOT NULL default '0',
  ObjectID int(10) unsigned NOT NULL default '0',
  ItemType tinyint(3) unsigned NOT NULL default '0',
  OwnerID varchar(10) NOT NULL default '',
  Storage tinyint(3) unsigned NOT NULL default '0',
  StorageID bigint(20) unsigned NOT NULL default '0',
  X tinyint(3) unsigned NOT NULL default '0',
  Y tinyint(3) unsigned NOT NULL default '0',
  Num tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (ItemID),
  KEY IDX_WaterObject (OwnerID)
) TYPE=MyISAM;


CREATE TABLE WayPointInfo (
  ZoneID smallint(5) unsigned NOT NULL default '0',
  X smallint(5) unsigned NOT NULL default '0',
  Y smallint(5) unsigned NOT NULL default '0',
  Race smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (ZoneID,X,Y)
) TYPE=MyISAM;

CREATE TABLE WeatherInfo (
  Month tinyint(3) unsigned NOT NULL default '0',
  Clear tinyint(3) unsigned default NULL,
  Rainy tinyint(3) unsigned default NULL,
  Snowy tinyint(3) unsigned default NULL,
  PRIMARY KEY  (Month)
) TYPE=MyISAM;

CREATE TABLE WebLogin (
  PlayerID varchar(15) NOT NULL default '',
  LoginKey varchar(20) NOT NULL default '',
  CreateTime datetime NOT NULL default '2004-01-01 00:00:00',
  PRIMARY KEY  (PlayerID)
) TYPE=MyISAM;


CREATE TABLE WorldDBInfo (
  WorldID int(10) unsigned NOT NULL default '0',
  Host varchar(15) NOT NULL default '',
  DB varchar(15) NOT NULL default '',
  User varchar(15) NOT NULL default '',
  Password varchar(20) NOT NULL default '',
  Port int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (WorldID)
) TYPE=MyISAM;

CREATE TABLE WorldInfo (
  ID int(10) unsigned NOT NULL default '0',
  Name char(20) NOT NULL default '',
  Stat tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY IDX_GameServerGroupInfo1 (Name)
) TYPE=MyISAM;

CREATE TABLE YellowDropLog (
  LogID int(10) unsigned NOT NULL auto_increment,
  PlayerID varchar(15) NOT NULL default '',
  Name varchar(10) NOT NULL default '',
  ReportTime datetime NOT NULL default '2003-01-01 00:00:00',
  IClass smallint(3) unsigned NOT NULL default '0',
  IType smallint(3) unsigned NOT NULL default '0',
  IID int(10) unsigned NOT NULL default '0',
  IGrade tinyint(3) unsigned NOT NULL default '0',
  IOption varchar(10) NOT NULL default '',
  Ratio int(10) unsigned NOT NULL default '0',
  Success tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (LogID)
) TYPE=MyISAM;


CREATE TABLE ZoneEffectInfo (
  ID int(10) NOT NULL auto_increment,
  ZoneID smallint(6) NOT NULL default '0',
  EffectID int(10) NOT NULL default '0',
  LeftX int(10) NOT NULL default '0',
  TopY int(10) NOT NULL default '0',
  RightX int(10) NOT NULL default '0',
  BottomY int(10) NOT NULL default '0',
  Value1 int(10) NOT NULL default '0',
  Value2 int(10) NOT NULL default '0',
  Value3 int(10) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY IDX_ZONEID (ZoneID),
  KEY IDX_EFFECTID (EffectID)
) TYPE=MyISAM;

CREATE TABLE ZoneGroupInfo (
  ZoneGroupID smallint(6) NOT NULL default '0',
  ServerID smallint(6) NOT NULL default '0',
  PRIMARY KEY  (ZoneGroupID)
) TYPE=MyISAM;

CREATE TABLE ZoneInfo (
  ZoneID smallint(5) unsigned NOT NULL default '0',
  ZoneGroupID smallint(5) unsigned NOT NULL default '0',
  Type enum('NORMAL_FIELD','NORMAL_DUNGEON','SLAYER_GUILD','RESERVED_SLAYER_GUILD','PC_VAMPIRE_LAIR','NPC_VAMPIRE_LAIR','NPC_HOME','NPC_SHOP','RANDOM_MAP','CASTLE') NOT NULL default 'NORMAL_FIELD',
  Level tinyint(3) unsigned NOT NULL default '0',
  AccessMode enum('PUBLIC','PRIVATE') NOT NULL default 'PUBLIC',
  OwnerId varchar(20) default NULL,
  MonsterList text,
  EventMonsterList text,
  SResurrectZoneID int(11) NOT NULL default '0',
  SResurrectX int(11) NOT NULL default '0',
  SResurrectY int(11) NOT NULL default '0',
  VResurrectZoneID int(11) NOT NULL default '0',
  VResurrectX int(11) NOT NULL default '0',
  VResurrectY int(11) NOT NULL default '0',
  OResurrectZoneID int(11) NOT NULL default '0',
  OResurrectX int(11) NOT NULL default '0',
  OResurrectY int(11) NOT NULL default '0',
  SmpFileName varchar(40) NOT NULL default '',
  SsiFileName varchar(40) NOT NULL default '',
  FullName varchar(40) NOT NULL default '',
  ShortName varchar(40) NOT NULL default '',
  PayPlayZone tinyint(1) unsigned NOT NULL default '0',
  PremiumZone tinyint(1) unsigned NOT NULL default '0',
  PKZone tinyint(1) unsigned NOT NULL default '0',
  NoPortalZone tinyint(1) unsigned NOT NULL default '0',
  HolyLand tinyint(1) unsigned NOT NULL default '0',
  Available tinyint(1) unsigned NOT NULL default '0',
  OpenLevel tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ZoneID)
) TYPE=MyISAM;

CREATE TABLE ZoneInfo_bak (
  ZoneID smallint(5) unsigned NOT NULL default '0',
  ZoneGroupID smallint(5) unsigned NOT NULL default '0',
  Type enum('NORMAL_FIELD','NORMAL_DUNGEON','SLAYER_GUILD','RESERVED_SLAYER_GUILD','PC_VAMPIRE_LAIR','NPC_VAMPIRE_LAIR','NPC_HOME','NPC_SHOP','RANDOM_MAP','CASTLE') NOT NULL default 'NORMAL_FIELD',
  Level tinyint(3) unsigned NOT NULL default '0',
  AccessMode enum('PUBLIC','PRIVATE') NOT NULL default 'PUBLIC',
  OwnerId varchar(20) default NULL,
  MonsterList text,
  EventMonsterList text,
  SResurrectZoneID int(11) NOT NULL default '0',
  SResurrectX int(11) NOT NULL default '0',
  SResurrectY int(11) NOT NULL default '0',
  VResurrectZoneID int(11) NOT NULL default '0',
  VResurrectX int(11) NOT NULL default '0',
  VResurrectY int(11) NOT NULL default '0',
  OResurrectZoneID int(11) NOT NULL default '0',
  OResurrectX int(11) NOT NULL default '0',
  OResurrectY int(11) NOT NULL default '0',
  SmpFileName varchar(40) NOT NULL default '',
  SsiFileName varchar(40) NOT NULL default '',
  FullName varchar(40) NOT NULL default '',
  ShortName varchar(40) NOT NULL default '',
  PayPlayZone tinyint(1) unsigned NOT NULL default '0',
  PremiumZone tinyint(1) unsigned NOT NULL default '0',
  PKZone tinyint(1) unsigned NOT NULL default '0',
  NoPortalZone tinyint(1) unsigned NOT NULL default '0',
  HolyLand tinyint(1) unsigned NOT NULL default '0',
  Available tinyint(1) unsigned NOT NULL default '0',
  OpenLevel tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (ZoneID)
) TYPE=MyISAM;

CREATE TABLE ZoneTriggers (
  TriggerID int(10) unsigned NOT NULL default '0',
  TriggerType enum('NPC','QUEST','MONSTER') NOT NULL default 'QUEST',
  ZoneID int(10) unsigned NOT NULL default '0',
  X1 int(10) unsigned NOT NULL default '0',
  Y1 int(10) unsigned NOT NULL default '0',
  X2 int(10) unsigned NOT NULL default '0',
  Y2 int(10) unsigned NOT NULL default '0',
  Conditions text NOT NULL,
  Actions text NOT NULL,
  CounterActions text NOT NULL
) TYPE=MyISAM;

CREATE TABLE dk2active (
  activeid int(11) NOT NULL default '0',
  username varchar(10) NOT NULL default '',
  password varchar(14) NOT NULL default '',
  activeip varchar(15) NOT NULL default '',
  province tinyint(3) unsigned NOT NULL default '0',
  activetime datetime NOT NULL default '0000-00-00 00:00:00',
  delactive tinyint(1) NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE dk2editpass (
  editid bigint(20) NOT NULL auto_increment,
  username varchar(20) NOT NULL default '',
  oldpass varchar(20) NOT NULL default '',
  newpass varchar(20) NOT NULL default '',
  edittime datetime NOT NULL default '0000-00-00 00:00:00',
  editip varchar(15) NOT NULL default '',
  UNIQUE KEY editid (editid),
  KEY username (username)
) TYPE=MyISAM;


CREATE TABLE list (
  PlayerID varchar(15) NOT NULL default '',
  colType enum('RecvPremiumDate','RecvPremiumItemDate','RecvItemDate','PayPremiumDate') NOT NULL default 'RecvPremiumDate',
  KEY idx_PlayerID (PlayerID)
) TYPE=MyISAM;


CREATE TABLE loginerror (
  errorid bigint(20) NOT NULL auto_increment,
  username varchar(20) NOT NULL default '',
  password varchar(20) NOT NULL default '',
  loginip varchar(15) NOT NULL default '',
  logintime datetime NOT NULL default '0000-00-00 00:00:00',
  UNIQUE KEY errorid (errorid),
  KEY username (username)
) TYPE=MyISAM;