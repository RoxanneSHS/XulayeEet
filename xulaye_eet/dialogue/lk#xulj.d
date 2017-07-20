// -------------------------------------
// Interjections
// -------------------------------------
BEGIN ~LK#XULJ~

// Phaere 1
INTERJECT UDPHAE01 0 LK#XPhae
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @0
  == UDPHAE01 @1
COPY_TRANS UDSOLA01 52

 // Phaere 2
I_C_T UDPHAE01 22 LK#XPhae2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @2
  == UDPHAE01 @3
  == LK#XULJ  @4
END

// Sola 1
INTERJECT UDSOLA01 56 LK#XSola2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @5
  == UDSOLA01 @6
  == LK#XULJ  @7
EXTERN UDSOLA01 57

// Imrae 1
INTERJECT UDIMRAE 9 LK#XJoin
  == LK#XULJ IF ~InMyArea("Xulaye")~ THEN
              @8
COPY_TRANS UDIMRAE 10

 // Phaere 3
I_C_T UDPHAE01 31 LK#XPhae3
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @9
  == UDPHAE01 @10
  == LK#XULJ  @11
  == UDPHAE01 @12
END

// Kua-Toa
I_C_T UDkuo01 0 LK#XKoa
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @13
END

// Ardulace 1
I_C_T UDPHAE01 116 LK#XArd1
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @14
END

// Ardulace 2 -- hijacking
INTERJECT UDARDUL 2 LK#Ard2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @15
COPY_TRANS UDARDUL 3

// Ardulace 3
I_C_T UDPHAE01 120 LK#Ard3
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @16
END

// Ardulace 4
I_C_T UDPHAE01 125 LK#Ard4
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
              @17
  == UDPHAE01 @18
  == LK#XULJ  @19
  == UDPHAE01 @20
END

// Interjection when Phaere dies by the Matron's order for being a traitor
I_C_T UDARDUL 43 LK#XulPhaeDie
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @21
END

// Qilue
I_C_T DAQILUE 0 LK#XulQilue
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @22
  == DAQILUE @23
  = @24
END

// Slaves
I_C_T DASLAVE1 1 LK#XulSlave1
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @25
  = @26
END

// Slaves
I_C_T3 DASLAVE1 5 LK#XulSlave2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) !Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @27
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @28
END

// Slaves
I_C_T3 DASLAVE1 2 LK#XulSlave3
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) !Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @29
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @30
  == DASLAVE1 @31
END

// Slaves
I_C_T3 DASLAVE1 3 LK#XulSlave4
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) !Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @29
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @30
  == DASLAVE1 @31
END

// New option to slaves...
EXTEND_BOTTOM DASLAVE1 2
  + ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ + @32 + 4
END

EXTEND_BOTTOM DASLAVE1 3
  + ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ + @32 + 4
END

// Commoner
I_C_T UDDROW05 3 LK#XulComm1
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @33
  == UDDROW05 @34
  == LK#XULJ  @35
  == UDDROW05 @36
END

// Commoner
I_C_T2 UDDROW06 13 LK#XulComm2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @37
END

// Commoner
I_C_T UDDROW09 5 LK#XulComm3
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @38
  == UDDROW09 @39
  == LK#XULJ  @40
  == UDDROW09 @41
END

// Priestesses
INTERJECT UDDROW20 0 LK#XulPriest1
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) !Global("LK#XulCaught","GLOBAL",1)~ THEN
  @42
  DO ~SetGlobal("LK#XulCaught","GLOBAL",1)~
  == UDDROW20 @43
  == LK#XULJ  @44
  == UDDROW20 @45
  == LK#XULJ  @46
  = @47
EXIT

INTERJECT UDDROW21 0 LK#XulPriest2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) !Global("LK#XulCaught","GLOBAL",1)~ THEN
  @42
  DO ~SetGlobal("LK#XulCaught","GLOBAL",1)~
  == UDDROW21 @43
  == LK#XULJ  @44
  == UDDROW21 @45
  == LK#XULJ  @46
  = @47
END

