Program vetoress ;

type

	vet = array [1..12] of integer;
	
var

	vet1, vet2 : vet;
	cont, aux : integer;
	
Begin
	writeln ('Primeiro Vetor:');
	cont:=1;
	Repeat
		write ('Entre com o numero da posicao ', cont, ': ');
		readln (vet1[cont]);
		cont:=cont+1;
	Until (cont>12);
	clrscr;
	writeln ('Segundo Vetor:');
	cont:=1;
	Repeat
		write ('Entre com o numero da posicao ', cont, ': ');
		readln (vet2[cont]);
		cont:=cont+1;
	Until (cont>12);
     clrscr;
     writeln (' ');
     cont:=1;
     write ('Primeiro Vetor: ');
     Repeat
     	write (vet1[cont], ', ');
     	cont:=cont+1;
     Until (cont>11);
     writeln (vet1[12], '.');
     writeln (' ');
     cont:=1;
     write ('Segundo Vetor: ');
     Repeat
     	write (vet2[cont], ', ');
     	cont:=cont+1;
     Until (cont>11);
     write (vet2[12], '.');
     
     writeln (' ');
     writeln (' ');
     write ('Primeiro Vetor Invertido: ');
     cont:=12;
     Repeat
     	write (vet1[cont], ', ');
     	cont:=cont-1;
     Until (cont=1);
     write (vet1[1], '.');
     writeln (' ');
     writeln (' ');
     
     write ('Pares do Segundo Vetor:');
     cont:=1;
     Repeat
     	Begin
     		If ((vet2[cont] MOD 2)=0) then write (' ', vet2[cont], ',');
     	End;
     	cont:=cont+1;
     Until (cont>11);
     If ((vet2[12] MOD 2)=0) then write (vet2[12], '.')
     Else write ('.');
     
     writeln (' ');
     writeln (' ');
     
     write ('Posicoes impares do Segundo Vetor: ');
     cont:=1;
     Repeat
     	write (vet2[cont], ', ');
     	cont:=cont+2;
     Until (cont>10);
     write (vet2[11], '.');
     
     writeln (' ');
     writeln (' ');
     
     write ('Maior valor do Primeiro Vetor: ');
     cont:=1;
     aux:=0;
     Repeat
     	Begin
     		If (vet1[cont]>aux) then aux:=vet1[cont];
     	End;
		cont:=cont+1
     Until (cont>12);
     write (aux, '.');
     
     writeln (' ');
     writeln (' ');
     
     write ('Menor valor do Segundo Vetor: ');
     cont:=1;
     aux:=1000000;
     Repeat
     	Begin
     		If (vet2[cont]<aux) then aux:=vet2[cont];
     	End;
		cont:=cont+1
     Until (cont>12);
     write (aux, '.');
     
     
     
     
     
     
     
End.
