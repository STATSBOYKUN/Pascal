program denda_buku;

uses crt;
label awal;

var 
   langka, tidak_langka : integer;
   jumlah_buku, jumlah_eksemplar: integer;
   lama_peminjaman1, lama_peminjaman2 : integer;
   i, cek : byte;
   total_denda : longint;

begin
   awal : 
   clrscr;

   total_denda := 0;
   langka := 0;
   tidak_langka := 0;

   writeln('[PROGRAM DENDA PERPUSTAKAAN]');
   writeln('============================');
   write('Jumlah buku yang dipinjam : ');
   read(jumlah_buku);

   writeln;
   if (jumlah_buku > 0) and (jumlah_buku <= 3) then
      begin
         writeln('[--------CEK BUKU----------]');
         for i := 1 to jumlah_buku do
         begin
            writeln('Buku ke - ', i);
            write('Jumlah eksemplar di Perpustakaan : ');
            read(jumlah_eksemplar);
            
            if jumlah_eksemplar <= 3 then
               begin
                  langka := langka + 1;
               end
            else if jumlah_eksemplar > 3 then
               begin
                  tidak_langka := tidak_langka + 1;
               end
            else
               writeln('Eror');
         end;

         if langka > 0 then
         begin
            writeln;
            writeln('[BUKU LANGKA]');
            writeln('Total buku langka dipinjam : ', langka);

            write('Lama peminjaman (dalam hari) : ');
            readln(lama_peminjaman1);
            if (lama_peminjaman1 <= 3) then
               total_denda := total_denda + 0
            else if (lama_peminjaman1 <= 7) then
               total_denda := total_denda + langka * ((lama_peminjaman1 - 3) * 1000)
            else if (lama_peminjaman1 <= 10) then
               total_denda := total_denda + langka * (4000 + (lama_peminjaman1 - 7) * 2500)
            else if (lama_peminjaman1 > 10) then
               total_denda := total_denda + langka * (11500 + (lama_peminjaman1 - 10) * 5000)              
         end;

         if tidak_langka > 0 then
         begin
            writeln;
            writeln('[BUKU NON-LANGKA]');
            writeln('Total buku non-langka dipinjam : ', tidak_langka);

            write('Lama peminjaman (dalam hari) : ');
            readln(lama_peminjaman2);
            if (lama_peminjaman2 <= 7) then
               total_denda := total_denda + 0
            else if (lama_peminjaman2 > 7) then
               total_denda := total_denda + tidak_langka * ((lama_peminjaman2 - 7) * 500)
         end;

      writeln;
      writeln('Total denda : Rp. ', total_denda);
      writeln('============================');
      
      writeln('Cek peminjam lain ? (YA=1, TIDAK=0)');
      write('Opsi : ');readln(cek);
      if cek = 1 then
         goto awal;
      
      end
   else if jumlah_buku > 3 then
      begin
         write('Hanya boleh pinjam 3 buku.');
         delay(2000);
         goto awal;
      end
   else
      begin
      writeln('Silakan input dengan benar.');
      delay(2000);
      goto awal;
      end;
end.