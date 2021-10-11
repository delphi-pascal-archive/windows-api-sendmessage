unit Sm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Registry, FileCtrl, ExtCtrls, ComCtrls, CommCtrl;

type
  TForm1 = class(TForm)
    Bevel1: TBevel;
    Button13: TButton;
    Edit2: TEdit;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Edit3: TEdit;
    ListBox1: TListBox;
    Button23: TButton;
    Button24: TButton;
    Button27: TButton;
    Edit5: TEdit;
    Button25: TButton;
    Label3: TLabel;
    Bevel6: TBevel;
    Edit7: TEdit;
    Button26: TButton;
    Button30: TButton;
    Button31: TButton;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit4: TEdit;
    Bevel2: TBevel;
    Button2: TButton;
    Button3: TButton;
    Label5: TLabel;
    TrackBar1: TTrackBar;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Button1: TButton;
    TreeView1: TTreeView;
    Button4: TButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Timer1: TTimer;
    Button5: TButton;
    SaveDialog1: TSaveDialog;
    Button6: TButton;
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button13Click(Sender: TObject);
var
 s:string;
 r:PChar;
begin
 s:=Edit2.Text;
 r:=PChar(s);
 SetWindowPos(FindWindow(nil,r),HWND_BOTTOM,1,1,20,20,SWP_nosize);
{
 ��� ������ �������� - ��������� ����, � ������� ���� ���-���� �������.

 ������ �������� - ��������� ���� (�.�. ��� Z-������������), �� ��� ������ �� �����. ������ ��������, ��� �� ������ ���� HWND_BOTTOM
 ������ �������� - ���������� ���� �� "��� X" � ��������.
 ��������� �������� - ���������� ���� �� "��� Y" � �������� (�.�. ����� ������������ �� ���������� ���� ������� ����).
 ����� - ������ ���� �� �����������
 ������ - ������ ���� �� ���������
 ������� ��������, �� ����� ��������� ��������. ��� �������� �� ���:

 SWP_HIDEWINDOW - ����� ���������� �������� ��� ����� ( ������������ � ���������� ������� ) ���� ��������
 SWP_NOSIZE - ���� ������ ���� ��������, �� 5� � 6� ��������� ����������� �� �����, �.�. ���� ������ ������ �� ����� (���� �������� ������ � ����� ������� )
 SWP_NOMOVE - ���� ������ ���� ��������, �� 3� � 4� ��������� ����������� �� �����, �.�. ���� �� ����� ������������.
 SWP_SHOWWINDOW - ����� ���������� �������� ��� ����� ( ������������ � ���������� ������� ) ���� ����� �������� ( �������� ������ ���� ���� ���� ��������)
}
 SetWindowText(FindWindow(nil,r),'DOOM III');
end;

procedure TForm1.Button14Click(Sender: TObject);
var
 s:string;
 r:PChar;
begin
 s:=Edit2.Text;
 r:=PChar(s);
 ShowWindow(FindWindow(nil,r),SW_MAXIMIZE);
end;

procedure TForm1.Button15Click(Sender: TObject);
var
 s:string;
 r:PChar; 
begin
 s:=Edit2.Text;
 r:=PChar(s);
 PostMessage(FindWindow(nil,r),wm_quit,0,0);
{
 ��������� �� wm_...
 ��. borland delphi>Help>MS SDK Help Files>Win32 Programmer's Reference
}
end;

procedure TForm1.Button16Click(Sender: TObject);
var
 h: cardinal;
begin
 h:=FindWindow(PChar(Edit2.Text), nil);
 ShowWindow(h,SW_MINIMIZE);
end;

procedure TForm1.Button17Click(Sender: TObject);
var
 s:string;
 r:PChar;
begin
 s:=Edit2.Text;
 r:=PChar(s);
 ShowWindow(FindWindow(nil,r),SW_HIDE);
end;

procedure TForm1.Button18Click(Sender: TObject);
var
 s:string;
 r:PChar;
begin
 s:=Edit2.Text;
 r:=PChar(s);
 ShowWindow(FindWindow(nil,r),SW_SHOW);
end;

procedure TForm1.Button19Click(Sender: TObject);
var
 s:string;
 r:PChar;
begin
 s:=Edit2.Text;
 r:=PChar(s);
 if FindWindow(nil,r)<>0
 then ShowMessage('���� ������������!')
 else ShowMessage('���� �� ������������!');
end;

procedure TForm1.Button20Click(Sender: TObject);
var
 s:string;
 r:PChar;
