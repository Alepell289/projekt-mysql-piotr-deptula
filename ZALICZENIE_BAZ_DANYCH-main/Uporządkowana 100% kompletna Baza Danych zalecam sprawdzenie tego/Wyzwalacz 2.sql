DELIMITER $$
CREATE TRIGGER minimalna_cena_za_rower
BEFORE INSERT ON rowery for each row 
BEGIN
   if new.wartosc_produktu<50 then set new.wartosc_produktu=50;
END if;
END $$

 -- trigger ten nie dopuszcza do wstawienia roweru w cenie niższej niż 50zł