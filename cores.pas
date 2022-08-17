Program Cores ;

Var
	cor : integer;
	
 Begin
 	
 	cor:=1;
 	Repeat
 		textcolor (cor);
 		gotoxy (10,12);
 		writeln ('A cor do código ', cor, ' é esta');
 		textcolor (15);
 		write ('[para proximo código pressione uma tecla]');
 		readkey;
 		cor:=cor+1;
 	until (cor=31);
  
 End.
