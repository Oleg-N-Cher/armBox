(*
	{2019, 5, 13, 2, 56, 38}, /* compTime */ 
*)

PROGRAM CompTime;
USES Kol;

VAR
  bin: AnsiString;
  position: INTEGER;

BEGIN
  bin := StrLoadFromFile(ParamStr(1)); //Write(' size ', LENGTH(bin));
  position := POS('}, /* compTime */', bin);
  IF position > 0 THEN BEGIN Write(' found at ', position);
    DELETE(bin, position - 24, 41);
    StrSaveToFile(ParamStr(1), bin)
  END
END {CompTime}.
