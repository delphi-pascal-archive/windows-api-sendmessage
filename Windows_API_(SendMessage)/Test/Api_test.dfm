object Form1: TForm1
  Left = 228
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Test'
  ClientHeight = 401
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 257
    Height = 24
    TabOrder = 0
    Text = 'Edit text'
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 257
    Height = 105
    Lines.Strings = (
      'Memo line 1'
      'Memo line 2'
      'Memo line 3'
      'Memo line 4'
      'Memo line 5')
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 8
    Top = 152
    Width = 257
    Height = 97
    ItemHeight = 16
    Items.Strings = (
      'List Box line 1'
      'List Box line 2'
      'List Box line 3'
      'List Box line 4')
    TabOrder = 2
  end
  object ListView1: TListView
    Left = 8
    Top = 256
    Width = 489
    Height = 137
    Columns = <
      item
        Caption = '1'
        Width = 100
      end
      item
        Caption = '2'
        Width = 120
      end
      item
        Caption = '3'
        Width = 120
      end
      item
        Caption = '4'
        Width = 120
      end>
    Items.Data = {
      D80000000400000000000000FFFFFFFFFFFFFFFF0000000000000000104C6973
      742076696577206C696E65203100000000FFFFFFFFFFFFFFFF00000000000000
      00104C6973742076696577206C696E65203200000000FFFFFFFFFFFFFFFF0000
      000000000000104C6973742076696577206C696E65203300000000FFFFFFFFFF
      FFFFFF0300000000000000104C6973742076696577206C696E652034114C6973
      742076696577206C696E65203431114C6973742076696577206C696E65203432
      114C6973742076696577206C696E65203433FFFFFFFFFFFF}
    TabOrder = 3
    ViewStyle = vsReport
  end
  object TreeView1: TTreeView
    Left = 272
    Top = 8
    Width = 225
    Height = 241
    Indent = 19
    TabOrder = 4
    Items.Data = {
      05000000280000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      0F5472656520766977206C696E652031280000000000000000000000FFFFFFFF
      FFFFFFFF00000000030000000F5472656520766977206C696E65203229000000
      0000000000000000FFFFFFFFFFFFFFFF00000000000000001054726565207669
      77206C696E65203232290000000000000000000000FFFFFFFFFFFFFFFF000000
      0000000000105472656520766977206C696E6520323229000000000000000000
      0000FFFFFFFFFFFFFFFF0000000000000000105472656520766977206C696E65
      203233280000000000000000000000FFFFFFFFFFFFFFFF00000000000000000F
      5472656520766977206C696E652033280000000000000000000000FFFFFFFFFF
      FFFFFF00000000000000000F5472656520766977206C696E6520342800000000
      00000000000000FFFFFFFFFFFFFFFF00000000000000000F5472656520766977
      206C696E652035}
  end
end
