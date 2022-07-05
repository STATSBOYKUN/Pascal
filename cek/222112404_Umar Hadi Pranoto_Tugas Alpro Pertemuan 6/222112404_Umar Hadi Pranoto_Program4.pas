program fotokopi;

uses crt;
label ulang;

var 
   kondisi, kondisi2 : byte;
   j, N : integer;

begin
   repeat
      ulang:
      clrscr;

      writeln('[     PROGRAM FOTOKOPI     ]');
      writeln('============================');
      write('Ingin fotokopi berapa lembar : '); readln(N);

      if N <= 0 then
         begin
            writeln('Minimal lembar adalah 1.');
            readln;
            goto ulang;
         end;
      
      writeln('          TABEL HARGA FOTOKOPI         ');
      writeln('|---------|-------------|-------------|');
      writeln('|  LEMBAR |  KERTAS A4  |  KERTAS A3  |');
      writeln('|---------|-------------|-------------|');

      for j := 1 to N do
         begin
            writeln('| ', j:4, '    |   ', (j*125):6, '    |   ', (j*245):6, '    |' );
         
         if ((j mod 10) = 0) and (j < N) then
            begin
               writeln('lanjut 10 lembar berikutnya? (YA=1, TIDAK=0)');
               write('Opsi : '); readln(kondisi2);
               if kondisi2 = 0 then
                  break;
            end;
         
         end;

      writeln('|---------|-------------|-------------|');

      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);

   writeln;
   writeln('Terima kasih telah menggunakan program ini.');
   readln;
end.