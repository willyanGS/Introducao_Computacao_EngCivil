Program Jogo_da_sorte ;

Type
	vet = array [1..5] of integer;

Var
    cont, cont2, numsorte, aux, contjogador, lin, menor, contganhador : integer;
    jogador : vet;

Begin
	Repeat
		cont:=1;
		writeln ('JOGO DA SORTE');
		Repeat
			writeln (cont, '-Jogador ', cont, ': ');
			cont:=cont+1;
		Until (cont>5);
		cont:=6;
		writeln (cont, '- Sair');
		writeln (' ');
		write ('Escolha a opção entre 1 e 6: ');
		readln (contjogador);
	  If (contjogador<>6) then
	  Begin
		If (contjogador<6) then
			begin
				write ('Entre com seu número da sorte (0~50): ');
				read (numsorte);
					if (numsorte>50) then
						Begin
						  Repeat
							gotoxy (39,10);
							write ('Opção Inválida');
							delay (300);
							gotoxy (39,10);
							write ('               ');
							gotoxy (39,10);
							read (numsorte);
						  Until (numsorte<51);
						End;	
			end;
		If (contjogador>6) then
			begin
				Repeat
					gotoxy (30,9);
					write ('Opção Inválida');
					delay (300);
					gotoxy (29,9);
					write ('               ');
					gotoxy (30,9);
					readln (contjogador);
				Until (contjogador<6);
				write ('Entre com seu número da sorte (0~50): ');
				read (numsorte);
					if (numsorte>50) then
						Begin
						  Repeat
							gotoxy (39,10);
							write ('Opção Inválida');
							delay (300);
							gotoxy (39,10);
							write ('               ');
							gotoxy (39,10);
							read (numsorte);
						  Until (numsorte<51);
						End;	
			end;
		clrscr;
		cont:=1;
		writeln ('JOGO DA SORTE');
		Repeat
			writeln (cont, '-Jogador ', cont, ': ');
			cont:=cont+1;
		Until (cont>5);
		
		
			begin
				lin:=(contjogador+1);
				gotoxy (29,lin);
				write ('(jogador escolhido)');
			end;
		
		
		menor := 123124;
		cont:=1;
		Repeat
			cont2:=0;
			Repeat
				aux:=random(51);
				cont2:=cont2+1;
			Until (aux=numsorte);
			jogador[cont]:=cont2;
			If (cont2<menor) then
				begin
					menor:=cont2;
					contganhador:=cont;
				end;
			cont:=cont+1;
		Until (cont>5);
		
		
		
		lin:=2;
		cont:=1;
		Repeat
			gotoxy (14,lin);
			write (jogador[cont], ' tentativas');
			cont:=cont+1;
			lin:=lin+1;
		Until (cont>5);
		
		
		
		writeln (' ');
		writeln (' ');
		textcolor (12);
		If (contjogador=contganhador) then writeln ('   Parabéns!!! Você ganhou. O jogador que chegou no número escolhido mais rápido foi o jogador ', contganhador, ', com ', menor, ' tentativas.')
		Else writeln ('   Que Pena!!! Você perdeu. O jogador que chegou no número escolhido mais rápido foi o jogador ', contganhador, ', com ', menor, ' tentativas.');
		
		textcolor (10);
		writeln (' ');
		write ('Pressione uma tecla para continuar'); 
		readkey;
		clrscr;
	  End;  
	  
	Until (contjogador=6);
		
End.
