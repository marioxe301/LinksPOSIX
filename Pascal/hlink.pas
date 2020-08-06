program hlink;

{Libreria para unix}
uses BaseUnix,Unix;

{Main}
begin
    if paramCount() < 2 then
      begin
        writeln('Verifique los parametros');
        halt(1);
      end
    else
    begin
      writeln('Creando Link Duro...');
      if fpLink(paramStr(1),paramStr(2)) <> 0 then
        writeln('Error al crear Link');
      writeln('Link Duro Creado...');
    end
end.