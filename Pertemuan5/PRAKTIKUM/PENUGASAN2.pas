{Program Konversi Nilai CASE}
Program Contoh51;

uses crt, sysutils;

var nilai : real;
   grade : char;

begin
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('Nilai Anda = ');
   readln(nilai);

   //Cara 1
   case round(nilai) of
      0..59: grade:='D';
      60..69: grade:='C';
      70..79: grade:='B';
      80..100: grade:='A';
   end;

   //Cara 2
   // case trunc(nilai) of
   //    0..59: grade:='D';
   //    60..69: grade:='C';
   //    70..79: grade:='B';
   //    80..100: grade:='A';
   // end;

   //Cara 3
   // case floatToStr(nilai) of
   //    '0'..'59': grade:='D';
   //    '60'..'69': grade:='C';
   //    '70'..'79': grade:='B';
   //    '80'..'100': grade:='A';
   // end;

   writeln('Grade Anda : ', grade );

   case grade of
      'D': writeln('Kurang memuaskan');
      'C': writeln('Cukup');
      'B': writeln('Baik');
      'A': writeln('Sangat Baik');
   end;
   readln;
end.

{
   2) Apabila Nilai bertipe real, bagaimana caranya agar dapat menggunakan Struktur
   CASE.
   Jawab : 
   Dengan cara : 
   1) round
   2) trunc
   3) floatToStr
}