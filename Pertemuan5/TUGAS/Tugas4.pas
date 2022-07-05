program menghitung_luas;

uses crt;
var
   pilihan, opsi, i : integer;
   r, l, t, luas : real;

function hitung_luas(kolom,  baris, ulang_ke : integer) : integer;
begin
   gotoXY(kolom, baris+1); writeln('[    PROGRAM MENGHITUNG LUAS    ]'); 
   gotoXY(kolom, baris+2); writeln(' 1. Menghitung Luas Lingkaran');
   gotoXY(kolom, baris+3); writeln(' 2. Menghitung Luas Segitiga');
   gotoXY(kolom, baris+4); writeln(' 3. Menghitung Luas Bujur Sangkar');
   gotoXY(kolom, baris+5); writeln('=================================');
   gotoXY(kolom, baris+6); write('Pilih menu(1-3) = '); readln(pilihan);
   
   case pilihan of 
   1 : 
      begin
         gotoXY(kolom, baris+7); write('Jari lingkaran = ' ); readln(r);

         luas := 3.14 * r * r;
         gotoXY(kolom, baris+8); writeln('Luas lingkaran = ', luas:9:2); 
      end; 
   2 : 
      begin
         gotoXY(kolom, baris+7); write('Panjang sisi alas = '); readln(l);
         gotoXY(kolom, baris+8); write('Tinggi segitiga = '); readln(t);

         luas := 0.5 * l * t;  
         gotoXY(kolom, baris+9); writeln('Luas segitiga = ', luas:9:2);
      end; 
   3 : 
      begin
         gotoXY(kolom, baris+7);write('Panjang bujur sangkar = '); readln(t); 
         gotoXY(kolom, baris+8);write('Lebar bujur sangkar = '); readln(l);

         luas := t * l ;
         gotoXY(kolom, baris+9);writeln('Luas bujur sangkar = ', luas:9:2); 
      end;
   else
      begin
         gotoXY(kolom, baris+7); writeln('pilihannya hanya 1, 2, dan 3 !!!');
         gotoXY(kolom, baris+8); writeln('Silakan ulangi lagi.');
         gotoXY(kolom, baris+9); readln;

         if (ulang_ke mod 2) = 0 then
            begin
               clrscr;
               hitung_luas := hitung_luas(1,1, ulang_ke);
            end
         else if (ulang_ke mod 2) = 1 then
            begin
               for i := 0 to 9 do
               begin
                    gotoXY(50, 13);
                    DelLine;
                 end;
               
               hitung_luas := hitung_luas(50, 13, ulang_ke);
            end;

      end;
   end;
   
   gotoXY(kolom, baris+10); writeln('Hitung luas yang lain? (YA=1, TIDAK=0)');
   gotoXY(kolom, baris+11); write('Opsi : '); readln(opsi);   
   
   if opsi = 1 then
      begin
         ulang_ke := ulang_ke + 1;
         if (ulang_ke mod 2) = 0 then
            begin
               clrscr;
               hitung_luas := hitung_luas(1, 1, ulang_ke);
            end
         else if (ulang_ke mod 2) = 1 then
            begin
               hitung_luas := hitung_luas(50, 13, ulang_ke);
            end;
      end
   else
      begin
         gotoXY(kolom, baris+13); write('Terima kasih telah menggunakan program ini.');
         hitung_luas := 0;
         exit;
         writeln('EXIT PROGRAM');
      end;
end;

begin 
   clrscr;
   hitung_luas(1,1,0);

   readkey;
end. 