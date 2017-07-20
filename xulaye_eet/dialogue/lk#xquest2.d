// ---------------------------------------------
// Quest part 2: Underdark endings
// ---------------------------------------------
BEGIN LK#XMG1

// Phaere reaction if Xulaye dies/is killed
APPEND UDPHAE01
 
  IF WEIGHT #-2 ~Global("PhaereJob","GLOBAL",2) Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ EXTERN UDSOLA01 84
  END
  
  IF WEIGHT #-2 ~InPartySlot(LastTalkedToBy,0) Global("PhaereJob","GLOBAL",5) GlobalLT("SolaufeinJob","GLOBAL",6) Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead1
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 56
  END
  
  IF WEIGHT #-2 ~Global("PhaereJob","GLOBAL",5) Global("SolaufeinJob","GLOBAL",6) Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead2
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 63
  END
  
  IF WEIGHT #-2 ~Global("PhaereJob","GLOBAL",5) Global("SolaufeinJob","GLOBAL",7) !PartyHasItem("MISCA6") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead3
    SAY @1
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 64
  END
  
  IF WEIGHT #-2 ~InPartySlot(LastTalkedToBy,0) Global("PhaereJob","GLOBAL",6) Global("SolaufeinJob","GLOBAL",7) Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead4
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 73
  END
  
  IF WEIGHT #-2 ~PartyHasItem("misc9w") InPartySlot(LastTalkedToBy,0) Global("PhaereJob","GLOBAL",6) GlobalGT("SolaufeinJob","GLOBAL",7) Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead5
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 94
  END
  
  IF WEIGHT #-2 ~Global("PhaereJob","GLOBAL",8) Global("MatronJob","GLOBAL",2) !PartyHasItem("misca8") !PartyHasItem("misca7") !PartyHasItem("miscbv") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead6
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 121
  END
  
  IF WEIGHT #-2 ~Global("PhaereJob","GLOBAL",8) Global("MatronJob","GLOBAL",2) OR(3) PartyHasItem("misca8") PartyHasItem("misca7") PartyHasItem("miscbv") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead7
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 122
  END
  
  IF WEIGHT #-2 ~InPartySlot(LastTalkedToBy,0) Global("PhaereJob","GLOBAL",9) GlobalLT("udDrowPlot","GLOBAL",20) Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead8
    SAY @0
    = @2
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 129
  END
  
  IF WEIGHT #-2 ~Global("PhaereJob","GLOBAL",10) Global("EggsReplaced","GLOBAL",0) !PartyHasItem("MISC9t") GlobalLT("udDrowPlot","GLOBAL",20) !PartyHasItem("MISC9v") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead9
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 146
  END
  
  IF WEIGHT #-2 ~GlobalLT("udDrowPlot","GLOBAL",20) Global("PhaereJob","GLOBAL",10) Global("EggsReplaced","GLOBAL",0) OR(2) PartyHasItem("MISC9t") PartyHasItem("MISC9v") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead10
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 147
  END
  
  IF WEIGHT #-2 ~GlobalLT("udDrowPlot","GLOBAL",20) Global("PhaereJob","GLOBAL",10) Global("EggsReplaced","GLOBAL",1) !PartyHasItem("MISC9t") !PartyHasItem("MISC9v") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead11
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 148
  END
  
  IF WEIGHT #-2 ~GlobalLT("udDrowPlot","GLOBAL",20) Global("PhaereJob","GLOBAL",10) Global("EggsReplaced","GLOBAL",1) OR(2) PartyHasItem("MISC9t") PartyHasItem("MISC9v") Dead("Xulaye") Global("LK#XulayeDead","GLOBAL",0)~ LK#XulDead12
    SAY @0
    IF ~~ DO ~SetGlobal("LK#XulayeDead","GLOBAL",1)~ + 150
  END

END


// Sola-gives-party-fake-eggs changes
INTERJECT UDSOLA01 146 LK#XulSolaEggs
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @3
  == UDSOLA01 @4
  == LK#XULJ  @5
  == UDSOLA01 @6
EXTERN UDSOLA01 148

INTERJECT UDSOLA01 154 LK#XulSolaEggs
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @7
  == UDSOLA01 @4
  == LK#XULJ  @5
  == UDSOLA01 @8
EXTERN UDSOLA01 156


// Xulaye interjections to make <CHARNAME> take eggs, similar to below dialogue.
INTERJECT UDSOLA01 153 LK#XulSolaTakeEggs1
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN 
  @9
  = @10
END
  ++ @11 EXTERN LK#XULJ LK#XulSTE_1
  ++ @12 EXTERN LK#XULJ LK#XulSTE_2
  ++ @13 EXTERN LK#XULJ LK#XulSTE_3