// Commoner
INTERJECT UDDROW27 4 LK#XulComm4
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @48
  == UDDROW27 @49
  == LK#XULJ  @50
  DO ~ActionOverride("Xulaye",Attack("UDDROW27")) ActionOverride("UDDROW27",Enemy()) ActionOverride("UDDROW27",Attack("Xulaye"))~
END

INTERJECT UDDROW27 5 LK#XulComm5
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @48
  == UDDROW27 @49
  == LK#XULJ  @50
  DO ~ActionOverride("Xulaye",Attack("UDDROW27")) ActionOverride("UDDROW27",Enemy()) ActionOverride("UDDROW27",Attack("Xulaye"))~
END

INTERJECT UDDROW32 4 LK#XulComm6
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @48
  == UDDROW27 @49
  == LK#XULJ  @50
  DO ~ActionOverride("Xulaye",Attack("UDDROW27")) ActionOverride("UDDROW27",Enemy()) ActionOverride("UDDROW27",Attack("Xulaye"))~
END

INTERJECT UDDROW32 5 LK#XulComm7
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @48
  == UDDROW27 @49
  == LK#XULJ  @50
  DO ~ActionOverride("Xulaye",Attack("UDDROW27")) ActionOverride("UDDROW27",Enemy()) ActionOverride("UDDROW27",Attack("Xulaye"))~
END

// Priestess
INTERJECT UDDROW36 2 LK#XulPriest3
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @51
  == UDDROW36 @52
  == LK#XULJ  @53
  == UDDROW36 @54
END

APPEND UDDROW36
  IF WEIGHT #-2 ~NumTimesTalkedToGT(4)~ LK#XulPriestess_1
    SAY @55
    IF ~~ EXIT
  END
END

// Illithid slave
I_C_T UDILSLA1 0 LK#XulIlSlave1
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @56
END

I_C_T UDIMRAE 13 LK#XulImrae
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @57
END


// Jarlaxle
INTERJECT JARLAXLE 0 LK#XulJar
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @58
  == JARLAXLE @59
  == LK#XULJ  @60
COPY_TRANS JARLAXLE 2

// Jarlaxle
I_C_T JARLAXLE 7 LK#XulJar2
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ THEN
  @61
  == JARLAXLE @62
END

// Aaand again
I_C_T3 JARLAXLE 16 LK#XulJar3
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) !Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @63
  == LK#XULJ IF ~InParty("Xulaye") InMyArea("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) Global("LK#XulayeKnows","GLOBAL",1)~ THEN
  @64
END


// -------------------------------------
// PC Dialogue
// -------------------------------------

