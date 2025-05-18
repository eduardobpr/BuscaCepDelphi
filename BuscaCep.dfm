object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 588
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 48
    Top = 56
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Label2: TLabel
    Left = 224
    Top = 56
    Width = 69
    Height = 15
    Caption = 'Longradouro'
  end
  object Label3: TLabel
    Left = 48
    Top = 101
    Width = 77
    Height = 15
    Caption = 'Complemento'
  end
  object Label4: TLabel
    Left = 224
    Top = 101
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label5: TLabel
    Left = 48
    Top = 157
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Label6: TLabel
    Left = 287
    Top = 157
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object Label8: TLabel
    Left = 50
    Top = 214
    Width = 24
    Height = 15
    Caption = 'IBGE'
  end
  object Label9: TLabel
    Left = 287
    Top = 214
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object edtLongradouro: TEdit
    Left = 224
    Top = 72
    Width = 289
    Height = 23
    TabOrder = 1
  end
  object edtcomplemento: TEdit
    Left = 48
    Top = 120
    Width = 170
    Height = 23
    TabOrder = 2
  end
  object edtbairro: TEdit
    Left = 224
    Top = 120
    Width = 289
    Height = 23
    TabOrder = 3
  end
  object edtcidade: TEdit
    Left = 48
    Top = 171
    Width = 170
    Height = 23
    TabOrder = 4
  end
  object edtIBGE: TEdit
    Left = 48
    Top = 227
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object edtCep: TMaskEdit
    Left = 48
    Top = 72
    Width = 119
    Height = 23
    EditMask = '00000-000'
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
    OnExit = edtCepExit
  end
  object Memo1: TMemo
    Left = 392
    Top = 264
    Width = 249
    Height = 297
    Lines.Strings = (
      '')
    TabOrder = 8
  end
  object edtTelefone: TMaskEdit
    Left = 287
    Top = 227
    Width = 144
    Height = 23
    EditMask = '(00)00000-0000'
    MaxLength = 14
    TabOrder = 7
    Text = '(  )     -    '
  end
  object edtUF: TEdit
    Left = 287
    Top = 171
    Width = 44
    Height = 23
    TabOrder = 5
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 136
    Top = 368
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 224
    Top = 368
  end
  object RESTResponse1: TRESTResponse
    Left = 136
    Top = 432
  end
end
