-- 1.ksiazki ułożone alfaberycznie wg Tytuły 
SELECT * FROM ksiazki ORDER BY tytul ASC;
-- 2. jaka jest najdroższa książka w bazie? 
 SELECT * FROM ksiazki ORDER BY cena DESC LIMIT 1;
 -- 3.Wszystkie wysłane zamówienia.
 SELECT * FROM zamowienia WHERE status="wyslano";
 -- 4. wszyscy klienci o nazwisku Rutkowski 
  SELECT * FROM klienci WHERE nazwisko="Rutkowski";
  -- 5. Książki zawierające wyrażenie "PHP" w tytule
  SELECT * FROM ksiazki WHERE tytul LIKE "%PHP%";
  -- 6.Zamówienia ułożone od ostatniego dokonanego. 
   SELECT * FROM zamowienia ORDER BY data DESC;
   -- 7. Pokaż dla wszystkich zamówień: imię i nazwisko klienta zamawiającego, id zamówienia oraz datę.
  SELECT klienci.imie, klienci.nazwisko,zamowienia.idzamowienia, zamowienia.data FROM klienci,
  zamowienia WHERE klienci.idklienta=zamowienia.idklienta ;
  -- 8.Imiona i nazwiska osób, które zamówiły kiedykolwiek książkę nr 2
  SELECT klienci.imie,klienci.nazwisko FROM klienci,zamowienia WHERE zamowienia.idksiazki = 2 AND 
  zamowienia.idklienta = klienci.idklienta;
  -- 9.Jakie książki (tytuł, autor) zamówiła osoba: Jan Nowak?
 SELECT ksiazki.tytul, ksiazki.imieautora,ksiazki.nazwiskoautora FROM ksiazki, ZAMOWIENIA WHERE 
 zamowienia.idklienta = 2 AND zamowienia.idksiazki = ksiazki.idksiazki ;
 -- 10. Zamówienia dokonane przez osoby o nazwisku Rutkowski ułożone wg daty od
--  najpóźniej dokonanych (imię i nazwisko osoby zamawiającej, id, datę i status
 -- zamówienia, tytuł zamówionej książki)
 SELECT klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.status, zamowienia.data,
 ksiazki.tytul FROM klienci, zamowienia, ksiazki WHERE klienci.nazwisko="Rutkowski" AND 
 zamowienia.idksiazki=ksiazki.idksiazki AND klienci.idklienta=zamowienia.idklienta ORDER BY zamowienia.data DESC;
 
 CREATE VIEW zapytanie1 AS SELECT * FROM ksiazki ORDER BY tytul ASC;
  CREATE VIEW zapytanie2 AS  SELECT * FROM ksiazki ORDER BY cena DESC LIMIT 1;
   CREATE VIEW zapytanie3 AS SELECT * FROM zamowienia WHERE status="wyslano";
    CREATE VIEW zapytanie4 AS SELECT * FROM klienci WHERE nazwisko="Rutkowski";
     CREATE VIEW zapytanie5 AS SELECT * FROM ksiazki WHERE tytul LIKE "%PHP%";
      CREATE VIEW zapytanie6 AS SELECT * FROM zamowienia ORDER BY data DESC;
       CREATE VIEW zapytanie7 AS SELECT klienci.imie, klienci.nazwisko,zamowienia.idzamowienia, zamowienia.data FROM klienci,
  zamowienia WHERE klienci.idklienta=zamowienia.idklienta ;
        CREATE VIEW zapytanie8 AS SELECT klienci.imie,klienci.nazwisko FROM klienci,zamowienia WHERE zamowienia.idksiazki = 2 AND 
  zamowienia.idklienta = klienci.idklienta;
         CREATE VIEW zapytanie9 AS SELECT ksiazki.tytul, ksiazki.imieautora,ksiazki.nazwiskoautora FROM ksiazki, ZAMOWIENIA WHERE 
 zamowienia.idklienta = 2 AND zamowienia.idksiazki = ksiazki.idksiazki ;
          CREATE VIEW zapytanie10 AS SELECT klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.status, zamowienia.data,
 ksiazki.tytul FROM klienci, zamowienia, ksiazki WHERE klienci.nazwisko="Rutkowski" AND 
 zamowienia.idksiazki=ksiazki.idksiazki AND klienci.idklienta=zamowienia.idklienta ORDER BY zamowienia.data DESC;
           
           
 
 
 
