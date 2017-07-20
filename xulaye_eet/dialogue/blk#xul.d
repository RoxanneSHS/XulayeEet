// -------------------------------------
// Banter
// -------------------------------------
BEGIN ~BLK#XUL~

// Aerie 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulAerie","GLOBAL",0)
~
THEN BLK#XUL XulAerie1
  @0  DO ~SetGlobal("LK#XulAerie","GLOBAL",1)~
  == BAERIE @1
  == BLK#XUL @2
  == BAERIE @3
  == BLK#XUL @4
  = @5
EXIT


// Anomen 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulAnomen","GLOBAL",0)
~
THEN BLK#XUL XulAnomen1
  @6  DO ~SetGlobal("LK#XulAnomen","GLOBAL",1)~
  == BANOMEN @7
END
  + ~Gender(Player1,FEMALE)~ + @8 EXTERN ~BANOMEN~ LK#XulAno1
  + ~!Gender(Player1,FEMALE)~ + @9 EXTERN ~BANOMEN~ LK#XulAno1
  ++ @10 EXTERN ~BLK#XUL~ LK#XulAno2
  + ~Gender(Player1,FEMALE)~ + @11 EXTERN ~BLK#XUL~ LK#XulAno3
  + ~!Gender(Player1,FEMALE)~ + @12 EXTERN ~BLK#XUL~ LK#XulAno31
  + ~Gender(Player1,FEMALE) !Global("LK#XulayeKnows","GLOBAL",1)~ + @13 EXTERN ~BLK#XUL~ LK#XulAno4
  + ~Gender(Player1,FEMALE) Global("LK#XulayeKnows","GLOBAL",1)~ + @13 EXTERN ~BLK#XUL~ LK#XulAno5
  + ~!Gender(Player1,FEMALE) !Global("LK#XulayeKnows","GLOBAL",1)~ + @14 EXTERN ~BLK#XUL~ LK#XulAno4
  + ~!Gender(Player1,FEMALE) Global("LK#XulayeKnows","GLOBAL",1)~ + @14 EXTERN ~BLK#XUL~ LK#XulAno5

CHAIN ~BANOMEN~ LK#XulAno1
  @15
  == BLK#XUL @16
EXIT

CHAIN ~BLK#XUL~ LK#XulAno2
  @17
EXIT

CHAIN ~BLK#XUL~ LK#XulAno3
  @18
EXIT

CHAIN ~BLK#XUL~ LK#XulAno31
  @18
EXIT

CHAIN ~BLK#XUL~ LK#XulAno4
  @19
EXIT

CHAIN ~BLK#XUL~ LK#XulAno5
  @20
EXIT


// Edwin 1
CHAIN IF
~
CombatCounter(0)
PartyRested()
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulEdwin","GLOBAL",0)
~
THEN BLK#XUL XulEdwin1
  @21  DO ~SetGlobal("LK#XulEdwin","GLOBAL",1)~
  == BEDWIN @22
  == BLK#XUL @23
  == BEDWIN @24
  == BLK#XUL @25
  == BEDWIN @26
EXIT


// Minsc 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulMinsc","GLOBAL",0)
~
THEN BLK#XUL XulMinsc1
  @27  DO ~SetGlobal("LK#XulMinsc","GLOBAL",1)~
  == BMINSC @28
  == BLK#XUL @29
  == BMINSC @30
  == BLK#XUL @31
  == BMINSC @32
END
  ++ @33 EXTERN ~BMINSC~ LK#XM_1
  ++ @34 EXTERN ~BLK#XUL~ LK#XM_2
  ++ @35 EXTERN ~BMINSC~ LK#XM_1

CHAIN ~BMINSC~ LK#XM_1
  @36
  == BLK#XUL @37
  == BMINSC @38
  == BLK#XUL @39
  == BMINSC @40
  == BLK#XUL @41
  == BMINSC @42
  == BLK#XUL @26
EXIT

CHAIN ~BLK#XUL~ LK#XM_2
  @43
  == BMINSC @44
  == BLK#XUL @45
  == BMINSC @46
  == BLK#XUL @41
  == BMINSC @47
  == BLK#XUL @26
EXIT 

// Haer'Dalis 1
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("LK#XulHaer","GLOBAL",0)
~
THEN BHAERDA XulHaer1
  @48 DO ~SetGlobal("LK#XulHaer","GLOBAL",1)~
  == BLK#XUL @49 
  == BHAERDA @50
  == BLK#XUL @51
  == BHAERDA @52
  == BLK#XUL @53
  == BHAERDA @54
  == BLK#XUL @55
  == BHAERDA @56
  == BLK#XUL @57
  == BHAERDA @58
  == BLK#XUL @59
EXIT

