SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER ** 
CREATE FUNCTION ilosc_ksiazek_ponizej_jakiejs_ceny(n int) 
RETURNS INT 
BEGIN 
SELECT COUNT(cena) FROM ksiazki WHERE cena<n into n;
RETURN n; 
END**