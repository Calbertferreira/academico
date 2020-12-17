unit UCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Data.DB;

type
  TFrCadastro = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ActionList1: TActionList;
    DS_Dados: TDataSource;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    ImageList1: TImageList;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCadastro: TFrCadastro;

implementation

{$R *.dfm}

end.
