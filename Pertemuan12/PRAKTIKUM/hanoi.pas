program Hanoi_Tower;
var 
   nd: integer;

procedure Hanoi(n: integer; from, to_, by: char);
begin
   if (n=1) then
      writeln('Move the plate from ', from, ' to ', to_)
   else
   begin
      Hanoi(n-1, from, by, to_);
      Hanoi(1, from, to_, by);
      Hanoi(n-1, by, to_, from);
   end;
end;

begin
   write ( 'Enter number of disks: ' );
   readln ( nd );
   Hanoi (nd,'A','B','C')
end.