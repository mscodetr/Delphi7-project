unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;



implementation

{$R *.dfm}
var
toplama, cikarma, carpma :Integer;
bolme:Double;
procedure TForm1.RadioButton2Click(Sender: TObject);

begin
 toplama := strtoint(Edit1.Text) + strtoint(Edit2.Text);
 Label4.Caption := InttoStr(toplama);
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin

cikarma := strtoint(Edit1.Text) - strtoint(Edit2.Text);
Label4.Caption := InttoStr(cikarma);
end;

procedure TForm1.RadioButton3Click(Sender: TObject);

begin
carpma := strtoint(Edit1.Text) * strtoint(Edit2.Text);
Label4.Caption := InttoStr(carpma);
end;

procedure TForm1.RadioButton4Click(Sender: TObject);

begin
 begin
    if strtoint(Edit2.Text) <> 0.0 then // 0 yerine 0.0 kullanýn.
    begin
      bolme := strtoint(Edit1.Text) / strtoint(Edit2.Text);
      Label4.Caption := FloatToStr(bolme);
    end
    else
      ShowMessage('Sýfýra bölemezsiniz.');
  end;
end;
end.

