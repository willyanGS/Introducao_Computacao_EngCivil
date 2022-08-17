Program nome ;
Var nome:string; x:integer;
 Begin
      write ('Digite aqui seu nome: ');
      read (nome);
      clrscr;
      x := 0;
      Repeat
      gotoxy (1,2);
      write (' Carregando: ', x, '%');
      delay (50);
      x := x+1;
      clrscr;
      Until (x>99);
      x := 1;
      Repeat
      gotoxy (1,2);
      write (' Carregando: 100%');
      delay (500);
      clrscr;
      delay (100);
      x := x+1;
      Until (x=5);
      
      gotoxy (1,2);
      delay (500);
      write (' Prazer ');
      delay (200);
      write ('em ');
      delay (200);
      write ('conhece-lo, ');
      delay (500);
      write (nome, '!');

 End.
