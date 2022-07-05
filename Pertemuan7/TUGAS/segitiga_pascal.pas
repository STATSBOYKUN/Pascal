program pascal;
uses crt;

var i,j,k:integer;
{          1
        1     1
     1     2     1  }
function factorial (x:integer):integer;
a:integer;
begin
 if (x = 0) or (x = 1) then
      a := 1
   else if x > 1 then
      begin
         a := 1;
         for i := 1 to N do
            a := a * i;
      end;
      factorial:=a;
 end;

begin
        write('Masukkan baris: ');
        readln(baris);

        for i:=1 to baris do
        begin
                {cetak segitiga terbalik kosong}
                for j:=1 to  baris-i
                        write('':2);
                {cetak angka segitiga pascal}
                for k:=1 to i
                begin
                        write(fact
                end;

        end;
end.
