PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "Achievements" ("Points" INTEGER NOT NULL , "ID" TEXT PRIMARY KEY  NOT NULL  UNIQUE , "Hidden" INTEGER NOT NULL  DEFAULT 0, "PreEarnedDescription" TEXT NOT NULL , "EarnedDescription" TEXT NOT NULL , "Image" TEXT NOT NULL , "PercentComplete" FLOAT NOT NULL  DEFAULT 0, "SortingGroup" INTEGER NOT NULL  DEFAULT 0, 'FacebookDescription' TEXT NOT NULL DEFAULT '', "LevelFile" TEXT NOT NULL  DEFAULT '', "HasViewed" BOOL NOT NULL  DEFAULT 0);
INSERT INTO "Achievements" VALUES(10,'ACH_LP_ONE_CHINA',0,'ACH_LP_ONE_HOWTO','ACH_LP_ONE_DESC','ACH_01.png',0.0,0,'ACH_LP_ONE_FB','',0);
INSERT INTO "Achievements" VALUES(25,'ACH_TRIGNOME_LP_ONE_CHINA',0,'ACH_TRIGNOME_LP_ONE_HOWTO','ACH_TRIGNOME_LP_ONE_DESC','ACH_02.png',0.0,0,'ACH_TRIGNOME_LP_ONE_FB','',0);
INSERT INTO "Achievements" VALUES(5,'ACH_FIRST_FILE_CHINA',0,'ACH_FIRST_FILE_HOWTO','ACH_FIRST_FILE_DESC','ACH_09.png',0.0,0,'ACH_FIRST_FILE_FB','',0);
INSERT INTO "Achievements" VALUES(5,'ACH_ONE_BONUS_CHINA',0,'ACH_ONE_BONUS_HOWTO','ACH_ONE_BONUS_DESC','ACH_11.png',0.0,0,'ACH_ONE_BONUS_FB','',0);
INSERT INTO "Achievements" VALUES(5,'ACH_EFFICIENT_CUT_CHINA',0,'ACH_EFFICIENT_CUT_HOWTO','ACH_EFFICIENT_CUT_DESC','ACH_14.png',0.0,0,'ACH_EFFICIENT_CUT_FB','',0);
INSERT INTO "Achievements" VALUES(5,'ACH_PERSISTENCE_CHINA',0,'ACH_PERSISTENCE_HOWTO','ACH_PERSISTENCE_DESC','ACH_16.png',0.0,0,'ACH_PERSISTENCE_FB','',0);
CREATE TABLE "PlayerData" ("ID" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "EventName" TEXT NOT NULL , "EventValue" INTEGER NOT NULL , 'EventStringValue' TEXT);
INSERT INTO "PlayerData" VALUES(0,'PoisonWaterLosses',0,NULL);
INSERT INTO "PlayerData" VALUES(1,'RubberDuckiesKilled',0,NULL);
INSERT INTO "PlayerData" VALUES(2,'FirstCollectibleSighted',0,NULL);
INSERT INTO "PlayerData" VALUES(3,'LastHourCount',0,NULL);
INSERT INTO "PlayerData" VALUES(4,'SwampyTouched',0,NULL);
INSERT INTO "PlayerData" VALUES(5,'RateMePromptEligible',1,NULL);
INSERT INTO "PlayerData" VALUES(6,'RateMePromptNumToPrompt',10,NULL);
INSERT INTO "PlayerData" VALUES(7,'DateOfNextAMPSCheck',0,NULL);
INSERT INTO "PlayerData" VALUES(8,'AMPSDownloadWasInterrupted',0,NULL);
INSERT INTO "PlayerData" VALUES(9,'PromotionSuffix',-1,'');
INSERT INTO "PlayerData" VALUES(10,'ThemeSuffix',-1,'');
INSERT INTO "PlayerData" VALUES(11,'CrankyPackShown',1,NULL);
INSERT INTO "PlayerData" VALUES(12,'PresentUnavailableChallenges',1,'');
INSERT INTO "PlayerData" VALUES(13,'CloudSyncPrompted',0,NULL);
INSERT INTO "PlayerData" VALUES(14,'PreferredLanguage',-1,'');
INSERT INTO "PlayerData" VALUES(15,'FirstInstallTime',-1,'');
INSERT INTO "PlayerData" VALUES(16,'TotalPlayTimeInLevel',0,'');
CREATE TABLE 'IAPInfo' ('ID' INTEGER PRIMARY KEY  NOT NULL  UNIQUE , 'Internal'	TEXT, 'iOS'		TEXT, 'Google'		TEXT, 'Amazon'		TEXT);
INSERT INTO "IAPInfo" VALUES(1,'locksmith_one','disney.wmp.locksmith_one',NULL,NULL);
INSERT INTO "IAPInfo" VALUES(2,'locksmith_perry','disney.wmp.locksmith_perry',NULL,NULL);
ANALYZE sqlite_master;
INSERT INTO "sqlite_stat1" VALUES('LevelInfo',NULL,'201');
INSERT INTO "sqlite_stat1" VALUES('IAPInfo','sqlite_autoindex_IAPInfo_1','1 1');
INSERT INTO "sqlite_stat1" VALUES('Achievements','sqlite_autoindex_Achievements_1','31 1');
INSERT INTO "sqlite_stat1" VALUES('PlayerData',NULL,'11');
CREATE TABLE "LevelPackInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL ,"Storyline" INTEGER NOT NULL  DEFAULT (-1) ,"PackName" TEXT NOT NULL  DEFAULT ('') ,"Hidden" BOOL NOT NULL  DEFAULT (0) ,"IAP_item_id" TEXT NOT NULL  DEFAULT ('') ,"Bought" BOOL NOT NULL  DEFAULT (1) ,"Unlocked" BOOL NOT NULL  DEFAULT (1) ,"StarsRequired" INTEGER NOT NULL  DEFAULT (-1) ,"TitleText" TEXT NOT NULL  DEFAULT ('') ,"SubtitleText" TEXT NOT NULL  DEFAULT ('') ,"MainTexture" TEXT NOT NULL  DEFAULT ('') ,"FrameTexture" TEXT NOT NULL  DEFAULT ('') , "LockedTexture" TEXT NOT NULL  DEFAULT '', "IsLevelPack" BOOL NOT NULL  DEFAULT 1, "LockedText" TEXT NOT NULL  DEFAULT '', FB_AlbumName text, LS_Unlocked integer default(0), "SimulateUnlock" BOOL NOT NULL  DEFAULT 0, 'IAP_Text' TEXT NOT NULL DEFAULT '','BGTexture' TEXT NOT NULL DEFAULT '','MainSkeleton' TEXT NOT NULL DEFAULT '');
INSERT INTO "LevelPackInfo" VALUES(10,1000,'LP_ONE',0,'',1,1,-1,'LP_ONE_TITLE','LP_ONE_SUBTITLE','UI_Pack_weslie1.webp','UI_Pack_door_frame.webp','',1,'','Mission 1 - An Agent I Can Trust',0,0,'','materials_rock_backdrop_p01.webp','back1');
INSERT INTO "LevelPackInfo" VALUES(20,1000,'BUY_FULL_VERSION',0,'',1,1,-1,'','BUY_FULL_VERSION','UI_Pack_weslie1.webp','UI_Pack_door_frame.webp','',0,'',NULL,0,0,'','materials_rock_backdrop_p01.webp','back1');
CREATE TABLE "Settings" ("ID" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE , "Name" TEXT NOT NULL , "Value" INTEGER NOT NULL  DEFAULT 0);
INSERT INTO "Settings" VALUES(1,'DatabaseVersion',2);
INSERT INTO "Settings" VALUES(10,'AudioOn',1);
INSERT INTO "Settings" VALUES(11,'MusicOn',1);
INSERT INTO "Settings" VALUES(12,'VoiceOn',0);
INSERT INTO "Settings" VALUES(13,'SubtitlesOn',1);
INSERT INTO "Settings" VALUES(20,'Graphics',-1);
INSERT INTO "Settings" VALUES(21,'TargetFramerate',-1);
INSERT INTO "Settings" VALUES(31,'AllowFacebookPublishing',-1);
INSERT INTO "Settings" VALUES(32,'CloudSync',0);
CREATE TABLE "HubInfo" (	"ID" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , 
							"Storyline" INTEGER DEFAULT -1, 
							"IAP_item_id" TEXT DEFAULT '', 
							"Bought" BOOL DEFAULT 1, 
							
							"TitleTexture" TEXT DEFAULT '',
							"MainTexture" TEXT DEFAULT '', 
							"FrameTexture" TEXT DEFAULT '', 
							
							"TextColor" TEXT DEFAULT '',
							
							"TextLine1" TEXT DEFAULT '', 
							"TextLine2" TEXT DEFAULT '', 
							
							"StarCharacter" TEXT DEFAULT '', 
							"ItemCharacter" TEXT DEFAULT '', 
							
							"StarSQL1" TEXT DEFAULT '',
							"StarSQL2" TEXT DEFAULT '',
							
							"ItemSQL1" TEXT DEFAULT '',
							"ItemSQL2" TEXT DEFAULT '',
							
							"TextButton" TEXT DEFAULT '',
							
							"AlertText" TEXT DEFAULT ''	, "Unlocked" BOOL NOT NULL  DEFAULT 1);