// Valygar 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulValygar","GLOBAL",0)
~
THEN BLK#XUL XulValygar1
  @60  DO ~SetGlobal("LK#XulValygar","GLOBAL",1)~
  == BVALYGA @61
  == BLK#XUL @62
  == BVALYGA @63
  == BLK#XUL @64
  = @65
  == BVALYGA @66
EXIT

// Imoen 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulImoen","GLOBAL",0)
~
THEN BLK#XUL XulImoen1
  @67  DO ~SetGlobal("LK#XulImoen","GLOBAL",1)~
  == IMOEN2J @68
  == BLK#XUL @69
  == IMOEN2J @70
  == BLK#XUL @71
  == IMOEN2J @72
  == BLK#XUL @73
EXIT

// Imoen 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulImoen","GLOBAL",1)
~
THEN BLK#XUL XulImoen2
  @74  DO ~SetGlobal("LK#XulAnomen","GLOBAL",2)~
  == IMOEN2J @75
  == BLK#XUL @76
  == IMOEN2J @77
  == BLK#XUL @78
EXIT

// Korgan 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulKorgan","GLOBAL",0)
~
THEN BLK#XUL XulKorgan1
  @79  DO ~SetGlobal("LK#XulKorgan","GLOBAL",1)~
  == BKORGAN @80
  == BLK#XUL @81
  == BKORGAN @82
  == BLK#XUL @83
  == BKORGAN @84
  == BLK#XUL @85
  == BKORGAN @86
EXIT

