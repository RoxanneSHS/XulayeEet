// -------------------------------------
// Xulaye Quest Dialogue
// -------------------------------------
BEGIN ~LK#XMES~
BEGIN ~LK#XLAR~

CHAIN IF WEIGHT #-2 ~Global("LK#XulQuest","GLOBAL",2)~ THEN LK#XMES LK#XulQuestMessenger
  @0
  =
  @1
  == LK#XULJ @2
  == LK#XMES @3
  == LK#XULJ @4 
END
  ++ @5 EXTERN LK#XULJ LK#XQMes_1
  ++ @6 EXTERN LK#XULJ LK#XQMes_2
  ++ @7 EXTERN LK#XULJ LK#XQMes_1
  ++ @8 EXTERN LK#XULJ LK#XQMes_1

APPEND LK#XULJ
  IF ~~ LK#XQMes_1
    SAY @9
    =
    @10 
    IF ~~ DO ~SetGlobal("LK#XulQuest","GLOBAL",3)
       ClearAllActions() 
       StartCutSceneMode()
       StartCutScene("lk#xcut1")~ UNSOLVED_JOURNAL @11 EXIT
  END
END

APPEND LK#XULJ
  IF ~~ LK#XQMes_2
    SAY @12
    =
    @13
    ++ @14 + LK#XQMes_21
    ++ @15 + LK#XQMes_1
    ++ @16 + LK#XQMes_22
    END
  
  IF ~~ LK#XQMes_21
    SAY @17
    = 
    @18
    IF ~~ DO ~SetGlobal("LK#XulayeLeftAngry","GLOBAL",1)
       SetGlobal("LK#XulayeJoined","GLOBAL",0)
       SetGlobal("LK#XulQuest","GLOBAL",0)
       EraseJournalEntry(@19)
       EraseJournalEntry(@20)
       LeaveParty()
       EscapeArea()
       ActionOverride("lk#xmes",EscapeArea())~ SOLVED_JOURNAL @21
       EXIT
  END
  
  IF ~~ LK#XQMes_22
    SAY @22
    =
    @23
    =
    @10
    IF ~~ DO ~SetGlobal("LK#XulQuest","GLOBAL",3)
       ClearAllActions() 
       StartCutSceneMode() 
       StartCutScene("lk#xcut1")~ UNSOLVED_JOURNAL @11 EXIT
  END
END

// Dialogue with Mistress Larace & co (copy of Ardulace, copy of Phaere, 2 male Drow with her & Ikaxan)
CHAIN IF ~Global("LK#XulQuest","GLOBAL",3)~ THEN LK#XMES LK#XulQuestKiiRret
  @25
  == LK#XULJ @26 
  == LK#XLAR @27
  = @28
  == LK#XULJ @29
  == LK#XLAR @30
  == LK#XULJ @31
  == LK#XLAR @32
  = @33
END
  ++ @34 EXTERN LK#XULJ LK#XQKiiRret_1
  + ~PartyGoldGT(19999)~ + @35 DO ~TakePartyGold(20000)~ EXTERN LK#XLAR LK#XQKiiRret_2
  + ~PartyGoldLT(20000)~ + @36 EXTERN LK#XLAR LK#XQKiiRret_3
  ++ @37 EXTERN LK#XLAR LK#XQKiiRret_5
  ++ @38 EXTERN LK#XLAR LK#XQKiiRret_3

APPEND LK#XULJ
  IF ~~ LK#XQKiiRret_1
    SAY @39
    =
    @40 
    ++ @41 EXTERN LK#XLAR LK#XQKiiRret_11
    + ~PartyGoldGT(19999)~ + @42 EXTERN LK#XLAR LK#XQKiiRret_11
    + ~PartyGoldLT(20000)~ + @43 EXTERN LK#XLAR LK#XQKiiRret_11
    ++ @44 + LK#XQKiiRret_12
  END
END

CHAIN LK#XLAR LK#XQKiiRret_2
  @45
  == LK#XULJ @46
  DO ~SetGlobal("LK#XulQuest","GLOBAL",7)
      AddJournalEntry(@47,QUEST)
     ActionOverride("lk#xlar",EscapeArea())
     ActionOverride("lk#xmg1",EscapeArea())
     ActionOverride("lk#xmg2",EscapeArea())
     ActionOverride("lk#xmes",EscapeArea())~
