unit URelList_Alunos_Professor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, QuickRpt, QRCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFrList_Alunos_Professor = class(TForm)
    RelList_Alunos_Professor: TQuickRep;
    FDQry_Consulta: TFDQuery;
    TitleBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    FDQry_ConsultaCOD: TIntegerField;
    FDQry_ConsultaNOME: TStringField;
    FDQry_ConsultaCOD_ALUNO: TIntegerField;
    FDQry_ConsultaNOME_ALUNO: TStringField;
    FDQry_ConsultaCOD_DISCIPLINA: TIntegerField;
    FDQry_ConsultaNOME_DISCIPLINA: TStringField;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrList_Alunos_Professor: TFrList_Alunos_Professor;

implementation

{$R *.dfm}

uses dm_academico;

end.
