Program vetores_posicao ;

type

	vet = array [1..6] of integer;
	
var

	vet1, vet2, vet3 : vet;
	cont, vetor, posicao : integer;
	
Begin

	writeln ('Vetor 1');
	cont:=1;
	Repeat
		write ('Posicao ', cont, ': ');
		readln (vet1[cont]);
		cont:=cont+1;
	Until (cont>6);
	clrscr;
	writeln ('Vetor 2');
	cont:=1;
	Repeat
		write ('Posicao ', cont, ': ');
		readln (vet2[cont]);
		cont:=cont+1;
	Until (cont>6);
	clrscr;
	writeln ('Vetor 3');
	cont:=1;
	Repeat
		write ('Posicao ', cont, ': ');
		readln (vet3[cont]);
		cont:=cont+1;
	Until (cont>6);
	clrscr;
	
	write ('Digite o vetor desejado: ');
	readln (vetor);
	write ('Digite a posicao desejada (1 a 6): ');
	readln (posicao);
	clrscr;
	
	cont:=1;
	write ('Vetor 1: ');
	Repeat
		write (vet1[cont], ' ');
		cont:=cont+1;
	Until (cont>6);
	writeln (' ');
	
	cont:=1;
	write ('Vetor 2: ');
	Repeat
		write (vet2[cont], ' ');
		cont:=cont+1;
	Until (cont>6);
	writeln (' ');
	
	cont:=1;
	write ('Vetor 3: ');
	Repeat
		write (vet3[cont], ' ');
		cont:=cont+1;
	Until (cont>6);
	writeln (' ');
	
	write ('Resultado da pesquisa: ');
	Case vetor of
		1: write (vet1[posicao]);
		2: write (vet2[posicao]);
		3: write (vet3[posicao]);
	end;
	write ('  (Vetor: ', vetor, ', Posicao: ', posicao, ')');

  
End.