EXIT

CHAIN LK#XLAR LK#XQKiiRret_3
  @48
  == LK#XULJ @49
  = @50
  == LK#XLAR @51
EXTERN LK#XLAR LK#XQKiiRret_4

APPEND LK#XLAR
  IF ~~ LK#XQKiiRret_4
    SAY @52
    ++ @53 + LK#XQKiiRret_41
    ++ @24 + LK#XQKiiRret_41
    ++ @54 + LK#XQKiiRret_41
  END
  
  IF ~~ LK#XQKiiRret_5
    SAY @55
    =
    @56
    + ~PartyGoldGT(19999)~ + @57 DO ~TakePartyGold(20000)~ + LK#XQKiiRret_2
    ++ @58 + LK#XQKiiRret_4
    ++ @59 + LK#XQKiiRret_4
    ++ @60 EXTERN LK#XULJ LK#XQKiiRret_6
  END
END

APPEND LK#XULJ
  IF ~~ LK#XQKiiRret_6
    SAY @61
    = 
    @62
    =
    @63
    ++ @64 + LK#XQKiiRret_61
    + ~PartyGoldGT(19999)~ + @65 DO ~TakePartyGold(20000)~ + LK#XQKiiRret_62
    + ~PartyGoldLT(20000)~ + @66 EXTERN LK#XLAR LK#XQKiiRret_11
    ++ @67 EXTERN LK#XLAR LK#XQKiiRret_4
  END
END

APPEND LK#XLAR
  IF ~~ LK#XQKiiRret_11
    SAY @68
    IF ~~ + LK#XQKiiRret_4
  END
END

APPEND LK#XULJ
  IF ~~ LK#XQKiiRret_12
    SAY @69
    + ~PartyGoldGT(19999)~ + @70 DO ~TakePartyGold(20000)~ EXTERN LK#XLAR LK#XQKiiRret_2
    + ~PartyGoldLT(20000)~ + @71 EXTERN LK#XLAR LK#XQKiiRret_3
    ++ @72 EXTERN LK#XLAR LK#XQKiiRret_4
    ++ @73 + LK#XQKiiRret_6
  END
END

APPEND LK#XLAR
  IF ~~ LK#XQKiiRret_41
    SAY @74
    =
    @63
    ++ @75 + LK#XQKiiRret_411
    ++ @76 EXTERN LK#XULJ LK#XQKiiRret_412
    ++ @77 EXTERN LK#XULJ LK#XQKiiRret_413
    + ~PartyGoldGT(19999)~ + @78 DO ~TakePartyGold(20000)~ + LK#XQKiiRret_11
  END
END

CHAIN LK#XULJ LK#XQKiiRret_61
  @79
  =
  @80
  == LK#XLAR @81
  DO ~SetGlobal("LK#XulayeLeftAngry","GLOBAL",1)
     SetGlobal("LK#XulayeJoined","GLOBAL",0)
     SetGlobal("LK#XulQuest","GLOBAL",0)
     EraseJournalEntry(@19)
     EraseJournalEntry(@20)
     EraseJournalEntry(@11)
     AddJournalEntry(@82,QUEST_DONE)
     ActionOverride("Xulaye",LeaveParty())
     ActionOverride("Xulaye",EscapeArea())
     ActionOverride("lk#xmes",EscapeArea())
     ActionOverride("lk#xlar",EscapeArea())
     ActionOverride("lk#xmg1",EscapeArea())
     ActionOverride("lk#xmg2",EscapeArea())~ // Make sure to make her party leave as well

EXIT

APPEND LK#XULJ
  IF ~~ LK#XQKiiRret_62
    SAY @83
    =
    @84
    IF ~~ EXTERN LK#XLAR LK#XQKiiRret_2
  END
END

CHAIN LK#XLAR LK#XQKiiRret_411
  @85
  == LK#XULJ @86
  == LK#XLAR @87
  == LK#XULJ @88
  == LK#XLAR @89
  == LK#XULJ @90 
  DO ~SetGlobal("LK#XulQuest","GLOBAL",5)
     RealSetGlobalTimer("LK#XulQuest1Timer","GLOBAL",1200)
     AddJournalEntry(@91,QUEST)
     ActionOverride("lk#xmes",LeaveAreaLUA("AR2205","",[688.821],5))
     ActionOverride("lk#xlar",EscapeArea())
     ActionOverride("lk#xmg1",EscapeArea())
     ActionOverride("lk#xmg2",EscapeArea())~ // Make sure to make her party leave as well
