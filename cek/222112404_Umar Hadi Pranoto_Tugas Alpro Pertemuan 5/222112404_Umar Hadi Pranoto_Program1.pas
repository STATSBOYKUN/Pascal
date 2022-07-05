program tampilan_menu;

uses crt;
label awal;

var 
   menu: byte;

begin
   awal : 
   clrscr;

   writeln('[PROGRAM TAMPILAN MENU]');
   writeln('=======================');
   writeln(' 1. Baca Data');
   writeln(' 2. Cetak Data');
   writeln(' 3. Ubah Data');
   writeln(' 4. Hapus Data');
   writeln(' 5. Keluar program');
   writeln('=======================');
   write('Pilih menu(1-5) : '); readln(menu);

   case menu of
   1 : 
      begin
         writeln('Anda memilih menu nomor ', menu, '.');
         readln;
         goto awal;
      end;
   2 : 
      begin
         writeln('Anda memilih menu nomor ', menu, '.');
         readln;
         goto awal;
      end;
   3 : 
      begin
         writeln('Anda memilih menu nomor ', menu, '.');
         readln;
         goto awal;
      end;
   4 : 
      begin
         writeln('Anda memilih menu nomor ', menu, '.');
         readln;
         goto awal;
      end;
   5 : 
      begin
         writeln('Anda memilih menu nomor ', menu, '.');
         readln;
      end;
   else
      writeln('Menu yang anda pilih salah.');
      readln;
      goto awal;
   end;
   
   writeln('Terima kasih telah menggunakan program ini.');
   readkey;
end.