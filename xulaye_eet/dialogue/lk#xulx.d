// ---------------------------------------------
// Xulaye left party angry dialogue...
// ---------------------------------------------
BEGIN LK#XULX
BEGIN LK#XTM3

// Winning scene
IF ~Global("LK#XulayeWins","GLOBAL",3) Global("PlayerLooksLikeDrow","GLOBAL",1)~ LK#XulScene
  SAY @0
  IF ~~ DO ~IncrementGlobal("LK#XulayeWins","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("lk#xcut5")~ EXIT
END

CHAIN IF ~Global("LK#XulayeWins","GLOBAL",3) !Global("PCLooksLikeDrow","GLOBAL",1)~ THEN LK#XULX LK#XulScene
  @0
  == LK#XTM3 @1
  == LK#XULX @2
  DO ~IncrementGlobal("LK#XulayeWins","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("lk#xcut5")~ 
EXIT


CHAIN IF ~Global("LK#XulayeWins","GLOBAL",4)  !Global("LK#XulElf","GLOBAL",1)~ THEN LK#XULX LK#XulScene2
  @3
  DO ~IncrementGlobal("LK#XulayeWins","GLOBAL",1)~
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4
  == IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @5
END
  ++ @6 EXTERN LK#XULX LK#XulScene2_1
  ++ @7 EXTERN LK#XULX LK#XulScene2_2
  ++ @8 EXTERN LK#XULX LK#XulScene2_2
  
CHAIN LK#XULX LK#XulScene2_1
  @9
EXTERN LK#XULX LK#XulScene2_3

CHAIN LK#XULX LK#XulScene2_2
  @10
  = @11
END
  ++ @12 DO ~GiveItemCreate("lk#xclk",Player1,0,0,0) ActionOverride(Player1,GiveGoldForce(10000)~ EXTERN LK#XULX LK#XulScene2_3
  ++ @13 DO ~GiveItemCreate("lk#xclk",Player1,0,0,0) ActionOverride(Player1,GiveGoldForce(10000)~ EXTERN LK#XULX LK#XulScene2_3
  ++ @14 EXTERN LK#XULX LK#XulScene2_1

CHAIN LK#XULX LK#XulScene2_3
  @15
END
  ++ @16 EXTERN LK#XULX LK#XulScene2_4
  ++ @17 EXTERN LK#XULX LK#XulScene2_5
  ++ @18 EXTERN LK#XULX LK#XulScene2_6

CHAIN LK#XULX LK#XulScene2_4
  @19
  DO ~AddJournalEntry(@20,QUEST_DONE) SetGlobal("LK#XulEraseUDJournal","GLOBAL",1)~

EXIT

CHAIN LK#XULX LK#XulScene2_5
  @21
  =@22
  DO ~AddJournalEntry(@20,QUEST_DONE) SetGlobal("LK#XulEraseUDJournal","GLOBAL",1)~
EXIT

CHAIN LK#XULX LK#XulScene2_6
  @23
  DO ~AddJournalEntry(@20,QUEST_DONE) SetGlobal("LK#XulEraseUDJournal","GLOBAL",1)~
EXIT


// If Xulaye left the party angry
CHAIN IF ~Global("LK#XulayeLeftAngry","GLOBAL",2)~ THEN LK#XULX LK#XulAngry
  @24
  = @25
  DO ~IncrementGlobal("LK#XulayeLeftAngry","GLOBAL",1)~
  == UDIMRAE @26
END
  ++ @27 EXTERN LK#XULX LK#XulAngry1
  ++ @28 EXTERN LK#XULX LK#XulAngry2
  ++ @29 EXTERN UDIMRAE LK#XulAngry3
  
CHAIN LK#XULX LK#XulAngry1
  @30
  DO ~AddJournalEntry(@31,QUEST_DONE) ActionOverride("Xulaye1",Enemy()) SetGlobal("LK#XulEnemy","GLOBAL",1)~ // and other warriors

EXIT

CHAIN LK#XULX LK#XulAngry2
  @32
EXTERN UDIMRAE LK#XulAngry5

CHAIN UDIMRAE LK#XulAngry3
  @33
  == LK#XULX @34
  = @35
  DO ~AddJournalEntry(@36,QUEST_DONE) ActionOverride("Xulaye1",Enemy()) SetGlobal("LK#XulEnemy","GLOBAL",1) SetGlobal("DrowCityHostile","GLOBAL",1)~

EXIT

CHAIN UDIMRAE LK#XulAngry5
  @37
  == LK#XULX @38
  DO ~AddJournalEntry(@39,QUEST_DONE) ActionOverride("Xulaye1",Enemy()) SetGlobal("LK#XulEnemy","GLOBAL",1)~
EXIT

APPEND UDIMRAE
  IF ~Global("LK#XulEnemy","GLOBAL",1) Dead("Xulaye1") !See([ENEMY])~ LK#XulKilled
    SAY @40
    = @41
    IF ~~ DO ~EscapeArea()~ EXIT
  END
END