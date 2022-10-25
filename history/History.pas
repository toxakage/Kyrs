unit History;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Menus;

type
  THistoryForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HistoryForm: THistoryForm;

implementation

{$R *.dfm}

uses Main;

procedure THistoryForm.Button1Click(Sender: TObject);
begin
HistoryForm.Hide;
MainForm.Show;
end;

procedure THistoryForm.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+'ворд документы\history.htm')
end;

procedure THistoryForm.N2Click(Sender: TObject);
begin
close;
end;

end.

