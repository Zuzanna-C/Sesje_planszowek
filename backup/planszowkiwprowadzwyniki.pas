unit PlanszowkiWprowadzWyniki;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  DBGrids;

type

  { TPlanszowkiWWF }

  TPlanszowkiWWF = class(TForm)
    BDodajWynik: TButton;
    BDodajgracza: TButton;
    DBCBLiczbaOsob: TDBComboBox;
    DSGRacze: TDataSource;
    DSSesja: TDataSource;
    DSWyniki: TDataSource;
    Gracz1: TDBLookupComboBox;
    Gracz2: TDBLookupComboBox;
    Gracz3: TDBLookupComboBox;
    Gracz4: TDBLookupComboBox;
    Gracz5: TDBLookupComboBox;
    Gracz6: TDBLookupComboBox;
    LWyniki: TLabel;
    LGracz: TLabel;
    LOsoby: TLabel;
    LPunkty: TLabel;
    Punkty1: TEdit;
    Punkty2: TEdit;
    Punkty3: TEdit;
    Punkty4: TEdit;
    Punkty5: TEdit;
    Punkty6: TEdit;
    procedure BDodajgraczaClick(Sender: TObject);
    procedure BDodajWynikClick(Sender: TObject);
    procedure DBCBLiczbaOsobChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  PlanszowkiWWF: TPlanszowkiWWF;

implementation

uses
  PlanszowkiSQL, PlanszowkiDodajGracza;

{$R *.lfm}

{ TPlanszowkiWWF }

procedure TPlanszowkiWWF.DBCBLiczbaOsobChange(Sender: TObject);
begin

  if DBCBLiczbaOsob.Text = '1' then
  begin
    Gracz1.Visible := True;
    Gracz2.Visible := False;
    Gracz3.Visible := False;
    Gracz4.Visible := False;
    Gracz5.Visible := False;
    Gracz6.Visible := False;
    Punkty1.Visible := True;
    Punkty2.Visible := False;
    Punkty3.Visible := False;
    Punkty4.Visible := False;
    Punkty5.Visible := False;
    Punkty6.Visible := False;

  end;

  if DBCBLiczbaOsob.Text = '2' then
  begin
    Gracz1.Visible := True;
    Gracz2.Visible := True;
    Gracz3.Visible := False;
    Gracz4.Visible := False;
    Gracz5.Visible := False;
    Gracz6.Visible := False;
    Punkty1.Visible := True;
    Punkty2.Visible := True;
    Punkty3.Visible := False;
    Punkty4.Visible := False;
    Punkty5.Visible := False;
    Punkty6.Visible := False;

  end;

  if DBCBLiczbaOsob.Text = '3' then
  begin
    Gracz1.Visible := True;
    Gracz2.Visible := True;
    Gracz3.Visible := True;
    Gracz4.Visible := False;
    Gracz5.Visible := False;
    Gracz6.Visible := False;
    Punkty1.Visible := True;
    Punkty2.Visible := True;
    Punkty3.Visible := True;
    Punkty4.Visible := False;
    Punkty5.Visible := False;
    Punkty6.Visible := False;

  end;

  if DBCBLiczbaOsob.Text = '4' then
  begin
    Gracz1.Visible := True;
    Gracz2.Visible := True;
    Gracz3.Visible := True;
    Gracz4.Visible := True;
    Gracz5.Visible := False;
    Gracz6.Visible := False;
    Punkty1.Visible := True;
    Punkty2.Visible := True;
    Punkty3.Visible := True;
    Punkty4.Visible := True;
    Punkty5.Visible := False;
    Punkty6.Visible := False;

  end;

  if DBCBLiczbaOsob.Text = '5' then
  begin
    Gracz1.Visible := True;
    Gracz2.Visible := True;
    Gracz3.Visible := True;
    Gracz4.Visible := True;
    Gracz5.Visible := True;
    Gracz6.Visible := False;
    Punkty1.Visible := True;
    Punkty2.Visible := True;
    Punkty3.Visible := True;
    Punkty4.Visible := True;
    Punkty5.Visible := True;
    Punkty6.Visible := False;

  end;

  if DBCBLiczbaOsob.Text = '6' then
  begin
    Gracz1.Visible := True;
    Gracz2.Visible := True;
    Gracz3.Visible := True;
    Gracz4.Visible := True;
    Gracz5.Visible := True;
    Gracz6.Visible := True;
    Punkty1.Visible := True;
    Punkty2.Visible := True;
    Punkty3.Visible := True;
    Punkty4.Visible := True;
    Punkty5.Visible := True;
    Punkty6.Visible := True;

  end;

