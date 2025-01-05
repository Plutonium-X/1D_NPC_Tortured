BEGIN ~BAENWULD~

IF ~NumTimesTalkedTo(0)
!Global("metbaew","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 DO ~SetGlobal("metbaew","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("metbaew","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("metbaew","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 3.1 0.0
  SAY @5 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 5.1 0.1
  SAY @6 
  IF ~~ THEN REPLY @7 DO ~SetGlobal("wandsoaccepts","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 10.0 2.0
  SAY @9 
  IF ~~ THEN REPLY @10 EXIT
  IF ~~ THEN REPLY @11 GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 10.1 5.0 2.1
  SAY @12 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.3 6.3 0.2
  SAY @13 
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~!Global("wandsoaccepts","GLOBAL",1)~ THEN REPLY @15 GOTO 2
END

IF ~Global("wandsoaccepts","GLOBAL",1)
!HP(Myself,1)
Global("metbaew","GLOBAL",1)~ THEN BEGIN 6 // from:
  SAY @16 
  IF ~~ THEN REPLY @17 DO ~SetGlobal("wandsoaccepts","GLOBAL",0)~ GOTO 7
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @21 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @22 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 10.2 6.2
  SAY @12 
  IF ~~ THEN DO ~ApplySpell(Myself,2981) DestroySelf()~ EXIT
END

IF ~Global("wandsoaccepts","GLOBAL",0)
!HP(Myself,1)
Global("metbaew","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY @23 
  IF ~~ THEN REPLY @24 DO ~SetGlobal("wandsoaccepts","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @25 GOTO 4
  IF ~~ THEN REPLY @26 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 5
END

IF ~HP(Myself,1)
Global("metbaew","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY @28 
  IF ~~ THEN DO ~ApplySpell(Myself,2981) SetGlobal("wandsotire","GLOBAL",1) DestroySelf()~ EXIT
END
