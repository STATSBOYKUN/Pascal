program nestedFor;

uses crt;

var i : integer;

begin
   for i := 1 to 100 do
   begin
      if i mod 3 = 0 then
         write(i, ' ');
   end;
end.