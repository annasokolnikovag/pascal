{сортировка выбором}
program z3;
var 
a: array[1..15] of integer;
 i,j,max,c: integer;
begin
Randomize;
writeln('до сортировки: ');
    for i:=1 to 15 do begin
    a[i]:=random(51);
    write(a[i]:3,' ');
    end;
writeln;
writeln('после сортировки: ');

j := 15;
while j > 1 do begin
max := a[1];
c := 1;
for i := 2 to j do
      if a[i] > max then begin
      max := a[i];
      c:= i;
      end;
a[c] := a[j];
a[j] := max;
 j := j - 1
 end;
    
for i:=1 to 15 do 
 write(a[i]:3,' ');
end.