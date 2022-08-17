Program Distancia_entre_2pontos ;

Var
	x1, x2, y1, y2, distancia : real;
	continua : char;

Begin

	Repeat
		write ('Digite o valor da coordenada X1: ');
		readln (x1);
		write ('Digite o valor da coordenada Y1: ');
		readln (y1);
		write ('Digite o valor da coordenada X2: ');
		readln (x2);
		write ('Digite o valor da coordenada Y2: ');
		readln (y2);
		distancia := sqrt(sqr(x2-x1)+sqr(y2-y1));
		writeln ('A distancia entre os pontos é = ', distancia);
		writeln ('0 - Finalizar');
		writeln ('1 - Continuar');
		read (continua);
		clrscr;
	Until (continua = '0');
  
End.
