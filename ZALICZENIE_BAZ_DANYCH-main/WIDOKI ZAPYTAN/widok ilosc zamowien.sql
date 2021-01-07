CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok ilosc zamowien` AS
    SELECT 
        COUNT(`zamowienia`.`idklienta`) AS `ilosczamowien`
    FROM
        (`klienci`
        JOIN `zamowienia` ON ((`klienci`.`idklienta` = `zamowienia`.`idklienta`)))