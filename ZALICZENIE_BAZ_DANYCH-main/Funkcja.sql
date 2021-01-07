DELIMITER $$
CREATE FUNCTION ilosc_rowerow_o_cenie_nizszej_badz_rownej_od_podanej_ceny(n int) RETURNS INT 
BEGIN 
SELECT COUNT(cena) FROM rowery WHERE cena<=n into n;
RETURN n; 
END $$