end;

procedure TPlanszowkiWWF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  (*PlanszowkiSQLF.ZQNajwyzszy.Refresh;
  PlanszowkiSQLF.ZQZwyciezca.Refresh;
  PlanszowkiSQLF.ZQSesja.FieldByName('max_punktow').Value := PlanszowkiSQLF.ZQNajwyzszy.FieldByName('max').Value;
  PlanszowkiSQLF.ZQSesja.FieldByName('zwyciezca').Value := PlanszowkiSQLF.ZQZwyciezca.FieldByName('imie_gracza').Value;  *)
end;

procedure TPlanszowkiWWF.BDodajWynikClick(Sender: TObject);
begin
  with PlanszowkiSQLF,PlanszowkiSQLF.ZQWyniki do
  begin

    if DBCBLiczbaOsob.Text = '1' then
    begin
      Append;
      FieldByName('imie_gracza').Value := Gracz1.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty1.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Post;
    end;

    if DBCBLiczbaOsob.Text = '2' then
    begin
      Append;
      FieldByName('imie_gracza').Value := Gracz1.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty1.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz2.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty2.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Post;
    end;

    if DBCBLiczbaOsob.Text = '3' then
    begin
      Append;
      FieldByName('imie_gracza').Value := Gracz1.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty1.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz2.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty2.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz3.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty3.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Post;
    end;

    if DBCBLiczbaOsob.Text = '4' then
    begin
      Append;
      FieldByName('imie_gracza').Value := Gracz1.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty1.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz2.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty2.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz3.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty3.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz4.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty4.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Post;
    end;

    if DBCBLiczbaOsob.Text = '5' then
    begin
      Append;
      FieldByName('imie_gracza').Value := Gracz1.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty1.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz2.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty2.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz3.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty3.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz4.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty4.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz5.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty5.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Post;
    end;

    if DBCBLiczbaOsob.Text = '5' then
    begin
      Append;
      FieldByName('imie_gracza').Value := Gracz1.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty1.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz2.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty2.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz3.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty3.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz4.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty4.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz5.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty5.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Append;
      FieldByName('imie_gracza').Value := Gracz6.KeyValue;
      FieldByName('punkty_gracza').Value := StrToInt(Punkty6.Text);
      FieldByName('powiazane_id').Value:=ZQSesja.FieldByName('id').value;
      Post;
    end;
  end;

  PlanszowkiSQLF.ZQSesja.Edit;
  PlanszowkiSQLF.ZQNajwyzszy.Refresh;
  PlanszowkiSQLF.ZQZwyciezca.Refresh;
  PlanszowkiSQLF.ZQSesja.FieldByName('max_punktow').Value := PlanszowkiSQLF.ZQNajwyzszy.FieldByName('max').Value;
  PlanszowkiSQLF.ZQSesja.FieldByName('zwyciezca').Value := PlanszowkiSQLF.ZQZwyciezca.FieldByName('imie_gracza').Value;
  PlanszowkiSQLF.ZQSesja.Post;

  PlanszowkiWWF.Close;

end;

procedure TPlanszowkiWWF.BDodajgraczaClick(Sender: TObject);
begin
  PlanszowkiDGF.ShowModal;
end;


end.
