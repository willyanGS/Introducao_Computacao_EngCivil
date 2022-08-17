Program Sorteio ;

Type
	vet1 = array [1..6] of integer;
	
Var
	cont, continua : integer;
	num : vet1;

Begin
	Repeat
		Repeat
			cont:=1;
			Repeat
				num[cont] := random (60)+1;
				cont:=cont+1;
			Until (cont>6);
		Until (num[1]<>num[2]) and (num[1]<>num[3]) and (num[1]<>num[4]) and (num[1]<>num[5]) and (num[1]<>num[6])
		and (num[2]<>num[3]) and (num[2]<>num[4]) and (num[2]<>num[5]) and (num[2]<>num[6])
		and (num[3]<>num[4]) and (num[3]<>num[5]) and (num[3]<>num[6])
		and (num[4]<>num[5]) and (num[4]<>num[6])
		and (num[5]<>num[6]);
		
	
		cont:=1;
		writeln ('Numeros sorteados: ');
		writeln (' ');
		Repeat
			writeln ('Numero ', cont, ': ', num[cont]);
			cont:=cont+1;
		Until (cont>6);
		
		writeln (' ');
		write ('Repetir(1-Sim 0-Nao)? ');
		read (continua);
		clrscr; 
	Until (continua=0);
End.
