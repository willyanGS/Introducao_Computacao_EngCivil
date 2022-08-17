Program vetores_posicoes ;

Type
	vet = array [1..20] of integer;
	
Var
	vet1, vet2, vet3 : vet;
	cont, soma : integer;
	
Begin

	For cont:=1 to 20 do
		Begin
			vet1[cont]:=random(101);
			vet2[cont]:=random(101);
			vet3[cont]:=random(101);
		End;
	
	write ('Vetor 1: ');
	cont:=1;
	Repeat
		write (vet1[cont], ' ');
		cont:=cont+1;
	Until (cont>20);
	writeln (' ');
	writeln (' ');
	
	write ('Vetor 2: ');
	cont:=1;
	Repeat
		write (vet2[cont], ' ');
		cont:=cont+1;
	Until (cont>20);
	writeln (' ');
	writeln (' ');
	
	write ('Vetor 3: ');
	cont:=1;
	Repeat
		write (vet3[cont], ' ');
		cont:=cont+1;
	Until (cont>20);
	writeln (' ');
	writeln (' ');
	
	cont:=1;
	Write ('Pares do Vetor1(posicao): ');
	Repeat
		If (vet1[cont] MOD 2 = 0) then
		write (vet1[cont], '(', cont, ') ');
		cont:=cont+1;
	Until (cont>20);
	writeln (' ');
	writeln (' ');
	
	cont:=1;
	soma:=0;
	write ('Soma dos numeros divisiveis por 5 do Vetor2: ');
	Repeat
		If (vet2[cont] MOD 5 = 0) then
		soma:=soma+vet2[cont];
		cont:=cont+1;
	Until (cont>20);
	write (soma);
	writeln (' ');
	writeln (' ');
	
	cont:=19;
	write ('Posicoes impares do Vetor3 invertido: ');
	Repeat
		write (vet3[cont], ' ');
		cont:=cont-2;
	Until (cont<1); 
  
End.
