Program dois_vetores ;

Type
	vetor = array [1..10] of integer;
	
Var
	vet1, vet2 : vetor;
	cont, somapar, somaimpar : integer;

Begin

	Writeln ('Entre com os valores do Primeiro Vetor: ');
	For cont:=1 to 10 do
		Begin
			write ('Posicao ', cont, ': ');
			readln (vet1[cont])
		End;
	clrscr;
	
	Writeln ('Entre com os valores do Segundo Vetor: ');
	For cont:=1 to 10 do
		Begin
			write ('Posicao ', cont, ': ');
			readln (vet2[cont])
		End;
	clrscr;
	
	Write ('Primeiro Vetor normal: ');
	cont:=1;
	Repeat
		write (vet1[cont], ' ');
		cont:=cont+1;
	Until (cont>10);
	writeln (' ');
	writeln (' ');
	
	write ('Segundo Vetor invertido: ');
	cont:=10;
	Repeat
		write (vet2[cont], ' ');
		cont:=cont-1;
	Until (cont<1);
	writeln (' ');
	writeln (' ');
	
	somaimpar:=0;
	cont:=1;
	write ('Soma das posicoes impares do Segundo Vetor: ');
	Repeat
		somaimpar:=somaimpar+vet2[cont];
		cont:=cont+2;
	Until  (cont>9);
	write (somaimpar);
	writeln (' ');
	writeln (' ');
	
	somapar:=0;
	cont:=2;
	write ('Soma das posicoes pares do Segundo Vetor: ');
	Repeat
		somapar:=somapar+vet2[cont];
		cont:=cont+2;
	Until (cont>10);
	write (somapar);
	
  
End.
