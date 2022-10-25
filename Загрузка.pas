unit Загрузка;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Gauges, Vcl.Imaging.jpeg;

type
  TLoadingForm = class(TForm)
    Image1: TImage;
    Gauge1: TGauge;
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Label2: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoadingForm: TLoadingForm;

implementation

{$R *.dfm}

uses Main;

procedure TLoadingForm.Label1Click(Sender: TObject);
begin
if(Label1.Visible=True) then Label1.Visible:=False
else Label1.Visible:=True;
timer1.Enabled:=true;
end;
procedure TLoadingForm.Timer1Timer(Sender: TObject);
begin
if(Gauge1.Visible=False) then
begin
Gauge1.Visible:=True;
Label1.Visible:=False;
Timer2.Enabled:=False;
Timer1.Enabled:=True;
end;
Gauge1.Progress:=Gauge1.Progress+5;
if(Gauge1.Progress=100) then
begin
Timer1.Enabled:=False;
LoadingForm.Hide;
MainForm.Show;
end;
end;

end.
