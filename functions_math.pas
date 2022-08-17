program funcoes_para_entregar;

Var
	a, b, c, cont, opcao : integer;
	num, x1, x2, y1, y2 : real;

function fibonacci (num: real):integer;
	begin
		a:= 0;
		b:= 1;
	     cont := 1;
	     write ('0, 1');
		repeat
			c := a + b;
			write (', ', c);
			a:= b;
			b:= c;
			cont := cont + 1;
		until (cont > (num-2));
		write ('...');
	end;
	
function raiz (num: real):real;
	begin
		raiz:= sqrt(num);
	end;
	
function potencia (num: real):real;
	begin
		potencia:= (num*num);
	end;
	
function dist (x1, x2, y1, y2:real):real;
	begin
		dist:= sqrt(sqr(x2-x1)+sqr(y2-y1));
	end; 
		
begin
	repeat
		clrscr;
		writeln ('1 - SERIE DE FIBONACCI');
		writeln ('2 - RAIZ QUADRADA');
		writeln ('3 - DISTANCIA ENTRE DOIS PONTOS');
		writeln ('4 - POTENCIA AO QUADRADO');
		writeln ('5 - SAIR');
		write ('DIGITE A OPÇAO DESEJADA:');
		readln (opcao);
		
		if (opcao < 1) or (opcao > 5) then
			begin
				clrscr;
				writeln ('OPCAO INVALIDA');
				write ('Pressione uma tecla para voltar');
				readkey;
			end;		
	
		case opcao of
		 1:
			begin
				clrscr;
				writeln ('SERIE DE FIBONACCI');
				write ('Digite o numero de elementos que voce deseja ver da serie: ');
				readln (num);
				readkey;
				writeln;
				write(fibonacci(num));
				readkey;
			end;
		 2:
			begin
				clrscr;
				writeln ('RAIZ QUADRADA DE UM NUMERO');
				write ('Digite o numero que você deseja tirar a raiz: ');
				readln (num);
				if (num < 0) then
					repeat
						clrscr;
						writeln ('NAO EXISTE RAIZ QUADRADA DE NUMERO NEGATIVO');
						write ('DIGITE OUTRO NUMERO');
						read (num)
					until (num > 0);
				writeln;
				write ('A raiz de ',num:0:2, ' e ',raiz(num):0:2);
				readkey;
			end;
		 3:
		 	begin
				clrscr;
				writeln ('DISTANCIA ENTRES DOIS PONTOS');
				write ('Digite o valor da coordenada X1 ->');
				readln (x1);
				write ('Digite o valor da coordenada Y1 ->');
				readln (y1);
				writeln;
				write ('Digite o valor da coordenada X2 ->');
				readln (x2);
				write ('Digite o valor da coordenada Y2 ->');
				readln (y2);
				writeln;
				writeln ('A distancia entre os pontos (', x1:0:2, ',', y1:0:2,') e (',x2:0:2, ',', y2:0:2, ') e ',dist(x1, x2, y1, y2):0:2);
				readkey;
			end;			
		 4:
			begin
				clrscr;
				writeln ('NUMERO ELEVADO AO QUADRADO');
				write ('Digite o numero que voce deseja elevar ao quadrado: ');
				readln (num);
				writeln ('O quadrado de ', num:0:2, ' e ', potencia(num):0:2);
				readkey;              
			end;
		end;                                      
	until (opcao = 5);
end.
