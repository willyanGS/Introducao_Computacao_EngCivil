Program ordem_numeros ;

Var
	num1, num2, num3 : integer;
	cresc, decresc : string;
	continua: integer;	

Begin
	Repeat
	Write ('digite o primeiro número inteiro: ');
	readln (num1);
	Write ('digite o segundo número inteiro: ');
	readln (num2);
	Write ('digite o terceiro número inteiro: ');
	readln (num3);
	writeln (' ');
	//ordem crescente:
		If (num1<=num2) and (num2<=num3) then writeln ('Ordem Crescente: ', num1,', ', num2,', ', num3);
		If (num1<=num3) and (num3<=num2) then writeln ('Ordem Crescente: ', num1,', ', num3,', ', num2);
		If (num2<=num1) and (num1<=num3) then writeln ('Ordem Crescente: ', num2,', ', num1,', ', num3);
		If (num2<=num3) and (num3<=num1) then writeln ('Ordem Crescente: ', num2,', ', num3,', ', num1);
		If (num3<=num1) and (num1<=num2) then writeln ('Ordem Crescente: ', num3,', ', num1,', ', num2);
		If (num3<=num2) and (num2<=num1) then writeln ('Ordem Crescente: ', num3,', ', num2,', ', num1);
	//ordem decrescnte:
		If (num1>=num2) and (num2>=num3) then writeln ('Ordem Decrescente: ', num1,', ', num2,', ', num3);
		If (num1>=num3) and (num3>=num2) then writeln ('Ordem Decrescente: ', num1,', ', num3,', ', num2);
		If (num2>=num1) and (num1>=num3) then writeln ('Ordem Decrescente: ', num2,', ', num1,', ', num3);
		If (num2>=num3) and (num3>=num1) then writeln ('Ordem Decrescente: ', num2,', ', num3,', ', num1);
		If (num3>=num1) and (num1>=num2) then writeln ('Ordem Decrescente: ', num3,', ', num1,', ', num2);
		If (num3>=num2) and (num2>=num1) then writeln ('Ordem Decrescente: ', num3,', ', num2,', ', num1);
		
	writeln (' ');	
	write ('Digite 1 para refazer ou 0 para finalizar: ');
	read (continua);
	clrscr;
	Until (continua = 0)
  
End.
