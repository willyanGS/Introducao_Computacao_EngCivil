Program Nome ;

VAR
	cont,col,lin:integer;
	nome:string [7];
	
Begin
 	Begin
 	Write ('Digite seu Nome (maximo 7 caracteres): ');
 	read (nome);
 	clrscr;
 	cont := 1;
 		Repeat
 			gotoxy (36,12);
 			write (nome);
 			delay (500);
 			clrscr;
 			delay (150);
 			cont := cont+1;
 		Until (cont>10);
 	End;
 	
 	Begin
	col := 1; cont := 1;
		Repeat
			gotoxy (col,12);
 	 			Repeat
 					gotoxy (col,12);
 					write (nome);
 					delay (60);
 					clrscr;
 					col := col+1;
 				Until (col=75);
    			cont := cont+1;
    			col := 1;
    	 	Until (cont>10);
	End;
	
	Begin
		col := 1; lin := 1;
		Repeat
		gotoxy (col, lin);
			Repeat
				gotoxy (col, lin);
				write (nome);
				delay (30);
				col := col+1;
			Until (col=75);
			col := 1;
			lin := lin+1;
		Until (lin>25);
	End;
End.
