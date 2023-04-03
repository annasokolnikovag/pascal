var
F_in,F_out: File of Char;
a,C:Char;
i:integer;
begin
Assign(F_in,'text.txt');
Reset(F_in);

Assign(F_out,'c:\text1.txt');
ReWrite(F_out);
Read(F_in,C);
i:=0;
j:=0;
while (not eof(F_in)) do
begin
    Read(F_in,C);
    inc(i);
    if (C=' ') then j:=i;
end;

reset(F_out);
for i:=1 to j-1 do
begin
read(F_in,C);
write(F_out,C);
end;

Close(F_out);
Close(F_in);
Erase(F_in);
Rename(F_out,'text.txt');
end