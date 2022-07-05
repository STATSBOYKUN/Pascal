program contoh73;

var 
   i,j,k : integer;

begin
   for i := 1 to 5 do
   begin
      for j := 1 to 9 do
         write('#':2);
   
   writeln;
   end;

   // rata kiri 
   for i := 1 to 5 do
   begin
      for j := 1 to i do
         write('#':2);
   
   writeln;
   end;
   
   // rata kanan
   for i := 1 to 5 do
   begin
      for k := (5 - i)*2 downto 1 do
         write(' ');
      
      for j := 1 to i do
         write('#':2);
   
   writeln;
   end;

   // rata tengah
   for i := 1 to 5 do
   begin
      for k := 1 to 5-i do
         write(' ');
      
      for j := 1 to i do
      begin
         write('#':2);
      end;
   
   writeln;
   end;
end.