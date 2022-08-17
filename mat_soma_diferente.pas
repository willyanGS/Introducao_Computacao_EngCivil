Program Mat_Soma ;

TYPE
	Mat = Array[1..4,1..5] of integer;
	
VAR	
	Mat1, Mat2, Matsoma : Mat;
	contl, contc, lin, col, maiorv : integer;
	
Begin

	For contl := 1 to 4 do
		Begin
			For contc := 1 to 5 do
				Begin
					Mat1[contl,contc] := Random(79)+1;
				End;
		End;
		
	contl := 1;
	lin:=2;
	Writeln ('Entre com os valores da Matriz 2 (entre 1 e 80)');
	Repeat
		contc := 1;
		Repeat
			Write ('Posicao (',contl,',',contc,'): ');
			Readln(Mat2[contl, contc]);
				If (Mat2[contl,contc]<1) or (Mat2[contl,contc]>80) then
					Begin
						Repeat
							gotoxy (16,lin);
							write ('numero invalido');
							delay (400);
							gotoxy (16,lin);
							write ('                ');
							gotoxy (16,lin);
							Readln(Mat2[contl, contc]);
						Until (Mat2[contl,contc]>0) and (Mat2[contl,contc]<81);
					End;
			contc := contc + 1;
			lin:=lin+1;
		Until (contc > 5);
		contl := contl + 1;
	Until (contl > 4);
	
	clrscr;
	
	Write('Matriz1');
	
	lin := 3;
	contl := 1;
	While contl < 5 do
		Begin
			col := 1;
			contc := 1;
				While contc < 6 do
					Begin
						Gotoxy(col, lin);
						Write(Mat1[contl, contc]);
						col := col + 3;
						contc := contc + 1;
				     End;
			contl := contl + 1;
			lin := lin + 1;
		End;
	
	Gotoxy(18,1);
	Write('Matriz2');
	lin := 3;
	For contl := 1 to 4 do
		Begin
			col := 18;
			For contc := 1 to 5 do
				Begin
					Gotoxy(col, lin);
					Write(Mat2[contl, contc]);
					col := col + 3;
				End;
			lin := lin + 1;
		End;
		
	
	For contl := 1 to 4 do
		Begin
			For contc := 1 to 5 do
				Begin
						If (Mat1[contl, contc] mod 2 = 0) and (Mat2[contl, contc] mod 2 = 0) then
							Matsoma[contl, contc] := Mat1[contl, contc] + Mat2[contl, contc];
						If ((Mat1[contl, contc] mod 2 <> 0) or (Mat2[contl, contc] mod 2 <> 0)) then
							Begin
								If (Mat1[contl,contc] > Mat2[contl,contc]) then
									Matsoma[contl, contc] := Mat1[contl,contc]
								Else Matsoma[contl,contc]:=Mat2[contl,contc];
							End;
						If  (Mat1[contl,contc]=Mat2[contl,contc]) then
							Matsoma[contl,contc]:=Mat1[contl,contc];
				End;
		End;
		
	Gotoxy(9,8);
	Write('Matriz Resultado');
	lin := 10;
	For contl := 1 to 4 do
		Begin
			col := 9;
			For contc := 1 to 5 do
				Begin
					Gotoxy(col, lin);
					Write(Matsoma[contl, contc]);
					col := col + 3;
				End;
			lin := lin + 1;
		End;
	
		
				     
		
	
	
End.
	
