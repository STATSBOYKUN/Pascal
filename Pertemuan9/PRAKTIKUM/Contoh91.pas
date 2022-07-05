program Contoh91;
var a,x,y:integer;
 
procedure subpro(a:integer);
var b:integer;
begin
   b:=a;
      writeln(b);
   end;

begin
   write(' Input nilai a= ');
   readln(a);
   subpro(a);
end.