EXIT

CHAIN LK#XULJ LK#XQKiiRret_412
  @92
END
  ++ @93 EXTERN LK#XLAR LK#XQKiiRret_411
  + ~PartyGoldGT(19999)~ + @94 DO ~TakePartyGold(20000)~ EXTERN LK#XULJ LK#XQKiiRret_62
  ++ @95 EXTERN LK#XULJ LK#XQKiiRret_413

APPEND LK#XULJ
  IF ~~ LK#XQKiiRret_413
    SAY @61
    = 
    @62
    =
    @63
    ++ @64 + LK#XQKiiRret_61
    + ~PartyGoldGT(19999)~ + @96 DO ~TakePartyGold(20000)~ + LK#XQKiiRret_62
    ++ @97 EXTERN LK#XLAR LK#XQKiiRret_411
  END
END

APPEND LK#XMES
  // Envoy Ikaxan's dialogue for when you have the armor
  IF WEIGHT #-1 ~CombatCounter(0) IsGabber(Player1)~ LK#XQPCHasArmor
    SAY @98
    + ~PartyHasItem("lk#xarm")~ + @99 DO ~TakePartyItem("lk#xarm")~ + LK#XQPCHasArmor_1
    + ~!PartyHasItem("lk#xarm")~ + @100 + LK#XQPCHasArmor_2
    + ~PartyGoldGT(19999)~ + @101 DO ~TakePartyGold(20000)~ + LK#XQPCHasArmor_3
    ++ @102 + LK#XQPCHasArmor_4
    ++ @103 EXTERN LK#XULJ LK#XQPCHasArmor_5
  END
END

CHAIN LK#XMES LK#XQPCHasArmor_1
  @104
  == LK#XULJ @105
  == LK#XMES @106
  DO ~SetGlobal("LK#XulQuest","GLOBAL",7)
      AddJournalEntry(@107,QUEST)
     ActionOverride("lk#xmes",EscapeArea())~
EXIT

CHAIN LK#XMES LK#XQPCHasArmor_2
  @108
  == LK#XULJ @109
  == LK#XMES @110
EXIT

APPEND LK#XMES
  IF ~~ LK#XQPCHasArmor_3
    SAY @32
    IF ~~ + LK#XQPCHasArmor_1
  END
END

CHAIN LK#XMES LK#XQPCHasArmor_4
  @111
  == LK#XULJ @112
  == LK#XMES @113
  == LK#XULJ @109
  == LK#XMES @110
EXIT

APPEND LK#XULJ
  IF ~~ LK#XQPCHasArmor_5
    SAY @114
    =
    @115
    ++ @116 + LK#XQPCHasArmor_51
    + ~PartyGoldGT(19999)~ + @101 DO ~TakePartyGold(20000)~ EXTERN LK#XMES LK#XQPCHasArmor_3
    ++ @117 + LK#XQPCHasArmor_52
  END
END

CHAIN LK#XULJ LK#XQPCHasArmor_51
  @79
  =
  @118
  == LK#XMES @119
  DO ~SetGlobal("LK#XulayeLeftAngry","GLOBAL",1)
     SetGlobal("LK#XulayeJoined","GLOBAL",0)
     SetGlobal("LK#XulQuest","GLOBAL",0)
     LeaveParty()
     EscapeArea()
     ActionOverride("lk#xmes",EscapeArea())~
EXIT

CHAIN LK#XULJ LK#XQPCHasArmor_52
  @83
  == LK#XMES @120
  == LK#XULJ @121
EXTERN LK#XMES LK#XQPCHasArmor_2

