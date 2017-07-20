// -------------------------------------
// Joining Dialogue
// -------------------------------------
BEGIN ~LK#XULA~

// Xulaye's joining interjection
CHAIN LK#XULA LK#XImraeJoin
  @0 DO ~SetGlobal("LK#XulJoinDialogue","GLOBAL",1)~
  == UDIMRAE @1
  == LK#XULA @2
EXTERN UDIMRAE 7

// After state 6 of UDIMRAE, go to Xulaye's interjection
EXTEND_BOTTOM UDIMRAE 6
  IF ~See("Xulaye")~
  EXTERN LK#XULA LK#XImraeJoin
END

APPEND ~LK#XULA~

// Before joining
IF ~!Global("LK#XulJoinDialogue","GLOBAL",2) !Global("LK#XulJoinDialogue","GLOBAL",3)~ LK#XBeginning
  SAY @3
  IF ~~ EXIT
END

// Joining dialogue
IF ~
Global("LK#XulJoinDialogue","GLOBAL",2)
~ LK#XJoinDialogue
  SAY @4
  ++ @5 DO ~IncrementGlobal("LK#XulJoinDialogue","GLOBAL",1)~ + LK#X1_1
  ++ @6 DO ~IncrementGlobal("LK#XulJoinDialogue","GLOBAL",1)~ + LK#X1_2
  ++ @7 DO ~IncrementGlobal("LK#XulJoinDialogue","GLOBAL",1)~ + LK#X1_3
  ++ @8 DO ~IncrementGlobal("LK#XulJoinDialogue","GLOBAL",1)~ + LK#X1_4
END

IF ~~ LK#X1_1
SAY @9
  ++ @10 + LK#X1_11
  ++ @11 + LK#X1_12
  ++ @12 + LK#X1_13
END

IF ~~ LK#X1_2
SAY @13
  ++ @14 + LK#X1_21
  ++ @15 + LK#X1_4
  ++ @16 + LK#X1_4
END

IF ~~ LK#X1_3
  SAY @17
  IF ~~ DO ~EraseJournalEntry(7096)
  EraseJournalEntry(15787)
  EraseJournalEntry(20170)
  EraseJournalEntry(9978)
  EraseJournalEntry(5832)
  EraseJournalEntry(15725)
  EraseJournalEntry(23500)
  EraseJournalEntry(11690)
  EraseJournalEntry(15746)
  EraseJournalEntry(15745)
  EraseJournalEntry(23519)
  EraseJournalEntry(6933)
  EraseJournalEntry(23486)
  EraseJournalEntry(23485)
  EraseJournalEntry(23445)
  EraseJournalEntry(23444)
  SetGlobal("drowCityHostile","GLOBAL",1)
  Enemy()~ EXIT
END

IF ~~ LK#X1_4
  SAY @18
  = @19
  ++ @20 + LK#X1_41
  ++ @14 + LK#X1_21
  ++ @21 + LK#X1_41
  ++ @22 + LK#X1_3
END

IF ~~ LK#X1_11
  SAY @23
  IF ~~ + LK#X1_21
END

IF ~~ LK#X1_12
  SAY @24 
  IF ~~ + LK#X1_21
END

IF ~~ LK#X1_13
  SAY @25 
  IF ~~ + LK#X1_21
END

IF ~~ LK#X1_21
  SAY @26 
  IF ~~ DO ~JoinParty() SetGlobal("LK#XulayeJoined","GLOBAL",1)~ UNSOLVED_JOURNAL @27 EXIT
END

IF ~~ LK#X1_41
  SAY @28
  ++ @29 + LK#X1_21
  ++ @30 + LK#X1_411
  ++ @31 + LK#X1_13
END

IF ~~ LK#X1_411
  SAY @32
  =
  @33
  IF ~~ DO ~EscapeAreaMove("AR2204",223,815,5)~ EXIT
END


// Meeting her in FFG
IF ~Global("LK#XulJoinDialogue","GLOBAL",3)~ LK#XulJoin2
  SAY @34
  ++ @35 + LK#XJ_2
  ++ @36 + LK#XJ_2
  ++ @37 + LK#XJ_1
  ++ @38 + LK#XJ_1
END

IF ~~ LK#XJ_1
  SAY @39
  IF ~~ EXIT
END

IF ~~ LK#XJ_2
  SAY @40
  IF ~~ DO ~JoinParty() SetGlobal("LK#XulayeJoined","GLOBAL",1)~ UNSOLVED_JOURNAL @27 EXIT
END

END