INTERJECT UDSOLA01 162 LK#XulSolaTakeEggs
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @10
END
  ++ @11 EXTERN LK#XULJ LK#XulSTE_1
  ++ @12 EXTERN LK#XULJ LK#XulSTE_2
  ++ @13 EXTERN LK#XULJ LK#XulSTE_3
  
CHAIN LK#XULJ LK#XulSTE_1
  @14
  == UDSOLA01 @15
  == LK#XULJ  @16
  == UDSOLA01 @17
END
  + ~Global("SolaufeinLikes","GLOBAL",1)~ + @18 DO ~GiveItemCreate("MISC9v",Player1,0,0,0)~ EXTERN UDSOLA01 151
  + ~GlobalGT("SolaufeinLikes","GLOBAL",1)~ + @18  DO ~GiveItemCreate("MISC9v",Player1,0,0,0)~ EXTERN UDSOLA01 160
  ++ @19 EXTERN LK#XULJ LK#XulSTE_3
  
CHAIN LK#XULJ LK#XulSTE_2
  @20
END
  ++ @21 EXTERN LK#XULJ LK#XulSTE_1
  ++ @22 EXTERN LK#XULJ LK#XulSTE_3

CHAIN LK#XULJ LK#XulSTE_3
  @23
    = @24
    == UDSOLA01 @25
    = @26
    DO ~ActionOverride("Xulaye",LeaveParty()) ActionOverride("Xulaye",EscapeArea()) SetGlobal("LK#XulayeJoined","GLOBAL",0) ActionOverride("Solaufein",EscapeAreaObject("Tran2100"))~
EXIT



// Adding new option to the Phaere dialogue in which you give her the eggs
EXTEND_TOP UDPHAE01 150 #1
  + ~PartyHasItem("LK#XEGGS")~ + @27 DO ~TakePartyItem("LK#XEGGS") AddexperienceParty(20000) SetGlobal("udPhaTimerOn","GLOBAL",0)~ + LK#XulPhaeEggs
END

APPEND UDPHAE01

IF ~~ LK#XulPhaeEggs
  SAY @28
  IF ~~ DO ~SetGlobal("PhaereHasFakeEggs","GLOBAL",1)~ UNSOLVED_JOURNAL @29 + 153
END

END



// IF Ardulace has the real eggs
// and demon is summoned
// = Ardulace has dialogue with Xul + Phaere; Xul + party are thrown to the pits.

CHAIN IF WEIGHT #-2 ~Global("udDrowPlot","GLOBAL",35) InParty("Xulaye")~ THEN UDARDUL LK#XulArdTalk
  @30
  DO ~SetGlobal("udDrowPlot","GLOBAL",36)~
  == LK#XULJ @31 
END
  ++ @32 EXTERN UDARDUL LK#XulArdTalk_1
  ++ @33 DO ~ActionOverride("Xulaye",LeaveParty()) SetGlobal("LK#XulayeJoined","GLOBAL",0)~ EXTERN UDARDUL LK#XulArdTalk_2
  + ~!Dead("Phaere")~ + @34 EXTERN LK#XULJ LK#XulArdTalk_3
  + ~Dead("Phaere")~ + @35 EXTERN LK#XULJ LK#XulArdTalk_4
  ++ @36 EXTERN UDARDUL LK#XulArdTalk_1
  
CHAIN UDARDUL LK#XulArdTalk_1
  @37
  == LK#XULJ     @38
  == UDARDUL  IF ~Dead("Phaere")~ THEN @39
  == UDPHAE01 IF ~!Dead("Phaere")~ THEN @40
  == UDARDUL  IF ~!Dead("Phaere")~ THEN @41
  == UDPHAE01 IF ~!Dead("Phaere")~ THEN @42
  == UDARDUL     @43
  == UDDEMON     @44
  == LK#XULJ     @45 
  DO ~SetGlobal("LK#XulPits","GLOBAL",1)~
EXIT

CHAIN UDARDUL LK#XulArdTalk_2
  @46
  =          @47
  == UDDEMON @44
  DO ~SetGlobal("LK#XulEraseUDJournal","GLOBAL",1) AddJournalEntry(@48,QUEST_DONE) SetGlobal("DrowCityHostile","GLOBAL",1) Enemy() ActionOverride("Ardulace",Enemy()) ActionOverride("Xulaye",Enemy())~
EXIT

CHAIN LK#XULJ LK#XulArdTalk_3
  @49 
EXTERN LK#XULJ LK#XulArdTalk_5