EXTEND_TOP UDDUER01 15
  + ~Global("LK#XulQuest","GLOBAL",5)~ + @122 EXTERN UDDUER01 LK#XArmQuest
  + ~Global("LK#XulQuest","GLOBAL",6) !PartyHasItem("misca8") !PartyHasItem("misca7") !PartyHasItem("miscbv")~ + @123 EXTERN UDDUER01 LK#XArmQuest2
  + ~Global("LK#XulQuest","GLOBAL",6) PartyGoldGT(4999) PartyHasItem("misca8")~ + @124 DO ~TakePartyItem("misca8") TakePartyGold(5000)~ EXTERN UDDUER01 LK#XAQ_113
  + ~Global("LK#XulQuest","GLOBAL",6) PartyGoldGT(4999) PartyHasItem("misca7")~ + @125 DO ~TakePartyItem("misca7") TakePartyGold(5000)~ EXTERN UDDUER01 LK#XAQ_113
  + ~Global("LK#XulQuest","GLOBAL",6) PartyGoldGT(4999) PartyHasItem("miscbv")~ + @126 DO ~TakePartyItem("miscbv") TakePartyGold(5000)~ EXTERN UDDUER01 LK#XAQ_113
  + ~Global("LK#XulQuest","GLOBAL",6) PartyGoldLT(5000) PartyHasItem("misca8")~ + @124 DO ~TakePartyItem("misca8")~ EXTERN LK#XULJ LK#XAQ_Money
  + ~Global("LK#XulQuest","GLOBAL",6) PartyGoldLT(5000) PartyHasItem("misca7")~ + @125 DO ~TakePartyItem("misca7")~ EXTERN LK#XULJ LK#XAQ_Money
  + ~Global("LK#XulQuest","GLOBAL",6) PartyGoldLT(5000) PartyHasItem("miscbv")~ + @126 DO ~TakePartyItem("miscbv")~ EXTERN LK#XULJ LK#XAQ_Money
END

EXTEND_BOTTOM UDDUER02 6
  + ~Global("LK#XulQuest","GLOBAL",5)~ + @128 EXTERN UDDUER02 LK#XArmQuest_2
END

EXTEND_BOTTOM UDDUER03 8
  + ~Global("LK#XulQuest","GLOBAL",5)~ + @129 EXTERN UDDUER03 LK#XArmQuest_3
END