begin
 s:=Edit2.Text;
 r:=PChar(s);
 // SetWindowText(Wnd,'What a Hell!!!!!!!!!!');  
 SetWindowText(FindWindow(nil,r),'DOOM III');
 Edit2.Text:=Edit3.Text;
end;

procedure TForm1.Button23Click(Sender: TObject);
var
 Wnd: hWnd;
 buff: array [0..127] of Char;
begin
 ListBox1.Clear;
 Wnd:=GetWindow(Handle, gw_HWndFirst);
 while Wnd<>0 do
  begin // �� ����������
   if (Wnd<>Application.Handle) and // ����������� ����
   (IsWindowVisible(Wnd) or CheckBox2.Checked) and // ��������� ����
   // ((GetWindow(Wnd, gw_Owner)=0)) and // �������� ����
   (GetWindowText(Wnd, buff, sizeof(buff))<>0) // ���� ��� ����������
   then
    begin
     GetWindowText(Wnd, buff, sizeof(buff));
     ListBox1.Items.Add(StrPas(buff));
    end;
   Wnd:=GetWindow(Wnd, gw_hWndNext);
  end;
end;

procedure TForm1.Button24Click(Sender: TObject);
var
 i: integer;
 My_str: string;
 W_h,C_w: THandle;
begin
 my_str:=Edit5.Text;
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    W_h:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    C_w:=FindWindowEx(W_h,0,nil,nil);
    SendMessage(C_w,WM_SETTEXT,0,LParam(my_str));
   end;
end;

procedure TForm1.Button25Click(Sender: TObject);
var
 W_h,Child_w: HWnd;
 my_string: string;
 i: byte;
 j: integer;
begin
 i:=1;
 my_string:='All_But';
 for j:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[j]
  then
   begin
    W_h:=FindWindow(nil,PChar(ListBox1.Items.Strings[j]));
    // ������ Child Wnd
    Child_w:=FindWindowEx(W_h,0,nil,nil);
    SendMessage(Child_w,WM_SETTEXT,0,LParam(my_string));
    while Child_w<>0 do
     begin
      inc(i);
      my_string:='All_But '+IntToStr(i);
      // ���������
      Child_w:=FindWindowEx(W_h,Child_w,nil,nil);
      SendMessage(Child_w,WM_SETTEXT,0,LParam(my_string));
      Application.ProcessMessages;
     end;
   end;
end;

procedure TForm1.Button27Click(Sender: TObject);
var
 i: integer;
 Wnd: hWnd;
 TrayWnd, BtnWnd: hWnd; // ��� Button 
 Control : array [0..127] of char;
 AText: string;
begin
 AText:=Edit5.Text;
 // ����� ���� ������ ����������
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd, Control, SizeOf(Control));
    // ���� ������ �������
    while Control<>'' do //////// �������� ��� ��������
     begin
      Wnd:=GetWindow(Wnd, GW_HWNDNEXT);
      GetClassName(Wnd, Control, SizeOf(Control));
     end;
    // �������� � ���� ������ �����
    SendMessage(Wnd, WM_SETTEXT, 0, Integer(PChar(AText)));
   end;
end;

procedure TForm1.Button26Click(Sender: TObject);
var
 i,j: integer;
 Wnd: hWnd;
 TrayWnd, BtnWnd: hWnd; // ��� Button
 Control : array [0..127] of char;
begin
 // ����� ���� ������ ����������
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd, Control, SizeOf(Control));
    // ���� ������ �������
    while Control<>'' do //////// �������� ��� ��������
     begin
      Wnd:=GetWindow(Wnd, GW_HWNDNEXT);
      GetClassName(Wnd, Control, SizeOf(Control));
     end;
    // ������ ������
    TrayWnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    while Control<>'' do
     begin
      if Control='' then //////// �������� ��� ��������
       begin                              //  |
        //////// �������� ��� �������� ->    \/
        BtnWnd:=FindWindowEx(TrayWnd,0,PChar(''),PChar(Edit7.Text)); //////// �������� ��� ��������
        SendMessage(BtnWnd,WM_LBUTTONDOWN,0,0);
        SendMessage(BtnWnd,WM_LBUTTONUP,0,0);
        Break;
       end;
      Wnd:=GetWindow(Wnd, GW_HWNDNEXT);
      GetClassName(Wnd, Control, SizeOf(Control));
     end;
   end;
end;

