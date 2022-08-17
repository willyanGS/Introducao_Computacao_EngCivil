Program soma_6vetores ;

Type
	vet = array [1..20] of integer;
	
Var
	vet1, vet2, vet3, vet4, vet5, vet6: vet;
	cont, col, lin, soma, total, somatotal : integer;
	
Begin

	For cont:=1 to 20 do
		Begin
			vet1[cont]:=random(98)+1;
			vet2[cont]:=random(98)+1;
			vet3[cont]:=random(98)+1;
			vet4[cont]:=random(98)+1;
			vet5[cont]:=random(98)+1;
			vet6[cont]:=random(98)+1;
		End;
		
	cont:=1;
	col:=6;
	Repeat
		gotoxy (col,1);
		write ('VETOR ', cont);
		col:=col+9;
		cont:=cont+1;
	Until (cont>6);
	gotoxy (60,1);
	write ('SOMA');
	
	cont:=1;
	lin:=3;
	Repeat
		gotoxy (7, lin);
		write (vet1[cont]);
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	cont:=1;
	lin:=3;
	Repeat
		gotoxy (16, lin);
		write (vet2[cont]);
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	cont:=1;
	lin:=3;
	Repeat
		gotoxy (25, lin);
		write (vet3[cont]);
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	cont:=1;
	lin:=3;
	Repeat
		gotoxy (34, lin);
		write (vet4[cont]);
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	cont:=1;
	lin:=3;
	Repeat
		gotoxy (43, lin);
		write (vet5[cont]);
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	cont:=1;
	lin:=3;
	Repeat
		gotoxy (52, lin);
		write (vet6[cont]);
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	cont:=1;
	lin:=3;
	somatotal:=0;
	Repeat
		soma:=vet1[cont]+vet2[cont]+vet3[cont]+vet4[cont]+vet5[cont]+vet6[cont];
		gotoxy (60,lin);
		write (soma);
		somatotal:=somatotal+soma;
		lin:=lin+1;
		cont:=cont+1;
	Until (cont>20);
	
	gotoxy (1, 24);
	write ('TOTAL');
	
	cont:=1;
	total:=0;
	Repeat
		total:=total+vet1[cont];
		cont:=cont+1;
	Until (cont>20);
	gotoxy (7, 24);
	write (total);
	
	cont:=1;
	total:=0;
	Repeat
		total:=total+vet2[cont];
		cont:=cont+1;
	Until (cont>20);
	gotoxy (16, 24);
	write (total);
	
	cont:=1;
	total:=0;
	Repeat
		total:=total+vet3[cont];
		cont:=cont+1;
	Until (cont>20);
	gotoxy (25, 24);
	write (total);
	
	cont:=1;
	total:=0;
	Repeat
		total:=total+vet4[cont];
		cont:=cont+1;
	Until (cont>20);
	gotoxy (34, 24);
	write (total);
	
	cont:=1;
	total:=0;
	Repeat
		total:=total+vet5[cont];
		cont:=cont+1;
	Until (cont>20);
	gotoxy (43, 24);
	write (total);
	
	cont:=1;
	total:=0;
	Repeat
		total:=total+vet6[cont];
		cont:=cont+1;
	Until (cont>20);
	gotoxy (52, 24);
	write (total);
	
	gotoxy (60, 24);
	write (somatotal);
  
End.
