//program L_04
program masuk;

uses crt;

var 
   A, B : integer;
   C    : real;
   D    : string[10];
   E    : char;

begin
   clrscr;

   {pernyataan memasukkan data}
   write('Data A = '); readln(A);
   write('Data B = '); readln(B);
   write('Data C = '); readln(C);
   write('Data D = '); readln(D);
   write('Data E = '); readln(E);

   {pernyataan menampilkan data}
   writeln('Data A = ', A);
   writeln('Data B = ', B);
   writeln('Data C = ', C);
   writeln('Data D = ', D);
   writeln('Data E = ', E);

   readkey;
end.