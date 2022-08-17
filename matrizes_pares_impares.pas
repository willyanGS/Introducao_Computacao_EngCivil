Program matriz2 ;
																 // MATRIZ 2
 type                                                                           // AS DUAS MATRIZES UMA AO LADO DA OUTRA
 	mat = array [1..5, 1..8] of integer;                                       // MATRIZ TRANSPOSTA DAS DUAS MATRIZES
 var                                                                           // NUMEROS PARES DA MATRIZ 1  - IMPRIME OS PARES
 	mat1, mat2:mat;                                                           // QUANTIDADE DE NUMEROS IMPARES DA MATRIZ 2 - CONTA OS IMPARES
 	contl, contc, lin, col, numpar, contimpar: integer; 
 	
 Begin
 	write (' MATRIZ 1:');
 	lin := 3;
 	for contl:=1 to 5 do
 		begin
 			col:=2;
 			for contc:=1 to 8 do
 				begin
 					gotoxy (col, lin);
 					mat1 [contl, contc] := random (80);
 					write (mat1[contl, contc]);
					delay (100);
					col := col + 4;
				end;
			lin := lin + 2;
		end;
	
	gotoxy (40,1);	
	write ('MATRIZ 2:');
 	lin := 3;
 	for contl:=1 to 5 do
 		begin
 			col:=40;
 			for contc:=1 to 8 do
 				begin
 					gotoxy (col, lin);
 					mat2[contl, contc] := random (80);
 					write (mat2[contl, contc]);
					delay (100);
					col := col + 4;
				end;
			lin := lin + 2;
		end;
		
	//Transposta
	
	gotoxy (1,15);
	write (' MATRIZ 1 TRANSPOSTA:');
 	lin := 2;
 	for contl:=1 to 5 do
 		begin
 			col:=17;
 			for contc:=1 to 8 do
 				begin
 					gotoxy (lin, col);
 					write (mat1[contl, contc]);
					delay (100);
					col := col + 2;
				end;
			lin := lin + 4;
		end;
		
	gotoxy (40,15);
	write ('MATRIZ 2 TRANSPOSTA:');
 	lin := 40;
 	for contl:=1 to 5 do
 		begin
 			col:=17;
 			for contc:=1 to 8 do
 				begin
 					gotoxy (lin, col);
 					write (mat2[contl, contc]);
					delay (100);
					col := col + 2;
				end;
			lin := lin + 4;
		end;
		
	//Pares da primeira
	
	readkey;
	clrscr;
	gotoxy (1,1);
	write (' PARES DA MATRIZ 1:');
 	lin := 3;
 	for contl:=1 to 5 do
 		begin
 			col:=2;
 			for contc:=1 to 8 do
 				begin
 					gotoxy (col, lin);
 					If (mat1[contl,contc] MOD 2 = 0) then 
 					write (mat1[contl, contc]);
					delay (100);
					col := col + 4;
				end;
			lin := lin + 2;
		end;
		
	gotoxy (2, 15);
	write ('QUANTIDADE DE IMPARES DA MATRIZ 2: ');
	contimpar := 0;
	for contl:=1 to 5 do
		begin
			for contc:=1 to 8 do
				begin
					If (mat2[contl,contc] MOD 2 <> 0) then
					contimpar:=contimpar+1;
				end;
		end;
	write (contimpar);					
  
 End.
