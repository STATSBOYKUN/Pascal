program fibo_using_rekursif;
uses crt;
var
  x,i: integer;
  iteratey : char ;
label mulai ;

function fib(n:integer):integer;
begin

  if(n=1) then
    fib:=1
  else
    if (n=2) then
     fib:=1
    else
      begin
        fib:= fib(n-1)+fib(n-2);
      end;
end;

begin
  mulai:
  clrscr ;

  writeln('deretfibonacci');
  write('input value : '); readln(x);

  writeln;
  for i:= 1 to x do
    write(fib(i),' ');
  readln;

  writeln('do you want to iterate the program ? ') ;
  readln(iteratey) ;
  if iteratey = 'y' then 
    goto mulai ;
  readln;

end.
