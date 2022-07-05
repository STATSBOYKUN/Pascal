program input1;
uses crt;
var
   nama,alamat: String;
   umur: Byte;
   ipk: Real;
begin
   clrscr;
   writeln ('Masukkan Data Mahasiswa');
   writeln ('=======================');
   write ('Nama   :');
   read (nama);
   write ('Alamat :');
   read (alamat);
   write ('Umur   :');
   read (umur);
   write ('IPK    :');
   read (ipk);
   writeln;
   writeln ('=========HASIL=========');
   write ('Nama: ',nama,'. Alamat: ',alamat);
   writeln ('. Umur: ',umur,'. IPK:',ipk:1:2);
   readln;
end.