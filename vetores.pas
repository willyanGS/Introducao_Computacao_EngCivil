Program vetores ;

Type
	vet = array [1..10] of integer;
	
Var
	vet1, vet2: vet;
	cont, cont2, soma: integer;
	
Begin
	cont:=1;
	writeln ('Primeiro vetor:');
	Repeat
		write ('Elemento ', cont, ' : ');
		readln (vet1[cont]);
		cont:= cont+1;
	Until (cont>10);
	clrscr;
	cont:=1;
	writeln ('Segundo vetor:');
	Repeat
		write ('Elemento ', cont, ' : ');
		readln (vet2[cont]);
		cont:= cont+1;
	Until (cont>10);
	
	clrscr;
	writeln ('Primeiro Vetor:');
	write (vet1[1]);
	cont:=2;
	Repeat
		write (', ', vet1[cont]);
		cont:=cont+1;
	Until (cont>10);
	
	writeln (' ');
	writeln (' ');
	writeln ('Segundo Vetor:');
	write (vet2[1]);
	cont:=2;
	Repeat
		write (', ', vet2[cont]);
		cont:=cont+1;
	Until (cont>10);
	
	writeln (' ');
	writeln (' ');
	writeln ('Soma dos vetores:');
	cont:=1;
	Repeat
		soma:=vet1[cont]+vet2[cont];
		write (soma,', ');
		cont:=cont+1;
	Until (cont>9);
	soma:=vet1[10]+vet2[10];
	write (soma);
	
	writeln (' ');
	writeln (' ');
	writeln ('Primeiro vetor invertido:');
	cont:=10;
	Repeat
		write (vet1[cont], ', ');
		cont:= cont-1;
	Until (cont<2);
	write (vet1[1]);
	
	writeln (' ');
	writeln (' ');
	writeln ('Primeiro vetor invertido ocupando as 5 primeiras posicoes, Segundo vetor normal ocupando as 5 ultimas posicoes:');
	cont:=5;
	Repeat
		write (vet1[cont], ', ');
		cont:=cont-1;
	Until (cont<1);
	cont:=6;
	Repeat
		write (vet2[cont], ', ');
		cont:=cont+1;
	Until (cont>9);
	write (vet2[10]);
	
	writeln (' ');
	writeln (' ');
	writeln ('Soma do primeiro vetor com o segundo invertido:');
	cont:=1;
	cont2:=10;
	Repeat
		if (cont<10) then write (vet1[cont] + vet2[cont2], ', ')
		else write (vet1[cont]+vet2[cont2]);
		cont:=cont+1;
	
		cont2:=cont2-1;
	Until (cont>10);	
	  
End.
