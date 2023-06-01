unit PlanszowkiDodajGracza;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls;

type

  { TPlanszowkiDGF }

  TPlanszowkiDGF = class(TForm)
    BDodaj: TButton;
    EImie: TEdit;
    DSGRacze: TDataSource;
    Label1: TLabel;
    LImie: TLabel;
    procedure BDodajClick(Sender: TObject);
  private

  public

  end;

var
  PlanszowkiDGF: TPlanszowkiDGF;

implementation
uses
  PlanszowkiSQL;

{$R *.lfm}

{ TPlanszowkiDGF }

procedure TPlanszowkiDGF.BDodajClick(Sender: TObject);
begin
  with PlanszowkiSQLF.ZQGracze do
  begin
    Append;
    FieldByName('imie').Value := EImie.Text;
    FieldByName('stopien').Value := 'Nowicjusz';
    FieldByName('aktywny').Value := True;
    FieldByName('liczba_wygranych').Value := 0;
    Post;
    PlanszowkiDGF.Close;
  end;

end;

end.

