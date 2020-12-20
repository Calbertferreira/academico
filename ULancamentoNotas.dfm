object FrLancamentoNotas: TFrLancamentoNotas
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amento de Notas'
  ClientHeight = 398
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 902
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Lan'#231'amento de Notas'
    TabOrder = 0
    ExplicitWidth = 674
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 265
    Height = 361
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 261
      Height = 31
      Align = alTop
      BevelInner = bvLowered
      Caption = 'Disciplinas'
      TabOrder = 0
      ExplicitWidth = 133
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 33
      Width = 261
      Height = 326
      Align = alClient
      DataSource = DS_Disciplinas
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD'
          Title.Caption = 'C'#243'd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 156
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 265
    Top = 37
    Width = 637
    Height = 361
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    ExplicitLeft = 273
    ExplicitWidth = 782
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 633
      Height = 44
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      ExplicitWidth = 532
      object Label2: TLabel
        Left = 15
        Top = 23
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 629
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Alunos'
        Color = clGradientActiveCaption
        ParentColor = False
        Transparent = False
        ExplicitWidth = 32
      end
      object Edit_Nome: TEdit
        Left = 48
        Top = 19
        Width = 338
        Height = 21
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 324
      Width = 633
      Height = 35
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 4
      object SpeedButton6: TSpeedButton
        Left = 522
        Top = 4
        Width = 74
        Height = 29
        Hint = 'Delete'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00044534386B5457837679
          9C9799B4B9BBCCD8D9E3F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C317C0C317C0C317C000A4D
          3B68AC33599D3152962B488C21397D15286C0A185C020C4F010D510312570416
          5D061C6507236B092872FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A317D0C
          0D0F0C0D0F0011564477BB4F82C75A8DD26295DA6699DE6598DD679ADF6497DC
          6295DA5787CC426EB32E55991D3F84001257FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0C35820E10120E0F120018613467AB3164A8396CB03F72B6487BBE51
          84C85A8DD25A8DD25E91D65E91D65689CE4679BD3D70B4001962FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0E3986101214111114001F6A3366AA295CA0295C
          A0285B9F275A9E376AAC6295DB315FAB25589C275A9E2A5DA13063A6396CB000
          206BFFFFFFFFFFFFFFFFFFF9FCFAFFFFFFFFFFFF113F8B13141713131700226D
          3467AB2A5DA12B5EA22B5EA22B5EA23363A95F92D7305EA82B5EA22B5EA22B5E
          A22B5CA03A6CB100236EFFFFFFFFFFFFFFFFFF002FE6FFFFFFFFFFFF13429015
          161A14161A0024703467AB2A5DA12B5EA22B5EA22A5DA12E5CA25A8DD22E5CA5
          2B5EA22B5EA22B5EA22655993B6DB2002571FFFFFFFFFFFFFFFFFF002FE60018
          DAFFFFFF16469417181D16191E0026723467AB295CA02B5EA22B5EA2295B9F28
          569B5588CD2C59A22B5EA22B5EA22B5EA22350943D6FB4012773FFFFFFFFFFFF
          FFFFFF002FE61569FF0109CB184A9A191B21191B200028753568AC295CA02B5E
          A22B5EA2245297204A905083C82B579F2B5EA22B5EA22B5DA11E488C3E70B501
          29760033EE0033EE0033EE002FE61669FF095EFE0400B41B1E231B1E23002A78
          3669AD295CA0295B9F245296194085163C844B7EC328549D2B5EA22A5CA02350
          9413387B4072B7012B790033EE5DA2FF3F87FF2876FF1569FF095EFE0055FE08
          009D1E2026002C7A2B599F1D478A1B4488153B7F0E2C700E2E75487BC026529A
          1D498D1A438713367A0B286C4274B9012D7B0033EE599FFF4089FF2874FF1568
          FF095EFE0055FE0052FD070081002E7D142669142669477ABF477ABF477ABF47
          7ABF477ABF477ABF477ABF477ABF477ABF477ABF4376BB012F7E0033EE5DA2FF
          3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7F3166B45287D1315E
          AA315FAA305EA93361AC477ABF315FAA305DA8305DA9305EA8305DA94578BD01
          30800033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08009D25282F003182
          6EA1E880B3F8285B9F285B9F2A5DA03366A84C7FC426529A285B9F285B9F285B
          9F2B5EA2477ABF0132830033EE0033EE0033EE002CE61569FF095DFE0400B428
          2A32272A32003384386BAF24579B275A9E275A9E275A9E2F60A45487CC2B57A0
          275A9E275A9E275A9E245599497CC1013485FFFFFFFFFFFFFFFFFF002CE61668
          FF0109CB2560B12A2D35292C35003586386BAF24579B26599D26599D25589C2C
          5BA05E91D62D5BA426599D25589C24579B204F924A7DC2013687FFFFFFFFFFFF
          FFFFFF002CE60018DAFFFFFF2560B12B2F372B2F37003689386BAF2255992558
          9C25589C24569A28569C699CE1325FAA24579B24579B24579B1B478A4C7FC401
          378AFFFFFFFFFFFFFFFFFF002CE6FFFFFFFFFFFF2560B12D313A2D313A00388B
          386BAF21549824579B24579B20509325509773A6EB3563AF23569A23569A2153
          97163D804D80C501398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B130
          323C2F323D00398C386BAF205397235699205194163F811C448B7CAFF43868B4
          2255992152961842850C2B6C4E81C7013A8DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF2560B131353E30353E003B8E3668AC194A8E18458811367708225E10
          307882B5FA3C6DBA143D7E153C7F1335791131785386CC013C8FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF2560B132373F32373F003C903564AB255197315F
          A73D6DB7487AC8578AD974A7EC7CAFF484B7FC83B6FB7AADF26A9DE25E91D601
          3D91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B1343841343841003D91
          6497DC70A3E87BAEF383B6FB88BBFF85B8FD83B6FB83B6FB78ACF26398E0497F
          CA3069B51C57A6013E92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B125
          60B12560B1003E935388D0437BC53C75C1316BB9215DAD124EA1054297034195
          0845990D4A9D134FA21854A71E5AAB235EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0443963D6DAE5F87BC83A2CBA9BFDBCBD8EAED
          F2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
      end
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 1
        Width = 631
        Height = 33
        DataSource = DS_Alunos
        VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 6
      end
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 64
      Width = 320
      Height = 120
      DataSource = DS_Alunos
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 240
      Width = 121
      Height = 21
      DataField = 'NOTA_PER1'
      DataSource = DS_Alunos
      TabOrder = 3
    end
  end
  object FDQry_Disciplina: TFDQuery
    Connection = DMAcademico.FDConnection_academico
    SQL.Strings = (
      'select'
      '  COD,'
      '  DESCRICAO'
      '  FROM DISCIPLINAS'
      'order by   DESCRICAO'
      ''
      '')
    Left = 40
    Top = 8
    object FDQry_DisciplinaCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_DisciplinaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object DS_Disciplinas: TDataSource
    DataSet = FDQry_Disciplina
    Left = 104
  end
  object FDQry_Alunos: TFDQuery
    AfterPost = FDQry_AlunosAfterPost
    CachedUpdates = True
    IndexFieldNames = 'COD_DISCIPLINA'
    MasterSource = DS_Disciplinas
    MasterFields = 'COD'
    Connection = DMAcademico.FDConnection_academico
    UpdateOptions.KeyFields = 'COD_DISCIPLINA'
    UpdateObject = FDUp_Alunos
    SQL.Strings = (
      'select'
      '  ALUNOS.COD,'
      '  ALUNOS.NOME,'
      '  DALUNO.CHAVE,'
      '  DALUNO.COD_ALUNO,'
      '  DALUNO.COD_DISCIPLINA,'
      '  DALUNO.NOTA_PER1,'
      '  DALUNO.NOTA_PER2,'
      '  DALUNO.NOTA_TRABALHO,'
      '  DALUNO.MEDIA,'
      
        '  CASE when (DALUNO.NOTA_PER1 is null) and (DALUNO.NOTA_PER2 is ' +
        'null) and (DALUNO.NOTA_TRABALHO is null) THEN'
      '      '#39'Agusardndo Notas'#39
      '      WHEN MEDIA > 7 THEN'
      '      '#39'Aprovado'#39
      '      else'
      '      '#39'Reprovado'#39
      '   end as Resultado'
      '  from DISCIPLINA_ALUNO AS DALUNO'
      '  INNER JOIN ALUNOS'
      '  ON(DALUNO.COD_ALUNO=ALUNOS.COD)'
      '  Where DALUNO.COD_DISCIPLINA = :COD'
      'order by ALUNOS.NOME')
    Left = 176
    Top = 16
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQry_AlunosCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
      Required = True
    end
    object FDQry_AlunosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      FixedChar = True
      Size = 100
    end
    object FDQry_AlunosCHAVE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_AlunosCOD_ALUNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ALUNO'
      Origin = 'COD_ALUNO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_AlunosCOD_DISCIPLINA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_DISCIPLINA'
      Origin = 'COD_DISCIPLINA'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object FDQry_AlunosNOTA_PER1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NOTA_PER1'
      Origin = 'NOTA_PER1'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_AlunosNOTA_PER2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NOTA_PER2'
      Origin = 'NOTA_PER2'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_AlunosNOTA_TRABALHO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NOTA_TRABALHO'
      Origin = 'NOTA_TRABALHO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_AlunosMEDIA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_AlunosRESULTADO: TStringField
      FieldName = 'RESULTADO'
      Origin = 'RESULTADO'
      Required = True
      FixedChar = True
      Size = 16
    end
  end
  object DS_Alunos: TDataSource
    DataSet = FDQry_Alunos
    Left = 336
    Top = 40
  end
  object FDUp_Alunos: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO DISCIPLINA_ALUNO'
      '(CHAVE, COD_ALUNO, COD_DISCIPLINA, NOTA_PER1, '
      '  NOTA_PER2, NOTA_TRABALHO, MEDIA)'
      
        'VALUES (:NEW_CHAVE, :NEW_COD_ALUNO, :NEW_COD_DISCIPLINA, :NEW_NO' +
        'TA_PER1, '
      '  :NEW_NOTA_PER2, :NEW_NOTA_TRABALHO, :NEW_MEDIA)')
    ModifySQL.Strings = (
      'UPDATE DISCIPLINA_ALUNO'
      
        'SET CHAVE = :NEW_CHAVE, COD_ALUNO = :NEW_COD_ALUNO, COD_DISCIPLI' +
        'NA = :NEW_COD_DISCIPLINA, '
      '  NOTA_PER1 = :NEW_NOTA_PER1, NOTA_PER2 = :NEW_NOTA_PER2, '
      '  NOTA_TRABALHO = :NEW_NOTA_TRABALHO, MEDIA = :NEW_MEDIA'
      'WHERE CHAVE = :OLD_CHAVE')
    DeleteSQL.Strings = (
      'DELETE FROM DISCIPLINA_ALUNO'
      'WHERE CHAVE = :OLD_CHAVE')
    FetchRowSQL.Strings = (
      
        'SELECT CHAVE, COD_ALUNO, COD_DISCIPLINA, NOTA_PER1, NOTA_PER2, N' +
        'OTA_TRABALHO, '
      '  MEDIA'
      'FROM DISCIPLINA_ALUNO'
      'WHERE CHAVE = :CHAVE')
    Left = 248
    Top = 16
  end
end
