program Contoh94;
var x,y:integer;

procedure subpro(a:integer);
begin
   x:=a+4;
   writeln(' x= ',x);
end;

var x,y:integer;
begin
   write(' Input nilai y= ');
   readln(y);
 
   subpro(y);
end. 