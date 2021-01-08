DELIMITER %% 
CREATE TRIGGER status_wysylki 
BEFORE INSERT ON zamowienia for each row 
BEGIN set new.stan_realizacji_zamowienia="oczekiwanie na wysylke";
END %%

 -- trigger ten automatycznie dodaje do wstawianego rekordu w tabeli zamówienia do kolumny stan_realizacji_zamowienia wartość - "oczekiwanie na wysylke"
