object DMAcademico: TDMAcademico
  OldCreateOrder = False
  Height = 338
  Width = 712
  object FDConnection_academico: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Projetos_carlos\academico\academico.git\ACADEMICO.FD' +
        'B'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object FDTab_Disciplinas: TFDTable
    AfterInsert = FDTab_DisciplinasAfterInsert
    BeforePost = FDTab_DisciplinasBeforePost
    IndexName = 'PK_DISCIPLINAS'
    Connection = FDConnection_academico
    UpdateOptions.UpdateTableName = 'DISCIPLINAS'
    TableName = 'DISCIPLINAS'
    Left = 136
    Top = 40
    object FDTab_DisciplinasCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTab_DisciplinasDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object FDQry_Professores: TFDQuery
    AfterInsert = FDQry_ProfessoresAfterInsert
    BeforePost = FDQry_ProfessoresBeforePost
    AfterPost = FDQry_ProfessoresAfterPost
    BeforeDelete = FDQry_ProfessoresBeforeDelete
    AfterDelete = FDQry_ProfessoresAfterDelete
    CachedUpdates = True
    Connection = FDConnection_academico
    UpdateOptions.KeyFields = 'COD'
    UpdateObject = FDUp_Professores
    SQL.Strings = (
      'select'
      '  COD,'
      '  NOME,'
      '  CPF,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  UF,'
      '  COD_DISCIPLINA'
      'from  PROFESSORES')
    Left = 216
    Top = 48
    object FDQry_ProfessoresCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_ProfessoresNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      FixedChar = True
      Size = 100
    end
    object FDQry_ProfessoresCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 11
    end
    object FDQry_ProfessoresENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQry_ProfessoresNUMERO: TStringField
      DisplayLabel = 'N'#186'.'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object FDQry_ProfessoresCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object FDQry_ProfessoresBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      FixedChar = True
      Size = 30
    end
    object FDQry_ProfessoresCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      FixedChar = True
      Size = 30
    end
    object FDQry_ProfessoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 8
    end
    object FDQry_ProfessoresCOD_DISCIPLINA: TIntegerField
      DisplayLabel = 'Disciplina'
      FieldName = 'COD_DISCIPLINA'
      Origin = 'COD_DISCIPLINA'
    end
    object FDQry_ProfessoresUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object FDQry_ProfessoresLook_Disciplina: TStringField
      FieldKind = fkLookup
      FieldName = 'Look_Disciplina'
      LookupDataSet = FDQry_List_Disciplinas
      LookupKeyFields = 'COD'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_DISCIPLINA'
      Size = 50
      Lookup = True
    end
  end
  object FDUp_Professores: TFDUpdateSQL
    Connection = FDConnection_academico
    InsertSQL.Strings = (
      'INSERT INTO PROFESSORES'
      '(COD, NOME, CPF, ENDERECO, NUMERO, COMPLEMENTO, '
      '  BAIRRO, CIDADE, CEP, COD_DISCIPLINA, '
      '  UF)'
      'VALUES (:COD, :NOME, :CPF, :ENDERECO, :NUMERO, :COMPLEMENTO, '
      '  :BAIRRO, :CIDADE, :CEP, :COD_DISCIPLINA, '
      '  :UF)')
    ModifySQL.Strings = (
      'UPDATE PROFESSORES'
      
        'SET COD = :NEW_COD, NOME = :NEW_NOME, CPF = :NEW_CPF, ENDERECO =' +
        ' :NEW_ENDERECO, '
      
        '  NUMERO = :NEW_NUMERO, COMPLEMENTO = :NEW_COMPLEMENTO, BAIRRO =' +
        ' :NEW_BAIRRO, '
      
        '  CIDADE = :NEW_CIDADE, CEP = :NEW_CEP, COD_DISCIPLINA = :NEW_CO' +
        'D_DISCIPLINA, '
      '  UF = :NEW_UF'
      'WHERE COD = :OLD_COD')
    DeleteSQL.Strings = (
      'DELETE FROM PROFESSORES'
      'WHERE COD = :OLD_COD')
    FetchRowSQL.Strings = (
      
        'SELECT COD, NOME, CPF, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CI' +
        'DADE, '
      '  CEP, COD_DISCIPLINA, UF'
      'FROM PROFESSORES'
      'WHERE COD = :COD')
    Left = 288
    Top = 56
  end
  object FDQry_execute: TFDQuery
    Connection = FDConnection_academico
    SQL.Strings = (
      'select'
      '  CONTADOR'
      '  from'
      '  CONTADORES'
      '  where'
      '  TABLELA_NOME = :TABLELA_NOME'
      ''
      '')
    Left = 48
    Top = 152
    ParamData = <
      item
        Name = 'TABLELA_NOME'
        ParamType = ptInput
      end>
  end
  object FDTab_Contadores: TFDTable
    IndexName = 'PK_CONTADORES'
    Connection = FDConnection_academico
    UpdateOptions.UpdateTableName = 'CONTADORES'
    TableName = 'CONTADORES'
    Left = 224
    Top = 112
    object FDTab_ContadoresCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTab_ContadoresTABELA_NOME: TStringField
      FieldName = 'TABELA_NOME'
      Origin = 'TABELA_NOME'
      Size = 50
    end
    object FDTab_ContadoresCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
    end
  end
  object FDQry_List_Disciplinas: TFDQuery
    Active = True
    Connection = FDConnection_academico
    SQL.Strings = (
      'select'
      '  COD,'
      '  DESCRICAO'
      '  FROM DISCIPLINAS'
      '')
    Left = 128
    Top = 184
    object FDQry_List_DisciplinasCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_List_DisciplinasDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object FDQry_Alunos: TFDQuery
    AfterInsert = FDQry_AlunosAfterInsert
    BeforePost = FDQry_AlunosBeforePost
    AfterPost = FDQry_AlunosAfterPost
    BeforeDelete = FDQry_AlunosBeforeDelete
    AfterDelete = FDQry_AlunosAfterDelete
    CachedUpdates = True
    Connection = FDConnection_academico
    UpdateOptions.KeyFields = 'COD'
    SQL.Strings = (
      'select'
      '  COD,'
      '  NOME,'
      '  CPF,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  UF'
      'from  ALUNOS')
    Left = 408
    Top = 64
    object FDQry_AlunosCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_AlunosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      FixedChar = True
      Size = 100
    end
    object FDQry_AlunosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 11
    end
    object FDQry_AlunosENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQry_AlunosNUMERO: TStringField
      DisplayLabel = 'N'#186'.'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object FDQry_AlunosCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object FDQry_AlunosBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      FixedChar = True
      Size = 30
    end
    object FDQry_AlunosCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      FixedChar = True
      Size = 30
    end
    object FDQry_AlunosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 8
    end
    object FDQry_AlunosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object FDUp_Alunos: TFDUpdateSQL
    Connection = FDConnection_academico
    InsertSQL.Strings = (
      'INSERT INTO ALUNOS'
      '(COD, NOME, CPF, ENDERECO, NUMERO, COMPLEMENTO, '
      '  BAIRRO, CIDADE, CEP, UF)'
      
        'VALUES (:NEW_COD, :NEW_NOME, :NEW_CPF, :NEW_ENDERECO, :NEW_NUMER' +
        'O, :NEW_COMPLEMENTO, '
      '  :NEW_BAIRRO, :NEW_CIDADE, :NEW_CEP, :NEW_UF)')
    ModifySQL.Strings = (
      'UPDATE ALUNOS'
      
        'SET COD = :NEW_COD, NOME = :NEW_NOME, CPF = :NEW_CPF, ENDERECO =' +
        ' :NEW_ENDERECO, '
      
        '  NUMERO = :NEW_NUMERO, COMPLEMENTO = :NEW_COMPLEMENTO, BAIRRO =' +
        ' :NEW_BAIRRO, '
      '  CIDADE = :NEW_CIDADE, CEP = :NEW_CEP, UF = :NEW_UF'
      'WHERE COD = :OLD_COD')
    DeleteSQL.Strings = (
      'DELETE FROM ALUNOS'
      'WHERE COD = :OLD_COD')
    FetchRowSQL.Strings = (
      
        'SELECT COD, NOME, CPF, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CI' +
        'DADE, '
      '  CEP, UF'
      'FROM ALUNOS'
      'WHERE COD = :COD')
    Left = 480
    Top = 72
  end
  object DS_Alunos: TDataSource
    DataSet = FDQry_Alunos
    Left = 560
    Top = 88
  end
  object FDQry_aluno_Disciplina: TFDQuery
    BeforePost = FDQry_aluno_DisciplinaBeforePost
    AfterPost = FDQry_aluno_DisciplinaAfterPost
    AfterDelete = FDQry_aluno_DisciplinaAfterDelete
    CachedUpdates = True
    IndexFieldNames = 'COD_ALUNO;CHAVE'
    MasterSource = DS_Alunos
    MasterFields = 'COD'
    Connection = FDConnection_academico
    UpdateOptions.KeyFields = 'COD_ALUNO'
    UpdateObject = FDUp_Aluno_disciplina
    SQL.Strings = (
      'select '
      '  CHAVE,'
      '  COD_ALUNO,'
      '  COD_DISCIPLINA,'
      '  NOTA_PER1,'
      '  NOTA_PER2,'
      '  NOTA_TRABALHO,'
      '  MEDIA,'
      
        '  CASE when (NOTA_PER1 is null) and (NOTA_PER2 is null) and (NOT' +
        'A_TRABALHO is null) THEN'
      '      '#39'Agusardndo Notas'#39
      '      WHEN MEDIA >= 7 THEN'
      '      '#39'Aprovado'#39
      '      else'
      '      '#39'Reprovado'#39
      '   end as Resultado'
      ''
      'from DISCIPLINA_ALUNO'
      'WHERE COD_ALUNO = :COD')
    Left = 392
    Top = 136
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
    object FDQry_aluno_DisciplinaLOOKDISCIPLINA: TStringField
      FieldKind = fkLookup
      FieldName = 'LOOKDISCIPLINA'
      LookupDataSet = FDQry_List_Disciplinas
      LookupKeyFields = 'COD'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_DISCIPLINA'
      Size = 50
      Lookup = True
    end
  end
  object FDUp_Aluno_disciplina: TFDUpdateSQL
    Connection = FDConnection_academico
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
    Left = 472
    Top = 168
  end
  object FDQry_Exist_Disciplina: TFDQuery
    Connection = FDConnection_academico
    SQL.Strings = (
      'select'
      ' *'
      '  FROM DISCIPLINA_ALUNO'
      'where COD_DISCIPLINA = :COD_DISCIPLINA'
      'and COD_ALUNO = :COD_ALUNO '
      '')
    Left = 272
    Top = 216
    ParamData = <
      item
        Name = 'COD_DISCIPLINA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_ALUNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
