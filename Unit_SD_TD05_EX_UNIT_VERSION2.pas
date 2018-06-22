unit Unit_SD_TD05_EX_UNIT_VERSION2;

interface

  type
    TData = record
      cadeau : String;
      nom : String;
      prix : String;
    end;

    PItem = ^TItem;

    TItem = record
      data : TData;
      pPrec : PItem;
      pSuiv : PItem;
    end;

    TListe = record
      pDeb : PItem;
      pCour : pItem;
      pFin : PItem;
    end;

    procedure init(var l : TListe);

    procedure ajouterDeb(var l : TListe; e : TData);

    procedure ajouterFin(var l : TListe; e : TData);

implementation

  procedure init(var l : TListe);
  begin
    l.pDeb := NIL;
    l.pCour := NIL;
    l.pFin := NIL;
  end;

  procedure ajouterDeb(var l : TListe, e : TData);
  var
    pTemp : PItem;
  begin
    new(pTemp);
    pTemp^.data := e;
    pTemp^.pPrec := NIL;
    pTemp^.pSuiv := NIL;
    if (l.pDeb <> NIL) then
    begin
      pTemp^.pSuiv := l.pDeb^.pSuiv;
      l.pDeb^.pPrec := pTemps;
    end
    else
    begin
      l.pFin := pTemp;
    end;
    l.pDeb := pTemp;
  end;

  procedure ajouterDeb(var l : TListe, e : TData);
  var
    pTemp : PItem;
  begin
    new(pTemp);
    pTemp^.data := e;
    pTemp^.pPrec := NIL;
    pTemp^.pSuiv := NIL;
    if (l.pDeb <> NIL) then
    begin
      pTemp^.pSuiv := l.pDeb^.pSuiv;
      l.pDeb^.pPrec := pTemps;
    end
    else
    begin
      l.pFin := pTemp;
    end;
    l.pDeb := pTemp;
  end;

end.
