DELIMITER %% 
CREATE PROCEDURE najnowszezamowienie (out najnowsze date)
BEGIN 
SELECT MAX(data) into najnowsze FROM zamowienia;
END; 
CALL najnowszezamowienie (@m);%%
SELECT @m;