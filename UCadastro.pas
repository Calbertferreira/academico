unit UCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Data.DB, Vcl.DBCtrls;

type
  TFrCadastro = class(TForm)
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
    DBNavigator1: TDBNavigator;
    DBNavigator3: TDBNavigator;
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCadastro: TFrCadastro;

implementation

{$R *.dfm}

procedure TFrCadastro.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

end.
