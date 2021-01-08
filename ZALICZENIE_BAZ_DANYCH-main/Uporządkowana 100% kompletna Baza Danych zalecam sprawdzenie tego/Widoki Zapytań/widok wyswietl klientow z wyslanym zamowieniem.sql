CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok wyswietl klientow ktorych zamowienie jest wyslane` AS
    SELECT 
        `klienci`.`idklienta` AS `idklienta`,
        `klienci`.`imie` AS `imie`,
        `klienci`.`PESEL` AS `PESEL`,
        `klienci`.`nazwisko` AS `nazwisko`,
        `klienci`.`plec` AS `plec`,
        `klienci`.`miejscowosc` AS `miejscowosc`
    FROM
        `klienci`
    WHERE
        `klienci`.`idklienta` IN (SELECT 
                `zamowienia`.`idklienta`
            FROM
                `zamowienia`
            WHERE
                (`zamowienia`.`stan_realizacji_zamowienia` LIKE 'wysłane'))