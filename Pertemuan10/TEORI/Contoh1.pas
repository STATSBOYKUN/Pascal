uses wincrt;

var 
   x : array [1..100] of integer;
   n,i :integer;

begin
   writeln('contoh 1 program array');
   writeln('======================');
   writeln;

   write('silahkan input banyak data: '); readln(n);
   writeln;

   for i:= 1 to n do
      readln(x[i]);

   writeln;
   write('data yang telah dimasukkan: ');
   for i:= 1 to n do
      write(x[i],' ');
end.