APPEND ~LK#XULJ~

  // PC Dialogue 1--A bit of background and a warning
  IF WEIGHT #-2 ~Global("LK#XulDialogues","GLOBAL",1) RealGlobalTimerExpired("LK#XulDialoguesTimer","GLOBAL")~ LK#X1
  SAY @65 
    ++ @66 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X1_1
    ++ @67 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X1_2
    ++ @68 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X1_3
    ++ @69 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X1_3
  END
  
  IF ~~ LK#X1_1
    SAY @70
    = 
    @71
    ++ @72 + LK#X1_3
    ++ @73 + LK#X1_3
    ++ @74 + LK#X1_3
    ++ @75 + LK#X1_3
  END
  
  IF ~~ LK#X1_2
    SAY @76
    ++ @77 + LK#X1_3
    ++ @78 + LK#X1_3
    ++ @79 + LK#X1_3
    ++ @80 + LK#X1_21
  END
  
  IF ~~ LK#X1_3
    SAY @81
    ++ @82 + LK#X1_321
    ++ @83 + LK#X1_322
    ++ @84 + LK#X1_322
  END
  
  IF ~~ LK#X1_21
    SAY @85
    IF ~~ + LK#X1_3
  END
  
  IF ~~ LK#X1_321
    SAY @86
    IF ~~ + LK#X1_322
  END
  
  IF ~~ LK#X1_322
    SAY @87
    =
    @88
    ++ @89 + LK#X1_3221
    ++ @90 + LK#X1_3222
    ++ @91 + LK#X1_3223
    ++ @92 + LK#X1_3224
  END
  
  IF ~~ LK#X1_3221
    SAY @93
    IF ~~ + LK#X1_3223
  END
  
  IF ~~ LK#X1_3222
    SAY @94
    =
    @95
    IF ~~ + LK#X1_3223
  END
  
  IF ~~ LK#X1_3223
    SAY @96 
    =
    @97
    =
    @98
    =
    @99
    ++ @100 + LK#X1_32231
    ++ @101 + LK#X1_32232
    ++ @102 + LK#X1_32233
  END
  
  IF ~~ LK#X1_3224
    SAY @103
    =
    @95
    IF ~~ + LK#X1_3223
  END
  
  IF ~~ LK#X1_32231
    SAY @104
    =
    @105
    IF ~~ EXIT
  END
  
  IF ~~ LK#X1_32232
    SAY @106
    IF ~~ + LK#X1_32231
  END
  
  IF ~~ LK#X1_32233
    SAY @107
    IF ~~ + LK#X1_32231
  END
  
  
  // PC Dialogue 2--Why were you sent from Ust Natha?
  IF WEIGHT #-1 ~Global("LK#XulDialogues","GLOBAL",3) RealGlobalTimerExpired("LK#XulDialoguesTimer","GLOBAL")~ LK#X2
    SAY @108 
    ++ @109 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ +  LK#X2_1
    ++ @110 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X2_2
    ++ @111 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X2_3
    ++ @112 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X2_2
    ++ @113 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ + LK#X2_4
  END
  
  IF ~~ LK#X2_1 	
    SAY @114
    ++ @115 + LK#X2_11
    ++ @116 + LK#X2_12
    ++ @117 + LK#X2_13
    ++ @118 + LK#X2_12
  END
  
  IF ~~ LK#X2_2
    SAY @119
    ++ @115 + LK#X2_11
    ++ @116 + LK#X2_12
    ++ @117 + LK#X2_13
    ++ @118 + LK#X2_12
  END
  
  IF ~~ LK#X2_3
    SAY @120
    ++ @121 + LK#X2_2
    ++ @122 + LK#X2_1
    ++ @123 + LK#X2_31
  END
  
  IF ~~ LK#X2_4
    SAY @124
    ++ @125 + LK#X2_41
    ++ @126 + LK#X2_42
    ++ @127 + LK#X2_31
  END
  
  IF ~~ LK#X2_11
    SAY @128
    ++ @125 + LK#X2_41
    ++ @129 + LK#X2_42
    ++ @127 + LK#X2_31
  END
  
  IF ~~ LK#X2_12
    SAY @130
    ++ @131 + LK#X2_121
    ++ @132 + LK#X2_121
    ++ @133 + LK#X2_122
  END
  
  IF ~~ LK#X2_13
    SAY @134
    =
    @135
    ++ @131 + LK#X2_121
    ++ @132 + LK#X2_121
    ++ @133 + LK#X2_122
  END
  
  IF ~~ LK#X2_31
    SAY @137
    ++ @138 + LK#X2_311
    ++ @139 + LK#X2_312
    ++ @133 + LK#X2_122
  END
  
  IF ~~ LK#X2_41
    SAY @140 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X2_42
    SAY @141 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X2_121
    SAY @142 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X2_122
    SAY @143 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X2_311
    SAY @144
    =
    @145 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X2_312
    SAY @146 
    IF ~~ EXIT
  END
  
  
  // PC Dialogue 3--Discovered
  IF WEIGHT #-1 ~Global("LK#XulDialogues","GLOBAL",5) RealGlobalTimerExpired("LK#XulDialoguesTimer","GLOBAL")~ LK#X3
    SAY @147 
    =
    @148 
    ++ @149 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ UNSOLVED_JOURNAL @150 + LK#X3_1
    ++ @151 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ UNSOLVED_JOURNAL @150 + LK#X3_2
    ++ @152 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ UNSOLVED_JOURNAL @150 + LK#X3_3
    ++ @153 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ UNSOLVED_JOURNAL @150 + LK#X3_4
    ++ @154 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ UNSOLVED_JOURNAL @150 + LK#X3_1
    ++ @155 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulDialoguesTimer","GLOBAL",900)~ UNSOLVED_JOURNAL @150 + LK#X3_4
  END
  
  IF ~~ LK#X3_1
    SAY @156
    ++ @157 + LK#X3_11
    ++ @158 + LK#X3_12
    + ~Race(Player1,ELF)~ + @159 + LK#X3_13
    + ~Race(Player1,HALF_ELF)~ + @160 + LK#X3_14
    + ~Race(Player1,DWARF)~ + @161 + LK#X3_14
    + ~Race(Player1,HALFORC)~ + @162 + LK#X3_14
    + ~Race(Player1,GNOME)~ + @163 + LK#X3_14
    + ~Race(Player1,HUMAN)~ + @164 + LK#X3_14
    + ~Race(Player1,HALFLING)~ + @165 + LK#X3_14
    ++ @166 + LK#X3_4
    + ~!Global("LK#XulayeFoundOut","GLOBAL",1)~ + @167 + LK#X3_15
  END
  
  IF ~~ LK#X3_2
    SAY @168
    ++ @157 + LK#X3_11
    ++ @158 + LK#X3_12
    + ~Race(Player1,ELF)~ + @159 + LK#X3_13
    + ~Race(Player1,HALF_ELF)~ + @160 + LK#X3_14
    + ~Race(Player1,DWARF)~ + @161 + LK#X3_14
    + ~Race(Player1,HALFORC)~ + @162 + LK#X3_14
    + ~Race(Player1,GNOME)~ + @163 + LK#X3_14
    + ~Race(Player1,HUMAN)~ + @164 + LK#X3_14
    + ~Race(Player1,HALFLING)~ + @165 + LK#X3_14
    ++ @166 + LK#X3_4
    + ~!Global("LK#XulayeFoundOut","GLOBAL",1)~ + @167 + LK#X3_15
  END
  
  IF ~~ LK#X3_3
    SAY @170
    =
    @171
    ++ @157 + LK#X3_11
    ++ @158 + LK#X3_12
    + ~Race(Player1,ELF)~ + @159 + LK#X3_13
    + ~Race(Player1,HALF_ELF)~ + @160 + LK#X3_14
    + ~Race(Player1,DWARF)~ + @161 + LK#X3_14
    + ~Race(Player1,HALFORC)~ + @162 + LK#X3_14
    + ~Race(Player1,GNOME)~ + @163 + LK#X3_14
    + ~Race(Player1,HUMAN)~ + @164 + LK#X3_14
    + ~Race(Player1,HALFLING)~ + @165 + LK#X3_14
    ++ @166 + LK#X3_4
    + ~!Global("LK#XulayeFoundOut","GLOBAL",1)~ + @167 + LK#X3_15
  END
  
  IF ~~ LK#X3_4
    SAY @172
    =
    @173
    ++ @174 + LK#X3_41
    ++ @175 + LK#X3_42
    + ~CheckStatGT(Player1,14,WIS)~ + @176 + LK#X3_43
    ++ @177 + LK#X3_44
    + ~CheckStatGT(Player1,14,WIS)~ + @178 + LK#X3_45
    ++ @179 + LK#X3_46
  END
  
  IF ~~ LK#X3_11
    SAY @180
    =
    @181
    =
    @182
    =
    @183
    ++ @174 + LK#X3_41
    ++ @175 + LK#X3_42
    + ~CheckStatGT(Player1,14,WIS)~ + @176 + LK#X3_43
    ++ @177 + LK#X3_44
    + ~CheckStatGT(Player1,14,WIS)~ + @178 + LK#X3_45
    ++ @179 + LK#X3_46
  END
  
  IF ~~ LK#X3_12
    SAY @184
    =
    @185
    =
    @182
    =
    @173
    ++ @174 + LK#X3_41
    ++ @175 + LK#X3_42
    + ~CheckStatGT(Player1,14,WIS)~ + @176 + LK#X3_43
    ++ @177 + LK#X3_44
    + ~CheckStatGT(Player1,14,WIS)~ + @178 + LK#X3_45
    ++ @179 + LK#X3_46
  END
  
  IF ~~ LK#X3_13
    SAY @187
    =
    @188
    =
    @189
    =
    @190
    ++ @174 + LK#X3_41
    ++ @175 + LK#X3_42
    + ~CheckStatGT(Player1,14,WIS)~ + @176 + LK#X3_43
    ++ @177 + LK#X3_44
    + ~CheckStatGT(Player1,14,WIS)~ + @178 + LK#X3_45
    ++ @179 + LK#X3_46
  END
  
  IF ~~ LK#X3_14
    SAY @191
    =
    @189
    =
    @173
    ++ @174 + LK#X3_41
    ++ @175 + LK#X3_42
    + ~CheckStatGT(Player1,14,WIS)~ + @176 + LK#X3_43
    ++ @177 + LK#X3_44
    + ~CheckStatGT(Player1,14,WIS)~ + @178 + LK#X3_45
    ++ @179 + LK#X3_46
  END
  
  IF ~~ LK#X3_15
  SAY @192
    ++ @193 + LK#X3_152
    ++ @194 + LK#X3_153
    + ~CheckStatGT(Player1,16,INT)~ + @195 + LK#X3_151
    ++ @196 + LK#X3_11
    ++ @197 + LK#X3_154
    ++ @198 + LK#X3_4
  END
  
  IF ~~ LK#X3_41
    SAY @199 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_42
    SAY @200 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_43
    SAY @201 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_44
    SAY @202
    =
    @203 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_45
    SAY @204 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_46
    SAY @205
    =
    @203 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_151
    SAY @206
    =
    @207 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_152
    SAY @208
    =
    @207 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_153
    SAY @210
    =
    @207 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X3_154
    SAY @211
    =
    @207 
    IF ~~ EXIT
  END
  
  
  // PC Dialogue 4--A warning
  IF WEIGHT #-1 ~Global("LK#XulDialogues","GLOBAL",7) RealGlobalTimerExpired("LK#XulDialoguesTimer","GLOBAL")~ LK#X4
    SAY @212 
    ++ @213 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X4_11
    ++ @214 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X4_21
    ++ @215 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X4_31
    ++ @216 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X4_41
    ++ @217 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X4_81
  END
  
  IF ~~ LK#X4_11
    SAY @218
    ++ @219 + LK#X4_51
    ++ @220 + LK#X4_61
    ++ @221 + LK#X4_51
    ++ @222 + LK#X4_61
  END
  
  IF ~~ LK#X4_51
    SAY @223
    =
    @224 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X4_21
    SAY @225
    ++ @226 + LK#X4_71
    ++ @227 + LK#X4_51
    ++ @228 + LK#X4_31
    ++ @229 + LK#X4_41
  END
  
  IF ~~ LK#X4_71
    SAY @230
    ++ @231 + LK#X4_11
    ++ @232 + LK#X4_41
    ++ @233 + LK#X4_31
  END
  
  IF ~~ LK#X4_31
    SAY @234
    ++ @235 + LK#X4_81
    ++ @236 + LK#X4_41
    ++ @237 + LK#X4_61
    ++ @238 + LK#X4_91
  END
  
  IF ~~ LK#X4_81
    SAY @239
    = 
    @240 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X4_41
    SAY @241
    ++ @242 + LK#X4_81
    ++ @243 + LK#X4_61
    ++ @244 + LK#X4_91
  END
  
  IF ~~ LK#X4_61
    SAY @245
    = 
    @246 
    IF ~~ EXIT
  END
  
  IF ~~ LK#X4_91
    SAY @247
    ++ @248 + LK#X4_51
    ++ @249 + LK#X4_51
    ++ @250 + LK#X4_61
    ++ @251 + LK#X4_81
  END


