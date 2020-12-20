unit URelList_Aluno_Disciplinas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, QuickRpt, QRCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFrList_Aluno_Disciplinas = class(TForm)
    RelList_Aluno_Disciplinas: TQuickRep;
    FDQry_Consulta: TFDQuery;
    TitleBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    FDQry_ConsultaCOD: TIntegerField;
    FDQry_ConsultaNOME: TStringField;
    FDQry_ConsultaCOD_DISCIPLINA: TIntegerField;
    FDQry_ConsultaNOME_DISCIPLINA: TStringField;
    FDQry_ConsultaNOTA_PER1: TFloatField;
    FDQry_ConsultaNOTA_PER2: TFloatField;
    FDQry_ConsultaNOTA_TRABALHO: TFloatField;
    FDQry_ConsultaMEDIA: TFloatField;
    FDQry_ConsultaRESULTADO: TStringField;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrList_Aluno_Disciplinas: TFrList_Aluno_Disciplinas;

implementation

{$R *.dfm}

uses dm_academico;

end.
