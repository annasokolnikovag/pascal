{введена строка. заменит заглавные на прописные и наоборот. только англ. символы}
program Hello;
var 
str: string;
i:integer;
begin
writeln('Введите строку: ');
readln(str);

for i:=1 to length(str) do begin
if str[i] in ['a'..'z'] then
    str[i]:=UpCase(str[i])
else if str[i] in ['A'..'Z'] then 
        str[i]:=chr(ord(str[i])+32)
end;
writeln(str);
end.