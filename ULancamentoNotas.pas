unit ULancamentoNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrLancamentoNotas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    FDQry_Disciplina: TFDQuery;
    FDQry_DisciplinaCOD: TIntegerField;
    FDQry_DisciplinaDESCRICAO: TStringField;
    DS_Disciplinas: TDataSource;
    Label2: TLabel;
    Edit_Nome: TEdit;
    Label1: TLabel;
    FDQry_Alunos: TFDQuery;
    DS_Alunos: TDataSource;
    FDQry_AlunosCOD: TIntegerField;
    FDQry_AlunosNOME: TStringField;
    FDQry_AlunosCHAVE: TIntegerField;
    FDQry_AlunosCOD_ALUNO: TIntegerField;
    FDQry_AlunosCOD_DISCIPLINA: TIntegerField;
    FDQry_AlunosNOTA_PER1: TFloatField;
    FDQry_AlunosNOTA_PER2: TFloatField;
    FDQry_AlunosNOTA_TRABALHO: TFloatField;
    FDQry_AlunosMEDIA: TFloatField;
    FDUp_Alunos: TFDUpdateSQL;
    Panel6: TPanel;
    SpeedButton6: TSpeedButton;
    DBNavigator2: TDBNavigator;
    FDQry_AlunosRESULTADO: TStringField;
    DBGrid1: TDBGrid;
    procedure FDQry_AlunosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLancamentoNotas: TFrLancamentoNotas;

implementation

{$R *.dfm}

uses dm_academico;

procedure TFrLancamentoNotas.FDQry_AlunosAfterPost(DataSet: TDataSet);
begin
  FDQry_Alunos.Refresh;
end;

end.
