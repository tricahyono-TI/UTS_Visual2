unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Unit1 ;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var a : Integer;
begin
  a:= form1.qry1.RecordCount+1;
  with Form1.qry1 do
  begin
    SQL.Clear;
    SQL.add('insert into jadwal_table values("'+inttostr(a)+'","'+edit1.Text+'","'+edit2.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","'+edit6.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from jadwal_table');
    Open;
    ShowMessage('DATA BERHASIL DISIMPAN');
  end;
end;

end.
