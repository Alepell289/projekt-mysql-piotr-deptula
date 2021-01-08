CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok 3 najtansze rowery` AS
    SELECT 
        `rowery`.`nazwa roweru` AS `nazwa roweru`,
        `rowery`.`wartosc_produktu` AS `wartosc_produktu`
    FROM
        `rowery`
    ORDER BY `rowery`.`wartosc_produktu`
    LIMIT 3