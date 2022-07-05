Program penghitung_BMI;

Uses crt;
Label ulang1, ulang2;

Var
kondisi : byte; {min : 0 , max : 255}
nama_pasien : string[30]; {min : 1 char, max : 30 char}
	berat_badan, tinggi_badan, bmi : real; {min : - 2 ^ 63, max : (2 ^ 63) - 1}

Begin
	Repeat
		Clrscr;

		Writeln('');
Writeln('[PROGRAM PENGHITUNG BMI]');
Writeln('=========================');
Write ('Nama : '); readln(nama_pasien);

Ulang1 : 
Write ('Berat Badan (dalam kg) : '); readln(berat_badan);
Case round(berat_badan) of
1..255 : write();
Else
Writeln('Masukkan berat badan dengan benar.');
Readln;
Goto ulang1;
End;


Ulang2 : 
Write ('Tinggi Badan (dalam cm) : '); readln(tinggi_badan);
Case round(tinggi_badan) of
40..255 : 
Else
Writeln('Tinggi badan minimal adalah 40 cm.');
Readln;
Goto ulang2;
End;


Clrscr;
GotoXY(20, 3); Writeln('[HASIL PERHITUNGAN BMI]');
GotoXY(20, 4); Writeln('Nama pasien : ', nama_pasien);
GotoXY(20, 5); Writeln('Berat Badan (dalam kg) : ', berat_badan:3:2);
GotoXY(20, 6); Writeln('Tinggi Badan (dalam cm) : ', tinggi_badan:3:2);

BMI := BERAT_BADAN / ((TINGGI_BADAN/100) *(TINGGI_BADAN/100));
GotoXY(20, 7); Writeln('Nilai BMI : ', bmi:3:2);
GotoXY(20,8); Write('Arti BMI : ');

If BMI < 18.5 then
	Writeln('Berat Badan Kurang.')
Else if (BMI >= 18.5) and (BMI <= 22.9) then
	Writeln('Berat Badan Normal.')
Else if (BMI >= 23.0) and (BMI <= 29.9) then
	Writeln('Berat Badan Berlebih (Kecenderungan Obesitas).')
Else if BMI > 30 then
	Writeln('Obesitas');

	GotoXY(20,9); Writeln;
	GotoXY(20,10); Writeln('Input data pasien lain ? (YA=1, TIDAK=0)');
	GotoXY(20,11); Write('Opsi : '); readln(kondisi);
	Until(kondisi = 0);
	
	GotoXY(20,12); Writeln('Terima kasih telah menggunakan program ini.');
	Readln;
End.
