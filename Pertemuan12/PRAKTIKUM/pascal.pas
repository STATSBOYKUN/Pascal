program segitiga_pascal;
uses crt;

var 
   i, j, baris : integer;

function pascal(baris, kolom: integer):integer;
begin
   writeln;
   writeln('baris : ', baris);
   writeln('kolom :', kolom);
   writeln;
   if kolom = 1 then
      pascal := 1
   else if kolom = baris then
      pascal := 1
   else
      pascal := pascal(baris-1, kolom) + pascal(baris-1, kolom-1);
   
end;

begin
   clrscr;

   write('Masukkan baris: '); readln(baris);
   for i := 1 to baris do
   begin               
      for j := 1 to i do
         begin
            write(pascal(i,j), ' ');
         end;
   
   writeln;
   end;
end.