// Mazzy 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Mazzy")
Range("Mazzy",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("LK#XulMazzy","GLOBAL",0)
~
THEN BLK#XUL XulMazzy1
  @87  DO ~SetGlobal("LK#XulMazzy","GLOBAL",1)~
  == BMAZZY @88
  == BLK#XUL @89
  == BMAZZY @90
  == BLK#XUL @91
EXIT

// Nalia 1
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("LK#XulNalia","GLOBAL",0)
~
THEN BNALIA XulNalia1
  @92 DO ~SetGlobal("LK#XulNalia","GLOBAL",1)~
  == BLK#XUL @93 
  == BNALIA @94
  == BLK#XUL @95
  == BLK#XUL @96
  == BNALIA @97
  == BLK#XUL @98
  == BNALIA @99
  == BLK#XUL @100
  == BNALIA @101
  == BLK#XUL @102
EXIT

// Cernd 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulCernd","GLOBAL",0)
~
THEN BLK#XUL XulCernd
  @103  DO ~SetGlobal("LK#XulCernd","GLOBAL",1)~
  == BCERND @104
  = @105
  == BLK#XUL @106 
  == BCERND @107
  == BLK#XUL @108
  == BCERND @109
  = @110
  == BLK#XUL @111
  == BCERND @112
  == BLK#XUL @113
EXIT

// Jaheira 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("LK#XulJaheira","GLOBAL",0)
~
THEN BLK#XUL XulJaheira1
  @114  DO ~SetGlobal("LK#XulJaheira","GLOBAL",1)~
  == BJAHEIR @115
  == BLK#XUL @116
  == BJAHEIR @117
  == BLK#XUL @118
  = @119
  == BJAHEIR @120
  == BLK#XUL @121
  == BJAHEIR @122
  == BLK#XUL @123
EXIT

// Jan 1
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("LK#XulJan","GLOBAL",0)
~
THEN BJAN XulJaheira1
  @124 DO ~SetGlobal("LK#XulJan","GLOBAL",2)~
  == BLK#XUL @125 
  == BJAN @126
  == BLK#XUL @127
  == BJAN @128
  == BLK#XUL @129
  == BJAN @130
  == BLK#XUL @131
  == BJAN @132
  = @133
EXIT

// Jan 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jan")
Range("Jan",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulJan","GLOBAL",2)
~
THEN BLK#XUL XulJan2
  @134  DO ~SetGlobal("LK#XulJan","GLOBAL",3)~
  == BJAN @135
  == BLK#XUL @136
  == BJAN @137
  == BLK#XUL @138
  == BJAN @139
  == BLK#XUL @140
  == BJAN @141
  = @142
EXIT

// Keldorn 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulKeldorn","GLOBAL",0)
~
THEN BLK#XUL XulKeldorn1
  @143  DO ~SetGlobal("LK#XulKeldorn","GLOBAL",1)~
  == BKELDOR @144
  == BLK#XUL @145
  == BKELDOR @146
  == BLK#XUL @147
  == BKELDOR @148
  == BLK#XUL @149
  == BLK#XUL @150
  ==BKELDOR @151
  == BLK#XUL @152
EXIT

// Viconia
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulViconia","GLOBAL",0)
~
THEN BLK#XUL XulViconia1
  @153  DO ~SetGlobal("LK#XulViconia","GLOBAL",1)~
  == BVICONI @154
  == BLK#XUL @155
  == BVICONI @156
  == BLK#XUL @157
  == BVICONI @158
  == BLK#XUL @159
  == BVICONI @160
  = @161
EXIT


// Haer'Dalis 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulHaer","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulMinsc1
  @162  DO ~SetGlobal("LK#XulHaer","GLOBAL",2)~
  == BHAERDA @163
  == BLK#XUL @164
  == BHAERDA @165
  == BLK#XUL @166
EXIT

// Valygar 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulValygar","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulValygar2
  @167  DO ~SetGlobal("LK#XulValygar","GLOBAL",2)~
  == BVALYGA @168
  == BLK#XUL @169
  == BVALYGA @170
  == BLK#XUL @171
  == BVALYGA @172
  == BLK#XUL @173
  == BVALYGA @174
  == BLK#XUL @175
  == BVALYGA @176
  == BLK#XUL @177
  == BVALYGA @178
EXIT

// Valygar 3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulValygar","GLOBAL",2)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulValygar3
  @179  DO ~SetGlobal("LK#XulValygar","GLOBAL",3)~
  == BVALYGA @180
  == BLK#XUL @181
  == BVALYGA @182
  == BLK#XUL @183
  == BVALYGA @184
  == BLK#XUL @185
  == BVALYGA @186
  == BLK#XUL @187
EXIT

// Anomen 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulAnomen","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulAnomen1
  @188  DO ~SetGlobal("LK#XulAnomen","GLOBAL",2)~
  == BANOMEN @189
  == BLK#XUL @190
  == BANOMEN @191
  == BLK#XUL @192
  == BANOMEN @193
  == BLK#XUL @194
  == BANOMEN @195
  == BLK#XUL @196
  == BANOMEN @197
  == BLK#XUL @198
EXIT

// Viconia 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulViconia","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulViconia2
  @199  DO ~SetGlobal("LK#XulViconia","GLOBAL",2)~
  == BVICONI @200
  == BLK#XUL @201
  == BVICONI @202
  == BLK#XUL @203
  == BVICONI @204
  = @205
  == BLK#XUL @206
EXIT

// Imoen 3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulImoen","GLOBAL",2)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulImoen2
  @207  DO ~SetGlobal("LK#XulAnomen","GLOBAL",3)~
  == IMOEN2J @208
  == BLK#XUL @209
  == IMOEN2J @210
  = @211
  == BLK#XUL @212
  == IMOEN2J @213
  == BLK#XUL @214
  == IMOEN2J @215
  == BLK#XUL @216
  == IMOEN2J @217
EXIT

// Cernd 2
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("LK#XulCernd","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BCERND XulCernd2
  @218 DO ~SetGlobal("LK#XulCernd","GLOBAL",2)~
  == BLK#XUL @219 
  == BCERND @220
  == BLK#XUL @221
  == BCERND @222
  == BLK#XUL @223
EXIT

// Jaheira 2
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("LK#XulJaheira","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BJAHEIR XulJaheira2
  @224 DO ~SetGlobal("LK#XulJaheira","GLOBAL",2)~
  == BLK#XUL @225 
  == BJAHEIR @226
  == BLK#XUL @227
  == BJAHEIR @228
  == BLK#XUL @229
  == BJAHEIR @230
EXIT

// Korgan 2
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
PartyRested()
Global("LK#XulKorgan","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BKORGAN XulKorgan2
  @231 DO ~SetGlobal("LK#XulKorgan","GLOBAL",2)~
  == BLK#XUL @232 
  == BKORGAN @233
  == BLK#XUL @234
  == BKORGAN @235
  == BLK#XUL @236
  == BKORGAN @237
  == BLK#XUL @238
EXIT

// Keldorn 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulKeldorn","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulKeldorn2
  @239  DO ~SetGlobal("LK#XulKeldorn","GLOBAL",2)~
  == BKELDOR @240
  == BLK#XUL @241
  == BKELDOR @242
EXIT

// Mazzy 2
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Xulaye")
Range("Xulaye",30)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("LK#XulMazzy","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BMAZZY XulMazzy2
  @243 DO ~SetGlobal("LK#XulMazzy","GLOBAL",2)~
  == BLK#XUL @244 
  == BMAZZY @245
  == BLK#XUL @246
  == BMAZZY @247
  == BLK#XUL @248
  == BMAZZY @249
  == BMAZZY IF ~InParty("Viconia")~ THEN @250
  == BMAZZY @251
  == BLK#XUL @252
EXIT

// Nalia 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Nalia")
Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("LK#XulNalia","GLOBAL",1)
Global("LK#XulayeKnows","GLOBAL",1)
~
THEN BLK#XUL XulNalia2
  @253  DO ~SetGlobal("LK#XulNalia","GLOBAL",2)~
  == BNALIA @254
  == BLK#XUL @255
  == BNALIA @256
  == BLK#XUL @257
  == BNALIA @258
  == BLK#XUL @259
EXIT