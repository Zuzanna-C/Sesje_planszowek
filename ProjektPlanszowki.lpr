program ProjektPlanszowki;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, PlanszowkiMain, PlanszowkiSesje, PlanszowkiSQL, 
PlanszowkiDodajSesje, PlanszowkiEdytujSesje, PlanszowkiWprowadzWyniki, 
PlanszowkiDodajGracza, PlanszowkiGracze
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TPlanszowkiMF, PlanszowkiMF);
  Application.CreateForm(TPlanszowkiSF, PlanszowkiSF);
  Application.CreateForm(TPlanszowkiSQLF, PlanszowkiSQLF);
  Application.CreateForm(TPlanszowkiDSF, PlanszowkiDSF);
  Application.CreateForm(TPlanszowkiESF, PlanszowkiESF);
  Application.CreateForm(TPlanszowkiWWF, PlanszowkiWWF);
  Application.CreateForm(TPlanszowkiDGF, PlanszowkiDGF);
  Application.CreateForm(TPlanszowkiGF, PlanszowkiGF);
  Application.Run;
end.

