program qrCoder;

uses
  Vcl.Forms,
  main_u in 'main_u.pas' {Form2},
  pxQRcode in 'pxQRcode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
