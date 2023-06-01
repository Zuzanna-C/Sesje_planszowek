unit PlanszowkiDodajSesje;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  ColorBox, DBCtrls, DBExtCtrls;

type

  { TPlanszowkiDSF }

  TPlanszowkiDSF = class(TForm)
    BAnuluj: TButton;
    BWyniki: TButton;
    BZapisz: TButton;
    DBDateEdit1: TDBDateEdit;
    LWyniki: TLabel;
    LTytul: TLabel;
    DSSesja: TDataSource;
    DBCBCzasGry: TDBComboBox;
    DBCOcena: TDBComboBox;
    DBEOpis: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    LData: TLabel;
    LOpis: TLabel;
    LOcena: TLabel;
    LCzas: TLabel;
    procedure BAnulujClick(Sender: TObject);
    procedure BWynikiClick(Sender: TObject);
    procedure BZapiszClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    AddSw: boolean;
  end;

var
  PlanszowkiDSF: TPlanszowkiDSF;

implementation

uses
  PlanszowkiSQL, PlanszowkiWprowadzWyniki;

{$R *.lfm}

{ TPlanszowkiDSF }



procedure TPlanszowkiDSF.FormCreate(Sender: TObject);
begin
  AddSw := False;
end;

procedure TPlanszowkiDSF.FormShow(Sender: TObject);
begin
  with PlanszowkiSQLF.ZQSesja do
  begin
    if AddSw then
    begin
      Append;
      FieldByName('data').Value := Date;
      Post;
      Edit;
    end
    else
      Edit;
  end;
end;

procedure TPlanszowkiDSF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  AddSw := False;
end;

procedure TPlanszowkiDSF.BAnulujClick(Sender: TObject);
begin
  PlanszowkiDSF.Close;
end;

procedure TPlanszowkiDSF.BWynikiClick(Sender: TObject);
begin
  PlanszowkiWWF.ShowModal;
end;

procedure TPlanszowkiDSF.BZapiszClick(Sender: TObject);
begin
  PlanszowkiSQLF.ZQSesja.Edit;
  PlanszowkiSQLF.ZQSesja.Post;
  PlanszowkiDSF.Close;
end;


end.
