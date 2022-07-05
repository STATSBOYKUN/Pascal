program contoh81;
uses crt;

type
   hariPekan = (Ahad, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu);
   bulan = (Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember);
   hariBulan = 1..31;

var 
   i,awalbulan : hariPekan;
   j,tglmaks : hariBulan;
   x,y,k,lebar, tahun : integer;
   l : bulan;
   kondisi : byte;

begin
   clrscr;

   write('Cetak kalender tahun : '); readln(tahun);
   
   y := 4;
   for l := Januari to Desember do
   begin
      writeln('Bulan ', l, ' :');

      lebar := 7;
      for i := Ahad to sabtu do
         write(i:lebar);
      
      x := ord(awalbulan);
      if l = Februari then
         if (tahun mod 4) = 0 then
            tglmaks := 29
         else
            tglmaks := 28 
      else if (ord(l) mod 2) = 1 then
         tglmaks := 30 
      else
         tglmaks := 31;
      
      for j := 1 to tglmaks do
      begin
         if x = 7 then
         begin
            x := 0;
            y := y+1;
         end;

         gotoxy(lebar * x + 1, y); write(j:3);
         x := x+1;
      end;

      y := y + 6;
      writeln; writeln; 
      writeln('Lanjut bulan berikutnya ? (YA=1, TIDAK=0)');
      write('Opsi : '); readln(kondisi);
      if kondisi = 1 then
         begin
            continue;
            writeln;
         end
      else
         break;
      
   end;

   readln;
end.