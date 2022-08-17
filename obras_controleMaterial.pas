Program Obras ;

Type
	vet1 = array [1..5] of real;
	vet2 = array [1..5] of string;

Var
	pedra, areia, cimento, cal, tijolo, totobra: vet1;
	nomeobra : vet2;
	cont : integer;
	totp, tota, totci, totca, tott, totgeral : real;

Begin
	cont := 1;
	Repeat
		writeln ('Controle de Obras');
		write ('Obra ', cont, ': ');
		readln (nomeobra[cont]);
		write ('Quantidade de Pedra (m3): ');
		readln (pedra[cont]);
		write ('Quantidade de Areia (m3): ');
		readln (areia[cont]);
		write ('Quantidade de Cimento (sacos): ');
		readln (cimento[cont]);
		write ('Quantidade de Cal (sacos): ');
		readln (cal[cont]);
		write ('Quantidade de Tijolos (milheiros): ');
		readln (tijolo[cont]);
		cont:=cont+1;
		clrscr;
	Until (cont>5);
	
	cont := 1;
	Repeat
		writeln ('Obra ', nomeobra[cont]);
		writeln(' ');
		writeln ('Pedra  : ', pedra[cont]:0:2, ' m3');
		writeln ('Areia  : ', areia[cont]:0:2, ' m3');
		writeln ('Cimento: ', cimento[cont]:0:2, ' sacos');
		writeln ('Cal    : ', cal[cont]:0:2, ' sacos');
		writeln ('Tijolo : ', tijolo[cont]:0:2, ' milheiros');
		writeln(' ');
		totobra[cont] := (pedra[cont]*60)+(areia[cont]*65)+(cimento[cont]*35)+(cal[cont]*20)+(tijolo[cont]*800);
		writeln ('Total gasto na obra: R$', totobra[cont]:0:2);
		writeln(' ');
		writeln(' ');
		if (cont<5) then write('Pressione uma tecla para proxima obra')
		else write ('Pressione uma tecla para continuar');
		readkey;
		cont:=cont+1;
		clrscr;
	Until (cont>5);
	
	writeln ('Total gasto em cada material: ');
		writeln(' ');
		totp := pedra[1]+pedra[2]+pedra[3]+pedra[4]+pedra[5];
		writeln ('Total de Pedra  : ',totp:0:2, ' m3 = R$', (totp*60):0:2);
		tota := areia[1]+areia[2]+areia[3]+areia[4]+areia[5];
		writeln ('Total de Areia  : ',tota:0:2, ' m3 = R$', (tota*65):0:2);
		totci := cimento[1]+cimento[2]+cimento[3]+cimento[4]+cimento[5];
		writeln ('Total de Cimento: ',totci:0:2, ' sacos = R$', (totci*35):0:2);
		totca := cal[1]+cal[2]+cal[3]+cal[4]+cal[5];
		writeln ('Total de Cal    : ',totca:0:2, ' sacos = R$', (totca*20):0:2);
		tott := tijolo[1]+tijolo[2]+tijolo[3]+tijolo[4]+tijolo[5];
		writeln ('Total de Tijolos: ',tott:0:2, ' milheiros = R$', (tott*800):0:2);
		writeln (' ');
		writeln (' ');
	totgeral := totobra[1]+totobra[2]+totobra[3]+totobra[4]+totobra[5];
	writeln ('TOTAL GERAL: R$', totgeral:0:2);
  
End.
