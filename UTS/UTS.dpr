program UTS;

uses
  Forms,
  Form_Menu in 'Form_Menu.pas' {FormMenu},
  Kondisional in 'Kondisional.pas' {FormLatihan2},
  PraktekMandiri1 in 'PraktekMandiri1.pas' {FormMandiri1},
  PraktekMandiri2 in 'PraktekMandiri2.pas' {FormMandiri2},
  Kalkulator in 'Kalkulator.pas' {FormLatihan1},
  ChartStringGrid in 'ChartStringGrid.pas' {FormStringGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormLatihan2, FormLatihan2);
  Application.CreateForm(TFormMandiri1, FormMandiri1);
  Application.CreateForm(TFormMandiri2, FormMandiri2);
  Application.CreateForm(TFormLatihan1, FormLatihan1);
  Application.CreateForm(TFormStringGrid, FormStringGrid);
  Application.Run;
end.
