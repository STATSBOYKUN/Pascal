program penugasan14;
uses crt;

type
    data_mahasiswa = record
        nim : string[10];
        nama : string [25];
        kelas: string[10];
        nilai: integer;
    end;

    data = array [1..40] of data_mahasiswa;

var
    i,j,k,n,y,pilihprogram,pilihmax,pilihmin,pilihurut:integer;
    lagiprogram,lagimenu:char;
    mhs:data;
    siapa:string;

procedure input(var list:data;var a:integer;n:integer);
begin
    write('Masukkan Jumlah Mahasiswa = ');readln(n);    //banyak jumlah mahasiswa
    
    for i:=a+1 to a+n do    //pengulangan untuk memasukkan list mahasiswa
        with list[i] do     //fungsi untuk mengakses data di record
        begin
            write('Mahasiswa ke-',i);   //menampilkan mahasiswa
            writeln;
            write('NIM          : ');readln(nim); //memasukkan nim mahasiswa
            write('Nama         : ');readln(nama);  //memasukkan nama mahasiswa
            write('Kelas        : ');readln(kelas); //memasukkan kelas mahasiswa
            write('Nilai Alpro  : ');readln(nilai); //memasukkan nilai mahasiswa
            writeln;
        end;
    
    a:=a+n;

    {
        inputData tidak akan menimpa data yang lama, tetapi
        menambahkan data dengan index lama(n data yang lama)
    }
end;

procedure tampil(list:data;n:integer);
var 
    i,y:integer;
begin
    clrscr; //membersihkan layar
    //membuat kepala tabel
    gotoxy(2,1);write('                Daftar Nilai Mahasiswa :              ');
    gotoxy(1,3);write('---------------------------------------------------------');
    gotoxy(2,4);write('No');
    gotoxy(8,4);write('NIM');
    gotoxy(22,4);write('Nama');
    gotoxy(40,4);write('Kelas');
    gotoxy(48,4);write('Nilai Alpro');
    gotoxy(1,5);write('---------------------------------------------------------');

    y:=6;

    //menampilkan isi list mahasiswa
    for i:=1 to n do
    begin
        with list[i] do
        begin
            gotoxy(2,y);write(i);
            gotoxy(8,y);write(nim);
            gotoxy(22,y);write(nama);
            gotoxy(40,y);write(kelas);
            gotoxy(48,y);write(nilai);
        end;

        y:=y+1;
    end;
end;

procedure carinilai(var list:data;n:integer;var siapa:string;var y:integer);
var 
    i:integer;
begin
    i:=1;

    while(i<=n) and (list[i].nama<>siapa) do //mengecek setiap data hingga data ditemukan atau hingga i = n
    begin
        if (list[i].nama<>siapa) then //mengecek apakah nama = siapa yang dicari
            y:=0
        else 
            y:=i;

        i:=i+1; //iterasi variabel i
    end;

    if y=i then
        begin
            writeln('Data ditemukan!');
            writeln;

            //menampilkan data mahasiswa
            with list[i] do
            begin
                writeln('Nama mahasiswa yang dicari : ',nama);
                writeln('NIM                        : ',nim);
                writeln('Kelas                      : ',kelas);
                writeln('Nilai Alpro                : ',nilai);
            end;
        end
    else 
        writeln('Data tidak ditemukan!');
        
end;

procedure sortnama_b(var list:data; n:integer);
var 
    i,j,menu:integer;
    tmp:data_mahasiswa;
begin
    writeln('Urutkan nama');
    writeln('1. Dari A-Z');
    writeln('2. Dari Z-A');
    write('Masukkan pilihan Anda : ');readln(menu);  //pilihan menu ascending/descending

    case menu of
    1:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].nama<list[j].nama) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
            end;
        end;

    2:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].nama>list[j].nama) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
                end;
            end;
        end;
    end;
end;

procedure sortnim_b(var list:data; n:integer);
var 
    i,j,menu:integer;
    tmp:data_mahasiswa;
begin
    writeln('Urutkan NIM');
    writeln('1. Dari yang terkecil ke terbesar');
    writeln('2. Dari yang terbesar ke terkecil');
    write('Masukkan pilihan Anda : ');readln(menu);

    case menu of
    1:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].nim<list[j].nim) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
            end;
        end;

    2:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].nim>list[j].nim) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
                end;
            end;
        end;
    end;
end;

procedure sortnilai_b(var list:data; n:integer);
var 
    i,j,menu:integer;
    tmp:data_mahasiswa;
begin
    writeln('Urutkan Nilai');
    writeln('1. Dari yang terkecil ke terbesar');
    writeln('2. Dari yang terbesar ke terkecil');
    write('Masukkan pilihan Anda : ');readln(menu);

    case menu of
    1:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].nilai<list[j].nilai) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
            end;
        end;

    2:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].nilai>list[j].nilai) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
                end;
            end;
        end;
    end;
end;

procedure sortkls_b(var list:data; n:integer);
var 
    i,j,menu:integer;
    tmp:data_mahasiswa;
begin
    writeln('Urutkan Kelas');
    writeln('1. Dari yang terkecil ke terbesar');
    writeln('2. Dari yang terbesar ke terkecil');
    write('Masukkan pilihan Anda : ');readln(menu);

    case menu of
    1:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].kelas<list[j].kelas) then //membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
            end;
        end;

    2:
        begin
            for i:=1 to n-1 do
            begin
                for j:=1 to n-1 do
                    if(list[j+1].kelas>list[j].kelas) then // membandingkan dua data
                    begin
                        // menukar data
                        tmp:=list[j+1];
                        list[j+1]:=list[j];
                        list[j]:=tmp;
                    end;
                end;
            end;
        end;
    end;
