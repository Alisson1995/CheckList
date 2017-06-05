object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '1 Config Conex /  2 GERAR SQL  '
  ClientHeight = 534
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 817
    Height = 534
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 526
    object TabSheet1: TTabSheet
      Caption = '1 Configurar Conexao'
      ExplicitHeight = 389
      object Label1: TLabel
        Left = 24
        Top = 53
        Width = 27
        Height = 13
        Caption = 'HOST'
      end
      object Label2: TLabel
        Left = 167
        Top = 53
        Width = 25
        Height = 13
        Caption = 'BASE'
      end
      object Label3: TLabel
        Left = 294
        Top = 53
        Width = 31
        Height = 13
        Caption = 'LOGIN'
      end
      object Label4: TLabel
        Left = 421
        Top = 53
        Width = 33
        Height = 13
        Caption = 'SENHA'
      end
      object edtHost: TEdit
        Left = 24
        Top = 72
        Width = 137
        Height = 21
        TabOrder = 0
        Text = 'DESKTOP-ULTNRCI\SQL'
      end
      object edtBase: TEdit
        Left = 167
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'FINANCAS'
      end
      object edtLogin: TEdit
        Left = 294
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'sa'
      end
      object edtSenha: TEdit
        Left = 421
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'ali1236SP'
      end
      object Button2: TButton
        Left = 548
        Top = 70
        Width = 125
        Height = 25
        Caption = 'Teste Conexao'
        TabOrder = 4
        OnClick = Button2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = '2 GERAR SQL'
      ImageIndex = 1
      OnShow = TabSheet2Show
      ExplicitHeight = 389
      object Memo1: TMemo
        Left = 0
        Top = 49
        Width = 809
        Height = 432
        Align = alClient
        Lines.Strings = (
          'SELECT C01A_CODFUN  AS CODFUN'
          '      ,C01A_NOME    AS NOME'
          '      ,'#39'01'#39'          AS TIPO'
          '      ,'#39'VINTE CARACTERES 2  '#39'          AS OBS'
          '      ,'#39'SAIU DOS FUNCION'#193'RIAO'#39'  AS MOTIVO'
          '  FROM T01A'
          ''
          '  UNION'
          ''
          'SELECT C0ES_CODFUN  AS CODFUN'
          '      ,C0ES_NOME    AS NOME'
          '      ,'#39'02'#39'          AS TIPO'
          '      ,'#39'CALCULADO OK SSSS3SS'#39'          AS OBS'
          
            '      ,'#39'SAIU DO CALCULO DO COLABORADORSSSSSASSSASDAFfsKDKKKKKEWR' +
            'TWERTERTWERTWERTWERTWERTKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKASDAS'#39
          'AS MOTIVO'
          '  FROM T0ES'
          ''
          ''
          '  UNION'
          ''
          'SELECT C0ES_CODFUN  AS CODFUN'
          '      ,C0ES_NOME    AS NOME'
          '      ,'#39'02'#39'          AS TIPO'
          '      ,'#39'CALCULADO OK SSSS2SS'#39'          AS OBS'
          '      ,'#39'SAIU DO CALCULO DO COLABORADOR'#39' AS MOTIVO'
          '  FROM T0ES'
          ''
          'ORDER BY TIPO,NOME')
        TabOrder = 0
        ExplicitTop = 112
        ExplicitHeight = 321
      end
      object btnCHECAR: TButton
        Left = 0
        Top = 481
        Width = 809
        Height = 25
        Align = alBottom
        Caption = 'Executar check list'
        TabOrder = 1
        OnClick = btnCHECARClick
        ExplicitTop = 464
        ExplicitWidth = 153
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 809
        Height = 49
        Align = alTop
        TabOrder = 2
        object mskInicioComp: TMaskEdit
          Left = 8
          Top = 16
          Width = 97
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object Button1: TButton
          Left = 128
          Top = 14
          Width = 233
          Height = 25
          Caption = 'GERAR SQL'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
  end
  object qryCheck: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT C01A_CODFUN  AS CODFUN'
      '      ,C01A_NOME    AS NOME'
      '      ,'#39'01'#39'          AS TIPO'
      '      ,'#39'VINTE CARACTERES    '#39'          AS OBS'
      
        '      ,'#39'SAIU DO CALCULO DO COLABORADORSSSSSASSSASDAFfsKDKKKKKKKK' +
        'KKKKKKKKKKKKKKKKEWRTWERKKKKKKKKKKEWRTWERTWERTWERTWERTKKKKKASDAS'#39 +
        '  AS MOTIVO'
      '  FROM T01A'
      ''
      '  UNION'
      ''
      'SELECT C0ES_CODFUN  AS CODFUN'
      '      ,C0ES_NOME    AS NOME'
      '      ,'#39'02'#39'          AS TIPO'
      '      ,'#39'CALCULADO OK SSSSSSS'#39'          AS OBS'
      
        '      ,'#39'SAIU DO CALCULO DO COLABORADORSSSSSASSSASDAFfsKDKKKKKEWR' +
        'TWERTERTWERTWERTWERTWERTKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKASDAS'#39 +
        ' AS MOTIVO'
      '  FROM T0ES'
      '')
    SQLConnection = CONEX
    Left = 732
    Top = 248
    object qryCheckCODFUN: TStringField
      FieldName = 'CODFUN'
      ProviderFlags = [pfInWhere, pfInKey]
      Size = 8
    end
    object qryCheckNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 100
    end
    object qryCheckTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInWhere, pfInKey]
      Size = 2
    end
    object qryCheckOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
    end
    object qryCheckMOTIVO: TStringField
      FieldName = 'MOTIVO'
      ProviderFlags = []
      Size = 119
    end
  end
  object dspCheck: TDataSetProvider
    DataSet = qryCheck
    Left = 732
    Top = 296
  end
  object cdsCheck: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCheck'
    Left = 732
    Top = 344
    object cdsCheckCODFUN: TStringField
      FieldName = 'CODFUN'
      ProviderFlags = [pfInWhere, pfInKey]
      Size = 8
    end
    object cdsCheckNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCheckTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInWhere, pfInKey]
      Size = 2
    end
    object cdsCheckOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
    end
    object cdsCheckMOTIVO: TStringField
      FieldName = 'MOTIVO'
      ProviderFlags = []
      Size = 119
    end
  end
  object CONEX: TSQLConnection
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=%.dbo'
      'DriverUnit=Data.DBXMSSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMSSQL'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'VendorLibWin64=sqlncli10.dll'
      'HostName=DESKTOP-ULTNRCI\SQL'
      'Database=FINANCAS'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OSAuthentication=False'
      'PrepareSQL=True'
      'User_Name=sa'
      'Password=ali1236SP'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Prepare SQL=False')
    Left = 732
    Top = 200
  end
  object frptCheck: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42890.757210844900000000
    ReportOptions.LastChange = 42890.792932152770000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 464
    Datasets = <
      item
        DataSet = fdtsCheck
        DataSetName = 'fdtsCheck'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CHECK LIST FOLHA DE PAGAMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        Condition = 'fdtsCheck."TIPO"'
        StartNewPage = True
        object fdtsCheckCODFUN: TfrxMemoView
          Align = baLeft
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = fdtsCheck
          DataSetName = 'fdtsCheck'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Colaborador')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 257.008040000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          DataSet = fdtsCheck
          DataSetName = 'fdtsCheck'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Motivo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = fdtsCheck
        DataSetName = 'fdtsCheck'
        RowCount = 0
        object fdtsCheckCODFUN1: TfrxMemoView
          Align = baLeft
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = fdtsCheck
          DataSetName = 'fdtsCheck'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[fdtsCheck."CODFUN"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object fdtsCheckMOTIVO: TfrxMemoView
          Align = baLeft
          Left = 257.008040000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          DataSet = fdtsCheck
          DataSetName = 'fdtsCheck'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[fdtsCheck."MOTIVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 64.252010000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = fdtsCheck
          DataSetName = 'fdtsCheck'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[fdtsCheck."NOME"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
    end
  end
  object fdtsCheck: TfrxDBDataset
    UserName = 'fdtsCheck'
    CloseDataSource = False
    DataSet = cdsCheck
    BCDToCurrency = False
    Left = 736
    Top = 408
  end
end
