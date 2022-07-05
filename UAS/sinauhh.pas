var
   ututu : (a,b,c,d);
   huruf : (angka,e,f,g);

   u : record
      j : record
         t : byte
      end;
   end;

   t,x, y,z : byte;
procedure data(var param : byte);
var x : byte;
begin
   param := param +5;
   t := 5;
   writeln(x);
end;

begin
   for huruf := angka to g do
      writeln(ord(angka));
   
   u.j.t := 5;
   data(u.j.t); writeln(t);

   writeln(u.j.t);
   readln(x,y,z);
   writeln(x, y,z);


end.