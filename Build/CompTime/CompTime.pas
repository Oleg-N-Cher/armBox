(*
	{2019, 5, 13, 22, 34, 56}, /* compTime */ 
*)

PROGRAM CompTime;
USES Kol;

CONST
  Stamp = '{2019, 5, 13, 22, 34, 56}';
VAR
  bin: AnsiString;
  position, len: INTEGER;
BEGIN
  bin := StrLoadFromFile(ParamStr(1)); //Write(' size ', LENGTH(bin));
  position := POS(', /* compTime */', bin);
  IF position > 0 THEN BEGIN
    // Write(' found at ', position);
    len := 0;
    WHILE bin[position - len] <> '{' DO INC(len);
    DELETE(bin, position - len, len);
    INSERT(Stamp, bin, position - len);
    DELETE(bin, LENGTH(bin), 1);
    StrSaveToFile(ParamStr(1), bin)
  END
END {CompTime}.
