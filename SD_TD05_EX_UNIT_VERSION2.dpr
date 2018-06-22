program SD_TD05_EX_UNIT_VERSION2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_SD_TD05_EX_UNIT_VERSION2 in 'Unit_SD_TD05_EX_UNIT_VERSION2.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insérer du code ici }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
