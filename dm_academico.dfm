object DMAcademico: TDMAcademico
  OldCreateOrder = False
  Height = 223
  Width = 301
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\Projetos_carlos\academico\dados\ACADEMICO.FDB'
      'DriverID=FB')
    Left = 48
    Top = 48
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 144
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 216
    Top = 48
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    Left = 136
    Top = 120
  end
end
