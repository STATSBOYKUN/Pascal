program anak_ayam;

uses crt;

var
   N, M, O : byte;
   kondisi : byte;

begin
   repeat 
      clrscr;

      write('Masukkan jumlah anak ayam : ');readln(N);
      writeln('Anak ayam Turun ', N);
      writeln;

      M := N;
      O := N;

      while (N <> 1) do
         begin
            writeln('Anak Ayam turun ', N, ' mati satu tinggal ', N - 1);
            n := n - 1 ;
         end;
      
      if N = 1 then
         writeln('Anak Ayam turun ', N, ' mati satu tinggal induknya');
      
      writeln;
      repeat
         writeln('Saya sedih.');
         M := M - 1;
      until (M = 0);

      writeln;
      writeln('Total anak ayam mati : ', O);

      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);

end.