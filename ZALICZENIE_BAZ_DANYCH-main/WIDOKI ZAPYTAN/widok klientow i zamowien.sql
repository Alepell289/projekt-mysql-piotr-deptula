CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok klienci i platnosci` AS
    SELECT 
        `klienci`.`idklienta` AS `idklienta`,
        `klienci`.`imie` AS `imie`,
        `klienci`.`PESEL` AS `PESEL`,
        `klienci`.`nazwisko` AS `nazwisko`,
        `klienci`.`plec` AS `plec`,
        `klienci`.`miejscowosc` AS `miejscowosc`,
        `platnosci`.`idplatnosci` AS `idplatnosci`
    FROM
        (`klienci`
        JOIN `platnosci` ON ((`klienci`.`idklienta` = `platnosci`.`idklienta`)))