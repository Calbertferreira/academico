unit UCadProfessores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.DBLookup;

type
  TFrCadProfessores = class(TForm)
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    ActionList1: TActionList;
    DS_Dados: TDataSource;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    ImageList1: TImageList;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Panel5: TPanel;
    DBNavigator3: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    codigo : integer;
    { Public declarations }
  end;

var
  FrCadProfessores: TFrCadProfessores;

implementation

{$R *.dfm}

uses dm_academico, UConsulta;

procedure TFrCadProfessores.FormShow(Sender: TObject);
begin
  DMAcademico.FDQry_List_Disciplinas.Close;
  DMAcademico.FDQry_List_Disciplinas.open;
end;

procedure TFrCadProfessores.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

end.
