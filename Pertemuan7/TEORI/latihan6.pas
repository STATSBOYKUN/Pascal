program nestedFor;

uses crt;

var i, j, N : integer;

begin
   write('Masukkan N : '); readln(N);

   for i := 1 to N do
      begin
         for j := N downto i do
            begin
               write(i, ' ');
            end;
         writeln;
      end;
end.