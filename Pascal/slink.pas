program slink;
{Libreria para unix}
uses BaseUnix, Unix, strings;

var 
    st1, st2 : PChar;

{Main}
begin
    if paramCount() < 2 then
      begin
        writeln('Verifique los parametros');
        halt(1);
      end
    else
    begin
      {RESERVAR ESPACIO EN APUNTADORES}
      st1:= StrAlloc(length(paramStr(1)));
      st2:= StrAlloc(length(paramStr(2)));

      writeln('Creando Link Simbolico...');

      {convertirlos a PCHAR}
      strpcopy(st1,paramStr(1));
      strpcopy(st2,paramStr(2));

      if fpSymLink (st1,st2) <> 0 then
        writeln('Error al crear Link');
      writeln('Link Simbolico Creado...');
    end
end.