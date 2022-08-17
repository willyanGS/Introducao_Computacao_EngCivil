Program vetor_inteiros;

Type
	vet = array [1..20] of integer;
	
Var
	inteiro : vet;
	cont, limite : integer;

Begin

	Write ('digite o tamanho do vetor (entre 1 e 20): ');
	readln (limite);
	clrscr;
	
	cont:=1;
	Repeat
		write ('digite o numero da posicao ', cont,': ');
		readln (inteiro[cont]);
		cont:=cont+1;
	Until (cont>limite);
  	clrscr;
  	
  	write ('vetor=[ ', inteiro[1]);
  	cont:=2;
  	Repeat
  		write ('  ', inteiro[cont]);
  		cont:=cont+1;
  	Until (cont>limite);
  	writeln (' ]');
  	writeln (' ');
  	write ('Qual a posicao do vetor que devera ser mostrada? ');
  	readln (cont);
  	clrscr;
  	write ('Numero da posicao ',cont, ' do vetor: ', inteiro[cont]);
  	
  		
End.
