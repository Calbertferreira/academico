object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 378
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DS_Aluno_Dsiciplina
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLGroup1: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 78
      DataFields = 'COD_DISCIPLINA'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 45
        BandType = btColumnHeader
        object RLDBText2: TRLDBText
          Left = 69
          Top = 4
          Width = 120
          Height = 16
          DataField = 'NOME_DISCIPLINA'
          DataSource = DS_Aluno_Dsiciplina
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 3
          Top = 4
          Width = 60
          Height = 16
          Caption = 'Disciplina'
        end
        object RLLabel1: TRLLabel
          Left = 24
          Top = 26
          Width = 37
          Height = 16
          Caption = 'Aluno'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 45
        Width = 718
        Height = 28
        object RLDBText1: TRLDBText
          Left = 24
          Top = 8
          Width = 83
          Height = 16
          DataField = 'COD_ALUNO'
          DataSource = DS_Aluno_Dsiciplina
          Text = ''
        end
      end
    end
  end
  object FDQry_aluno_Disciplina: TFDQuery
    Active = True
    CachedUpdates = True
    MasterFields = 'COD'
    Connection = DMAcademico.FDConnection_academico
    UpdateOptions.KeyFields = 'COD_ALUNO'
    SQL.Strings = (
      'select '
      '  DLUNO.CHAVE,'
      '  DLUNO.COD_ALUNO,'
      '  DLUNO.COD_DISCIPLINA,'
      '  DLUNO.NOTA_PER1,'
      '  DLUNO.NOTA_PER2,'
      '  DLUNO.NOTA_TRABALHO,'
      '  DLUNO.MEDIA,'
      
        '  CAST(disciplinas.COD AS VARCHAR(10))||'#39'-'#39'|| disciplinas.DESCRI' +
        'CAO AS NOME_DISCIPLINA,'
      
        '  CASE when (NOTA_PER1 is null) and (NOTA_PER2 is null) and (NOT' +
        'A_TRABALHO is null) THEN'
      '      '#39'Agusardndo Notas'#39
      '      WHEN MEDIA >= 7 THEN'
      '      '#39'Aprovado'#39
      '      else'
      '      '#39'Reprovado'#39
      '   end as Resultado'
      ''
      'from DISCIPLINA_ALUNO AS DLUNO'
      'inner join disciplinas'
      'on(disciplinas.cod=DLUNO.COD_DISCIPLINA)'
      'ORDER BY disciplinas.DESCRICAO, DLUNO.COD_ALUNO')
    Left = 432
    Top = 40
    object FDQry_aluno_DisciplinaCHAVE: TIntegerField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Required = True
    end
    object FDQry_aluno_DisciplinaCOD_ALUNO: TIntegerField
      FieldName = 'COD_ALUNO'
      Origin = 'COD_ALUNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_aluno_DisciplinaCOD_DISCIPLINA: TIntegerField
      FieldName = 'COD_DISCIPLINA'
      Origin = 'COD_DISCIPLINA'
      Required = True
    end
    object FDQry_aluno_DisciplinaNOTA_PER1: TFloatField
      FieldName = 'NOTA_PER1'
      Origin = 'NOTA_PER1'
    end
    object FDQry_aluno_DisciplinaNOTA_PER2: TFloatField
      FieldName = 'NOTA_PER2'
      Origin = 'NOTA_PER2'
    end
    object FDQry_aluno_DisciplinaNOTA_TRABALHO: TFloatField
      FieldName = 'NOTA_TRABALHO'
      Origin = 'NOTA_TRABALHO'
    end
    object FDQry_aluno_DisciplinaMEDIA: TFloatField
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
    object FDQry_aluno_DisciplinaRESULTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESULTADO'
      Origin = 'RESULTADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object FDQry_aluno_DisciplinaNOME_DISCIPLINA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_DISCIPLINA'
      Origin = 'NOME_DISCIPLINA'
      ProviderFlags = []
      ReadOnly = True
      Size = 61
    end
  end
  object DS_Aluno_Dsiciplina: TDataSource
    DataSet = FDQry_aluno_Disciplina
    Left = 560
    Top = 88
  end
end
