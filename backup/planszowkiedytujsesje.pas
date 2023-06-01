unit PlanszowkiEdytujSesje;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  DBCtrls;

type

  { TPlanszowkiESF }

  TPlanszowkiESF = class(TForm)
    BAnuluj: TButton;
    BWyniki: TButton;
    BZapisz: TButton;
    DBCalendar1: TDBCalendar;
    DBCBCzasGry: TDBComboBox;
    DBCOcena: TDBComboBox;
    DBEOpis: TDBEdit;
    DSEdytujSesje: TDataSource;
    DBGrid1: TDBGrid;
    LTytul: TLabel;
    LEdycja: TLabel;
    LData: TLabel;
    LCzas: TLabel;
    LOcena: TLabel;
    LOpis: TLabel;
    LWyniki: TLabel;
    procedure BAnulujClick(Sender: TObject);
    procedure BWynikiClick(Sender: TObject);
    procedure BZapiszClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  PlanszowkiESF: TPlanszowkiESF;

implementation
uses
  PlanszowkiSQL, PlanszowkiWprowadzWyniki;

{$R *.lfm}

{ TPlanszowkiESF }

procedure TPlanszowkiESF.FormShow(Sender: TObject);
begin
  with PlanszowkiSQLF.ZQSesja do
  begin
  Edit;
  FieldByName('data').value := Date;
  end;
end;

procedure TPlanszowkiESF.BAnulujClick(Sender: TObject);
begin
  PlanszowkiESF.close;
end;

procedure TPlanszowkiESF.BWynikiClick(Sender: TObject);
begin
  //PlanszowkiDWF.ShowModal;
end;

procedure TPlanszowkiESF.BZapiszClick(Sender: TObject);
begin
  PlanszowkiSQLF.ZQSesja.Post;
  PlanszowkiESF.close;
end;

end.

