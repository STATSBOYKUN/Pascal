program deret_pecahan_genap_ganjil;
uses crt;
var
        n,i,j:integer;
        deret,jumlah:real;
begin
        clrscr;
        write ('Masukkan bilangan ganjil maksimum :'); readln (N);
        jumlah:=0;
        if (N mod 2 <>0) Then
        begin
        i:=1; j:=1;
        while (i<=N) do
                begin
                  deret:=1/i;
                  if (j mod 2 <> 0) then
                        begin
                        deret:=deret;
                        if (i=1) then
                           write ('1')
                        else
                           write ('+ 1/', i);
                        end
                  else
                        begin
                        deret:=-deret;
                        write ('- 1/',i);
                        end;
                  jumlah:=jumlah+deret;
                  i:=i+2;
                  j:=j+1;
                  end;
        end
        else
        begin
        i:=4; j:=2;
        write (1);
        jumlah:=jumlah+1;
        while (i<=N) do
                begin
                  deret:=1/i;
                  if (j mod 2 = 0) then
                        begin
                        deret:=deret;
                           write ('+ 1/', i);
                        end
                  else
                        begin
                        deret:=-deret;
                        write ('- 1/',i);
                        end;
                  jumlah:=jumlah+deret;
                  i:=i+2;
                  j:=j+1;
                  end;
        end;
        write ('=');
        writeln (jumlah:9:2);
        readln;
end.