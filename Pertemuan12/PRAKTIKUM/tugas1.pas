program katabaku;
uses crt;

label ulang;

var 
   bilangan : array of integer;
   i, n, bilangan2 : integer;
   opsi : byte;
   hasil : real;

procedure input();
label ulang2;
begin
   ulang2:
   clrscr;
   write('Berapa bilangan yang akan dihitung : '); readln(n);

   if n <= 1 then
   begin
      writeln('Banyak bilangan harus lebih dari 2.');
      readln();
      goto ulang2;
   end;

   setlength(bilangan, n+1);
   for i := 1 to n do
   begin
      write('Bilangan [', i, '] : '); readln(bilangan[i]);
   end;
end;

procedure perkalian();
begin
   input();
   hasil := bilangan[1];

   for i := 2 to n do
   begin
      hasil := hasil * bilangan[i];
   end;

   write('Hasil perkalian seluruh bilangan : ', hasil:7:2);
end;

procedure pembagian();
begin
   input();
   hasil := bilangan[1];

   for i := 2 to n do
   begin
      hasil := hasil / bilangan[i];
   end;

   write('Hasil pembagian seluruh bilangan : ', hasil:7:2);
end;

procedure penjumlahan();
begin
   input();
   hasil := bilangan[1];

   for i := 2 to n do
   begin
      hasil := hasil + bilangan[i];
   end;

   write('Hasil penjumlahan seluruh bilangan : ', hasil:7:2);
end;

procedure pengurangan();
begin
   input();
   hasil := bilangan[1];

   for i := 2 to n do
   begin
      hasil := hasil - bilangan[i];
   end;

   write('Hasil pengurangan seluruh bilangan : ', hasil:7:2);
end;

function faktorial(angka : integer):integer;
begin
   if (angka = 1) or (angka = 0) then
      faktorial := 1
   else
      begin
        faktorial := angka*faktorial(angka - 1);
      end;
end;

begin
   ulang : 
   clrscr;

   writeln('[PROGRAM KABATAKU]');
   writeln('==================');
   writeln('1) Perkalian');
   writeln('2) Pembagian');
   writeln('3) Penjumlahan');
   writeln('4) Pengurangan');
   writeln('5) Faktorial');
   writeln('6) Keluar Program');
   writeln('==================');
   write('Opsi (1-6) : '); readln(opsi);

   case opsi of
   1 : 
      begin
         perkalian;
         readln;
         goto ulang;
      end;
   2 : 
      begin
         pembagian;
         readln;
         goto ulang;
      end;
   3 : 
      begin
         penjumlahan;
         readln;
         goto ulang;
      end;
   4 : 
      begin
         pengurangan;
         readln;
         goto ulang;
      end;
   5 : 
      begin
         clrscr;
         write('Faktorial dari : '); readln(bilangan2);
         writeln('Hasil : ', faktorial(bilangan2));

         readln;
         goto ulang;
      end;
   6 : 
      begin
         writeln('Terima kasih telah menggunakan program ini :)');
         readln;
         EXIT;
      end;
   else
      begin
         writeln('Masukkan angka 1-6.');
         readln;
         goto ulang;
      end;
   end;

end.