program nestedFor;

uses crt;

var i, j, N : integer;

begin
   write('Nilai N : '); readln(N);

   for i:= 1 to N do
      begin
         for j := 1 to 2 do
            begin
               writeln(i, ' ', j, ' ', i, ' ', j);
            end;
      end;
end.