end;

function nilaimax(var list:data;n:integer):integer;
var 
    i:integer;
begin
    nilaimax:=list[1].nilai; // asumsi data terbesar adalah data pertama

    for i:=2 to n do // membandingkan data hingga menemukan nilai terbesar
        with list[i] do
            if nilai > nilaimax then 
                nilaimax:=nilai;

    j:=1;
    while (j<=n) do // menemukan index nilai terbesar
    begin
        with list[j] do
        begin
            if (nilaimax=nilai) then 
                break;
        end;

        j:=j+1;
    end;

    with list[j] do // menampilkan mahasiswa dengan nilai terbesar
    begin
        writeln('Mahasiswa dengan Nilai tertinggi : ',nama);
        writeln('NIM             = ',nim);
        writeln('Nilai           = ',nilai);
    end;
end;

function nilaimin(var list:data; n:integer):integer;
var 
    i:integer;
begin
    nilaimin:=list[1].nilai; // asumsi data terkecil adalah data pertama

    for i:=1 to n do // membandingkan data hingga menemukan nilai terkecil
        with list[i] do
            if nilai < nilaimin then 
                nilaimin:=nilai;

    j:=1;
    while (j<=n) do // menemukan index nilai terkecil
    begin
        with list[j] do
        begin
            if (nilaimin=nilai) then 
                break;
        end;
        
        j:=j+1;
    end;

    with list[j] do // menampilkan mahasiswa dengan nilai terkecil
    begin
        writeln('Mahasiswa dengan Nilai terendah : ',nama);
        writeln('NIM             = ',nim);
        writeln('Nilai           = ',nilai);
    end;
end;

procedure urut;
begin
    // menu urut data
    clrscr;
    writeln('6. Urutkan data');
    writeln('Urutkan data berdasarkan : ');
    writeln('1. Nama(A-Z)');
    writeln('2. NIM');
    writeln('3. Nilai Alpro');
    writeln('4. Kelas');
    write(' Pilihan Anda (1/2/3/4)? ' );readln(pilihurut);

    case pilihurut of
        1:  
            begin
                sortnama_b(mhs,n); // memanggil fungsi untuk mengurutkan berdasarkan nama
                writeln('Data sudah diurutkan berdasarkan Nama');
                writeln;
                tampil(mhs,n); // menampilkan list mahasiswa
                readln;
            end;
        2:  
            begin
                sortnim_b(mhs,n); // memanggil fungsi untuk mengurutkan berdasarkan nim
                writeln('Data sudah diurutkan berdasarkan NIM');
                writeln;
                tampil(mhs,n); // menampilkan list mahasiswa
                readln;
            end;
        3:  
            begin
                sortnilai_b(mhs,n); // memanggil fungsi untuk mengurutkan berdasarkan nilai
                writeln('Data sudah diurutkan berdasarkan Nilai');
                writeln;
                tampil(mhs,n); // menampilkan list mahasiswa
                readln;
            end;
        4:  
            begin
                sortkls_b(mhs,n); // memanggil fungsi untuk mengurutkan berdasarkan kelas
                writeln('Data sudah diurutkan berdasarkan Kelas');
                writeln;
                tampil(mhs,n); // menampilkan list mahasiswa
                readln;
            end;
    end;
end;

procedure lagi;
begin
    //
    writeln('Ingin memeriksa menu yang lain (Y/T) ? = ');readln(lagimenu);
end;

procedure menu;
begin
    repeat
        clrscr;
        writeln('Pilihlah menu berikut');
        writeln('1. Input Data(Jika Ingin Input Data Lagi)');
        writeln('2. Tampilkan Data');
        writeln('3. Nilai Alpro Terbesar');
        writeln('4. Nilai Alpro Terkecil');
        writeln('5. Cari Nilai Mahasiswa');
        writeln('6. Urutkan data');
        writeln('7. Keluar');
        write('Pilihan Anda ? (1/2/3/4/5/6/7) = ');readln(pilihprogram);

        case pilihprogram of
        1 : 
            begin 
                input(mhs,n,k);
            end;
        2 : 
            begin
                tampil(mhs,n);
                writeln;
                lagi; 
            end;
        3 : begin
            clrscr;
                writeln('3. Nilai Alpro Terbesar');
                nilaimax(mhs,n);
                lagi;
            end;
        4 : begin
            clrscr;
            writeln('4. Nilai Alpro Terkecil');
            nilaimin(mhs,n);
            lagi;
            end;
        5 : begin
            clrscr;
            writeln('[NAMA MAHASISWA CASE-SENSITIVE]'); 
            write('Masukkan nama mahasiswa yang ingin dicari : ');readln(siapa);
            writeln;
            carinilai(mhs,n,siapa,y);
            writeln;
            lagi;
            end;
        6 : begin
            urut;
            end;

        7 : begin
                clrscr;
                writeln('Terimakasih ');
                exit;
            end;
        end;
    until (lagimenu='t') or (lagimenu='T');
    writeln('Terima kasih ');
end;

begin
    clrscr;
    writeln('Selamat Datang Di Program Entri Nilai Mahasiswa');
    writeln('===============================================');
    writeln('Silakan Input Data terlebih Dahulu');
    writeln;

    input(mhs,n,k); // input list mahasiswa
    menu;
end.
