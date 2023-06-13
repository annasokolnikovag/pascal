{сортировка вставкой}
program z2;
var 
a: array[1..15] of integer;
 i,j,k, c: integer;
begin
randomize;
writeln('до сортировки: ');
    for i:=1 to 15 do begin
    a[i]:=random(51);
    write(a[i]:3,' ');
    end;
writeln;
writeln('после сортировки: ');

for i:=1 to 15 do begin  
c:=a[i];
j:=i;
while (j>0) and (a[j-1]>c) do begin
    a[j]:=a[j-1];
    j:=j-1;
    end;
a[j]:=c;
end;

for i:=1 to 15 do 
 write(a[i]:3,' ');
end.
