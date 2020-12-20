unit UConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TFrConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton6: TSpeedButton;
    Edit_Nome: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DS_Dados: TDataSource;
    FDQry_Consulta: TFDQuery;
    FDQry_ConsultaCOD: TIntegerField;
    FDQry_ConsultaNOME: TStringField;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Edit_NomeChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrConsulta: TFrConsulta;

implementation

{$R *.dfm}

uses dm_academico, UCadProfessores;

procedure TFrConsulta.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := Mrok;
end;

procedure TFrConsulta.Edit_NomeChange(Sender: TObject);
begin
  if FDQry_Consulta.Active then
     FDQry_Consulta.Locate('nome',Edit_Nome.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrConsulta.FormShow(Sender: TObject);
  procedure Abrir_Consulta(tabela_nome:STRING);
  begin
    FDQry_Consulta.Close;
    FDQry_Consulta.SQL.text := 'SELECT cod, nome from '+ tabela_nome+' order by nome';
    FDQry_Consulta.open;
  end;
begin
  if tag = 0 then
     Abrir_Consulta('professores')
  else
  if tag = 1 then
     Abrir_Consulta('alunos')

end;

procedure TFrConsulta.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

end.
