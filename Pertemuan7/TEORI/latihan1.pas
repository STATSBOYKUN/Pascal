program eksponensial;

uses crt;

var a1, a2, n, i : longint;

begin
   write('Masukkan a : '); readln(a1);
   write('Masukkan n : '); readln(n);

   a2 := a1;
   write(a1, '^', n, ' = ');
   for i := 1 to (N-1) do
      begin
         write(a1, ' x ');
         if i = N-1 then
            write(a1);

         a2 := a2 * a1;
      end;
   
   writeln;
   writeln('Hasil : ', a2);
end.