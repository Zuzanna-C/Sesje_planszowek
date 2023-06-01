unit PlanszowkiGracze;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, DBGrids,
  StdCtrls, ExtCtrls;

type

  { TPlanszowkiGF }

  TPlanszowkiGF = class(TForm)
    BDodajGracza: TButton;
    BCofnij: TButton;
    CBAktywni: TCheckBox;
    CBNowicjusz: TCheckBox;
    DBGracze: TDBGrid;
    DSGraczePrzeglad: TDataSource;
    LGracze: TLabel;
    LSortuj: TLabel;
    procedure BCofnijClick(Sender: TObject);
    procedure BDodajGraczaClick(Sender: TObject);
    procedure CBAktywniChange(Sender: TObject);
    procedure CBNowicjuszChange(Sender: TObject);
  private

  public

  end;

var
  PlanszowkiGF: TPlanszowkiGF;

implementation
uses
  PlanszowkiSQL, PlanszowkiDodajGracza;

{$R *.lfm}

{ TPlanszowkiGF }

procedure TPlanszowkiGF.CBAktywniChange(Sender: TObject);
begin
  with PlanszowkiSQLF.ZQGracze do
  begin
    if CBAktywni.Checked then
      Filter := 'aktywny'
    else
      Filter := '';
      Filtered := True;
  end;
end;

procedure TPlanszowkiGF.BDodajGraczaClick(Sender: TObject);
begin
  PlanszowkiDGF.ShowModal;
end;

procedure TPlanszowkiGF.BCofnijClick(Sender: TObject);
begin
  PlanszowkiGF.close;
end;

procedure TPlanszowkiGF.CBNowicjuszChange(Sender: TObject);
begin
  with PlanszowkiSQLF.ZQGracze do
  begin
    if CBNowicjusz.Checked then
      Filter := 'stopien="Master"'
    else
      Filter := '';
      Filtered := True;
  end;

end;

{ TPlanszowkiGF }


{ TPlanszowkiGF }


end.

