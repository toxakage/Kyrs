unit Education;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Menus;

type
  TEducationForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EducationForm: TEducationForm;

implementation

{$R *.dfm}

uses Main, TextCreation, Video;

procedure TEducationForm.Button1Click(Sender: TObject);
begin
EducationForm.Hide;
MainForm.Show;
end;

procedure TEducationForm.Button2Click(Sender: TObject);
begin
EducationForm.Hide;
TextCreationForm.ShowModal;
end;

procedure TEducationForm.Button3Click(Sender: TObject);
begin
EducationForm.Hide;
VideoForm.Free;
Application.CreateForm(TVideoForm, VideoForm);
VideoForm.Show;
VideoForm.ComboBox1.Clear;
VideoForm.ComboBox1.Items.Add('Урок 1');
VideoForm.ComboBox1.Items.Add('Урок 2');
VideoForm.ComboBox1.Items.Add('Урок 3');
VideoForm.ComboBox1.Items.Add('Урок 4');
VideoForm.ComboBox1.Items.Add('Урок 5');
VideoForm.ComboBox1.ItemIndex:= VideoForm.ComboBox1.Items.IndexOf('Урок 1');
VideoForm.MediaPlayer1.FileName := ExtractFilePath(ParamStr(0)) + 'видео\Уроки Adobe XD № 01 .wmv';
VideoForm.MediaPlayer1.Display := VideoForm.Panel1;
VideoForm.MediaPlayer1.Open;
end;

procedure TEducationForm.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(ParamStr(0)) +'ворд документы\Обучение.htm')
end;

procedure TEducationForm.N2Click(Sender: TObject);
begin
EducationForm.Hide;
MainForm.Show;
end;

procedure TEducationForm.N3Click(Sender: TObject);
begin
close;
end;

end.