INSERT INTO "HubInfo" VALUES(10,1000,'',1,'','story_perry_icon.png','story_story_frame.png','37 108 138','','HUB_TEXT_PERRY_BODY','☆','⚀','','','SELECT count(ID) FROM CollectibleInfo WHERE Unlocked=1','SELECT count(ID) FROM CollectibleInfo','PLAY','',0);
INSERT INTO "HubInfo" VALUES(80,-1,'',1,'','story_swampy_icon.png','story_story_frame.png','37 108 138','','HUB_TEXT_SWAMPY_BODY','','','','','','','TRY','',0);
INSERT INTO "HubInfo" VALUES(90,-1,'',1,'','story_gift_icon.png','story_story_frame.png','37 108 138','','HUB_TEXT_GIFT_TITLE','','','','','','','GIFT','',0);
CREATE TABLE "CollectibleInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL ,"Unlocked" BOOL NOT NULL  DEFAULT (0) ,"HasViewed" BOOL NOT NULL  DEFAULT (0) ,"Type" INTEGER NOT NULL  DEFAULT (0) ,"LevelFile" TEXT NOT NULL  DEFAULT ('') ,"IconTexture" TEXT NOT NULL ,"FullTexture" TEXT NOT NULL ,"BaseName" TEXT NOT NULL );
INSERT INTO "CollectibleInfo" VALUES(1,0,0,0,'','Collections_Pack1_Sunglasses.png','Collections_Pack1_Sunglasses.png','GLASSES');
INSERT INTO "CollectibleInfo" VALUES(2,0,0,0,'','Collections_Pack1_microphone.png','Collections_Pack1_microphone.png','MICROPHONE');
INSERT INTO "CollectibleInfo" VALUES(3,0,0,0,'/Perry/Levels/b_01_justdoit','Collections_Pack1_JacksonSheep.png','Collections_Pack1_JacksonSheep.png','JACKSON');
CREATE TABLE "LevelInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL ,"Name" TEXT NOT NULL ,"Filename" TEXT NOT NULL ,"Stars" INTEGER NOT NULL  DEFAULT (0) ,"PackName" TEXT,"TimesPlayed" INTEGER NOT NULL  DEFAULT (0) ,"TimesFinished" INTEGER NOT NULL  DEFAULT (0) ,"Unlocked" BOOL NOT NULL  DEFAULT (0) ,"ParTime" FLOAT NOT NULL  DEFAULT (15.0) ,"BestScore" INTEGER NOT NULL  DEFAULT (0) ,"CollectibleFound" TEXT NOT NULL ,"PlayTime" INTEGER NOT NULL  DEFAULT (0) ,"TimesRetried" INTEGER NOT NULL  DEFAULT (0) ,"IgnoreInStarCount" BOOL NOT NULL  DEFAULT (0) ,"Type" INTEGER DEFAULT (0) ,"StartDate" DATETIME,"EndDate" DATETIME,"Available" BOOL NOT NULL  DEFAULT (1) ,"IsBonus" BOOL NOT NULL  DEFAULT (0) , "ForceVO" INTEGER DEFAULT 0);
INSERT INTO "LevelInfo" VALUES(0,'LN_GIVE_ME_SOME_WATER','/Perry/Levels/01_p01_give_me_some_water',0,'LP_ONE',0,0,1,25.0,0,'',0,0,0,0,NULL,NULL,1,0,1);
INSERT INTO "LevelInfo" VALUES(1,'LN_THE_RIGHT_DIRECTION','/Perry/Levels/02_p01_the_right_direction',0,'LP_ONE',0,0,0,30.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(2,'LN_GOING_BOTH_WAYS','/Perry/Levels/03_p01_going_both_ways',0,'LP_ONE',0,0,0,40.0,0,'',0,0,0,0,NULL,NULL,1,0,1);
INSERT INTO "LevelInfo" VALUES(3,'LN_SPLIT_IT_UP','/Perry/Levels/04_p01_split_it_up',0,'LP_ONE',0,0,0,25.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(4,'LN_BEWARE_OF_FIRE','/Perry/Levels/05_p01_beware_of_fire',0,'LP_ONE',0,0,0,40.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(5,'LN_COVER_ME','/Perry/Levels/06_p01_cover_me',0,'LP_ONE',0,0,0,35.0,0,'',0,0,0,0,NULL,NULL,1,0,1);
INSERT INTO "LevelInfo" VALUES(6,'LN_TROUGH_THE_JUNGLE','/Perry/Levels/07_p01_trough_the_jungle',0,'LP_ONE',0,0,0,35.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(7,'LN_JUMP_UP_GET_DOWN','/Perry/Levels/08_p01_jump_up_get_down',0,'LP_ONE',0,0,0,25.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(8,'LN_WATER_ARCH','/Perry/Levels/09_p01_water_arch',0,'LP_ONE',0,0,0,30.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(9,'LN_CROSSFIRE','/Perry/Levels/10_p01_crossfire',0,'LP_ONE',0,0,0,45.0,0,'',0,0,0,0,NULL,NULL,1,0,0);
INSERT INTO "LevelInfo" VALUES(2000,'LN_JUSTDOIT','/Perry/Levels/b_01_justdoit',0,'LP_ONE',0,0,0,15.0,0,'',0,0,0,0,NULL,NULL,1,1,0);	
CREATE TABLE "CoinsInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL ,"Coins" TEXT NOT NULL  DEFAULT ('0VnxEJX0taE=') );
INSERT INTO "CoinsInfo" VALUES(0,'0VnxEJX0taE=');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('PlayerData',14);
INSERT INTO "sqlite_sequence" VALUES('Settings',32);
CREATE TABLE IntroStoryInfo ("ID" INTEGER PRIMARY KEY NOT NULL UNIQUE, "Unlocked" BOOL NOT NULL DEFAULT(0));
INSERT INTO "IntroStoryInfo" VALUES(0, 1);
INSERT INTO "IntroStoryInfo" VALUES(1, 1);
INSERT INTO "IntroStoryInfo" VALUES(2, 0);
COMMIT;
