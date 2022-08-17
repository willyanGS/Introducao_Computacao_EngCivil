Program timer ;

var
	cont, hr, min, seg : integer;


Begin
		hr:=0;
		Repeat
			min:=0;
			Repeat
				seg:=0;
				Repeat
					Begin
						gotoxy (35,12);
						If (hr<10) then
							write ('0',hr)
						Else write (hr);
						If (min<10) then
							write (':0',min)
						Else write (':',min);
						If (seg<10) then
							write(':0',seg)
						Else write (':',seg);				
					End;
					delay (1000);
					seg:=seg+1;
				Until (seg=60);
				min:=min+1;
			Until (min=60);
			hr:=hr+1;
		Until (hr>99);
  
End.
