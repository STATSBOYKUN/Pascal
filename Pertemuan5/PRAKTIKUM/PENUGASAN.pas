{Program Konversi Nilai CASE}
Program Contoh51;

var nilai : integer;
   grade : string; //char ke string

begin
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('Nilai Anda = ');
   readln(nilai);

   case nilai of
      0..59: grade:='Kurang memuaskan';
      60..69: grade:='Cukup';
      70..79: grade:='Baik';
      80..100: grade:='Sangat Baik';
   end;
   writeln('Grade Anda', grade );

   Case grade of
      'Kurang memuaskan': writeln('Anda dapat nilai "D"');
      'Cukup': writeln('Anda dapat nilai "C"');
      'Baik': writeln('Anda dapat nilai "B"');
      'Sangat Baik': writeln('Anda dapat nilai "A"');
   end;
   readln;
end.

{
   1) Periksalah ekspresi yang ada pada Struktur CASE, apakah boleh bertipe selain ordinal
   dengan beberapa compiler Pascal yang berbeda?
   Jawab : Ya, bisa. 
}

