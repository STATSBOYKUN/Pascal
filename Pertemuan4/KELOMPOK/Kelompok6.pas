program ScoresAndGrades2(INPUT, OUTPUT);

uses crt;

var
   nilai : integer;
   A,B,C,D,E : boolean;

begin
   clrscr;

   write('Masukkan nilai : ');
   readln(nilai);

   A:= (nilai >= 90) and (nilai <= 100);
   B:= (nilai >= 80) and (nilai < 90);
   C:= (nilai >= 70) and (nilai < 80);
   D:= (nilai >= 60) and (nilai < 70);
   E:= (nilai < 60) and (nilai >= 0);

   writeln;

   if A then
      writeln('Excellent. Grade Anda adalah A')
   else if B then
      writeln('Very good. Grade Anda adalah B')
   else if C then
      writeln('Good. Grade Anda adalah C')
   else if D then
      writeln('Passed. Grade Anda adalah D')
   else if E then
      writeln('Better luck next time. Grade Anda adalah E')
   else
      writeln('Nilai ini di luar range');
      writeln('Tekan ENTER untuk melanjutkan...');
      readln
end.
