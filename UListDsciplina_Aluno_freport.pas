unit UListDsciplina_Aluno_freport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RLReport, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    FDQry_aluno_Disciplina: TFDQuery;
    FDQry_aluno_DisciplinaCHAVE: TIntegerField;
    FDQry_aluno_DisciplinaCOD_ALUNO: TIntegerField;
    FDQry_aluno_DisciplinaCOD_DISCIPLINA: TIntegerField;
    FDQry_aluno_DisciplinaNOTA_PER1: TFloatField;
    FDQry_aluno_DisciplinaNOTA_PER2: TFloatField;
    FDQry_aluno_DisciplinaNOTA_TRABALHO: TFloatField;
    FDQry_aluno_DisciplinaMEDIA: TFloatField;
    FDQry_aluno_DisciplinaRESULTADO: TStringField;
    DS_Aluno_Dsiciplina: TDataSource;
    FDQry_aluno_DisciplinaNOME_DISCIPLINA: TStringField;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dm_academico;

end.
