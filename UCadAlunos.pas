unit UCadAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Data.DB, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFrCadAlunos = class(TForm)
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    ActionList1: TActionList;
    DS_Dados: TDataSource;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    ActionList2: TActionList;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetCancel2: TDataSetCancel;
    DataSetPost2: TDataSetPost;
    DataSetDelete2: TDataSetDelete;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Panel4: TPanel;
    DS_Aluno_Diciplina: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    Panel5: TPanel;
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCadAlunos: TFrCadAlunos;

implementation

{$R *.dfm}

uses dm_academico, UCadDisciplinas;

procedure TFrCadAlunos.FormShow(Sender: TObject);
begin
  DMAcademico.FDQry_List_Disciplinas.Close;
  DMAcademico.FDQry_List_Disciplinas.open;

end;

procedure TFrCadAlunos.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

end.
