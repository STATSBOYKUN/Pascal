program factorialProgram (input, output);
uses crt ;

function factorial (num :integer):integer;
begin
   writeln ( ' nilai num : ', num) ;
   if (num = 1) then
      factorial := 1
   else
      begin
        factorial := num*factorial(num - 1);
        writeln (' display ', num, ' nilai Factorial : ', factorial ) ;
      end ;
      writeln ( ' nilai num di akhir function : ', num) ;
end;

{begin }
 var number, nFactorial :integer;
 begin
   clrscr ;
   write('Enter the number for factorial :');
   readln(number);
   nFactorial := factorial(number);
   writeln(number, '! = ', nFactorial);
   readln ;
end.
