Program medias_alunos ;

type
	vet = array [1..5] of string [30];
	mat = array [1..5,1..3] of integer;
	vetmedia = array [1..5] of real;
Var
	nome : vet;
	nota: mat;
	media : vetmedia;
	cont, cont2, contlin, contcol, lin, col, soma : integer;

Begin
	
	gotoxy (1,1);
	write ('ALUNO');
	gotoxy (32,1);
	write ('NOTA 1');
	gotoxy (40,1);
	write ('NOTA 2');
	gotoxy (48,1);
	write ('NOTA 3');
	gotoxy (56,1);
	write ('MEDIA');
	
	contlin:=1;
	lin:=3;
	Repeat
		gotoxy (1, lin);
		readln (nome[contlin]);
		soma:=0;
		contcol:=1;
		col:=32;
		Repeat
			gotoxy (col,lin);
			readln (nota[contlin,contcol]);
			soma:=soma+nota[contlin,contcol];
			contcol:=contcol+1;
			col:=col+8;
		Until (contcol>3);
		media[contlin]:=soma/3;
		gotoxy (56,lin);
		write (media[contlin]:0:2);
		lin:=lin+1;
		contlin:=contlin+1;
	Until (contlin>5);
  
End.