// -------------------------------------
// Scenery dialogue
// -------------------------------------

// After Aboleth encounter
  IF ~Global("LK#XulAboleth","GLOBAL",1)~ THEN LK#XSAboleth
    SAY @252 
    = @253
    = @254
    ++ @255 DO ~IncrementGlobal("LK#XulAboleth","GLOBAL",1)~ + LK#XSA_1
    ++ @256 DO ~IncrementGlobal("LK#XulAboleth","GLOBAL",1)~ + LK#XSA_2
    ++ @257 DO ~IncrementGlobal("LK#XulAboleth","GLOBAL",1)~ + LK#XSA_3
    ++ @258 DO ~IncrementGlobal("LK#XulAboleth","GLOBAL",1)~ + LK#XSA_4
    ++ @259 DO ~IncrementGlobal("LK#XulAboleth","GLOBAL",1)~ + LK#XSA_5
  END
  
  IF ~~ LK#XSA_1
    SAY @260
      IF ~~ EXIT
  END
  
  IF ~~ LK#XSA_2
    SAY @261
    ++ @262 + LK#XSA_1
    ++ @263 + LK#XSA_21
    ++ @264 + LK#XSA_22
    ++ @265 + LK#XSA_5
  END

  IF ~~ LK#XSA_3
    SAY @266
    ++ @262 + LK#XSA_1
    ++ @263 + LK#XSA_21
    ++ @264 + LK#XSA_22
    ++ @265 + LK#XSA_5
  END
  
  IF ~~ LK#XSA_4
    SAY @267
    ++ @262 + LK#XSA_1
    ++ @263 + LK#XSA_21
    ++ @264 + LK#XSA_22
    ++ @265 + LK#XSA_5
  END
  
  IF ~~ LK#XSA_5
    SAY @268
    = @269
    ++ @262 + LK#XSA_1
    ++ @263 + LK#XSA_21
    ++ @264 + LK#XSA_22
    ++ @265 + LK#XSA_5
  END
  
  IF ~~ LK#XSA_21
    SAY @270
    IF ~~ EXIT
  END
  
  IF ~~ LK#XSA_22
    SAY @271
    IF ~~ EXIT
  END


