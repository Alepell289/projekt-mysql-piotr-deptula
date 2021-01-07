DELIMITER // 
CREATE TRIGGER status_paczki 
BEFORE INSERT ON zamowienia for each row 
BEGIN set new.status="oczekiwanie";END// 

