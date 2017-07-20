APPEND ~korganj~

IF WEIGHT #-1
~Global("LK#KorganPits","GLOBAL",1)
~ LK#KPits
SAY @0
++ @1 + LK#KP1
++ @2 + LK#KP1
END

IF ~~ LK#KP1
SAY @3
++ @4 + LK#KP1_1
++ @5 + LK#KP1_2
++ @6 + LK#KP1_3
END

IF ~~ LK#KP1_1
SAY @7
=
@8 IF ~~ THEN DO ~SetGlobal("LK#KorganPits","GLOBAL",2) LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR2202", 1352, 876, 5)~ EXIT
END

IF ~~ LK#KP1_2
SAY @9
++ @10 + LK#KP1_21
++ @11 + LK#KP1_1
++ @12 + LK#KP1_21
END

IF ~~ LK#KP1_3
SAY @13 IF ~~ THEN DO ~SetGlobal("LK#KorganPits","GLOBAL",2) LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR2202", 1352, 876, 5)~ EXIT
END

IF ~~ LK#KP1_21
SAY @14 IF ~~ THEN DO ~SetGlobal("LK#KorganPits","GLOBAL",3)~ EXIT
END

END