Program Cores ;

Var
	cor : integer;
	
 Begin
 	
 	cor:=1;
 	Repeat
 		textcolor (cor);
 		gotoxy (10,12);
 		writeln ('A cor do c�digo ', cor, ' � esta');
 		textcolor (15);
 		write ('[para proximo c�digo pressione uma tecla]');
 		readkey;
 		cor:=cor+1;
 	until (cor=31);
  
 End.
