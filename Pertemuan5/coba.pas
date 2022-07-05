// program akgska;

// Var
//    Nilai : char;
// Begin
//    Write ('Nilai huruf yang didapat ?'); readln (Nilai);

//    Case Nilai of
//    'A' : writeln ('Sangat baik') ;
//    'B' : writeln ('baik') ;
//    'C' : writeln ('Cukup') ;
//    'D' : writeln ('Kurang') ;
//    'E' : writeln ('Gagal') ;
//    End;
//    readln;
// End.

program abs;
uses crt;
var x, y : integer;
Begin
   for x := 0 to 15 do
   begin
      for y := 0 to 15 do
      begin
         gotoXY(x,y);
         writeln('*');      
      end;
                     
   end;   
end.