program menghitung_luas;

uses crt;
label pertama, kedua;

var
   pilihan, pilihan2, opsi : integer;
   r, l, t, luas : real;

begin 
   clrscr;

   pertama : 

   gotoXY(1, 1); writeln('[    PROGRAM MENGHITUNG LUAS    ]'); 
   gotoXY(1, 2); writeln(' 1. Menghitung Luas Lingkaran');
   gotoXY(1, 3); writeln(' 2. Menghitung Luas Segitiga');
   gotoXY(1, 4); writeln(' 3. Menghitung Luas Bujur Sangkar');
   gotoXY(1, 5); writeln('=================================');
   gotoXY(1, 6); write('Pilih menu(1-3) = '); readln(pilihan);

   case pilihan of 
   1 : 
      begin
         gotoXY(1, 7); write('Jari lingkaran = ' ); readln(r);

         luas := 3.14 * r * r;
         gotoXY(1, 8); writeln('Luas lingkaran = ', luas:9:2); 
      end; 
   2 : 
      begin
         gotoXY(1, 7); write('Panjang sisi alas = '); readln(l);
         gotoXY(1, 8); write('Tinggi segitiga = '); readln(t);

         luas := 0.5 * l * t;  
         gotoXY(1, 9); writeln('Luas segitiga =', luas:9:2);
      end; 
   3 : 
      begin
         gotoXY(1, 7);write('Panjang bujur sangkar ='); readln(t); 
         gotoXY(1, 8);write('Lebar bujur sangkar ='); readln(l);

         luas := t * l ;
         gotoXY(1, 9);writeln('Luas bujur sangkar =', luas:9:2); 
      end;
   else
      begin
         gotoXY(1, 7); writeln('pilihannya hanya 1, 2, dan 3 !!!');
         gotoXY(1, 8); writeln('Silakan ulangi lagi.');
         gotoXY(1, 9); readln;
         clrscr;
         goto pertama;
      end;
   end;
   
   gotoXY(1, 10); writeln('Hitung luas yang lain? (YA=1, TIDAK=0)');
   gotoXY(1, 11); write('Opsi : '); readln(opsi);   
   if opsi = 1 then
      goto kedua
   else if opsi <> 1 then
      begin
         gotoXY(1, 12); writeln('Terima kasih telah menggunakan program ini.');
      end;

   kedua : 

   gotoXY(45, 14); writeln('[    PROGRAM MENGHITUNG LUAS    ]'); 
   gotoXY(45, 15); writeln(' 1. Menghitung Luas Lingkaran');
   gotoXY(45, 16); writeln(' 2. Menghitung Luas Segitiga');
   gotoXY(45, 17); writeln(' 3. Menghitung Luas Bujur Sangkar');
   gotoXY(45, 18); writeln('=================================');
   gotoXY(45, 19); write('Pilih menu(1-3) = '); readln(pilihan2);

   case pilihan2 of 
   1 : 
      begin
         gotoXY(45, 20); write('Jari lingkaran = ' ); readln(r);

         luas := 3.14 * r * r;
         gotoXY(45, 21); writeln('Luas lingkaran = ', luas:9:2); 
      end; 
   2 : 
      begin
         gotoXY(45, 20); write('Panjang sisi alas = '); readln(l);
         gotoXY(45, 21); write('Tinggi segitiga = '); readln(t);

         luas := 0.5 * l * t;  
         gotoXY(45, 22); writeln('Luas segitiga =', luas:9:2);
      end; 
   3 : 
      begin
         gotoXY(45, 20);write('Panjang bujur sangkar ='); readln(t); 
         gotoXY(45, 21);write('Lebar bujur sangkar ='); readln(l);

         luas := t * l ;
         gotoXY(45, 22);writeln('Luas bujur sangkar =', luas:9:2); 
      end;
   else
      begin
         gotoXY(45, 20); writeln('pilihannya hanya 1, 2, dan 3 !!!');
         gotoXY(45, 21); writeln('Silakan ulangi lagi.');
         gotoXY(45, 22); readln;
         clrscr;
         goto pertama;
      end;
   end;
   
   gotoXY(45, 23); writeln('Hitung luas yang lain? (YA=1, TIDAK=0)');
   gotoXY(45, 24); write('Opsi : '); readln(opsi);   
   if opsi = 1 then
      begin
         clrscr;
         goto pertama;
      end
   else if opsi <> 1 then
      begin
         gotoXY(45, 25); writeln('Terima kasih telah menggunakan program ini.');
      end;
   
   readkey;
end. 