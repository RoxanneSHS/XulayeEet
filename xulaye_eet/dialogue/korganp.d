APPEND ~korganp~

IF WEIGHT #-2
~
Global("LK#KorganPits","GLOBAL",2)
Global("LK#KorganPitsTalked","AR2202",0)
~ LK#KP2
SAY @0
++ @1 DO ~SetGlobal("LK#KorganPitsTalked","AR2202",1)~ + LK#KP2_1
++ @2 DO ~SetGlobal("LK#KorganPitsTalked","AR2202",1)~ + LK#KP2_2
++ @3 DO ~SetGlobal("LK#KorganPitsTalked","AR2202",1)~ + LK#KP2_3
++ @4 DO ~SetGlobal("LK#KorganPitsTalked","AR2202",1)~ + LK#KP2_112
END

IF ~~ LK#KP2_1
SAY @5
++ @6+ LK#KP2_11
++ @7+ LK#KP2_12
++ @8+ LK#KP2_13
END

IF ~~ LK#KP2_2
SAY @9
=
@10
++ @11 + LK#KP2_1
++ @12 +LK#KP2_21
++ @13 +LK#KP2_3
END

IF ~~ LK#KP2_3
SAY @14
=
@15
++ @16 + LK#KP2_11
++ @17 + LK#KP2_12
++ @18+ LK#KP2_31
END

IF ~~ LK#KP2_11
SAY @19
IF ~~ THEN GOTO LK#KP2_Options
END

IF ~~ LK#KP2_12
SAY @20
=
@21 
IF ~~ THEN DO ~JoinParty() SetGlobal("KorganJoined","GLOBAL",1) GiveGoldForce(500) SetGlobal("LK#KorganPits","LOCALS",3)~ EXIT
END

IF ~~ LK#KP2_13
SAY @22
IF ~~ THEN GOTO LK#KP2_Options
END

IF ~~ LK#KP2_21
SAY @23
IF ~~ THEN GOTO LK#KP2_Options
END

IF ~~ LK#KP2_31
SAY @24
=
@25
IF ~~ GOTO LK#KP2_Options
END

IF ~~ LK#KP2_Options
SAY @26
++ @27+ LK#KP2_111
++ @28+ LK#KP2_12
++ @29+ LK#KP2_112
END

IF ~~ LK#KP2_111
SAY @30
IF ~~ THEN EXIT
END

IF ~~ LK#KP2_112
SAY @31
IF ~~ THEN EXIT
END


// After that

IF WEIGHT #-1
~Global("LK#KorganPits","GLOBAL",2) 
Global("LK#KorganPitsTalked","AR2202",1)
~ THEN LK#KP3
SAY @32
++ @33+ LK#KP3_1
++ @34+ LK#KP3_2
++ @35+ LK#KP3_3
+ ~Global("LK#KorganPitsMoney","AR2202",0)~ + @36 DO ~SetGlobal("LK#KorganPitsMoney","AR2202",1)~ + LK#KP3_4
++ @37+ LK#KP3_5
END

IF ~~ LK#KP3_1
SAY @38
IF ~~ THEN DO ~JoinParty() SetGlobal("KorganJoined","GLOBAL",1) GiveGoldForce(800) SetGlobal("LK#KorganPits","LOCALS",3)~ EXIT
END

IF ~~ LK#KP3_2
SAY @39
IF ~~ THEN EXIT
END

IF ~~ LK#KP3_3
SAY @40
IF ~~ THEN EXIT
END

IF ~~ LK#KP3_4
SAY @41
IF ~~ THEN DO ~GiveGoldForce(800)~ EXIT
END

IF ~~ LK#KP3_5
SAY @42
IF ~~ THEN GOTO LK#KP3_1
END

END