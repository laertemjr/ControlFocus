unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ControlChange(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
   Screen.OnActiveControlChange := ControlChange;
end;

procedure TForm1.ControlChange(Sender: TObject);
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Screen.OnActiveControlChange := nil;
end;

end.