// If Solaufein is dead, Xul talks in his place
  IF WEIGHT #-1 ~Global("LK#XulGivesEggs","GLOBAL",1)~ LK#X5
    SAY @272 
    ++ @273 DO ~IncrementGlobal("LK#XulGivesEggs","GLOBAL",1) ~ + LK#X5_1
    ++ @274 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X5_2
    ++ @275 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X5_3
    ++ @276 DO ~IncrementGlobal("LK#XulDialogues","GLOBAL",1) RealSetGlobalTimer("LK#XulQuestStart","GLOBAL",500) SetGlobal("LK#XulQuest","GLOBAL",1)~ + LK#X5_4
  END
  
  IF ~~ LK#X5_1
    SAY @277
    ++ @278 + LK#X5_11
    ++ @279 + LK#X5_2
    ++ @280 + LK#X5_3
  END
  
  IF ~~ LK#X5_2
    SAY @281
    ++ @282 + LK#X5_21
    ++ @283 + LK#X5_22
    + ~OR(11) 
      AreaCheck("AR2200")
      AreaCheck("AR2201") 
      AreaCheck("AR2202") 
      AreaCheck("AR2203") 
      AreaCheck("AR2204") 
      AreaCheck("AR2205")
      AreaCheck("AR2206") 
      AreaCheck("AR2207") 
      AreaCheck("AR2208") 
      AreaCheck("AR2209") 
      AreaCheck("AR2210")~ + @284 + LK#X5_23
    + ~!AreaCheck("AR2200") 
      !AreaCheck("AR2201") 
      !AreaCheck("AR2202") 
      !AreaCheck("AR2203") 
      !AreaCheck("AR2204") 
      !AreaCheck("AR2205") 
      !AreaCheck("AR2206") 
      !AreaCheck("AR2207") 
      !AreaCheck("AR2208") 
      !AreaCheck("AR2209") 
      !AreaCheck("AR2210")~ + @284 + LK#X5_23
    ++ @285 + LK#X5_21
  END
  
  IF ~~ LK#X5_3
    SAY @286
    IF ~~ + LK#X5_2
  END
  
  IF ~~ LK#X5_4
    SAY @287
    IF ~~ + LK#X5_2
  END
  
  IF ~~ LK#X5_11
    SAY @288
    IF ~~ + LK#X5_2
  END
  
  IF ~~ LK#X5_21
    SAY @289
    = @290
    = @136
    ++ @291 DO ~GiveItemCreate("lk#xeggs",LastTalkedToBy,0,0,0)~ + LK#X5_211
    ++ @292 DO ~GiveItemCreate("lk#xeggs",LastTalkedToBy,0,0,0)~ + LK#X5_212
    ++ @293 + LK#X5_213
    ++ @294 + LK#X5_214
  END
  
  IF ~~ LK#X5_22
    SAY @295
    IF ~~ + LK#X5_21
  END
  
  IF ~~ LK#X5_23
    SAY @296
    = @297
    IF ~~ DO ~LeaveParty() 
              SetGlobal("LK#XulayeJoined","GLOBAL",0) 
              EraseJournalEntry(@298)
              EraseJournalEntry(@299)
              EraseJournalEntry(@300)
              EraseJournalEntry(@301)
              EraseJournalEntry(@302)
              EraseJournalEntry(@303)
              EraseJournalEntry(@304)
              EscapeArea()~ SOLVED_JOURNAL @305 EXIT
  END

  IF ~~ LK#X5_211
    SAY @306
    IF ~~ + LK#X5_212
  END
  
  IF ~~ LK#X5_212
    SAY @307
    IF ~~ UNSOLVED_JOURNAL @308 EXIT
  END
  
  IF ~~ LK#X5_213
    SAY @309
    ++ @310 DO ~GiveItemCreate("lk#xeggs",LastTalkedToBy,0,0,0)~ + LK#X5_211
    + ~OR(11)
      AreaCheck("AR2200")
      AreaCheck("AR2201") 
      AreaCheck("AR2202") 
      AreaCheck("AR2203") 
      AreaCheck("AR2204") 
      AreaCheck("AR2205") 
      AreaCheck("AR2206") 
      AreaCheck("AR2207")
      AreaCheck("AR2208")
      AreaCheck("AR2209") 
      AreaCheck("AR2210")~ + @311 + LK#X5_23
    + ~!AreaCheck("AR2200")
      !AreaCheck("AR2201") 
      !AreaCheck("AR2202") 
      !AreaCheck("AR2203") 
      !AreaCheck("AR2204") 
      !AreaCheck("AR2205") 
      !AreaCheck("AR2206")
      !AreaCheck("AR2207") 
      !AreaCheck("AR2208") 
      !AreaCheck("AR2209") 
      !AreaCheck("AR2210")~ + @311 + LK#X5_23
    ++ @312 DO ~GiveItemCreate("lk#xeggs",LastTalkedToBy,0,0,0)~ + LK#X5_212
  END
  
  IF ~~ LK#X5_214
    SAY @313
    = @314
    ++ @315 + LK#X5_212
    ++ @316 + LK#X5_213
  END


