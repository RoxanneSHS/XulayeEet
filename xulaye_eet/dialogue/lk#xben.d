BEGIN ~LK#XBEN~
BEGIN ~LK#XTAR~

// -------------------------------------
// Encounters
// -------------------------------------

CHAIN IF WEIGHT #-1 ~Global("LK#XulBenEncounter","GLOBAL",1)~ THEN LK#XBEN LK#XBen
@0
DO ~SetGlobal("LK#XulBenEncounter","GLOBAL",2)~
== LK#XULJ @1
== LK#XBEN @2
== LK#XULJ @3
== LK#XTAR @4
== LK#XULJ @5
== LK#XBEN @6
== LK#XTAR @7
== LK#XULJ @8
= @9
== LK#XBEN @10
== LK#XULJ @11
== LK#XBEN @12
== LK#XULJ @13
== LK#XBEN @14
== LK#XULJ @15
= @16
DO ~ActionOverride("lk#xben",EscapeArea()) ActionOverride("lk#xtar",EscapeArea())~
EXIT