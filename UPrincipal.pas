unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.IniFiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TFrPrincipal = class(TForm)
    Panel1: TPanel;
    FlowPanel1: TFlowPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Image2: TImage;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
    ArquivoINI : TIniFile;
  public
    { Public declarations }
  end;

var
  FrPrincipal: TFrPrincipal;

implementation

 uses
   dm_academico,UCadDisciplinas, URelList_Disciplina, UCadProfessores, UConsulta, UCadAlunos,
  ULancamentoNotas, URelList_Professores, URelList_Alunos, URelList_Aluno_Disciplinas, uFultroRel,
  URelList_Disciplinas_Alunos, URelList_Alunos_Professor;

{$R *.dfm}


procedure TFrPrincipal.BitBtn10Click(Sender: TObject);
begin

  FrList_Disciplinas_Alunos := TFrList_Disciplinas_Alunos.Create(Application);
  try
    FultroRel := TFultroRel.Create(Application);
    try
      if FultroRel.ShowModal = mrOk then
      begin
        case FultroRel.RadioGroup1.ItemIndex of
        1:begin
           FrList_Disciplinas_Alunos.FDQry_Consulta.sql.Text := StringReplace( FrList_Disciplinas_Alunos.FDQry_Consulta.sql.Text,
               '/*QI*/', ' and Dalunos.MEDIA >= 7 ', [rfIgnoreCase] );
          end;
        2:begin
           FrList_Disciplinas_Alunos.FDQry_Consulta.sql.Text := StringReplace( FrList_Disciplinas_Alunos.FDQry_Consulta.sql.Text,
               '/*QI*/', ' and Dalunos.MEDIA < 7 ', [rfIgnoreCase] );
          end;
        end;
        FrList_Disciplinas_Alunos.FDQry_Consulta.Open();
        FrList_Disciplinas_Alunos.RelList_Disciplinas_Alunos.Preview;
      end;
    finally
      FultroRel.Free;
    end;
  finally
    FrList_Disciplinas_Alunos.Free
  end;
end;

procedure TFrPrincipal.BitBtn1Click(Sender: TObject);
begin
  DMAcademico.FDQry_Alunos.Open();
  DMAcademico.FDQry_Aluno_Disciplina.Open();
  if DMAcademico.FDQry_Alunos.RecordCount > 0 then
  begin
    FrConsulta := TFrConsulta.Create(Application);
    FrConsulta.Tag := 1;
    try
      if FrConsulta.ShowModal = mrOk then
      begin
        try
          DMAcademico.FDQry_Alunos.Locate('COD',FrConsulta.FDQry_ConsultaCOD.AsInteger,[]);
          FrCadAlunos := TFrCadAlunos.Create(Application);
          FrConsulta.Close;
          FrCadAlunos.ShowModal;
        finally
          FrCadAlunos.Free;
        end;
      end;

    finally
      if FrConsulta <> nil then
         FrConsulta.Free;
    end;
  end
  else
  begin
    FrCadAlunos := TFrCadAlunos.Create(Application);
    try
      DMAcademico.FDQry_Alunos.last;
      FrCadAlunos.ShowModal;
    finally
      if FrConsulta <> nil then
         FrConsulta.Free;
    end;
  end;

end;

procedure TFrPrincipal.BitBtn2Click(Sender: TObject);
begin
  DMAcademico.FDQry_Professores.Open();
  if DMAcademico.FDQry_Professores.RecordCount > 0 then
  begin
    FrConsulta := TFrConsulta.Create(Application);
    FrConsulta.Tag := 0;
    try
      if FrConsulta.ShowModal = mrOk then
      begin
        try
          DMAcademico.FDQry_Professores.Locate('COD',FrConsulta.FDQry_ConsultaCOD.AsInteger,[]);
          FrCadProfessores := TFrCadProfessores.Create(Application);
          FrConsulta.Close;
          FrCadProfessores.ShowModal;
        finally
          FrCadProfessores.Free;
        end;
      end;

    finally
      if FrConsulta <> nil then
         FrConsulta.Free;
    end;
  end
  else
  begin
    FrCadProfessores := TFrCadProfessores.Create(Application);
    try
      DMAcademico.FDQry_Professores.last;
      FrCadProfessores.ShowModal;
    finally
      if FrConsulta <> nil then
         FrConsulta.Free;
    end;
  end;

end;

procedure TFrPrincipal.BitBtn3Click(Sender: TObject);
begin
  FrCadDisciplinas := TFrCadDisciplinas.Create(Application);
  try
    FrCadDisciplinas.ShowModal;
  finally
    FrCadDisciplinas.free;
  end;

end;

