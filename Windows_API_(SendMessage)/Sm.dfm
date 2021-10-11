object Form1: TForm1
  Left = 235
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Windows Api (SendMessage)'
  ClientHeight = 721
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 8
    Top = 64
    Width = 625
    Height = 9
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 58
    Height = 16
    Caption = 'Send text:'
  end
  object Bevel6: TBevel
    Left = 8
    Top = 136
    Width = 377
    Height = 9
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 8
    Top = 224
    Width = 37
    Height = 16
    Caption = 'From: '
  end
  object Label2: TLabel
    Left = 112
    Top = 224
    Width = 20
    Height = 16
    Caption = 'To:'
  end
  object Bevel2: TBevel
    Left = 8
    Top = 288
    Width = 625
    Height = 9
    Shape = bsBottomLine
  end
  object Label5: TLabel
    Left = 208
    Top = 224
    Width = 39
    Height = 16
    Caption = 'Sleep:'
  end
  object Bevel4: TBevel
    Left = 8
    Top = 248
    Width = 377
    Height = 9
    Shape = bsBottomLine
  end
  object Bevel3: TBevel
    Left = 196
    Top = 152
    Width = 9
    Height = 97
    Shape = bsLeftLine
  end
  object Button13: TButton
    Left = 512
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Move window'
    TabOrder = 0
    OnClick = Button13Click
  end
  object Edit2: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object Button14: TButton
    Left = 384
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Max window'
    TabOrder = 2
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 512
    Top = 40
    Width = 121
    Height = 25
    Caption = 'Close window'
    TabOrder = 3
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 384
    Top = 40
    Width = 121
    Height = 25
    Caption = 'Min window'
    TabOrder = 4
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 256
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Hide window'
    TabOrder = 5
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 256
    Top = 40
    Width = 121
    Height = 25
    Caption = 'Show window'
    TabOrder = 6
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Window'
    TabOrder = 7
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 8
    Top = 40
    Width = 113
    Height = 25
    Caption = 'Caption'
    TabOrder = 8
    OnClick = Button20Click
  end
  object Edit3: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 24
    TabOrder = 9
    Text = 'DOOM III'
  end
  object ListBox1: TListBox
    Left = 392
    Top = 112
    Width = 241
    Height = 177
    ItemHeight = 16
    Sorted = True
    TabOrder = 10
    OnClick = ListBox1Click
  end
  object Button23: TButton
    Left = 400
    Top = 120
    Width = 129
    Height = 25
    Caption = 'View Windows'
    TabOrder = 11
    Visible = False
    OnClick = Button23Click
  end
  object Button24: TButton
    Left = 8
    Top = 80
    Width = 177
    Height = 25
    Caption = 'Send to sample'
    TabOrder = 12
    OnClick = Button24Click
  end
  object Button27: TButton
    Left = 8
    Top = 152
    Width = 177
    Height = 25
    Caption = 'Send to "Control"'
    TabOrder = 13
    OnClick = Button27Click
  end
  object Edit5: TEdit
    Left = 72
    Top = 112
    Width = 313
    Height = 24
    TabOrder = 14
    Text = 'TEST'
  end
  object Button25: TButton
    Left = 200
    Top = 80
    Width = 185
    Height = 25
    Caption = 'Send to all buttons'
    TabOrder = 15
    OnClick = Button25Click
  end
  object Edit7: TEdit
    Left = 256
    Top = 264
    Width = 129
    Height = 24
    TabOrder = 16
    Text = #1055#1086#1089#1083#1072#1090#1100
    OnKeyPress = Edit7KeyPress
  end
  object Button26: TButton
    Left = 8
    Top = 264
    Width = 233
    Height = 25
    Caption = #1053#1072#1078#1072#1090#1100' '#1082#1085#1086#1087#1082#1091' ('#1080#1084#1103' '#1082#1085#1086#1087#1082#1080' -->)'
    TabOrder = 17
    OnClick = Button26Click
  end
  object Button30: TButton
    Left = 8
    Top = 184
    Width = 177
    Height = 25
    Caption = 'Insert text in string...'
    TabOrder = 18
    OnClick = Button30Click
  end
  object Button31: TButton
    Left = 208
    Top = 152
    Width = 177
    Height = 25
    Caption = 'Add lines (RE, Mm, LB, CB)'
    TabOrder = 19
    OnClick = Button31Click
  end
  object CheckBox2: TCheckBox
    Left = 392
    Top = 88
    Width = 153
    Height = 17
    Caption = 'Programs: Visible/All'
    TabOrder = 20
    OnClick = CheckBox2Click
  end
  object Edit1: TEdit
    Left = 64
    Top = 216
    Width = 25
    Height = 24
    TabOrder = 21
    Text = '1'
  end
  object Edit4: TEdit
    Left = 160
    Top = 216
    Width = 25
    Height = 24
    TabOrder = 22
    Text = '4'
  end
  object Button2: TButton
    Left = 208
    Top = 184
    Width = 177
    Height = 25
    Caption = 'Send to ICQ'
    TabOrder = 23
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 192
    Width = 49
    Height = 25
    Caption = '"push"'
    TabOrder = 24
    Visible = False
    OnClick = Button3Click
  end
  object TrackBar1: TTrackBar
    Left = 272
    Top = 216
    Width = 113
    Height = 25
    Max = 100
    Frequency = 5
    TabOrder = 25
    ThumbLength = 15
    OnChange = TrackBar1Change
  end
  object Button1: TButton
    Left = 8
    Top = 304
    Width = 625
    Height = 25
    Caption = 'Handles ('#1076#1077#1089#1082#1088#1080#1087#1090#1086#1088#1099' '#1074#1089#1077#1093' '#1086#1082#1086#1085' Windows)'
    TabOrder = 26
    OnClick = Button1Click
  end
  object TreeView1: TTreeView
    Left = 8
    Top = 336
    Width = 625
    Height = 377
    Indent = 19
    TabOrder = 27
  end
  object Button4: TButton
    Left = 376
    Top = 344
    Width = 225
    Height = 25
    Caption = 'Get text from control ...'
    TabOrder = 28
    OnClick = Button4Click
  end
  object ComboBox1: TComboBox
    Left = 376
    Top = 376
    Width = 225
    Height = 24
    ItemHeight = 16
    Sorted = True
    TabOrder = 29
    Text = 'Controls'
  end
  object Memo1: TMemo
    Left = 376
    Top = 408
    Width = 225
    Height = 209
    ScrollBars = ssBoth
    TabOrder = 30
  end
  object Button5: TButton
    Left = 376
    Top = 656
    Width = 225
    Height = 25
    Caption = 'Save text'
    TabOrder = 31
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 376
    Top = 624
    Width = 225
    Height = 25
    Caption = 'Distinct List'
    TabOrder = 32
    OnClick = Button6Click
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 328
    Top = 344
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Text files (*.txt)|*.txt'
    Left = 416
    Top = 608
  end
end
