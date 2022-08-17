Program Ficha_Cadastral ;

Type
	Vet= array [1..3] of string [40];
	
Var
	nome, cpf, rg, rua, bairro, cidade, estado,
	datanasc, estadocivil, cep, pai, mae: Vet;
	cont:integer;
	
Begin

	cont:=1;
	Repeat
		writeln ('FICHA CADASTRAL', cont);
		write ('Digite seu Nome: ');
		Readln (nome[cont]);
		write ('Digite seu RG: ');
		Readln (rg[cont]);
		write ('Digite seu CPF: ');
		Readln (cpf[cont]);
		write ('Digite seu Endereco: ');
		Readln (rua[cont]);
		write ('Digite seu Bairro: ');
		Readln (bairro[cont]);
		write ('Digite sua Cidade: ');
		Readln (cidade[cont]);
		write ('Digite seu Estado: ');
		Readln (estado[cont]);
		write ('Digite seu CEP: ');
		Readln (cep[cont]);
		write ('Digite sua Data de Nascimento: ');
		Readln (datanasc[cont]);
		write ('Digite seu Estado Civil: ');
		Readln (estadocivil[cont]);
		write ('Digite sua Filiacao: Nome da Mae: ');
		Readln (mae[cont]);
		write ('                     Nome do Pai: ');
		Readln (pai[cont]);
		clrscr;
		cont:=cont+1;
	Until (cont>3);
	
	cont:=1;
	Repeat
		write ('FICHA CADASTRAL ', cont);
		gotoxy (1,3);
		write ('Nome: ', nome[cont]);
		gotoxy (1,4);
		write ('RG: ', rg[cont]);
		gotoxy (25,4);
		write ('CPF: ', cpf[cont]);
		gotoxy (1,6);
		write ('Endereco: ', rua[cont]);
		gotoxy (45,6);
		write ('Bairro: ', bairro[cont]);
		gotoxy (1,7);
		write ('Cidade: ', cidade[cont]);
		gotoxy (35,7);
		write ('Estado: ', estado[cont]);
		gotoxy (60,7);
		write ('CEP: ', cep[cont]);
		gotoxy (1,9);
		write ('Data de Nascimento: ', datanasc[cont]);
		gotoxy (35,9);
		write ('Estado Civil: ', estadocivil[cont]);
		gotoxy (1,10);
		write ('Filiacao: Nome da Mae: ', mae[cont]);
		gotoxy (11,11);
		write ('Nome do Pai: ', pai[cont]);
		gotoxy (6,20);
		write ('"Precione Enter para proxima Ficha"');
		Readkey;
		clrscr;
		cont:=cont+1;
	Until (cont>3);	
  
End.
