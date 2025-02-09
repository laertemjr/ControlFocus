program ControlFocus;

uses
  Vcl.Forms,
  uControlFocus in 'uControlFocus.pas' {frmControlFocus};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmControlFocus, frmControlFocus);
  Application.Run;
end.