procedure TForm1.Button30Click(Sender: TObject);
var
 i, SelStart1,SelStart2: integer;
 Wnd: hWnd;
 TrayWnd, BtnWnd: hWnd; // ��� Button
 Control : array [0..127] of char;
begin
 // ����� ���� ������ ����������
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd,Control,SizeOf(Control));
    // ���� ������ �������
    while Control<>'' do //////// �������� ��� ��������
     begin
      Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
      GetClassName(Wnd,Control,SizeOf(Control));
     end;
    // �������� � ���� ������ �����
    SendMessage(Wnd,WM_SETTEXT,0,Integer(PChar('The 3D Setup program defaults to D3D support for the above chipsets')));
    // ������� ������ � ����� ������
    SelStart1:=StrToInt(Edit1.Text);
    SelStart2:=StrToInt(Edit4.Text);
    SendMessage(Wnd,EM_SETSEL,SelStart1, SelStart2);
    SendMessage(Wnd,EM_REPLACESEL,0,Longint(PChar('*_����������� �����_*')));
   end;
end;

procedure TForm1.Button31Click(Sender: TObject);
var
 i,j: integer;
 Wnd: hWnd;
 TrayWnd, BtnWnd: hWnd; // ��� Button
 Control : array [0..127] of char;
 AText: string;
begin
 AText:=Edit5.Text;
 // ����� ���� ������ ����������
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd,Control,SizeOf(Control));
    // ���� ������ �������
    while Control<>'' do //////// �������� ��� ��������
     begin
      Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
      GetClassName(Wnd,Control,SizeOf(Control));
     end;
    // ������� ������ � ����� ������
    SendMessage(Wnd,EM_ReplaceSel,0,LongInt(PChar('1 ������'+#10+'2 ������ 2')));
    // �������� ������ � ListBox
    SendMessage(Wnd,LB_ADDSTRING,0,LParam(PChar('Add_ListBox')));
    // �������� ������ � ComboBox
    SendMessage(Wnd,CB_ADDSTRING,0,LParam(PChar('Add_ComboBox')));
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Application.Title:='Windows Api (SendMessage)';
 Button23.Click;
 Label5.Caption:='Sleep: '+IntToStr(TrackBar1.Position);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
 Button23Click(Form1);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
 i: integer;
begin
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]=true
  then Edit2.Text:=ListBox1.Items.Strings[i];
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   Key:=#0;
   Button26.Click;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 i,j: integer;
 Wnd: hWnd;
 TrayWnd, BtnWnd: hWnd; // ��� Button
 Control : array [0..127] of char;
 AText: string;
begin
 AText:=Edit5.Text;
 // ����� ���� ������ ����������
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd,Control,SizeOf(Control));
    // ���� ������ �������
    while Control<>'' do //////// �������� ��� ��������
     begin
      Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
      GetClassName(Wnd,Control,SizeOf(Control));
     end;
    // ������� ������ � ����� ������
    for j:=0 to ListBox1.Items.Count-1 do
     begin
      SendMessage(Wnd,EM_ReplaceSel,0,LongInt(ListBox1.Items.Strings[j]));
//////
      TrayWnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
      while Control<>'' do
       begin
        if Control='' then //////// �������� ��� ��������
         begin                              //  |
          //////// �������� ��� ��������    -> \/
          BtnWnd:=FindWindowEx(TrayWnd,0,PChar(''),0);
          // ��� ���� ���������� ��������� ���������� (RichEdit,
          // Memo) ��� ������� ' ' ������
          // ���� ����� �� �������, ������ ����� �����
          // (Enabled=false)
          SendMessage(BtnWnd,WM_CHAR,Ord(' '),0);
          SendMessage(BtnWnd,WM_KEYDOWN,Ord(' '),0);
          Break;
         end;
        Application.ProcessMessages;
        if Application.Terminated then Break;
       end;
//////
      // ������ ������ ����� ������ (Enabled=true)
      Button3.Click;
      Button2.Caption:='Send to ICQ: '+IntToStr(j+1)+' �� '+IntToStr(ListBox1.Items.Count);
      Application.ProcessMessages;
      if Application.Terminated then Break;
      Sleep(TrackBar1.Position);
     end;
   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 i,j: integer;
 Wnd: hWnd;
 TrayWnd, BtnWnd: hWnd; // ��� Button
 Control : array [0..127] of char;
begin
 // ����� ���� ������ ����������
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd,Control,SizeOf(Control));
    // ���� ������ �������
    while Control<>'TButton' do
     begin
      Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
      GetClassName(Wnd,Control,SizeOf(Control));
     end;
    // ������ ������
    TrayWnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    while Control<>'' do
     begin
      if Control='TButton' then
       begin
        BtnWnd:=FindWindowEx(TrayWnd,0,PChar('TButton'),PChar(Edit7.Text));
        // EnableWindow(BtnWnd,true);  // �������.Enabled:=true
        SendMessage(BtnWnd,WM_LBUTTONDOWN,0,0);
        SendMessage(BtnWnd,WM_LBUTTONUP,0,0);
        Break;
       end;
      Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
      GetClassName(Wnd,Control,SizeOf(Control));
     end;
   end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
 Label5.Caption:='Sleep: '+IntToStr(TrackBar1.Position);
