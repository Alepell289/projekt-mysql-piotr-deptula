CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok klienci z rowerami gurskimi` AS
    SELECT 
        `klienci`.`imie` AS `imie`,
        `klienci`.`nazwisko` AS `nazwisko`
    FROM
        ((`klienci`
        JOIN `zamowienia` ON ((`klienci`.`idklienta` = `zamowienia`.`idklienta`)))
        JOIN `rowery` ON ((`zamowienia`.`idroweru` = `rowery`.`idroweru`)))
    WHERE
        (`rowery`.`typ roweru` LIKE 'Górski')