CHAIN LK#XULJ LK#XulArdTalk_4
  @50 
  =           @51
  == UDARDUL  @52
  =           @53
  DO ~AddJournalEntry(@54,QUEST) ActionOverride("Ardulace",Enemy()) ActionOverride("UDDEMON",Enemy())~
EXIT

CHAIN LK#XULJ LK#XulArdTalk_5
  @55
  =           @56
  DO ~SetGlobal("LK#XulSecuredCity","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("lk#xcut3")~
EXIT


// IF Phaere has the real eggs
// and Ardulace has fake eggs
// = Ardulace dies, Phaere lives

CHAIN IF WEIGHT #-2 ~Global("udDrowPlot","GLOBAL",35) InParty("Xulaye")~ THEN UDPHAE01 LK#XulPhaTalk
  @57
  DO ~SetGlobal("udDrowPlot","GLOBAL",36)~
  == LK#XULJ  @58
  = @59
  == UDPHAE01 @60
  == LK#XULJ  @61
  =           @62
  =           @56
  DO ~SetGlobal("LK#XulSecuredCity","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("lk#xcut3")~
EXIT

CHAIN IF ~Global("LK#XulSecuredCity","GLOBAL",2)~ THEN UDPHAE01 LK#XulPhaTalk2
  @63
  == UDPHAE01 IF ~Dead("Ardulace")~ THEN @64
  == UDARDUL  IF ~!Dead("Ardulace")~ THEN @65
  == UDDEMON  @66
  DO ~AddJournalEntry(@54,QUEST) ActionOverride("Phaere",Enemy()) ActionOverride("Ardulace",Enemy()) ActionOverride("UDDEMON",Enemy())~ 
EXIT


// Making sure player gets the eggs after Phaere dies
ADD_TRANS_TRIGGER UDPHAE01 162 ~!InParty("Xulaye")~

EXTEND_BOTTOM UDPHAE01 162
  IF ~InParty("Xulaye")~ DO ~SetGlobal("LK#XulGetEggs","GLOBAL",1)~ EXTERN UDDEMON 16
END


// IF Phaere has the fake eggs
// and Ardulace has fake eggs
// = Both die; Xulaye interjects early in Demon's dialogue and tells him to leave.

INTERJECT UDDEMON 7 LK#XulDemon1
  == LK#XULJ IF ~InParty("Xulaye") !Dead("Xulaye") Dead("Phaere")~ THEN @67
EXTERN UDDEMON LK#XulDemonEnd


INTERJECT UDDEMON 20 LK#XulDemon2
  == LK#XULJ IF ~InParty("Xulaye") !Dead("Xulaye") Dead("Phaere")~ THEN @68
EXTERN UDDEMON LK#XulDemonEnd


APPEND UDDEMON

  IF ~~ LK#XulDemonEnd
    SAY @69
    IF ~~ DO ~SetGlobal("LK#XulayeWins","GLOBAL",1)~ EXIT
  END

END


APPEND LK#XULJ

// Xulaye & PC are in the pits
IF ~Global("LK#XulPits","GLOBAL",2)~ LK#XulInPits
  SAY @70
  = @71
  = @72
  = @73
  IF ~~ DO ~ActionOverride("Xulaye",LeaveParty()) SetGlobal("LK#XulayeJoined","GLOBAL",0) SetGlobal("LK#XulEraseUDJournal","GLOBAL",1) SetGlobal("DrowCityHostile","GLOBAL",1) EscapeArea()~ SOLVED_JOURNAL @74 EXIT
END

// Winning dialogue
IF ~Global("LK#XulayeWins","GLOBAL",1) !See("lk#xmg1") Global("LK#XulGetEggs","GLOBAL",0)~ LK#XulWins
  SAY @75
  IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#xcut6")~ EXIT
END

IF ~Global("LK#XulayeWins","GLOBAL",1) !See("lk#xmg1") Global("LK#XulGetEggs","GLOBAL",1)~ LK#XulWins1
  SAY @76
  = @77
  IF ~~ DO ~GiveItemCreate("MISC9T",Player1,0,0,0) ClearAllActions() StartCutSceneMode() StartCutScene("lk#xcut6")~ EXIT
END

END

CHAIN IF ~Global("LK#XulayeWins","GLOBAL",1) See("lk#xmg1")~ THEN LK#XMG1 LK#XulGuardScene 
  @78 
  = @79
  == LK#XULJ @80
  == LK#XMG1 @81
  == LK#XULJ @82
  == LK#XMG1 @83
  DO ~ActionOverride("lk#xmg1",EscapeArea()) IncrementGlobal("LK#XulayeWins","GLOBAL",1)~
EXIT