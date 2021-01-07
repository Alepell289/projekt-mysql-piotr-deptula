DELIMITER %% 
CREATE PROCEDURE ilosc_niewyslanych_zamowien ()
BEGIN 
SELECT COUNT(stan_realizacji_zamowienia) from  zamowienia WHERE stan_realizacji_zamowienia = 'oczekiwanie na wysylke';
END; %%

