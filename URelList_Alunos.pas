unit URelList_Alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, RLReport, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrList_Alunos = class(TForm)
    RelList_Alunos: TRLReport;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrList_Alunos: TFrList_Alunos;

implementation

{$R *.dfm}

uses
  dm_academico;


end.
