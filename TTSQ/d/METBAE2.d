BEGIN ~METBAE2~

IF ~Global("freebae","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 DO ~SetGlobal("freebae","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
