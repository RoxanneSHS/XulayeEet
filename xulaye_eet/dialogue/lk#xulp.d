// -------------------------------------
// Leaving
// -------------------------------------
BEGIN ~LK#XULP~

IF ~Global("LK#XulayeJoined","GLOBAL",1)~ LK#XulLeave
  SAY @0
  ++ @1 + LK#XulLeave1
  ++ @2 + LK#XulLeave2
  ++ @3 + LK#XulLeave2
END

IF ~~ LK#XulLeave1
  SAY @4 
  IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ LK#XulLeave2
  SAY @5
  ++ @6 + LK#XulLeave21
  ++ @7 + LK#XulLeave1
END

IF ~~ LK#XulLeave21
  SAY @8
  IF ~~ DO ~LeaveParty() SetGlobal("LK#XulayeJoined","GLOBAL",0) EscapeAreaMove("AR2204",223,815,5)~ EXIT
END


// -------------------------------------
// Rejoining
// -------------------------------------

IF ~Global("LK#XulayeJoined","GLOBAL",0)~ LK#XulRejoin
  SAY @9
  ++ @10 + LK#XulRejoin1
  ++ @11 + LK#XulRejoin2
  ++ @12 + LK#XulRejoin3
END

IF ~~ LK#XulRejoin1
  SAY @13
  IF ~~ DO ~SetGlobal("LK#XulayeJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ LK#XulRejoin2
  SAY @14
  IF ~~ EXIT
END

IF ~~ LK#XulRejoin3
  SAY @15
  = @16
  IF ~~ DO ~SetGlobal("LK#XulayeJoined","GLOBAL",1) JoinParty()~ EXIT
END
