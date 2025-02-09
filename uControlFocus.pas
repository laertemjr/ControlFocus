unit uControlFocus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmControlFocus = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ControlChange(Sender: TObject);
  end;

var
  frmControlFocus: TfrmControlFocus;

implementation

{$R *.dfm}

procedure TfrmControlFocus.FormShow(Sender: TObject);
begin
   Screen.OnActiveControlChange := ControlChange;
end;

procedure TfrmControlFocus.ControlChange(Sender: TObject);
var controle:TWinControl;
begin
    if ListBox1.CanFocus then
    begin
       controle := ActiveControl;
       if controle = nil then Exit;
       ListBox1.Items.Add('['+ ListBox1.Count.ToString + '] '+ controle.Name);
       ListBox1.ItemIndex := ListBox1.Items.Count - 1;
    end;
end;

procedure TfrmControlFocus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Screen.OnActiveControlChange := nil;
end;

end.