// Xulaye talk if you gave Phaere the real eggs
  IF ~Global("LK#XulGaveRealEggs","GLOBAL",1)~ LK#XulArghEggs
    SAY @317 
    + ~Gender(Player1,MALE)~ + @318 DO ~IncrementGlobal("LK#XulGaveRealEggs","GLOBAL",1)~ + LK#XulArghEggs_1a
    + ~Gender(Player1,FEMALE)~ + @318 DO ~IncrementGlobal("LK#XulGaveRealEggs","GLOBAL",1)~ + LK#XulArghEggs_1b
    ++ @319 DO ~IncrementGlobal("LK#XulGaveRealEggs","GLOBAL",1)~ + LK#XulArghEggs_2
    ++ @320 DO ~IncrementGlobal("LK#XulGaveRealEggs","GLOBAL",1)~ + LK#XulArghEggs_2
  END
  
  IF ~~ LK#XulArghEggs_1a
    SAY @321
    IF ~~ + LK#XulArghEggs_3
  END

  IF ~~ LK#XulArghEggs_1b
    SAY @322
    IF ~~ + LK#XulArghEggs_3
  END

  IF ~~ LK#XulArghEggs_2
    SAY @323
    IF ~~ EXIT
  END
  
  IF ~~ LK#XulArghEggs_3
    SAY @324
    = @325
    IF ~~ DO ~LeaveParty() 
              SetGlobal("LK#XulayeJoined","GLOBAL",0) 
              EraseJournalEntry(@298)
              EraseJournalEntry(@150)
              EraseJournalEntry(@300)
              EraseJournalEntry(@301)
              EraseJournalEntry(@302)
              EraseJournalEntry(@303)
              EraseJournalEntry(@304)
              EraseJournalEntry(@308)
              Enemy()
              Attack(Player1)~ SOLVED_JOURNAL @327 EXIT
  END


