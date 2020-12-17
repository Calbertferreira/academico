program Academico;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrPrincipal},
  UCadastro in 'UCadastro.pas' {FrCadastro},
  UCadDsiciplinas in 'UCadDsiciplinas.pas' {FrCadastro_Disciplinas},
  dm_academico in 'dm_academico.pas' {DMAcademico: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrPrincipal, FrPrincipal);
  Application.CreateForm(TFrCadastro, FrCadastro);
  Application.CreateForm(TFrCadastro_Disciplinas, FrCadastro_Disciplinas);
  Application.CreateForm(TDMAcademico, DMAcademico);
  Application.Run;
end.
