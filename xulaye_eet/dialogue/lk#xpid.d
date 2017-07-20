// -------------------------------------
// Player Initiated Dialogue
// -------------------------------------

APPEND ~LK#XULJ~

  // Clicky-click
  IF ~IsGabber(Player1) CombatCounter(0) InParty(Myself)~ Player_Initiated_Dialogues
  SAY @0
  + ~RandomNum(6,1) !Global("LK#XulayeKnows","GLOBAL",1)~ + @1+ LK#XPID1.1
  + ~RandomNum(6,2) !Global("LK#XulayeKnows","GLOBAL",1)~ + @1+ LK#XPID1.2
  + ~RandomNum(6,3) !Global("LK#XulayeKnows","GLOBAL",1)~ + @1+ LK#XPID1.3
  + ~RandomNum(6,4) !Global("LK#XulayeKnows","GLOBAL",1)~ + @1+ LK#XPID1.4
  + ~RandomNum(6,5) !Global("LK#XulayeKnows","GLOBAL",1)~ + @1+ LK#XPID1.5
  + ~RandomNum(6,6) !Global("LK#XulayeKnows","GLOBAL",1)~ + @1+ LK#XPID1.6
  + ~RandomNum(2,1) Global("LK#XulayeKnows","GLOBAL",1)~ + @2+ LK#XPID1.7
  + ~RandomNum(2,2) Global("LK#XulayeKnows","GLOBAL",1)~ + @2+ LK#XPID1.8
  + ~AreaCheck("AR2203") Global("LK#XulLoveChambers","LOCALS",0)  Gender(Player1,MALE)~ + @3 + LK#XPID_chambers
  + ~RandomNum(6,1)~ + @4+ LK#XPID2.1
  + ~RandomNum(6,2)~ + @4+ LK#XPID2.2
  + ~RandomNum(6,3)~ + @4+ LK#XPID2.3
  + ~RandomNum(6,4)~ + @4+ LK#XPID2.4
  + ~RandomNum(6,5)~ + @4+ LK#XPID2.5
  + ~RandomNum(6,6) Gender(Player1,FEMALE)~ + @4+ LK#XPID2.6
  + ~RandomNum(3,1)~ + @5+ LK#XPID3.1
  + ~RandomNum(3,2)~ + @5+ LK#XPID3.2
  + ~RandomNum(3,3)~ + @5+ LK#XPID3.3
  + ~RandomNum(4,1)~ + @6+ LK#XPID4.1
  + ~RandomNum(4,2)~ + @6+ LK#XPID4.2
  + ~RandomNum(4,3)~ + @6+ LK#XPID4.3
  + ~RandomNum(4,4)~ + @6+ LK#XPID4.4
  + ~RandomNum(4,1)~ + @7+ LK#XPID5.1
  + ~RandomNum(5,1)~ + @8+ LK#XPID6.1
  + ~RandomNum(5,2)~ + @8+ LK#XPID6.2
  + ~RandomNum(5,3)~ + @8+ LK#XPID6.3
  + ~RandomNum(5,4)~ + @8+ LK#XPID6.4
  + ~RandomNum(5,5)~ + @8+ LK#XPID6.5
  ++ @9 + LK#X7.1
  ++ @10 + LK#X8.1
  + ~Gender([PC],MALE)~ + @11 + LK#X9.1
  + ~Gender([PC],FEMALE)~ + @11 + LK#X9.2
  + ~Gender([PC],MALE)~ + @12 + LK#X10.1
  + ~Gender([PC],FEMALE)~ + @12 + LK#X10.2
  + ~RandomNum(3,1)~ + @13 + LK#X11.1
  + ~RandomNum(3,2)~ + @13 + LK#X11.2
  + ~RandomNum(3,3)~ + @13 + LK#X11.3
  ++ @14 + LK#X12.1
  + ~RandomNum(2,1)~ + @15 + LK#X13.1
  + ~RandomNum(2,2)~ + @15 + LK#X13.2
  ++ @16 + LK#X14.1
  ++ @17 EXIT
END



IF ~~ LK#XPID1.1
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.2
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.3
  SAY @20 
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.4
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.5
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.6
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.7
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID1.8
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID2.1
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID2.2
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID2.3
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID2.4
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID2.5
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID2.6
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID3.1
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID3.2
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID3.3
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID4.1
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID4.2
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID4.3
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID4.4
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID5.1
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.1
  SAY @40
=
@41
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.2
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.3
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.4
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.5 
  SAY @45
  ++ @46+ LK#XPID6.5_1
  ++ @47+ LK#XPID6.5_2
  ++ @48+ LK#XPID6.5_3
  ++ @49+ LK#XPID6.5_4
END

IF ~~ LK#XPID6.5_1
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.5_2
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.5_3
  SAY @52 
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID6.5_4
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ LK#X7.1
  SAY @54
  =
  @55
  IF ~~ THEN EXIT
END

IF ~~ LK#X8.1
  SAY @56
  =
  @57
  =
  @58
  =
  @59
  IF ~~ THEN EXIT
END

IF ~~ LK#X9.1
  SAY @60
  IF ~~ THEN EXIT
END

IF ~~ LK#X9.2
  SAY @61
  =
  @62
  IF ~~ THEN EXIT
END

IF ~~ LK#X10.1
  SAY @63
  IF ~OR(6)
  Gender(PLAYER1,FEMALE)
  Gender(PLAYER2,FEMALE)
  Gender(PLAYER3,FEMALE)
  Gender(PLAYER4,FEMALE)
  Gender(PLAYER5,FEMALE)
  Gender(PLAYER6,FEMALE)~ GOTO LK#X10.3
  IF ~Gender(PLAYER1,MALE)
  Gender(PLAYER2,MALE)
  Gender(PLAYER3,MALE)
  Gender(PLAYER4,MALE)
  Gender(PLAYER5,MALE)
  Gender(PLAYER6,MALE)~ THEN EXIT
END

IF ~~ LK#X10.2
  SAY @64
  IF ~~ THEN EXIT
END

IF ~~ LK#X10.3
  SAY @65
  IF ~~ THEN EXIT
END

IF ~~ LK#X11.1
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ LK#X11.2
  SAY @67
  IF ~~ THEN EXIT
END

IF ~~ LK#X11.3
  SAY @68
  IF ~~ THEN EXIT
END

IF ~~ LK#X12.1
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ LK#X13.1
  SAY @70
  IF ~~ THEN EXIT
END

IF ~~ LK#X13.2
  SAY @71
  =
  @72
  =
  @73
  =
  @74
  =
  @75
  IF ~~ THEN EXIT
END

IF ~~ LK#X14.1
  SAY @76
  ++ @77 + LK#X14.2
  ++ @78 + LK#X14.3
  ++ @79 + LK#X14.4
  ++ @80 + LK#X14.5
  ++ @81 EXIT
END

IF ~~ LK#X14.2
  SAY @82 
  IF ~~ THEN EXIT
END

IF ~~ LK#X14.3
  SAY @83
=
  @84
  IF ~~ THEN EXIT
END

IF ~~ LK#X14.4
  SAY @83
  =
  @84
  IF ~~ THEN EXIT
END

IF ~~ LK#X14.5
  SAY @85
  =
  @84
  IF ~~ THEN EXIT
END

IF ~~ LK#XPID_chambers
  SAY @86
  IF ~~ EXIT
END

END