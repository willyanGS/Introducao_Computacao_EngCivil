Program Medias ;

Type
	vet1 = array [1..5] of string[30];
	vet2 = array [1..5] of integer;
	vet3 = array [1..5] of real;
	
Var
	matricula, nome : vet1;
	nota1, nota2, nota3, nota4 : vet2;
	media : vet3;
	cont, lin : integer;
	
Begin
	cont:=1;
	Repeat
		Writeln ('ALUNO ', cont);
		write ('Digite o número da matrícula: ');
		readln (matricula[cont]);
		write ('Digite o nome do aluno: ');
		readln (nome[cont]);
		writeln ('Digite as notas do aluno: ');
		write ('1: ');
		readln (nota1[cont]);
		write ('2: ');
		readln (nota2[cont]);
		write ('3: ');
		readln (nota3[cont]);
		write ('4: ');
		readln (nota4[cont]);
		write ('Pressione ENTER para continuar');
		readkey;
		cont := cont +1;
		clrscr;
	Until (cont>5);
	
	cont :=1;
	Repeat
		media[cont]:=(nota1[cont]+nota2[cont]+nota3[cont]+nota4[cont])/4;
		cont:=cont+1;
	Until (cont>5);
	
	clrscr;
	cont := 1;
	lin := 2;
	writeln ('MATRICULA  NOME                           NOTA1  NOTA2  NOTA3  NOTA4  MEDIA');
	Repeat
		gotoxy (1,lin);
		write (matricula[cont]);
		gotoxy (12,lin);
		write(nome[cont]);
		gotoxy (43,lin);
		write (nota1[cont]);
		gotoxy (50,lin);
		write(nota2[cont]);
		gotoxy (57,lin);
		write (nota3[cont]);
		gotoxy (64,lin);
		write(nota4[cont]);
		gotoxy (71,lin);
		write (media[cont]);
		cont := cont+1;
		lin := lin+1;
	Until (cont>5);
	
  
 End.
