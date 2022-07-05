{Program Konversi Nilai CASE-ELSE}
Program Contoh52;

var 
   Nilai : integer;
   grade : char;
   
begin
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('Nilai Anda = ');
   readln(Nilai);

   case Nilai of
      0..59: grade:='D';
      60..69: grade:='C';
      70..79: grade:='B';
      80..100: grade:='A';
   else grade:='F';
   end;

   if Grade='F' then
      writeln('Anda salah input nilai')
   else  
      writeln('Grade Anda : ', Grade );

   Case Grade of
      'D': writeln(' Kurang memuaskan');
      'C': writeln(' Cukup');
      'B': writeln(' Baik');
      'A': writeln(' Sangat Baik');
   end;
   readln;
end.