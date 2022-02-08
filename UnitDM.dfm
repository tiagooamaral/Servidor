object DM: TDM
  OldCreateOrder = False
  Encoding = esASCII
  Height = 592
  Width = 490
  object conn: TFDConnection
    Params.Strings = (
      'Database=/dados/db/INTEGRADE.FDB'
      'User_Name=uniscom'
      'Password=uniscom'
      'Server=192.168.0.21'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 32
  end
  object RESTDWPoolerDB1: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD1
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 104
    Top = 24
  end
  object RESTDWDriverFD1: TRESTDWDriverFD
    CommitRecords = 100
    Connection = conn
    Left = 200
    Top = 24
  end
end
