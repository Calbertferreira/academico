inherited FrCadDisciplinas: TFrCadDisciplinas
  Caption = 'Cadastro de Disciplinas'
  ClientHeight = 277
  ClientWidth = 414
  OnCreate = FormCreate
  ExplicitWidth = 430
  ExplicitHeight = 315
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 241
    Width = 414
    ExplicitTop = 241
    ExplicitWidth = 414
    inherited SpeedButton6: TSpeedButton
      Left = 327
      ExplicitLeft = 327
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited DBNavigator3: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 0
    Width = 414
    Height = 241
    Align = alClient
    DataSource = DS_Dados
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = 16776176
        Expanded = False
        FieldName = 'COD'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  inherited DS_Dados: TDataSource
    DataSet = DMAcademico.FDTab_Disciplinas
  end
end