APPEND UDDUER01

  IF ~~ LK#XArmQuest
    SAY @130
    =
    @131
    ++ @132 + LK#XAQ_1
    ++ @133 + LK#XAQ_1
    ++ @134 + LK#XAQ_1
    ++ @135 + LK#XAQ_2
  END
  
  IF ~~ LK#XAQ_1
    SAY @136
    ++ @137 + LK#XAQ_11
    ++ @138 + LK#XAQ_12
    ++ @139 + LK#XAQ_11
    ++ @140 + LK#XAQ_13
    ++ @141 EXTERN LK#XULJ LK#XAQ_14
  END
  
  IF ~~ LK#XAQ_2
    SAY @142
    ++ @137 + LK#XAQ_11
    ++ @138 + LK#XAQ_12
    ++ @139 + LK#XAQ_11
    ++ @140 + LK#XAQ_13
    ++ @141 EXTERN LK#XULJ LK#XAQ_14
  END
  
  IF ~~ LK#XAQ_11
    SAY @143
    ++ @144 + LK#XAQ_111
    ++ @145 + LK#XAQ_112
    ++ @146 EXTERN LK#XULJ LK#XAQ_14
    + ~PartyGoldGT(19999)~ + @147 DO ~TakePartyGold(20000)~ + LK#XAQ_113
    + ~CheckStatGT(Player1,13,CHR)~ + @148 DO ~SetGlobal("LK#XulArmorLow","GLOBAL",1)~ + LK#XAQ_114
    + ~CheckStatLT(Player1,14,CHR)~ + @148 + LK#XAQ_115
  END
  
  IF ~~ LK#XAQ_12
    SAY @149
    ++ @144 + LK#XAQ_111
    ++ @145 + LK#XAQ_112
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @150 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @150 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @151 + LK#XAQ_121
    ++ @152 + LK#XAQ_13
  END

  IF ~~ LK#XAQ_13
    SAY @153
    ++ @154 + LK#XAQ_112
    ++ @155 + LK#XAQ_131
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @150 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @150 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @156 + LK#XAQ_131
  END
  
  IF ~~ LK#XAQ_111
    SAY @157
    ++ @158 + LK#XAQ_112
    ++ @159 + LK#XAQ_131
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @160 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @160 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
  END
  
  IF ~~ LK#XAQ_112
    SAY @161
    ++ @162 + LK#XAQ_1121
    + ~PartyGoldGT(19999)~ + @160 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @163 + LK#XAQ_1122
    ++ @164 + LK#XAQ_1121
    ++ @165 EXTERN LK#XULJ LK#XAQ_14
  END
  
  IF ~~ LK#XAQ_113
    SAY @166
    IF ~~ UNSOLVED_JOURNAL @167 DO ~GiveItemCreate("lk#xarm",Player1,0,0,0)~ + LK#XAQ_116
  END
  
  IF ~~ LK#XAQ_114
    SAY @168
    + ~PartyGoldGT(14999)~ + @169 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @170 + LK#XAQ_112
    ++ @171 + LK#XAQ_12
    ++ @172 + LK#XAQ_13
  END
  
  IF ~~ LK#XAQ_115
    SAY @173
    IF ~~ + LK#XAQ_112
  END
  
  IF ~~ LK#XAQ_116
    SAY @174
    ++ @175 + LK#XAQ_1161
    ++ @176 DO ~StartStore("udduer02",LastTalkedToBy(Myself))~ EXIT
    ++ @177 + LK#XAQ_1162
  END
  
  IF ~~ LK#XAQ_121
    SAY @178
    ++ @179 + LK#XAQ_12
    ++ @180 EXTERN LK#XULJ LK#XAQ_14
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @181 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @181 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @182 + LK#XAQ_13
  END
  
  IF ~~ LK#XAQ_131
    SAY @183
    ++ @184 + LK#XAQ_1311
    ++ @185 EXTERN LK#XULJ LK#XAQ_14
    ++ @186 DO ~SetGlobal("LK#XulArmorLow","GLOBAL",1)~ + LK#XAQ_114
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @187 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @188 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
  END
  
  IF ~~ LK#XAQ_1121
    SAY @189
    ++ @190 EXTERN LK#XULJ LK#XAQ_14
    ++ @191 + LK#XAQ_11211
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @192 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @193 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @182 + LK#XAQ_13
    ++ @194 + LK#XAQ_1431
  END
  
  IF ~~ LK#XAQ_1122
    SAY @195
    =
    @196
    ++ @190 EXTERN LK#XULJ LK#XAQ_14
    ++ @191 + LK#XAQ_11211
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @192 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @193 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @182 + LK#XAQ_13
    ++ @194 + LK#XAQ_1431
  END
  
  
  IF ~~ LK#XAQ_1161
    SAY @197
    IF ~~ EXIT
  END
  
  IF ~~ LK#XAQ_1162
    SAY @198
    IF ~~ EXIT
  END
  
  IF ~~ LK#XAQ_1311
    SAY @199
    IF ~~ DO ~ActionOverride("udduer01",Enemy()) 
              ActionOverride("udduer02",Enemy()) 
              ActionOverride("udduer03",Enemy())~ EXIT
  END
  
  IF ~~ LK#XAQ_11211
    SAY @200
    IF ~~ DO ~SetGlobal("LK#XulQuest","GLOBAL",6)~ UNSOLVED_JOURNAL @201 EXIT
  END
  
  IF ~~ LK#XAQ_143
    SAY @202
    ++ @203 + LK#XAQ_11211
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @192 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @193 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    ++ @204 + LK#XAQ_13
    ++ @194 + LK#XAQ_1431
  END
  
  IF ~~ LK#XAQ_1424
    SAY @205
    =
    @206
    ++ @207 + LK#XAQ_11211
    ++ @208 + LK#XAQ_11211
  END
  
  IF ~~ LK#XAQ_1431
    SAY @209
    =
    @210
    ++ @207 + LK#XAQ_11211
    ++ @211 EXTERN LK#XULJ LK#XAQ_14
    ++ @208 + LK#XAQ_11211
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @192 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @193 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ + LK#XAQ_113
  END
  
  IF ~~ LK#XArmQuest2
    SAY @212
    =
    @213
    IF ~~ EXIT
  END

END


