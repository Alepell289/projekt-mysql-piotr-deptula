CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok wyswietl pracownika o nazwisku król` AS
    SELECT 
        `pracownicy`.`idpracownika` AS `idpracownika`,
        `pracownicy`.`imie` AS `imie`,
        `pracownicy`.`nazwisko` AS `nazwisko`,
        `pracownicy`.`idklienta` AS `idklienta`
    FROM
        `pracownicy`
    WHERE
        (`pracownicy`.`nazwisko` LIKE 'Król')