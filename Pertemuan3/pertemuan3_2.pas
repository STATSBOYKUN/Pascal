//program 1
// program Contoh_awal;

// begin
//    writeln('Saya Pascal');
//    writeln('Saya baru kenal');
// end.

//program 2
// program Tampil;

// var
//    nama:string[10];

// begin
//    nama := 'Nina';
//    write('Nama : ', nama);
// end.

//program 3
// program tipe_byte;

// var
//    jumlah:byte;

// begin
//    jumlah := 200;
//    writeln('Nilai jumlah : ', jumlah);
// end.

//program 4
// program SistemBilBulat;

// uses crt;

// var
//    a,b,c:byte;
//    d,e,f:byte; //short integer tidak bisa menampung variabel f

// begin
//    clrscr;
//    a:=200;
//    b:=55;
//    c:=a+b;

//    writeln('Tipe data Byte');
//    writeln(' ',a,' + ',b,' = ',c);
//    writeln;

//    d:=125;
//    e:=5;
//    f:=d+e;

//    writeln(' ',d,' + ',e,' = ',f);
//    readkey;
// end.

//program 5
// program Luas_Segi_Tiga;

// var
//    luas :real;
//    alas,tinggi :byte;

// begin
//    alas := 5;
//    tinggi := 10;

//    luas := 0.5 * alas * tinggi;
//    writeln('Alas = ', alas);
//    writeln('Tinggi = ', tinggi);
//    writeln('Luas = ', luas:5:2);
// end.

//program 6
// program tipe_real;
// uses crt;

// var
//         a:real;
//         b:single;
//         c:double;
//         d:extended;
//         e:comp;

// begin
//         clrscr;
//         a:=123456.31;
//         b:=123456.31;
//         c:=123456.31;
//         d:=123456.31;
//         e:=123456.31;

//         writeln('a : ', a);
//         writeln('b : ', b);
//         writeln('c : ', c);
//         writeln('d : ', d);
//         writeln('e : ', e);

//         readkey;
// end.

//program 7
// program operator_not;

// uses crt;

// var
//    a : boolean;

// begin
//    clrscr;

//    a:= false;
//    a:= not a;

//    writeln(a);

//    readln;
// end.

//program 8
// program operator_and;

// uses crt;

// begin
//    clrscr;

//    writeln('TRUE and TRUE = ', true and true);
//    writeln('TRUE and FALSE = ', true and false);
//    writeln('FALSE and TRUE = ', false and true);
//    writeln('FALSE and FALSE = ', false and false);
// end.

//program 9
// program waktu;

// var
//    tanggal : string[10];
//    hari : string[6];
//    pasaran : string[6];

// begin
//    tanggal := '26-12-2005';
//    hari := 'Senin';
//    pasaran := 'Pahing';

//    writeln(tanggal, ', ', hari, ' ', pasaran);
// end.

//program 10
// program tipe_boolean;

// var
//    lagi : boolean;

// begin
//    lagi := true;

//    writeln('Nilai lagi = ', lagi);
// end.

// program 11
program tipe_pointer;

uses crt;

type
   tipeString = string[40];
   stringPtr = ^tipeString;

var 
   letaknama : ^string;

begin
   clrscr;

   letaknama^ : 'ab';
   writeln('Letak : ', letaknama^);
end.

//program 12
// program tipe_ordinal;

// begin
//    writeln(Ord('A'));
//    writeln(Pred('B'));
//    writeln(Succ('C'));
// end.

//program L_01
// program contoh_konstanta;

// const
//    potongan = 0.2;
//    gaji = 1000000;
//    nama_PT = 'PT Maju';

// begin
//    writeln('Gaji     = ', gaji);
//    writeln('Potongan = ', potongan);
//    writeln('Nama     = ', nama_PT);
// end.

//program L_02
// program Luas_Segi_Empat;

// const
//    p = 5;
//    l = 4;

// var
//    luas : integer;

// begin
//    luas := p*l;

//    writeln('Panjang = ', p);
//    writeln('Lebar   = ', l);
//    writeln('Luas    = ', luas);
// end.

//program L_03
// program tanda_operator;

// begin
//    writeln(15*5);
//    writeln(23/3);
//    writeln(20 div 3);
//    writeln(20 mod 3);
// end.

//program L_04
// program masuk;

// var 
//    A, B : integer;
//    C    : real;
//    D    : string[10];
//    E    : char;

// begin
//    {pernyataan memasukkan data}
//    write('Data A = '); readln(A);
//    write('Data B = '); readln(B);
//    write('Data C = '); readln(C);
//    write('Data D = '); readln(D);
//    write('Data E = '); readln(E);

//    {pernyataan menampilkan data}
//    writeln('Data A = ', A);
//    writeln('Data B = ', B);
//    writeln('Data C = ', C);
//    writeln('Data D = ', D);
//    writeln('Data E = ', E);
// end.

// program L_05
// program Tampil;

// var
//    nama, nama2 : string[10];

// begin
//    nama := 'Nina';
//    write('Nama : ');
//    writeln(nama);

//    writeln;
//    writeln('Nama : ');
//    writeln(nama);

//    readln('Input sekarang A = ', nama2);
//    writeln('Isi A : ', nama2);
// end.

//program OR
// program operator_or;

// uses crt;

// begin
//    clrscr;

//    writeln('TRUE or TRUE = ', true or true);
//    writeln('TRUE or FALSE = ', true or false);
//    writeln('FALSE or TRUE = ', false or true);
//    writeln('FALSE or FALSE = ', false or false);

//    readln();
// end.

//program XOR
// program operator_xor;

// uses crt;

// begin
//    clrscr;

//    writeln('TRUE xor TRUE = ', true xor true);//return false
//    writeln('TRUE xor FALSE = ', true xor false);//return true
//    writeln('FALSE xor TRUE = ', false xor true);//return true
//    writeln('FALSE xor FALSE = ', false xor false);//return false

//    readln();
// end.