program menentukanMusim;
uses crt;

var
   bulan : (Januari, Februari, Maret, April, 
            Mei, Juni, Juli, Agustus, 
            September, Oktober, November, Desember);

   kondisi : byte;
   musim : string;

begin
   repeat
      clrscr;

      write('Masukkan bulan saat ini : ');readln(bulan);

      case bulan of
         Desember, Januari, Februari : musim := 'Dingin';
         Maret..Mei : musim := 'Semi';
         Juni..Agustus : musim := 'Panas';
         September..November : musim := 'Gugur';
      end;

      writeln('Anda berada di musim ', musim);

      writeln;
      writeln('Cek bulan lain ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   readln;
end.