// Xulaye talk about not killing Solaufein
  IF ~Global("LK#XulNoKillingSola","GLOBAL",1)~ LK#XulKillSola
    SAY @328 
    ++ @329 DO ~IncrementGlobal("LK#XulNoKillingSola","GLOBAL",1)~ + LK#XulKillSola_1
    ++ @330 DO ~IncrementGlobal("LK#XulNoKillingSola","GLOBAL",1)~ + LK#XulKillSola_2
    ++ @331 DO ~IncrementGlobal("LK#XulNoKillingSola","GLOBAL",1)~ + LK#XulKillSola_3
  END

  IF ~~ LK#XulKillSola_1
    SAY @332
    IF ~~ + LK#XulKillSola_4
  END
  
  IF ~~ LK#XulKillSola_2
    SAY @333
    = @334
    IF ~~ EXIT
  END
  
  IF ~~ LK#XulKillSola_3
    SAY @335
    IF ~~ + LK#XulKillSola_4
  END

  IF ~~ LK#XulKillSola_4
    SAY @336
    = @334
    IF ~~ EXIT
  END

END


// Svirfneblin comment
EXTEND_BOTTOM UDSVIR08 0
  IF ~OR(2) Dead("Solaufein") Global("SolaufeinJob","GLOBAL",7) InParty("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID)~ EXTERN LK#XULJ LK#XulSvirf
END

APPEND LK#XULJ

  IF ~~ LK#XulSvirf
    SAY @337
    IF ~~ EXTERN UDSVIR08 1
  END

END


APPEND LK#XULJ

// Reaction to being captured by Illithid
IF ~Global("LK#XulIllithid","GLOBAL",2)~ LK#XulIllithid
  SAY @338
  = @339
  = @340
  ++ @341 DO ~IncrementGlobal("LK#XulIllithid","GLOBAL",1)~ + LK#XulI.1
  ++ @342 DO ~IncrementGlobal("LK#XulIllithid","GLOBAL",1)~ + LK#XulI.2
  ++ @343 DO ~IncrementGlobal("LK#XulIllithid","GLOBAL",1)~ + LK#XulI.3
END

IF ~~ LK#XulI.1
  SAY @344
  IF ~~ + LK#XulI.4
END

IF ~~ LK#XulI.2
  SAY @345
  IF ~~ + LK#XulI.4
END

IF ~~ LK#XulI.3
  SAY @346
  IF ~~ + LK#XulI.4
END

IF ~~ LK#XulI.4
  SAY @347
  IF ~~ EXIT
END


// Reaction to being in the Beholder's lair
IF ~Global("LK#XulBeholder","GLOBAL",1)~ LK#XulBeh
  SAY @348
  ++ @349 DO ~IncrementGlobal("LK#XulBeholder","GLOBAL",1)~ + LK#XulBeh.1
  ++ @350 DO ~IncrementGlobal("LK#XulBeholder","GLOBAL",1)~ + LK#XulBeh.1
  ++ @351 DO ~IncrementGlobal("LK#XulBeholder","GLOBAL",1)~ + LK#XulBeh.2
END

IF ~~ LK#XulBeh.1
  SAY @352
  IF ~~ EXIT
END

IF ~~ LK#XulBeh.2
  SAY @353
  IF ~~ EXIT
END


// Reaction to killing the Kua-Toa prince
IF ~Global("LK#XulKuatoa","GLOBAL",1)~ LK#XulKua
  SAY @354
  = @355
  ++ @356 DO ~IncrementGlobal("LK#XulKuatoa","GLOBAL",1)~ + LK#XulKua.1
  ++ @357 DO ~IncrementGlobal("LK#XulKuatoa","GLOBAL",1)~ + LK#XulKua.2
  ++ @358 DO ~IncrementGlobal("LK#XulKuatoa","GLOBAL",1)~ + LK#XulKua.3
END

IF ~~ LK#XulKua.1
  SAY @359
  IF ~~ EXIT
END

IF ~~ LK#XulKua.2
  SAY @360
  IF ~~ + LK#XulKua.1
END

IF ~~ LK#XulKua.3
  SAY @361
  IF ~~ + LK#XulKua.1
END

END