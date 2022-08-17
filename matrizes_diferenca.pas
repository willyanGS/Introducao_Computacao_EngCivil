Program diferencaAbs_2matrizes;

Type
	matriz = array [1..6,1..6] of integer;
Var
	mat1, mat2, matresultado : matriz;
	contlin, contcol, lin, col : integer;
	
Begin

	//matrizes randomicas
	
	For contlin:=1 to 6 do
		Begin
			For contcol:=1 to 6 do
				Begin
					mat1[contcol,contlin]:=random(40);
					mat2[contcol,contlin]:=random(40);
				End;
		End;
		
	//matriz resultado = diferenca absoluta
	
	For contlin:=1 to 6 do
		Begin
			For contcol:=1 to 6 do
				Begin
					If mat1[contcol,contlin]>mat2[contcol,contlin] then matresultado[contcol,contlin]:= mat1[contcol,contlin]-mat2[contcol,contlin];
					If mat1[contcol,contlin]<mat2[contcol,contlin] then matresultado[contcol,contlin]:= mat2[contcol,contlin]-mat1[contcol,contlin];
				End;
		End;
		
	//saida
	textcolor (white);
	gotoxy (1,1);
	write ('MATRIZ 1');
	lin:=3;
	For contlin:=1 to 6 do
		Begin
			col:=1;
			For contcol:=1 to 6 do
				Begin
					gotoxy (col,lin);
					If (contlin MOD 2 = 0) then textcolor(9)
					Else textcolor(11);
					write (mat1[contcol,contlin]);
					col:=col+4;			
				End;
			
			lin:=lin+1;
		End;
	
	textcolor (white);	
	gotoxy (28,1);
	write ('MATRIZ 2');
	lin:=3;
	For contlin:=1 to 6 do
		Begin
			col:=28;
			For contcol:=1 to 6 do
				Begin
					gotoxy (col,lin);
					If (contcol MOD 2 = 0) then textcolor(9)
					Else textcolor(11);
					write (mat2[contcol,contlin]);
					col:=col+4;	
				End;
			lin:=lin+1;
		End;
		
	textcolor (white);	
	gotoxy (14,10);
	write ('MATRIZ RESULTADO');
	lin:=12;
	For contlin:=1 to 6 do
		Begin
			col:=14;
			For contcol:=1 to 6 do
				Begin
					gotoxy (col,lin);
					If (matresultado[contcol,contlin] MOD 2 = 0) then textcolor(9)
					Else textcolor(11);
					write (matresultado[contcol,contlin]);
					col:=col+4;			
				End;
			lin:=lin+1;
		End; 
  
End.
