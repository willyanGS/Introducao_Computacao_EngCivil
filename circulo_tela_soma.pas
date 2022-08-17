Program Pzim ;

 Type
    vet = array [1..20] of integer;
    
 Var
     cont, cont1, col, col2 : integer;
     vet1, vet2 : vet;
 
 
 Begin
     cont := 1;
     repeat
        cont1 := 1;
        col := 10; 
        col2 := 70;
         repeat
             vet1[cont1] := random(50);
             vet2[cont1] := random(50);
             gotoxy(col,5);
             write(vet1[cont1]);
             gotoxy(col2,7);
             write(vet2[cont1]);
             gotoxy(40,20);
             write( vet1[cont1] + vet2[cont1]);
             delay(1000);
             clrscr;
              cont1 := cont1 + 1;
              col := col + 3;
              col2 := col2 - 3;
         until (cont1 > 20);
         cont := cont + 1;
     until (cont > 5);
  
 End.
