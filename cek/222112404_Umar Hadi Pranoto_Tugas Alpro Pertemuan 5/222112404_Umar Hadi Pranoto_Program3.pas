program nama_hari;

uses crt;
label awal;

var 
   hari, opsi : byte;

begin
   awal : 
   clrscr;

   writeln('[  PROGRAM NAMA HARI  ]');
   writeln('=======================');
   write('Masukkan hari (1-7) : ');
   readln(hari);

   case hari of
      1 : writeln('Hari ke-1 adalah hari Ahad.');
      2 : writeln('Hari ke-2 adalah hari Senin.');
      3 : writeln('Hari ke-3 adalah hari Selasa.');
      4 : writeln('Hari ke-4 adalah hari Rabu.');
      5 : writeln('Hari ke-5 adalah hari Kamis.');
      6 : writeln('Hari ke-6 adalah hari Jumat.');
      7 : writeln('Hari ke-7 adalah hari Sabtu.');
   else 
      writeln('Masukkan angka dengan benar.');
      readln;
      goto awal;
   end;

   writeln;
   writeln('Hitung bilangan lain? (YA=1, TIDAK=0)'); 
   write('Opsi : '); readln(opsi);

   if opsi = 1 then
      goto awal;

   writeln('Terima kasih telah menggunakan program ini.');
   readkey;
end.