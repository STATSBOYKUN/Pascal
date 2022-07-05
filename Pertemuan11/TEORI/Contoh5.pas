program segitigapascal;
uses crt;
var
    A       : array[1..25,1..25] of integer; //range untuk a
    n,i,J   : integer; // n untuk jumlah baris // i untuk kolom // j untuk baris
    yt      : char;
begin
repeat
clrscr;
    writeln('PROGRAM SEGITIGA PASCAL');
    writeln;
    write('Banyaknya baris yang diinginkan n<=15 : '); readln(n);
    writeln('nilai n :',n);
    a[1,1]:=1; // puncak angka 1
    for i:=2 to n do
        begin
            for j:=1 to i do // selanjutnya j ke 2 to (i=2)
                begin
                a[i,j]:=a[i-1,j-1]+a[i-1,j];
                // n = 5
                // i : 2 [2,1] = 1
                // j : 2 [2,2] : [1,1] + [1,2] == [2,2] = 1 + 0 = 1

                // i : 3 [3,1] = 1
                // j : 2 [3,2] : [2,1] + [2,2] == [3,2] = 1 + 1 = 2
                // j : 3 [3,3] : [2,2] + [2,3] == [3,3] = 1 + 0 = 1

                // i : 4 [4,1] = 1
                // j : 2 [4,2] : [3,1] + [3,2] == [4,2] = 1 + 2 = 3
                // j : 3 [4,3] : [3,2] + [3,3] == [4,3] = 2 + 1 = 3
                // j : 4 [4,4] : [3,3] : [3,4] == [4,4] = 1 + 0 = 1

                // i : 5 [5,1] = 1
                // j : 2 [5,2] : [4,1] + [4,2] == [5,2] = 1 + 3 = 4
                // j : 3 [5,3] : [4,2] + [4,3] == [5,3] = 3 + 3 = 6
                // j : 4 [5,4] : [4,3] + [4,4] == [5,4] = 3 + 1 = 4
                // j : 5 [5,5] : [4,4] + [4,5] == [5,5] = 1 + 0 = 1
            writeln('i=',i,'j=',j,' a[',i,',',j,']=a[',i-1,',',j-1,'] + a[',i-1,',',j,'] =',
            a[i-1,j-1],' + ',a[i-1,j],' = ',a[i,j]);

            end;
            writeln;
        end;
        writeln;
        writeln;
        for i:=2 to n do
            begin
                a[i,1]:=1;
                write(a[i,1]:5); // misal i=2 maka a nya [2,1] dengan spasi 5
                for j:=2 to i do // selanjutnya j ke 2 to (i=2)
                    begin
                        write(a[i,j]:5);
                    end;
                writeln;
            end;
    write('ulang kembali? [y/t]');readln(yt);
    until upcase(yt)<>'Y' // pengulangan
end.