end;

///////////////////////////////////////////////////// Handles

type
 PMyEnumParam = ^TMyEnumParam;
 TMyEnumParam = record
   Nodes: TTreeNodes;
   Current: TTreeNode;
 end;

function EnumWindowsProc(Wnd: HWND; Param: PMyEnumParam): BOOL; stdcall;
const
 MyMaxName=64;
 MyMaxText=64;
var
 ParamChild: TMyEnumParam;
 WindowText, ClassName: string;
begin
 Result:=true;
 SetLength(ClassName,MyMaxName);
 SetLength(ClassName,GetClassName(Wnd, PChar(ClassName), MyMaxName));
 SetLength(WindowText,MyMaxText);
 SetLength(WindowText,SendMessage(Wnd, WM_GETTEXT, MyMaxText, lParam(PChar(WindowText))));
 ParamChild.Nodes:=Param.Nodes;
 ParamChild.Current:=Param.Nodes.AddChildObject(Param.Current,
     '['+ClassName+'] "'+WindowText+'"'+' Handle: '+IntToStr(Wnd),Pointer(Wnd));
 Form1.ComboBox1.Items.Add(ClassName);
 EnumChildWindows(Wnd, @EnumWindowsProc, lParam(@ParamChild));
end;

procedure DistinctList(AllList: TStrings);
var
 Filtered: TStringList;
begin
 Filtered:=TStringList.Create;
 Filtered.Duplicates:=dupIgnore;
 Filtered.BeginUpdate;
 Filtered.Sorted:=true;
 Filtered.AddStrings(AllList);
 AllList.Clear;
 AllList.Assign(Filtered);
 Filtered.EndUpdate;
 Filtered.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 Param: TMyEnumParam;
begin
 TreeView1.Items.Clear;
 Param.Nodes:=TreeView1.Items;
 Param.Current:=TreeView1.TopItem;
 TreeView1.Items.BeginUpdate;
 ComboBox1.Clear;
 EnumWindows(@EnumWindowsProc,lParam(@Param));
 TreeView1.Items.EndUpdate;
 DistinctList(ComboBox1.Items);
 ComboBox1.Text:='Controls'; 
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 Wnd: hWnd;
 vItem: TLVItem;
 vProcessId: dWord; // ������������� ������, ������� ������ ��� ListView
 vProcess: THandle; // ���������� ��� ������ � ���������
 vPointer: Pointer; // ��������� �� ������� ���������� ������ � ����� ��������
 // worker,toolbar: hwnd;
 vNumberOfBytesRead: Cardinal;
 vBuffer: array[0..255] of Char;
 Control: array [0..127] of Char;
 i,j, TxtLength, TxtLength1, vItemCount: integer; // ���-�� ������� � ������
 WindowText,buffer_ed_mem,buffer_listbcom,buffer_tvlv: string;
