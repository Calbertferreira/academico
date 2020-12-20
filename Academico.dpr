program Academico;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrPrincipal},
  dm_academico in 'dm_academico.pas' {DMAcademico: TDataModule},
  UCadDisciplinas in 'UCadDisciplinas.pas' {FrCadDisciplinas},
  UCadProfessores in 'UCadProfessores.pas' {FrCadProfessores},
  UConsulta in 'UConsulta.pas' {FrConsulta},
  UCadAlunos in 'UCadAlunos.pas' {FrCadAlunos},
  ULancamentoNotas in 'ULancamentoNotas.pas' {FrLancamentoNotas},
  uFultroRel in 'uFultroRel.pas' {FultroRel},
  URelList_Disciplinas_Alunos in 'URelList_Disciplinas_Alunos.pas' {FrList_Disciplinas_Alunos},
  URelList_Alunos_Professor in 'URelList_Alunos_Professor.pas' {FrList_Alunos_Professor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMAcademico, DMAcademico);
  Application.CreateForm(TFrPrincipal, FrPrincipal);
  Application.CreateForm(TFrList_Disciplinas_Alunos, FrList_Disciplinas_Alunos);
  Application.CreateForm(TFrList_Alunos_Professor, FrList_Alunos_Professor);
  Application.Run;
end.
