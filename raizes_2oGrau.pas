Program Raizes ;

Var
	raiz1, raiz2, delta, A, B, C: Real;
	continua: char;

Begin

	Repeat
		clrscr;
		Repeat
			gotoxy (1,1);
			writeln ('CALCULAR AS RAIZES DE UMA EQUACAO DO 2o GRAU');
			writeln ('(NO FORMATO: A(x^2) + Bx + C = 0)');
			writeln (' ');
			write ('DIGITE O VALOR DO COEFICIENTE A: ');
			readln (A);
			if (A=0) then
			Begin
				gotoxy (34,4);
				write ('VALOR INVALIDO');
				delay (1000);
				clrscr;
			End;
		Until (A<>0);
		gotoxy (1,5);
		write ('DIGITE O VALOR DO COEFICIENTE B: ');
		readln (B);
		write ('DIGITE O VALOR DO COEFICIENTE C: ');
		readln (C);
		delta := (B*B-(4*A*C));
		If (delta<0) then
			begin
				writeln (' ');
				write ('NAO POSSUI VALORES REAIS');
				delay (1000);
			end;
		If not (delta<0) then
			Begin
				gotoxy (1,8);
				raiz1 := (-B+(sqrt(delta)))/2*A;
				writeln ('X1: ', raiz1);
				raiz2 := (-B-(sqrt(delta)))/2*A;
				writeln ('X2: ', raiz2);
			End;
			Repeat
				gotoxy (1,11);
				write ('CALCULAR NOVAS RAIZES: S/N? ');
				read (continua);
				if (continua<>'S') and (continua<>'s') and (continua<>'N') and (continua<>'n') then
				begin
					gotoxy (29,11);
					write ('COMANDO INVALIDO');
					delay (600);
					gotoxy (28,11);
					write ('                 ');
				end;			
			Until (continua='S') or (continua='s') or (continua='N') or (continua='n'); 
	Until (continua='N') or (continua='n');	
  
End.