procedure TFrPrincipal.BitBtn4Click(Sender: TObject);
begin
  FrList_Disciplina := TFrList_Disciplina.Create(Application);
  try
    FrList_Disciplina.FDQry_Consulta.Open();
    FrList_Disciplina.RelList_Disciplina.Preview();
  finally
    FrList_Disciplina.free;
  end;
end;

procedure TFrPrincipal.BitBtn5Click(Sender: TObject);
begin
  FrList_Professores := TFrList_Professores.Create(Application);
  try
    FrList_Professores.FDQry_Consulta.Open();
    FrList_Professores.RelList_Professores.Preview();
  finally
    FrList_Professores.free;
  end;

end;

procedure TFrPrincipal.BitBtn6Click(Sender: TObject);
begin
  FrList_Aluno_Disciplinas := TFrList_Aluno_Disciplinas.Create(Application);
  try
    if (MessageDlg('Geral', mtWarning, [mbYes, mbNo], 0) = mrNo) then
    begin
      FrConsulta := TFrConsulta.Create(Application);
      FrConsulta.Tag := 1;
      try
        if FrConsulta.ShowModal = mrOk then
        begin
          FrList_Aluno_Disciplinas.FDQry_Consulta.sql.Text := StringReplace( FrList_Aluno_Disciplinas.FDQry_Consulta.sql.Text,
             '/*QI*/', ' and alunos.cod= :cod ', [rfIgnoreCase] );
          FrList_Aluno_Disciplinas.FDQry_Consulta.parambyname('cod').AsInteger :=  FrConsulta.FDQry_ConsultaCOD.AsInteger;
          FrList_Aluno_Disciplinas.FDQry_Consulta.Open();
          FrList_Aluno_Disciplinas.RelList_Aluno_Disciplinas.Preview;
        end
        else
        begin
          MessageDlg('Solicita��o Cancelada', mtInformation, [mbOK], 0);
        end;
      finally
        FrConsulta.free;
      end;


    end
    else
    begin
      FrList_Aluno_Disciplinas.FDQry_Consulta.Open();
      FrList_Aluno_Disciplinas.RelList_Aluno_Disciplinas.Preview();
    end;
  finally
    FrList_Aluno_Disciplinas.free;
  end;


end;

procedure TFrPrincipal.BitBtn7Click(Sender: TObject);
begin
  FrLancamentoNotas := TFrLancamentoNotas.Create(Application);
  try
    FrLancamentoNotas.FDQry_Disciplina.Open();
    FrLancamentoNotas.FDQry_Alunos.Open();
    FrLancamentoNotas.ShowModal;
  finally
    FrLancamentoNotas.free;
  end;


end;

procedure TFrPrincipal.BitBtn8Click(Sender: TObject);
begin
  FrList_Alunos_Professor := TFrList_Alunos_Professor.Create(Application);
  try
    FrList_Alunos_Professor.FDQry_Consulta.Open;
    FrList_Alunos_Professor.RelList_Alunos_Professor.Preview;
  finally
    FrList_Alunos_Professor.free;
  end;

end;

procedure TFrPrincipal.BitBtn9Click(Sender: TObject);
begin
  FrList_Alunos := TFrList_Alunos.Create(Application);
  try
    FrList_Alunos.FDQry_Consulta.Open();
    FrList_Alunos.RelList_Alunos.Preview();
  finally
    FrList_Alunos.free;
  end;

end;

procedure TFrPrincipal.FormCreate(Sender: TObject);
begin
  dmacademico.FDConnection_academico.Connected := false;
  if not (FileExists(ExtractFilePath( Application.ExeName )+ 'Config.ini')) then
  begin
    MessageDlg('Arquivo de Configura��o n�o encontrado em: '+#13+ExtractFilePath( Application.ExeName ), mtInformation, [mbOK], 0);
    application.Terminate;
  end
  else
  begin
    try
      ArquivoINI := TIniFile.create(ExtractFilePath( Application.ExeName )+ 'Config.ini');
      //[0]User_Name=sysdba
      //[1]Password=masterkey
      //[2]Database=C:\Projetos_carlos\academico\academico.git\ACADEMICO.FDB
      //[3]DriverID=FB
      dmacademico.FDConnection_academico.Params[0] := 'User_Name='+ArquivoINI.ReadString('Configuracoes','User_Name','');
      dmacademico.FDConnection_academico.Params[1] := 'Password='+ArquivoINI.ReadString('Configuracoes','Password','');
      dmacademico.FDConnection_academico.Params[2] := 'Database='+ArquivoINI.ReadString('Configuracoes','Database','');
      dmacademico.FDConnection_academico.Connected := true;
    except
      MessageDlg('Problemas ao Conectar ao Banco de Dados', mtInformation, [mbOK], 0);
      Application.Terminate;
    end;

  end;

end;

end.