APPEND ~LK#XULJ~
  IF ~~ LK#XAQ_14
    SAY @214
    ++ @215 + LK#XAQ_141
    ++ @216 + LK#XAQ_142
    ++ @217 EXTERN UDDUER01 LK#XAQ_143
    ++ @218 EXTERN UDDUER01 LK#XAQ_11211
    + ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ + @192 DO ~TakePartyGold(20000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ EXTERN UDDUER01 LK#XAQ_113
    + ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ + @193 DO ~TakePartyGold(15000) GiveItemCreate("lk#xarm",[PC],1,0,0) SetGlobal("LK#XulQuest","GLOBAL",6)~ EXTERN UDDUER01 LK#XAQ_113
  END
  
  IF ~~ LK#XAQ_141
    SAY @219
    IF ~~ DO ~SetGlobal("LK#XulayeLeftAngry","GLOBAL",1)
                   SetGlobal("LK#XulayeJoined","GLOBAL",0) 
                   LeaveParty() 
                   EraseJournalEntry(@19)
                   EraseJournalEntry(@20)
                   EraseJournalEntry(@11)
                   EraseJournalEntry(@47)
                   EraseJournalEntry(@91)
                   SetGlobal("LK#XulQuest","GLOBAL",0)~ SOLVED_JOURNAL @221 EXIT
  END
  
  IF ~~ LK#XAQ_142
    SAY @83
    IF ~~ + LK#XAQ_1421
    IF ~Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(14999)~ DO ~TakePartyGold(15000)~ + LK#XAQ_1422
    IF ~!Global("LK#XulArmorLow","GLOBAL",1) PartyGoldGT(19999)~ DO ~TakePartyGold(20000)~ + LK#XAQ_1422
  END
  
  IF ~~ LK#XAQ_1421
    SAY @222
    IF ~~ EXTERN UDDUER01 LK#XAQ_1424
  END
  
  IF ~~ LK#XAQ_1422
    SAY @223
    IF ~~ EXTERN UDDUER01 LK#XAQ_113
  END

END


CHAIN LK#XULJ LK#XAQ_Money
  @224
  == UDDUER01 @225
  = @226
  == LK#XULJ @227
EXTERN UDDUER01 LK#XAQ_113


APPEND ~UDDUER02~
  IF ~~ LK#XArmQuest_2
    SAY @228
    IF ~~ DO ~SetGlobal("UderTalkedDrow","LOCALS",1)~ EXIT
  END
END

APPEND ~UDDUER03~
  IF ~~ LK#XArmQuest_3
    SAY @229
    IF ~~ EXTERN UDDUER03 8
  END
END

// Xulaye reminds PC of quest
APPEND LK#XULJ

  IF ~Global("LK#XulQuestReminder","GLOBAL",1)~ LK#XulRem
    SAY @230 
    ++ @231 DO ~IncrementGlobal("LK#XulQuestReminder","GLOBAL",1) RealSetGlobalTimer("LK#XulQuest1Timer2","GLOBAL",900)~ + LK#XulRem_1
    ++ @232 DO ~IncrementGlobal("LK#XulQuestReminder","GLOBAL",1) RealSetGlobalTimer("LK#XulQuest1Timer2","GLOBAL",900)~ + LK#XulRem_2
    ++ @233 DO ~IncrementGlobal("LK#XulQuestReminder","GLOBAL",1)~ + LK#XulRem_3
  END
  
  IF ~~ LK#XulRem_1
    SAY @234
    IF ~~ EXIT
  END
  
  IF ~~ LK#XulRem_2
    SAY @235
    IF ~~ EXIT
  END
  
  IF ~~ LK#XulRem_3
    SAY @236
    IF ~~ DO ~LeaveParty() 
              SetGlobal("LK#XulayeJoined","GLOBAL",1) 
              SetGlobal("LK#XulayeLeftAngry","GLOBAL",1) 
              EraseJournalEntry(@19)
              EraseJournalEntry(@20)
              EraseJournalEntry(@11)
              EraseJournalEntry(@47)
              EraseJournalEntry(@91)
              EscapeArea()~ SOLVED_JOURNAL @237 EXIT
  END
  
// Leaving because quest isn't done
  IF ~Global("LK#XulQuestReminder","GLOBAL",3)~ LK#XulRem2
    SAY @238 
    IF ~~ DO ~IncrementGlobal("LK#XulQuestReminder","GLOBAL",1)~ + LK#XulRem_3
  END

END