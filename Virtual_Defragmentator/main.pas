unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons, Spin;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    BitBtn4: TBitBtn;
    SpinEdit1: TSpinEdit;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure stringgrid1DrawCell(sender:TObject;
           ACol,ARow:integer; Rect:TRect; state:TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure step1(Sender: TObject);
    function absx(counter:integer):integer;
    function absy(counter:integer):integer;
    procedure SpinEdit1Change(Sender: TObject);
    procedure step2(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.absx(counter:integer):integer;
begin
result:=counter mod stringgrid1.rowCount;
end;

function TForm1.absy(counter:integer):integer;
begin
result:=(counter div stringgrid1.colCount);
end;

procedure TForm1.stringgrid1DrawCell(sender:TObject;
       ACol,ARow:integer; Rect:TRect; state:TGridDrawState);
begin
case strtoint(stringgrid1.Cells[ACol,Arow]) of
0:stringgrid1.Canvas.Brush.Color:=clgreen;
1:stringgrid1.Canvas.Brush.Color:=clred;
2:stringgrid1.Canvas.Brush.Color:=clwhite;
3:stringgrid1.Canvas.Brush.Color:=clblack;
end;
StringGrid1.canvas.fillRect(Rect);
end;

procedure TForm1.FormShow(Sender: TObject);
var i,j,k:byte;
begin
stringgrid1.OnDrawCell:=stringgrid1drawcell;
randomize;
for i:=0 to stringgrid1.ColCount-1 do
for j:=0 to stringgrid1.RowCount-1 do
  begin
  stringgrid1.Cells[i,j]:=inttostr(random(4));
  for k:=1 to combobox1.ItemIndex do
  if stringgrid1.Cells[i,j]='3' then stringgrid1.Cells[i,j]:=inttostr(random(4));
  end;
bitbtn2.Enabled:=true;
bitbtn2.SetFocus;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
if spinedit1.Text<>'' then
begin
Stringgrid1.ColCount:=spinedit1.Value;
Stringgrid1.rowCount:=spinedit1.Value;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
close;
end;  

procedure TForm1.step1(Sender: TObject);
var counter,step:integer;
    x,y:byte;
    tmp:string;
begin
for counter:=0 to (stringgrid1.rowCount*stringgrid1.ColCount)-2 do
begin
x:=absx(counter);
y:=absy(counter);

if (stringgrid1.Cells[x,y]='1') or (stringgrid1.Cells[x,y]='2') then
  begin
  step:=counter;
  repeat
  inc(step);
  if (stringgrid1.Cells[absx(step),absy(step)]='0') then
    begin
    tmp:=stringgrid1.Cells[x,y];
    stringgrid1.Cells[x,y]:=stringgrid1.Cells[absx(step),absy(step)];
    stringgrid1.Cells[absx(step),absy(step)]:=tmp;
    end;
  until (stringgrid1.Cells[absx(step),absy(step)]='0')or(step=(stringgrid1.rowCount*stringgrid1.ColCount)-1);
  end;
end;

if bitbtn2.Enabled then
begin
bitbtn2.Enabled:=false;
bitbtn3.Enabled:=true;
end
else
begin
bitbtn4.Enabled:=false;
bitbtn1.SetFocus;
end;
end;

procedure TForm1.step2(Sender: TObject);
var counter,step:integer;
    x,y:byte;
    tmp:string;
begin
for counter:=0 to (stringgrid1.rowCount*stringgrid1.ColCount)-2 do
begin
x:=absx(counter);
y:=absy(counter);
if (stringgrid1.Cells[x,y]='1') or (stringgrid1.Cells[x,y]='2') then
  begin
  step:=counter;
  repeat
  inc(step);
  if (stringgrid1.Cells[absx(step),absy(step)]='1')or(stringgrid1.Cells[absx(step),absy(step)]='2') then
    if (stringgrid1.Cells[x,y]='2') then
    begin
    tmp:=stringgrid1.Cells[x,y];
    stringgrid1.Cells[x,y]:=stringgrid1.Cells[absx(step),absy(step)];
    stringgrid1.Cells[absx(step),absy(step)]:=tmp;
    end
    else if (stringgrid1.Cells[x,y]='1') then
    begin
    stringgrid1.Cells[x,y]:='2';
    stringgrid1.Cells[absx(step),absy(step)]:='0';
    end;
  until (stringgrid1.Cells[absx(step),absy(step)]='0')or(step=(stringgrid1.rowCount*stringgrid1.ColCount)-1);
  end;
end;
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=true;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
step1(self);
end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
//stringgrid1.Cells[ACol,ARow]:='3';
end;

procedure TForm1.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if ssCtrl in shift then
stringgrid1.Cells[stringgrid1.col,stringgrid1.Row]:='3'
else
stringgrid1.Cells[stringgrid1.col,stringgrid1.Row]:='1'
end;

end.
