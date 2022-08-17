Program vetores_operadores;

Type
	vetor1= array [1..8] of integer;
	vetor2= array [1..8] of char;
	vetor3= array [1..8] of real;
	
Var
	vet1, vet3 : vetor1;
	vet2 : vetor2;
	vetsoma : vetor3;
	cont, cont2 : integer;
	maior : real;
	
Begin
	
	cont:=1;
	writeln ('Entre com os numeros do primeiro vetor:');
	Repeat
		write ('Posicao ', cont, ': ');
		readln (vet1[cont]);
		cont:=cont+1;
	Until (cont>8);
	
	clrscr;
	cont:=1;
	writeln ('Entre com os operadores do segundo vetor:');
	For cont:=1 to 8 do
		Begin
			write ('Posicao ', cont, ': ');
			readln (vet2[cont]);
			If (vet2[cont]='*') or (vet2[cont]='+') or (vet2[cont]='-') or (vet2[cont]='/') then continue
			Else
				Begin
					Repeat
						gotoxy (12,(cont+1));
						write ('operador invalido');
						delay (500);
						gotoxy (12,(cont+1));
						write ('                  ');
						gotoxy (12,(cont+1));
						readln (vet2[cont]);
					Until (vet2[cont]='*') or (vet2[cont]='+') or (vet2[cont]='-') or (vet2[cont]='/');
				End;
		End;
		
	clrscr;
	cont:=1;
	writeln ('Entre com os numeros do terceiro vetor:');
	While (cont<9) do
		Begin
			write ('Posicao ', cont, ': ');
			readln (vet3[cont]);
			cont:=cont+1;
		End;
	
	clrscr;
	cont:=1;
	write ('Vetor 1: ');
		Repeat
			write (vet1[cont], ', ');
			cont:=cont+1;
		Until (cont>7);
		writeln (vet1[8], '.');
		
	cont:=1;
	write ('Vetor 2: ');
		Repeat
			write (vet2[cont], ', ');
			cont:=cont+1;
		Until (cont>7);
		writeln (vet2[8], '.');
		
	cont:=1;
	write ('Vetor 3: ');
		Repeat
			write (vet3[cont], ', ');
			cont:=cont+1;
		Until (cont>7);
		writeln (vet3[8], '.');
	
	cont:=1;
	Repeat
		Case vet2[cont] of
			'+' : vetsoma[cont] := vet1[cont] + vet3[cont];
			'-' : vetsoma[cont] := vet1[cont] - vet3[cont];
			'*' : vetsoma[cont] := vet1[cont] * vet3[cont];
			'/' : vetsoma[cont] := vet1[cont] / vet3[cont];
		End;
		cont:=cont+1;
	Until (cont>8);
	
	
	maior:=-10000;
	cont:=1;
	Repeat
		If (vetsoma[cont]>maior) then maior:=vetsoma[cont];
		cont:=cont+1;
	Until (cont>8);
	
	cont:=1;
	write ('Vetor 4: ');
		Repeat
			If (vetsoma[cont]=maior) then
				begin
					textcolor (12);
					write (vetsoma[cont]:0:2);
					textcolor (10);
					write (', ');
				end
			Else
			write (vetsoma[cont]:0:2, ', ');
			cont:=cont+1;
		Until (cont>7);
			If (vetsoma[8]=maior) then
				begin
					textcolor (12);
					write (vetsoma[cont]:0:2);
					textcolor (10);
					write ('. ');
				end
			Else write (vetsoma[8]:0:2, '.');
	
	cont:=1;
	Repeat
		gotoxy (37,7);
		write ('*****');
		delay (300);
		gotoxy (37,7);
		write ('     ');
		delay (300);
		cont:=cont+1;
	Until (cont>10)	
  
End.
