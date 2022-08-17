Program matriz5 ;

Type
	mat= array [1..6,1..6] of integer;
	
Var
	mat1,mat2 : mat;
	contlin, contcol, lin, col, cont : integer;
	
Begin
	For contlin:= 1 to 6 do
		Begin
			For contcol:=1 to 6 do
				Begin
					mat1[contcol,contlin]:=random(50);
				End;
		End;
		
	 For contlin:= 1 to 3 do
		Begin
			For contcol:=1 to 4 do
				Begin
					mat2[contcol,contlin]:=random(50);
				End;
		End;
	
	write ('    MATRIZ 1             PARES MATRIZ 1');
	lin := 3;
	For contlin:= 1 to 6 do
		Begin
			col := 1;
			For contcol:=1 to 6 do
				Begin
					gotoxy (col, lin);
					write (mat1[contcol,contlin]);
					col := col + 3;
				End;
				lin := lin +1;
		End;
	
	lin := 3;
	For contlin:= 1 to 6 do
		Begin
			col := 25;
			For contcol:=1 to 6 do
				Begin
					gotoxy (col, lin);
					if mat1[contcol, contlin] mod 2 = 0 then
						write (mat1[contcol,contlin]);
					col := col + 3;
				End;
				lin := lin +1;
		End;
		
	gotoxy (1, 10);
	writeln ('POSICOES COM VALORES PARES DA MATRIZ 1');
	contlin := 1;
	cont:= 0;
	repeat
		contcol := 1;
		repeat
			if mat1 [contcol, contlin] mod 2 = 0 then
				begin
					cont:= cont + 1;
					if cont = 1 then
						write ('(', contcol, ',', contlin, ')')
					else 
					write (', (', contcol, ',', contlin, ')');
				end;
			contcol := contcol + 1;
		until (contcol > 6 );
		contlin := contlin + 1;
	until (contlin > 6);
	
	gotoxy (1,14);
	write ('MATRIZ 2     TRANSPOSTA MATRIZ 2');
	lin := 16;
	cont := 11;
	For contlin:= 1 to 3 do
		Begin
			textcolor (cont); 
			col := 1;
			For contcol:=1 to 4 do
				Begin
					gotoxy (col, lin);
					write (mat2[contcol,contlin]);
					col := col + 3;
				End;
				lin := lin +1;
			cont := cont + 1;
		End;
		
	lin := 16;
	For contlin:= 1 to 4 do
		Begin
			cont := 11;
			col := 18;
			For contcol:=1 to 3 do
				Begin
				     textcolor (cont);
					gotoxy (col, lin);
					write (mat2[contlin,contcol]);
					col := col + 3;
					cont := cont + 1;
				End;
				lin := lin +1;
		End;
		readkey;
  
End.
