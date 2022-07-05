program faktorialDKK;
uses crt;

label ulang;

var 
   opsi : byte;
   bilangan, n, r : integer;

function faktorial(x:integer):real;
var
   a, b : integer;
begin
   if (x = 0) or (x = 1) then
      a := 1
   else if x > 1 then
      begin
         a := 1;
         for b := 1 to x do
            a := a * b;
      end;

   faktorial := a;
end;

function permutasi(x, y : integer):real;
begin
   permutasi := (faktorial(x)/faktorial(x-y));
end;

function kombinasi(x,y : integer):real;
begin
   kombinasi := permutasi(x,y)/faktorial(y);
end;

begin
   ulang : 
   clrscr;
   writeln('[ PROGRAM PENGHITUNG ]');
   writeln('1) Faktorial');
   writeln('2) Permutasi');
   writeln('3) Kombinasi');
   writeln('4) Keluar program');
   writeln('======================');
   write('Opsi (1-4) : '); readln(opsi);

   clrscr;
   case opsi of
   1 : 
      begin
         write('Hitung faktorial (>0) : '); readln(bilangan);
         
         writeln;
         writeln('Hasil faktorial : ', faktorial(bilangan):8:2);
         readln;
         goto ulang;
      end;
   2 : 
      begin
         writeln('Hitung Permutasi (n,r) dengan r <= n : ');
         write('n : '); readln(n);
         write('r : '); readln(r);

         writeln;
         writeln('Hasil permutasi(', n, ',', r, '): ', permutasi(n,r):8:2);
         readln;
         goto ulang;
      end;
   3 : 
      begin
         writeln('Hitung kombinasi (n,r) dengan r <= n : ');
         write('n : '); readln(n);
         write('r : '); readln(r);

         writeln;
         writeln('Hasil kombinasi(', n, ',', r, '): ', kombinasi(n,r):8:2);
         readln;
         goto ulang;
      end;
   4 : 
      begin
         writeln('Terima kasih telah menggunakan program ini :)');
         readln;
         EXIT;
      end;
   else
      begin
         writeln('Masukkan angka 1-4.');
         readln;
         goto ulang;
      end;
   end;

end.