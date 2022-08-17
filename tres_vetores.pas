Program tres_vetores ;

type

	vet = array [1..12] of integer;
	
var

	vet1, vet2, vet3 : vet;
	cont : integer;
	
Begin

	cont:=1;
	writeln('Primeiro Vetor:');
	Repeat
		write ('Posicao ', cont, ': ');
		readln (vet1[cont]);
		cont:=cont+1
	Until (cont>12);
	clrscr;
	
	cont:=1;
	writeln ('Segundo Vetor:');
	while (cont<=12) do
		begin
			write ('Posicao ', cont, ': ');
			readln (vet2[cont]);
			cont:=cont+1;
		End;
	clrscr;
	
	writeln ('Terceiro Vetor:');
	For cont:=1 to 12 do
		begin
			write ('Posicao ', cont, ': ');
			readln (vet3[cont]);
		End;
	clrscr;
	
	cont:=1;
	write ('Primeiro Vetor: ');
	while (cont<=12) do
		begin
			write (vet1[cont], '  ');
			cont:=cont+1;
		end;
	writeln (' ');
	writeln (' ');	
	write ('Segundo Vetor: ');
	For cont:=1 to 12 do
		begin
			write (vet2[cont], '  ');
		end;
	writeln (' ');
	writeln (' ');	
	write ('Terceiro Vetor: ');
	cont:=1;
	Repeat
		write (vet3[cont], '  ');
		cont:=cont+1;
	Until (cont>12);
  
End.
