unit main_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, pxQRcode;

type
  TForm2 = class(TForm)
    mmoText: TMemo;
    btnMakeQR: TButton;
    imgBarcode: TImage;
    procedure btnMakeQRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnMakeQRClick(Sender: TObject);
var
  ms: TMemoryStream;
  s, s2: string;
  i: Integer;
begin
  ms := TMemoryStream.Create;
  try
    s := mmoText.Text;
    s2 := s;
    CreateQRCodeBMP(s2, ms, QR_ECLEVEL_H, 10);
    ms.Position := 0;
    imgBarcode.Picture.Bitmap.LoadFromStream(ms);
  finally
    ms.Free;
  end;

end;

end.
