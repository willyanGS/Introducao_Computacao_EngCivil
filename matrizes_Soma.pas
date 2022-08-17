Program Pzim ;

Type
	mat = array [1..3,1..3] of real;
	
VAr
	mat1, mat2, mat3, matsoma : mat;
	contlin, contcol, cont, col, lin: integer;
	
Begin
	textbackground (blue);
	textcolor (black);
	For contlin:= 1 to 3 do
		Begin
			For contcol:=1 to 3 do
				Begin
					mat1[contlin,contcol]:= random(10);
					mat2[contlin,contcol]:= random(10);
					mat3[contlin,contcol]:= random(10);
				End;
		End;
		
	//saida
	
	write ('MATRIZ 1');
	lin:=3;
		For contlin:= 1 to 3 do
		Begin
			col:=1;
			For contcol:=1 to 3 do
				Begin
					gotoxy (col, lin);
					write (mat1[contlin,contcol]:0:2);
					col:=col+5;	
				End;
				lin:=lin+2;
		End;
		
	gotoxy (20,1);		
	write ('MATRIZ 2');
	lin:=3;
		For contlin:= 1 to 3 do
		Begin
			col:=20;
			For contcol:=1 to 3 do
				Begin
					gotoxy (col, lin);
					write (mat2[contlin,contcol]:0:2);
					col:=col+5;	
				End;
				lin:=lin+2;
		End;
		
	gotoxy (40,1);		
	write ('MATRIZ 3');
	lin:=3;
		For contlin:= 1 to 3 do
		Begin
			col:=40;
			For contcol:=1 to 3 do
				Begin
					gotoxy (col, lin);
					write (mat3[contlin,contcol]:0:2);
					col:=col+5;	
				End;
				lin:=lin+2;
		End;
		
	//matriz soma
	
	For contlin:= 1 to 3 do
		Begin
			For contcol:=1 to 3 do
				Begin
					matsoma[contlin,contcol]:= (mat1[contlin,contcol]+mat2[contlin,contcol]+mat3[contlin,contcol]);		
				End;
		End;
		
	gotoxy (20,10);
	textbackground (white);
	textcolor (blue);		
	write ('MATRIZ SOMA');
	lin:=12;
		For contlin:= 1 to 3 do
		Begin
			col:=20;
			For contcol:=1 to 3 do
				Begin
					gotoxy (col, lin);
					write (matsoma[contlin,contcol]:0:2);
					col:=col+6;	
				End;
				lin:=lin+2;
		End;
  
End.
