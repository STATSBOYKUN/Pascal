program ab;

var a,b : integer;

function tambah(bilangan:integer):integer;
var hasil : integer;
begin   
   hasil := bilangan + 2;

   writeln('nilai a : ', hasil);
   if hasil = 10 then
      tambah := hasil
   else
      tambah := tambah(hasil);
end;

begin
   a:= 2;
   readln(a);

   write(tambah(a));

end.