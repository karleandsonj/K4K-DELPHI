object DM: TDM
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object CONEXAO: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=local'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object SGA: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'ID'
    DetailFields = 'ID'
    Connection = CONEXAO
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'FORMULARIO'
    Left = 56
    Top = 104
    object SGAID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      Size = 25
    end
    object SGASISTEMA: TStringField
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      Size = 50
    end
    object SGAERRORESUMIDO: TStringField
      FieldName = 'ERRORESUMIDO'
      Origin = 'ERRORESUMIDO'
      Size = 50
    end
    object SGAERRO: TMemoField
      FieldName = 'ERRO'
      Origin = 'ERRO'
      BlobType = ftMemo
    end
    object SGASOLUCAO: TMemoField
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      BlobType = ftMemo
    end
    object SGASCRIPT: TMemoField
      FieldName = 'SCRIPT'
      Origin = 'SCRIPT'
      BlobType = ftMemo
    end
    object SGAIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object SGAANEXO: TBlobField
      FieldName = 'ANEXO'
      Origin = 'ANEXO'
    end
  end
  object dsSGA: TDataSource
    DataSet = BUSCA
    Left = 56
    Top = 184
  end
  object SQLCONSULTA: TFDQuery
    CachedUpdates = True
    DetailFields = 'ID'
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT * FROM FORMULARIO ')
    Left = 136
    Top = 32
  end
  object BUSCA: TFDQuery
    CachedUpdates = True
    AggregatesActive = True
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT * FROM FORMULARIO')
    Left = 208
    Top = 32
  end
  object F2_CONS: TFDQuery
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT * FROM FORMULARIO')
    Left = 264
    Top = 32
  end
  object CONSULTA_CAD: TFDQuery
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT '
      '  r.ID, '
      '  r.SISTEMA, '
      '  CASE '
      '    WHEN POSITION('#39' - '#39' IN r.ERRORESUMIDO) > 0 '
      
        '    THEN SUBSTRING(r.ERRORESUMIDO FROM 1 FOR POSITION('#39' - '#39' IN r' +
        '.ERRORESUMIDO) - 1)'
      '    ELSE r.ERRORESUMIDO '
      '  END AS ERRORESUMIDO, '
      '  r.ERRO, '
      '  r.SOLUCAO, '
      '  r.SCRIPT, '
      '  r.IMAGEM, '
      '  r.ANEXO'
      'FROM '
      '  FORMULARIO r;'
      '')
    Left = 328
    Top = 32
  end
end
