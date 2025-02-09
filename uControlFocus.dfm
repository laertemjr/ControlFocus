object frmControlFocus: TfrmControlFocus
  Left = 0
  Top = 0
  Caption = 'ControlFocus - know which component is in focus'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object ListBox1: TListBox
    Left = 408
    Top = 8
    Width = 197
    Height = 401
    TabStop = False
    ItemHeight = 15
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 8
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 8
    Top = 66
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 8
    Top = 95
    Width = 121
    Height = 23
    TabOrder = 4
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 8
    Top = 124
    Width = 121
    Height = 23
    TabOrder = 5
    Text = 'Edit5'
  end
  object Button1: TButton
    Left = 160
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 160
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 7
  end
  object Button3: TButton
    Left = 160
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 8
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Developed in Delphi 12.1, version 0.1 (2025)'
        Width = 50
      end>
    ExplicitLeft = 256
    ExplicitTop = 424
    ExplicitWidth = 0
  end
end
