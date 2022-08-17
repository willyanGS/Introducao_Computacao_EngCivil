Program Vetoress ;

Type
	vet = array [1..10] of integer;
	
Var
	vet1, vet2, soma : vet;
	cont, cont2, cont3, lin, somatotal1, somatotal2: integer;
	
Begin
	cont:=1;
	Repeat
		vet1[cont]:=random(50);
		cont:=cont+1;
	Until (cont>10);
	cont:=1;
	Repeat
		vet2[cont]:=random(50);
		cont:=cont+1;
	Until (cont>10);
	
	cont:=1;
	write ('Vetor 1:');
	Repeat
		write (' ', vet1[cont], ',');
		cont:=cont+1;
	until (cont>9);
	writeln (' ', vet1[10], '.');
	
	cont:=1;
	lin := 3;
	gotoxy (1,3);
	write ('Vetor 2: ');
	Repeat
		gotoxy (10,lin);
		write (vet2[cont]);
		cont:=cont+1;
		lin:=lin+2;
	Until (cont>10);
	
	writeln (' ');
	writeln (' ');
	write ('Pressione uma tecla para continuar');
	Readkey;
	clrscr;
	
	write ('Pares   Vetor 1:  ');
	cont:=1;
	Repeat
		If ((vet1[cont] MOD 2)=0) then write (vet1[cont], '  ');
		cont:=cont+1;
	Until (cont>10);
	
	writeln (' ');
	writeln (' ');
	write ('Impares Vetor 2:  ');
	cont:=1;
	Repeat
		If ((vet2[cont] MOD 2)<>0) then write (vet2[cont], '  ');
		cont:=cont+1;
	Until (cont>10);
	
	writeln (' ');
	writeln (' ');
	write ('Pressione uma tecla para continuar');
	Readkey;
	clrscr;
	
	cont:=1;
	cont2:=2;
	cont3:=1;
	Repeat
		soma[cont3] := (vet1[cont]+vet1[cont2]);
		cont3:=cont3+1;
		cont:=cont+2;
		cont2:=cont2+2;
	Until (cont>10);
	somatotal1 := soma[1]+soma[2]+soma[3]+soma[4]+soma[5];
	writeln ('Soma Vetor 1 = ', somatotal1);
	
	cont:=1;
	cont2:=2;
	cont3:=1;
	Repeat
		soma[cont3] := (vet2[cont]+vet2[cont2]);
		cont3:=cont3+1;
		cont:=cont+2;
		cont2:=cont2+2;
	Until (cont>10);
	somatotal2 := soma[1]+soma[2]+soma[3]+soma[4]+soma[5];
	writeln ('Soma Vetor 2 = ', somatotal2);
	
	If (somatotal1>somatotal2) then write ('O vetor com maior soma é o Vetor 1')
	else if (somatotal1=somatotal2) then write ('Os Vetores possuem a mesma soma') 
	else write ('O vetor com maior soma é o Vetor 2');


  
End.
