object FrList_Disciplinas_Alunos: TFrList_Disciplinas_Alunos
  Left = 0
  Top = 0
  Caption = 'FrList_Disciplinas_Alunos'
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
  object RelList_Disciplinas_Alunos: TQuickRep
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
        Width = 198
        Height = 17
        Size.Values = (
          44.979166666666670000
          597.958333333333300000
          31.750000000000000000
          523.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Listagem de Alunos por Disciplina'
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
      Top = 73
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
      Expression = 'FDQry_Consulta.COD_DISCIPLINA'
      Master = RelList_Disciplinas_Alunos
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 78
        Top = 8
        Width = 117
        Height = 17
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          21.166666666666670000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'NOME_DISCIPLINA'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 8
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Disciplina'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 27
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          71.437500000000000000
          89.958333333333330000)
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
      object QRLabel4: TQRLabel
        Left = 424
        Top = 27
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          71.437500000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per.  1'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 472
        Top = 27
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          71.437500000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per.  2'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 520
        Top = 27
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          71.437500000000000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Trabalho'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 649
        Top = 27
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
          71.437500000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Resultado'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 584
        Top = 27
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          71.437500000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Media'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
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
      object QRDBText2: TQRDBText
        Left = 9
        Top = 0
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          0.000000000000000000
          76.729166666666670000)
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
        Left = 47
        Top = 0
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          124.354166666666700000
          0.000000000000000000
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
      object QRDBText4: TQRDBText
        Left = 424
        Top = 0
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          0.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'NOTA_PER1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 471
        Top = 0
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1246.187500000000000000
          0.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'NOTA_PER2'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 582
        Top = 0
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1539.875000000000000000
          0.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'MEDIA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 522
        Top = 0
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          1381.125000000000000000
          0.000000000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'NOTA_TRABALHO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 649
        Top = 0
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQry_Consulta
        DataField = 'RESULTADO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object FDQry_Consulta: TFDQuery
    Connection = DMAcademico.FDConnection_academico
    SQL.Strings = (
      'select alunos.cod, alunos.nome, Dalunos.cod_disciplina,'
      
        'cast(disciplinas.cod as varchar(50)) ||'#39'-'#39'|| disciplinas.descric' +
        'ao as nome_disciplina,'
      '  Dalunos.NOTA_PER1,'
      '  Dalunos.NOTA_PER2,'
      '  Dalunos.NOTA_TRABALHO,'
      '  Dalunos.MEDIA,'
      
        '  CASE when (Dalunos.NOTA_PER1 is null) and (Dalunos.NOTA_PER2 i' +
        's null) and (Dalunos.NOTA_TRABALHO is null) THEN'
      '      '#39'Agusardndo Notas'#39
      '      WHEN Dalunos.MEDIA >= 7 THEN'
      '      '#39'Aprovado'#39
      '      else'
      '      '#39'Reprovado'#39
      '      end as Resultado'
      ''
      'from DISCIPLINA_ALUNO Dalunos'
      'left join alunos'
      'on(Dalunos.COD_ALUNO=alunos.cod)'
      'left join disciplinas'
      'on(Dalunos.cod_disciplina=disciplinas.cod)'
      'where 1=1'
      '/*QI*/'
      ''
      ' order by Dalunos.cod_disciplina, alunos.nome')
    Left = 544
    Top = 16
    object FDQry_ConsultaCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
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
      Required = True
    end
    object FDQry_ConsultaNOME_DISCIPLINA: TStringField
      FieldName = 'NOME_DISCIPLINA'
      Origin = 'NOME_DISCIPLINA'
      Size = 101
    end
    object FDQry_ConsultaNOTA_PER1: TFloatField
      FieldName = 'NOTA_PER1'
      Origin = 'NOTA_PER1'
    end
    object FDQry_ConsultaNOTA_PER2: TFloatField
      FieldName = 'NOTA_PER2'
      Origin = 'NOTA_PER2'
    end
    object FDQry_ConsultaNOTA_TRABALHO: TFloatField
      FieldName = 'NOTA_TRABALHO'
      Origin = 'NOTA_TRABALHO'
    end
    object FDQry_ConsultaMEDIA: TFloatField
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
    object FDQry_ConsultaRESULTADO: TStringField
      FieldName = 'RESULTADO'
      Origin = 'RESULTADO'
      Required = True
      FixedChar = True
      Size = 16
    end
  end
end
