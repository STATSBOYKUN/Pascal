program cek_zakat;

uses crt;
label awal;

var 
   harta : longint;
   zakat : real;
   cek   : byte;

begin
   awal : 
   clrscr;

   writeln('[     PROGRAM CEK ZAKAT     ]');
   writeln('=============================');
   write('Total harta : Rp.');
   read(harta);

   if harta < 2500000 then
      writeln('Harta Anda belum mencapai batas minimal(nishab).')
   else if harta >= 2500000 then
      begin
         zakat := harta * (2.5/100);
         writeln('Zakat minimal yang harus dikeluarkan : Rp.', zakat:12:2);
      end
   else
      begin
         writeln('Input dengan benar');
         goto awal;
      end;

   writeln('=============================');
   writeln('Cek nominal lain ? (YA=1, TIDAK=0)');
   write('Opsi : ');readln(cek);
   if cek = 1 then
      goto awal;

end.