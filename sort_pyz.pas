{сортировка пузырьком}
program z1;
var 
a: array[1..15] of integer;
 i,j,k, c: integer;
begin

writeln('до сортировки: ');
    for i:=1 to 15 do begin
    a[i]:=random(51);
    write(a[i]:3,' ');
    end;
writeln;
writeln('после сортировки: ');

for j:=1 to 14 do           //кол-во элементов-1
    for k:=1 to 15-j do    // проверка по парам
    begin
    if a[k] > a[k+1] then begin
         c:=a[k];
        a[k]:=a[k+1];
        a[k+1]:= c;
        end;
    end;
    
for i:=1 to 15 do 
 write(a[i]:3,' ');
end.
