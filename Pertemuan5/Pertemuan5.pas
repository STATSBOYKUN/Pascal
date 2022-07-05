Program PERSEGI_PANJANG;
{Algoritma untuk menampilkan menu perhitungan empat persegi panjang,
memilih menu, dan melakukan proses perhitungan}

uses crt;
label awal;

(*Deklarasi*)
var
   nomorMenu : integer ;
   panjang, lebar : real;
   luas, keliling, diagonal : real;

(*Deskripsi:*)
begin
   awal  : 
   clrscr;

   {cetak menu}
   writeln('Menu Persegi Panjang ');
   writeln('  1. Hitung Luas');
   writeln('  2. Hitung Keliling');
   writeln('  3. Hitung panjang diagonal');
   writeln('  4. Keluar Program');
   write('Masukkan pilihan anda (1/2/3/4)? '); readln(nomorMenu);

   writeln('===========================');
   
   case nomorMenu of
   1 :  
      begin
         write('Panjang  : '); readln(panjang);
         write('Lebar    : '); readln(lebar);
         
         luas := panjang*lebar;
         writeln('Luas     =  ',luas:10:2);
         
         readkey;
         goto awal;
      end;
   2 :  
      begin
         write('Panjang  : '); readln(panjang);
         write('Lebar    : '); readln(lebar);
         
         keliling := 2*panjang + 2*lebar;
         writeln('Keliling  =  ', keliling:10:2);

         readkey;
         goto awal;
      end;
   3 :  
      begin
         write('Panjang  : '); readln(panjang);
         write('Lebar    : '); readln(lebar);
         
         diagonal := sqrt(panjang*panjang + lebar*lebar);
         writeln('Diagonal =  ',diagonal:10:2);

         readkey;
         goto awal;
      end;
   4 :
      begin   
         writeln('Keluar program ...sampai jumpa');
         readkey;
      end;
   else 
      begin
         writeln('Pilihan salah');
         delay(1000);
         goto awal;
      end;
   end;
      
End. 