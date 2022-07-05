Program latihanpert10;
uses crt;
Var
        x: array of integer;
        n,i,max,min,tot,pos,ganjil,genap,j,a:integer;
        rt,sdt,sd,md:real;
Begin
        clrscr;
        Writeln('Program Array');
        Writeln('=============');
        Writeln;
        Write('Masukkan Jumlah Data : ');readln(n);

        setlength (x,n+1);{[0..n]}

        Writeln;
        For i:= 1 to n do
        begin
                 write ('Masukkan data ke-',i,' : '); Readln(x[i]);
        end;
        Write ('Nilai data sebelum diurutkan    ');
               For i:= 1 to n do write(x[i],' ');

        Write('Data Yang Telah Dimasukkan: ');
        max:=x[1];
        min:=x[1];
        tot:=0;
        sdt:=0;

        {ngurutin data}
        for i:=1 to n-1 do
        begin
                for j:=i+1 to n do
                begin
                        if x[i]>x[j] then
                        begin
                                a:=x[i];
                                x[i]:=x[j];
                                x[j]:=a;
                        end;
                end;
        end;

        {mencari nilai rata,min, dan maks}
        For i:= 1 to n do
        Begin
                 Write(x[i],' ');
                 if (max<x[i]) then
                 begin
                        max:=x[i];
                        writeln ('i=',i,' max= ', max);
                 end
                 else
                 begin
                      min:=x[i];
                      writeln ('i=',i,' min= ', min);
                 end;
               {  if (min>x[i]) then min:=x[i];  }
                 tot:=tot+x[i];
        End;
        rt:=tot/n;
        {standar deviasi}
        For i:= 1 to n do
        Begin
                sdt:=sdt+sqr(x[i]-rt);
        End;
        sd:=sqrt(sdt/(n-1));
        {median}
        if (n mod 2 = 1) then
        begin
                pos:=(n div 2)+1;
                md:=x[pos];
        end
        else
        begin
                pos:=(n div 2);
                md:=(x[pos]+x[pos+1])/2;
        end;
        Writeln;
        Writeln('Nilai Maximal : ',max);
        Writeln('Nilai Minimal : ',min);
        Writeln('Nilai Rata-Rata : ',rt:4:2);
        Writeln('Standar Deviasi : ',sd:4:2);
        Writeln('Median : ',md:4:2);

        {ganjil genap}
        ganjil:=0; genap:=0;
        for i:=1 to n do
        begin
               if (x[i] mod 2=0) then genap:=genap+1
               else ganjil:=ganjil+1;
        end;
        writeln ('Jumlah bilangan genap yaitu   :',genap);
        write ('Bilangan yang termasuk genap yaitu      :' );
        for i:=1 to n do
            if (x[i] mod 2=0) then write (x[i],' ');
        writeln;
        writeln ('Jumlah bilangan ganjil yaitu     :',ganjil);
        write ('Bilangan yang termasuk ganjil yaitu     :');
        for i:=1 to n do
                if (x[i] mod 2 <> 0) then write (x[i],' ');
        readln;
End.

