unit PlanszowkiSQL;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZSequence;

type

  { TPlanszowkiSQLF }

  TPlanszowkiSQLF = class(TDataModule)
    ZConn: TZConnection;
    ZQAktualniGraczeimie_gracza: TStringField;
    ZQGraczeaktywny: TBooleanField;
    ZQGraczeid: TLongintField;
    ZQGraczeimie: TStringField;
    ZQGraczeliczba_wygranych: TLongintField;
    ZQGraczestopien: TStringField;
    ZQNajwyzszymax: TLongintField;
    ZQSesja: TZQuery;
    ZQGracze: TZQuery;
    ZQNajwyzszy: TZQuery;
    ZQAktualniGracze: TZQuery;
    ZQSesjaczas_gry: TStringField;
    ZQSesjadata: TDateField;
    ZQSesjadodatkowy_opis: TStringField;
    ZQSesjaid: TLargeintField;
    ZQSesjaliczba_osob: TLargeintField;
    ZQSesjamax_punktow: TLargeintField;
    ZQSesjaocena_partii: TLargeintField;
    ZQSesjatytul_gry: TStringField;
    ZQSesjazwyciezca: TStringField;
    ZQZwyciezca: TZQuery;
    ZQWiazaniemax: TLongintField;
    ZQWyniki: TZQuery;
    ZQWynikiid: TLongintField;
    ZQWynikiimie_gracza: TStringField;
    ZQWynikipowiazane_id: TLongintField;
    ZQWynikipunkty_gracza: TLongintField;
    ZQZwyciezcaimie_gracza: TStringField;
    ZROQPrzegladSesjiczas_gry: TStringField;
    ZROQPrzegladSesjidata: TDateField;
    ZROQPrzegladSesjidodatkowy_opis: TStringField;
    ZROQPrzegladSesjiid: TLongintField;
    ZROQPrzegladSesjiliczba_osob: TLongintField;
    ZROQPrzegladSesjiliczba_punktow: TLongintField;
    ZROQPrzegladSesjiocena_partii: TLongintField;
    ZROQPrzegladSesjitytul_gry: TStringField;
    ZSPlanszowki: TZSequence;
    ZSWyniki: TZSequence;
    ZSGracze: TZSequence;
  private

  public

  end;

var
  PlanszowkiSQLF: TPlanszowkiSQLF;

implementation

{$R *.lfm}

end.

