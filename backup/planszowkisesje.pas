unit PlanszowkiSesje;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids;

type

  { TPlanszowkiSF }

  TPlanszowkiSF = class(TForm)
    BDodaj: TButton;
    BEdytuj: TButton;
    BCofnij: TButton;
    DSPrzegladSesji: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure BCofnijClick(Sender: TObject);
    procedure BDodajClick(Sender: TObject);
    procedure BEdytujClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private

  public

  end;

var
  PlanszowkiSF: TPlanszowkiSF;

implementation
uses
  PlanszowkiDodajSesje, PlanszowkiSQL, PlanszowkiEdytujSesje;

{$R *.lfm}

{ TPlanszowkiSF }

procedure TPlanszowkiSF.BDodajClick(Sender: TObject);
begin
  PlanszowkiDSF.AddSw:=True;
  PlanszowkiDSF.ShowModal;
end;

procedure TPlanszowkiSF.BEdytujClick(Sender: TObject);
begin
  //PlanszowkiESF.ShowModal;
end;

procedure TPlanszowkiSF.DBGrid1TitleClick(Column: TColumn);
begin
  PlanszowkiSQLF.ZQSesja.IndexFieldNames := 'ocena_partii';
  PlanszowkiSQLF.ZQSesja.IndexFieldNames := 'liczba_punktow';
  PlanszowkiSQLF.ZQSesja.IndexFieldNames := 'liczba_osob';
  PlanszowkiSQLF.ZQSesja.IndexFieldNames := 'max_punktow';
end;

procedure TPlanszowkiSF.BCofnijClick(Sender: TObject);
begin
  PlanszowkiSF.close;
end;

end.

