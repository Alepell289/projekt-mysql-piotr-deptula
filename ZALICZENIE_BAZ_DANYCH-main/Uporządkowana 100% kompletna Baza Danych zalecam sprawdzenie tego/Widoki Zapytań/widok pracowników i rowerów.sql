CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok pracownicy i rowery` AS
    SELECT 
        `pracownicy`.`idpracownika` AS `idpracownika`,
        `pracownicy`.`imie` AS `imie`,
        `pracownicy`.`nazwisko` AS `nazwisko`,
        `rowery`.`nazwa roweru` AS `nazwa roweru`
    FROM
        (`pracownicy`
        JOIN `rowery` ON ((`pracownicy`.`idpracownika` = `rowery`.`idpracownika`)))