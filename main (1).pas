
program Hello;
const max =100;
var 
str: string;
c:char;
i:integer;
//prop: array['A'..'Z'] of char;
//stroch: array['a'..'z'] of char;
begin
writeln('Введите строку: ');
readln(str);

for i:=0 to length(str) do begin
if str[i] in ['a'..'z'] then
    str[i]:=UpCase(str[i])
else if str[i] in ['A'..'Z'] then begin
    str[i]:=chr(ord(c)+32);
    end;
end;
end.