begin
 for i:=0 to ListBox1.Items.Count-1 do
  if ListBox1.Selected[i]
  then
   begin
    Memo1.Lines.BeginUpdate;
    // Wnd:=FindWindow('#3605320',nil);
    Wnd:=FindWindow(nil,PChar(ListBox1.Items.Strings[i]));
    if Wnd=0
    then
     begin
      MessageBox(0, '���� �������� �� �������!', '���������', MB_OK);
      Exit;
     end;
    // worker:=FindWindowEx(wnd,0,'TPageControl',nil);
    // wnd:=FindWindowEx(worker,0,'TListView',nil);
    // � ��� ����� ������ (�� Z-�������) �������� ���� � �������� ��� �����
    Wnd:=GetWindow(Wnd,GW_CHILD);
    GetClassName(Wnd,Control,SizeOf(Control));
    // ���� ������ �������
    while Control<>ComboBox1.Text do
     begin
      Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
      GetClassName(Wnd,Control,SizeOf(Control));
     end;
    if Control=ComboBox1.Text
    then
     begin
      TxtLength:=SendMessage(Wnd, WM_GETTEXTLENGTH, 0, 0);
      TxtLength:=TxtLength+1;
      TxtLength1:=SendMessage(Wnd, LB_GETTEXTLEN, 0, 0);
      TxtLength1:=TxtLength1+1;
      SetLength(buffer_ed_mem, TxtLength);
      SetLength(buffer_listbcom, TxtLength1);
      // Edit, Memo, RichEdit
      if (ComboBox1.Text='TEdit')
       or (ComboBox1.Text='TMemo')
       or (ComboBox1.Text='TRichEdit')
      then
       begin
        SendMessage(Wnd,WM_GetText, TxtLength, longint(@buffer_ed_mem[1]));
        Memo1.Text:=buffer_ed_mem;
       end;
      // ListBox, ComboBox (3 �������� - ����� ������)
      if (ComboBox1.Text='TListBox')
       or (ComboBox1.Text='TComboBox')
      then
       begin
        SendMessage(Wnd,LB_GetText, 1, longint(@buffer_listbcom[1]));
        Memo1.Text:=buffer_listbcom;
       end;
      // ListView, TreeView (3 �������� - ����� ������)
      if (ComboBox1.Text='TListView')
       or (ComboBox1.Text='TTreeView')
      then
       begin
        Memo1.Clear;
        // ��� TreeWiev ������ TVM_...
        // �������� ���-�� ������� � ListView
        vItemCount:=SendMessage(Wnd, LVM_GETITEMCOUNT, 0, 0);
        // �������� ������������� ������, ������� ������ ListView
        GetWindowThreadProcessId(Wnd, @vProcessId);
        // ��������� ������� ��������� � vProcessId � ������� ������/������ ������
        vProcess:=OpenProcess(PROCESS_VM_OPERATION or PROCESS_VM_READ or PROCESS_VM_WRITE, false, vProcessId);
        // �������� ������ � �������� ������������ ����� ��������
        vPointer:=VirtualAllocEx(vProcess, nil, 4096, MEM_RESERVE or MEM_COMMIT, PAGE_READWRITE);
        try
         for j:=0 to vItemCount-1 do
          begin // ���������� ��� ������
           vItem.mask:=LVIF_TEXT; // ����������� �����
           vItem.iItem:=j;
           vItem.iSubItem:=0; // ������ ������� ������� !!!!!!
           vItem.cchTextMax:=SizeOf(vBuffer);
           vItem.pszText:=Pointer(Cardinal(vPointer)+SizeOf(TLVItem)); // ���� ����� ������� ���������
           //
           WriteProcessMemory(vProcess, vPointer, @vItem, SizeOf(TLVItem), vNumberOfBytesRead);
           SendMessage(Wnd, LVM_GETITEM, j, lparam(vPointer));
           // ��������� ���������
           ReadProcessMemory(vProcess, Pointer(Cardinal(vPointer) + SizeOf(TLVItem)), @vBuffer[0], SizeOf(vBuffer), vNumberOfBytesRead);
           Memo1.Lines.Add(vBuffer);
           // ����� ����������, ��� �������
           // SendMessage(hListView, LVM_DELETEITEM, j, 0);
           Application.ProcessMessages;
         end;
        finally
         VirtualFreeEx(vProcess, vPointer, 0, MEM_RELEASE); // ����������� ������
         CloseHandle(vProcess); // ��������� ���������� ������� � ��������
        end;
       end;
      Memo1.Lines.EndUpdate;
      Button6.Caption:='Distinct list (����� �����: '+IntToStr(Memo1.Lines.Count)+')';
      Break;
     end;
   end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
 s: string;
 h: HWND;
begin
 h:=WindowFromPoint(Mouse.CursorPos);
 SetLength(s, SendMessage(h, WM_GETTEXTLENGTH, 0, 0)+1);
 SendMessage(h, WM_GETTEXT, length(s), Integer(PChar(s)));
 SetLength(s, lStrLen(PChar(s)));
 Edit2.Text:=s;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 SaveDialog1.FileName:='Text_from_component_';
 if SaveDialog1.Execute
 then
  begin
   Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 DistinctList(Memo1.Lines);
 Button6.Caption:='Distinct list (����� �����: '+IntToStr(Memo1.Lines.Count)+')'; 
end;

end.
