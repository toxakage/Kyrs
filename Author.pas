unit Author;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Menus;

type
  TAuthorForm = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuthorForm: TAuthorForm;

implementation

{$R *.dfm}

uses Main;

procedure TAuthorForm.Button1Click(Sender: TObject);
begin
AuthorForm.Hide;
MainForm.Show;
end;

end.
