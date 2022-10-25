unit ChoiseTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TChoiseTestForm = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChoiseTestForm: TChoiseTestForm;
   f:text;
   s:string;
   ball:integer;
   Nvern:integer;

implementation

{$R *.dfm}

uses Test, Main;

procedure TChoiseTestForm.BitBtn1Click(Sender: TObject);
begin
if RadioButton1.Checked then
begin
    MainForm.Hide;
    TestForm.Free;
    Application.CreateForm(TTestForm, TestForm);
    TestForm.Show;
    ChoiseTestForm.Close;
    TestForm.Caption := '���� �� ������� Adobe XD ';
    TestForm.Button1.Enabled:=True;
    AssignFile(f ,ExtractFilePath(ParamStr(0))+'������� .txt');
    reset(f); //��������� ���� ��� ������
    readln(f,s); //��������� ������ ������ �� �����
    ball:=0;
    repeat
      if (s[1]='-') then
        begin //���� ������ ������ ������ �-� ������ ��� ������
        delete(s,1,1);
        TestForm.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin //���� ���� ������ �*� ������ ��� ����� ������� ������
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      TestForm.RadioGroup1.Items.Add(s); //����� ��� ������� ������
      readln(f,s); //��������� ��������� ������ �� �����
      until (s[1]='-') or (Eof(f));
      end;
      if RadioButton2.Checked then
  begin
    MainForm.Hide;
    TestForm.Free;
    Application.CreateForm(TTestForm, TestForm);
    TestForm.Show;
    ChoiseTestForm.close;
    TestForm.Caption := '���� �� ������������ Adobe XD';
    TestForm.Button1.Enabled:=True;
    AssignFile(f ,ExtractFilePath(ParamStr(0))+ '��������.txt');
    reset(f); //��������� ���� ��� ������
    readln(f,s); //��������� ������ ������ �� �����
    ball:=0;
    repeat
      if (s[1]='-') then
        begin //���� ������ ������ ������ �-� ������ ��� ������
        delete(s,1,1);
        TestForm.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin //���� ���� ������ �*� ������ ��� ����� ������� ������
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      TestForm.RadioGroup1.Items.Add(s); //����� ��� ������� ������
      readln(f,s); //��������� ��������� ������ �� �����
      until (s[1]='-') or (Eof(f));
  end;
end;

procedure TChoiseTestForm.BitBtn2Click(Sender: TObject);
begin
ChoiseTestForm.Hide;
MainForm.Show;
end;


procedure TChoiseTestForm.N2Click(Sender: TObject);
begin
ChoiseTestForm.Hide;
MainForm.ShowModal;
end;



end.

