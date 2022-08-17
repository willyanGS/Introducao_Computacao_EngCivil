Program Vetores_com_case ;

Type
	vet =array [1..20] of integer;

Var
	cont, cont2, cont3, opcao, aux, aux3, aux6, total1, total2, aux7, aux8 : integer;
	vet1, vet2, aux2, aux4, aux5, vet1total, vet2total : vet; 

Begin
		
		cont:=1;
		Repeat
			vet1[cont]:=random(100)+1;
			cont:=cont+1;
		Until (cont>20);
	
		cont:=1;
		Repeat
			vet2[cont]:=random(100)+1;
			cont:=cont+1;
		Until (cont>20);
	
	Repeat
		clrscr;
		writeln ('MENU');
		writeln ('1- Mostrar os dois vetores');
		writeln ('2- Soma dos vetores, com o segundo invertido');
		writeln ('3- Soma dos vetores, com posições impares do segundo multiplicadas por 5');
		writeln ('4- Soma total dos dois vetores');
		writeln ('5- Diferenca dos dois vetores, informando o maior');
		writeln ('6- Menor valor do primeiro vetor e maior valor do segundo');
		writeln ('7- Sair');
		writeln (' ');
		write ('Digite a opcao desejada? ');
		readln (opcao);
	
		
		Case opcao of
			1: 
			Begin
				clrscr;
				cont:=1;
				write ('Vetor 1:');
				repeat
					write (' ', vet1[cont]);
				     cont:=cont+1;
				Until (cont>20);
				writeln (' ');
				cont:=1;
				write ('Vetor 2:');
				repeat
					write (' ', vet2[cont]);
				     cont:=cont+1;
				Until (cont>20);
				writeln (' ');
				writeln (' ');
				write ('Pressione uma tecla para retornar ao menu');
			     readkey;
			End;
			   
			2:
			Begin
				clrscr;
				Begin	
					cont:=1;
					write ('Vetor 1:');
					repeat
						write (' ', vet1[cont]);
				     	cont:=cont+1;
					Until (cont>20);
					writeln (' ');
					cont:=1;
					write ('Vetor 2:');
					repeat
						write (' ', vet2[cont]);
					     cont:=cont+1;
					Until (cont>20);
				     writeln (' ');
				End;
				writeln (' ');
				cont:=1;
				cont2:=20;
				writeln ('Soma do primeiro com o segundo invertido: ');
				Repeat	
					aux:=vet1[cont]+vet2[cont2];
					write (aux, ' ');
					cont:=cont+1;
					cont2:=cont2-1;
				Until (cont>20);
				writeln (' ');
				write ('Pressione uma tecla para retornar ao menu');
			     readkey;
			End;
			   
			3: 
			Begin
				clrscr;
				Begin	
					cont:=1;
					write ('Vetor 1:');
					repeat
						write (' ', vet1[cont]);
				     	cont:=cont+1;
					Until (cont>20);
					writeln (' ');
					cont:=1;
					write ('Vetor 2:');
					repeat
						write (' ', vet2[cont]);
					     cont:=cont+1;
					Until (cont>20);
				     writeln (' ');
				End;
				writeln (' ');
				cont:=1;
				Repeat
					aux2[cont]:=(vet2[cont]*5);
					cont:=cont+2;
				Until (cont>20);
				Writeln ('Soma do primeiro com o segundo (com posicoes impares x5): ');
				cont:=1;
				Repeat
					aux3:=vet1[cont]+aux2[cont];
					write (aux3, ' ');
					cont:=cont+1;
				Until (cont>20);
				writeln (' ');
				write ('Pressione uma tecla para retornar ao menu');
			     readkey;
			End;
			   
			4: 
			Begin
				clrscr;
				Begin	
					cont:=1;
					write ('Vetor 1:');
					repeat
						write (' ', vet1[cont]);
				     	cont:=cont+1;
					Until (cont>20);
					writeln (' ');
					cont:=1;
					write ('Vetor 2:');
					repeat
						write (' ', vet2[cont]);
					     cont:=cont+1;
					Until (cont>20);
				     writeln (' ');
				End;
				writeln (' ');
				cont:=1;
				cont2:=2;
				cont3:=1;
				write ('Soma total dos vetores: ');
				Repeat
					aux4[cont3]:=vet1[cont]+vet2[cont]+vet1[cont2]+vet2[cont2];
					cont:=cont+2;
					cont2:=cont2+2;
					cont3:=cont3+1;
				Until (cont2>20);
				cont:=1;
				cont2:=2;
				cont3:=1;
				Repeat
					aux5[cont3]:=aux4[cont]+aux4[cont2];
					cont:=cont+2;
					cont2:=cont2+2;
					cont3:=cont3+1;
				Until (cont2>10);
				aux6:=aux5[1]+aux5[2]+aux5[3]+aux5[4]+aux5[5];
				writeln (aux6);
				writeln (' ');
				write ('Pressione uma tecla para retornar ao menu');
			     readkey;
			End;
			   
			5: 
			Begin
				clrscr;
				Begin	
					cont:=1;
					write ('Vetor 1:');
					repeat
						write (' ', vet1[cont]);
				     	cont:=cont+1;
					Until (cont>20);
					writeln (' ');
					cont:=1;
					write ('Vetor 2:');
					repeat
						write (' ', vet2[cont]);
					     cont:=cont+1;
					Until (cont>20);
				     writeln (' ');
				End;
				writeln (' ');
				cont:=1;
				cont2:=2;
				cont3:=3;
				Repeat
					vet1total[cont3]:=vet1[cont]+vet1[cont2];
					cont:=cont+2;
					cont2:=cont2+2;
					cont3:=cont3+1;
				Until (cont2>20);
				total1:=vet1total[1]+vet1total[2]+vet1total[3]+vet1total[4]+vet1total[5]
					+vet1total[6]+vet1total[7]+vet1total[8]+vet1total[9]+vet1total[10];
				cont:=1;
				cont2:=2;
				cont3:=3;
				Repeat
					vet2total[cont3]:=vet2[cont]+vet2[cont2];
					cont:=cont+2;
					cont2:=cont2+2;
					cont3:=cont3+1;
				Until (cont2>20);
				total2:=vet2total[1]+vet2total[2]+vet2total[3]+vet2total[4]+vet2total[5]
					+vet2total[6]+vet2total[7]+vet2total[8]+vet2total[9]+vet2total[10];
				Write ('Diferenca dos dois vetores: ');
				If (total1>total2) then
					Begin
						aux7:=(total1-total2);
						write (aux7, ' - O maior vetor e o primeiro');
					End;
				If (total2>total1) then
					Begin
						aux7:=(total2-total1);
						write (aux7, ' - O maior vetor e o segundo');
					End;
				writeln (' ');
				write ('Pressione uma tecla para retornar ao menu');
			     readkey;
			End;
			   
			6: 
			Begin
				clrscr;
				Begin	
					cont:=1;
					write ('Vetor 1:');
					repeat
						write (' ', vet1[cont]);
				     	cont:=cont+1;
					Until (cont>20);
					writeln (' ');
					cont:=1;
					write ('Vetor 2:');
					repeat
						write (' ', vet2[cont]);
					     cont:=cont+1;
					Until (cont>20);
				     writeln (' ');
				End;
				writeln (' ');
				aux8:=102;
				cont:=1;
				Repeat
					Begin
						If (vet1[cont]<aux8) then aux8:=vet1[cont];
					End;
					cont:=cont+1;
				Until (cont>20);
				writeln ('O menor valor do primeiro e: ', aux8);
				aux8:=0;
				cont:=1;
				Repeat
					Begin
						If (vet2[cont]>aux8) then aux8:=vet2[cont];
					End;
					cont:=cont+1;
				Until (cont>20);
				writeln ('O maior valor do segundo e: ', aux8);
				writeln (' ');
				write ('Pressione uma tecla para retornar ao menu');
			     readkey;
			End;
			   
		End;		   
			   
	Until (opcao=7);

End.
