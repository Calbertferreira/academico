object FrList_Professores: TFrList_Professores
  Left = 0
  Top = 0
  Caption = 'FrList_Professores'
  ClientHeight = 529
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelList_Professores: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DS_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel1: TRLLabel
        Left = 320
        Top = 16
        Width = 148
        Height = 16
        Caption = 'Listagem de Professores'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 103
      Width = 718
      Height = 16
      object RLDBText1: TRLDBText
        Left = 16
        Top = -1
        Width = 44
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'COD'
        DataSource = DS_Dados
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = -1
        Width = 303
        Height = 16
        AutoSize = False
        DataField = 'NOME'
        DataSource = DS_Dados
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 393
        Top = -1
        Width = 303
        Height = 16
        AutoSize = False
        DataField = 'NOME_DISCIPLINA'
        DataSource = DS_Dados
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 22
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel2: TRLLabel
        Left = 16
        Top = 3
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 72
        Top = 3
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 392
        Top = 5
        Width = 60
        Height = 16
        Caption = 'Disciplina'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 119
      Width = 718
      Height = 26
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult1: TRLDBResult
        Left = 558
        Top = 6
        Width = 84
        Height = 16
        DataField = 'COD'
        DataSource = DS_Dados
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 510
        Top = 7
        Width = 32
        Height = 16
        Caption = 'Total'
      end
    end
  end
  object DS_Dados: TDataSource
    DataSet = FDQry_Consulta
    Left = 624
    Top = 32
  end
  object FDQry_Consulta: TFDQuery
    Connection = DMAcademico.FDConnection_academico
    SQL.Strings = (
      
        'select professores.cod, professores.nome, professores.cod_discip' +
        'lina,'
      
        'cast(disciplinas.cod as varchar(50)) ||'#39'-'#39'|| disciplinas.descric' +
        'ao as nome_disciplina'
      ''
      'from professores'
      'left join disciplinas'
      'on(professores.cod_disciplina=disciplinas.cod)'
      ' order by cod')
    Left = 552
    Top = 16
    object FDQry_ConsultaCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      FixedChar = True
      Size = 100
    end
    object FDQry_ConsultaCOD_DISCIPLINA: TIntegerField
      FieldName = 'COD_DISCIPLINA'
      Origin = 'COD_DISCIPLINA'
    end
    object FDQry_ConsultaNOME_DISCIPLINA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_DISCIPLINA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
