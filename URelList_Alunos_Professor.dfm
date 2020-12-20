object FrList_Alunos_Professor: TFrList_Alunos_Professor
  Left = 0
  Top = 0
  Caption = 'FrList_Alunos_Professor'
  ClientHeight = 381
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelList_Alunos_Professor: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = FDQry_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 226
        Top = 12
        Width = 193
        Height = 17
        Size.Values = (
          44.979166666666670000
          597.958333333333400000
          31.750000000000000000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Listagem de Alunos do Professor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 78
      Width = 718
      Height = 46
      AlignToBottom = False
      Color = clBtnFace
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        121.708333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'FDQry_Consulta.NOME'
      FooterBand = QRBand1
      Master = RelList_Alunos_Professor
      ReprintOnNewPage = False
      object QRLabel2: TQRLabel
        Left = 7
        Top = 28
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          74.083333333333340000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Alunos'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 7
        Top = 2
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          5.291666666666667000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Aluno'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 48
        Top = 2
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          5.291666666666667000
          76.729166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'COD'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 81
        Top = 3
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          7.937500000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'NOME'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 124
      Width = 718
      Height = 18
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 6
        Top = 0
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          0.000000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'COD_ALUNO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 58
        Top = 0
        Width = 351
        Height = 17
        Size.Values = (
          44.979166666666670000
          153.458333333333300000
          0.000000000000000000
          928.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'NOME_ALUNO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 147
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 552
        Top = 3
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          1460.500000000000000000
          7.937500000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'COUNT'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 452
        Top = 3
        Width = 91
        Height = 17
        Size.Values = (
          44.979166666666670000
          1195.916666666667000000
          7.937500000000000000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total de Alunos'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object FDQry_Consulta: TFDQuery
    Connection = DMAcademico.FDConnection_academico
    SQL.Strings = (
      'select professores.cod,'
      '       professores.nome,'
      '       alunos.cod as cod_aluno,'
      '       alunos.nome as nome_aluno,'
      'Dalunos.cod_disciplina,'
      
        'cast(disciplinas.cod as varchar(50)) ||'#39'-'#39'|| disciplinas.descric' +
        'ao as nome_disciplina'
      ''
      'from professores'
      'inner join disciplinas'
      'on(professores.cod_disciplina=disciplinas.cod)'
      'inner join'
      ' DISCIPLINA_ALUNO Dalunos'
      'on(Dalunos.COD_disciplina=disciplinas.cod)'
      'inner join alunos'
      'on(Dalunos.COD_ALUNO=alunos.cod)'
      ''
      ''
      'where 1=1'
      '/*QI*/'
      ''
      ' order by professores.nome')
    Left = 544
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
    object FDQry_ConsultaCOD_ALUNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ALUNO'
      Origin = 'COD'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_ConsultaNOME_ALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_ALUNO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object FDQry_ConsultaCOD_DISCIPLINA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_DISCIPLINA'
      Origin = 'COD_DISCIPLINA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQry_ConsultaNOME_DISCIPLINA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_DISCIPLINA'
      Origin = 'NOME_DISCIPLINA'
      ProviderFlags = []
      ReadOnly = True
      Size = 101
    end
  end
end
