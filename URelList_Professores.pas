unit URelList_Professores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, RLReport, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrList_Professores = class(TForm)
    RelList_Professores: TRLReport;
    DS_Dados: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    FDQry_Consulta: TFDQuery;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel4: TRLLabel;
    FDQry_ConsultaCOD: TIntegerField;
    FDQry_ConsultaNOME: TStringField;
    FDQry_ConsultaCOD_DISCIPLINA: TIntegerField;
    FDQry_ConsultaNOME_DISCIPLINA: TStringField;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrList_Professores: TFrList_Professores;

implementation

{$R *.dfm}

uses
  dm_academico;


end.