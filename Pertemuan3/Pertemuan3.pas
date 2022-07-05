program operator_xor;

uses crt;

begin
        clrscr;

        writeln('TRUE xor TRUE = ', true xor true);//return false
        writeln('TRUE xor FALSE = ', true xor false);//return true
        writeln('FALSE xor TRUE = ', false xor true);//return true
        writeln('FALSE xor FALSE = ', false xor false);//return false

        readln();

        (* Kesimpulan :
                XOR akan bernilai true jika salah satu pilihan bernilai true;
                XOR akan bernilai false jika kedua pilihan bernilai sama-sama true atau false;
        *)
end.
