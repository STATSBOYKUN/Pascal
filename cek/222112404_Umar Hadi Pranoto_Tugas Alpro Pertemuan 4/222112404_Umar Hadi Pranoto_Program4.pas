program pembulatan_angka;

uses crt;
label awal;

var 
   total_belanja, total_sementara : longint;
   cek : byte;

begin
   awal : 
   clrscr;

   writeln('[ PROGRAM PEMBULATAN HARGA ]');
   writeln('============================');
   write('Total belanja : Rp.');
   read(total_belanja);

   total_sementara := total_belanja mod 100;

   if (total_sementara) <> 0 then
      begin
         if (total_sementara) < 25 then
            total_belanja := total_belanja - total_sementara
         else if (total_sementara) < 50 then
            total_belanja := (total_belanja - total_sementara) + 25
         else if (total_sementara) < 75 then
            total_belanja := (total_belanja - total_sementara) + 50 
         else
            total_belanja := (total_belanja - total_sementara) + 75
      end;
   
   writeln('Total yang dibayar : Rp.', total_belanja);

   writeln;
   writeln('============================');
   writeln('Cek belanjaan lain ? (YA=1, TIDAK=0)');
   write('Opsi : ');readln(cek);
   if cek = 1 then
      goto awal;
   
end.