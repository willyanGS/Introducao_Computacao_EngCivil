Program Serie_Fibonacci ;

Var
	cont, ant, atual, prox : integer;

 Begin
 
 	write ('Serie de Fibonacci : (1,1');
 	ant := 1;
 	atual := 1;
 	cont := 1;
 	Repeat
 		prox := ant + atual;
 		write (',', prox);
 		cont := cont+1;
 		ant := atual;
 		atual := prox;
 	Until (cont>10);
 	Write (')');
  
 End.
