unit UCadDsiciplinas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadastro, System.ImageList,
  Vcl.ImgList, Data.DB, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFrCadastro_Disciplinas = class(TFrCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCadastro_Disciplinas: TFrCadastro_Disciplinas;

implementation

{$R *.dfm}

end.
