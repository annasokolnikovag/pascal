program Hello;
type PNode = ^Node;   { указатель на узел }   
     Node = record    { структура узла }
       word: string[40]; { слово }
       count: integer;   { счетчик повторов слов }
       next: PNode;      { ссылка на следующий }
     end;
var 
 Head: PNode;
 F: text;
 word: string;
 newNode, place: PNode;
 
procedure AddFirst(var Head: PNode; NewNode: PNode );
begin
  NewNode^.next := Head;
  Head := NewNode;
end;

    procedure AddAfter(var Head: PNode; NewNode: PNode );
begin
  NewNode^.next := p^.next;
 p^.next := NewNode;
end;

procedure AddBefore(var Head: PNode; p, NewNode: PNode);
var pp: PNode;
begin
  pp := Head;
  if p = Head then
    AddFirst ( Head, NewNode )  // добавление в начало списка
  else begin
    while (pp <> nil)  and  (pp^.next <> p) do // поиск узла, за которым следует узел p
      pp := pp^.next;
    if pp <> nil then AddAfter ( pp, NewNode ); // добавляем после узла pp
  end;
end;

 
 
begin
  writeln ('Hello World')
end.

