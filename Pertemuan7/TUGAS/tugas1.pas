program nestedFor;

uses crt;

var i, j, N : integer;

begin
   write('Masukkan N : '); readln(N);

   for i:= 1 to N do
      begin
         if (i mod 2) = 1 then
            begin
               for j := 0 to 9 do
                  write(j, ' ');
            end
         else 
            begin
               for j := 9 downto 0 do
                  write(j, ' ');
            end;
      writeln; writeln;    
      end;
end.
