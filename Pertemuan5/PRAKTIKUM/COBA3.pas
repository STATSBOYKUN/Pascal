{Program Menentukan Hasil Ujian}
Program Contoh53;

uses crt;

label awal, ulang;

var
   nilai : integer;
   cek : char;

begin
   awal : 
   clrscr;

   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('Nilai Anda = ');
   readln(nilai);

   case nilai of
      0..59 : writeln(' Anda tidak lulus.');
      60..100 :
         begin
            write('Anda lulus. ');

            case nilai of
               60..74: writeln('dengan nilai cukup');
               75..89: writeln('dengan nilai baik');
            else 
               writeln('dengan nilai sangat baik');
            end;
         end;
      else writeln(' Anda salah input nilai');
   end;
   
   ulang : 
   write('Ulang program ? (y/n)');readln(cek);
   if cek = 'y' then
      goto awal
   else if cek = 'n' then
   else
      begin
         writeln('Input salah.');
         goto ulang;
      end;

   readln;
end.