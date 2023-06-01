unit PlanszowkiMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPlanszowkiMF }

  TPlanszowkiMF = class(TForm)
    BSesje: TButton;
    BGracze: TButton;
    BZamknij: TButton;
    procedure BGraczeClick(Sender: TObject);
    procedure BSesjeClick(Sender: TObject);
    procedure BZamknijClick(Sender: TObject);
  private

  public

  end;

var
  PlanszowkiMF: TPlanszowkiMF;

implementation
uses
  PlanszowkiSesje, PlanszowkiGracze;

{$R *.lfm}

{ TPlanszowkiMF }

procedure TPlanszowkiMF.BSesjeClick(Sender: TObject);
begin
  PlanszowkiSF.ShowModal;
end;

procedure TPlanszowkiMF.BGraczeClick(Sender: TObject);
begin
  PlanszowkiGF.ShowModal;
end;

procedure TPlanszowkiMF.BZamknijClick(Sender: TObject);
begin
  PlanszowkiMF.close;
end;

end.

