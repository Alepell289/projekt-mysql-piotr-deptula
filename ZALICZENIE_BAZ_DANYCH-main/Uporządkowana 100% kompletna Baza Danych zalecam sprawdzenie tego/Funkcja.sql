SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
CREATE FUNCTION ilosc_rowerow_o_cenie_nizszej_badz_rownej_od_podanej_ceny(n int) RETURNS INT 
BEGIN 
SELECT COUNT(wartosc_produktu) FROM rowery WHERE wartosc_produktu<=n into n;
RETURN n; 
END $$

