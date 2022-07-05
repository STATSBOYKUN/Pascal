{Program Konversi Nilai CASE}
Program Contoh51;

var nilai : integer;
   grade : char;

begin
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('nilai Anda = ');
   readln(nilai);

   case Nilai of
      0..59: grade:='D';
      60..69: grade:='C';
      70..79: grade:='B';
      80..100: grade:='A';
   end;
   writeln('Grade Anda : ', grade);

   case grade of
      'D': writeln('Kurang memuaskan');
      'C': writeln('Cukup');
      'B': writeln('Baik');
      'A': writeln('Sangat Baik');
   end;
   readln;
end.