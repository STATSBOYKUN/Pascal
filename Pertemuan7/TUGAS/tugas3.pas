program contoh74;
uses crt;

var
   i, j, m, n : integer;
   kar : char;

begin
   write('Karakter yang digunakan : '); readln(kar);

   writeln('Ukuran persegi panjang yang diinginkan');
   write('Panjang = '); readln(m);
   write('Lebar   = '); readln(n);

   for i := 1 to m do
   begin
      for j := 1 to n do
      begin
         if (i=1) or (i=m) or (j=1) or (j=n) then
            write(kar:2)
         else
            write(' ':2);
      
      end;
   
   writeln;
   end;
end.