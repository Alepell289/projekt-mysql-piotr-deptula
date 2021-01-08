CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok srednia cena roweru` AS
    SELECT 
        AVG(`rowery`.`wartosc_produktu`) AS `AVG(wartosc_produktu)`
    FROM
        `rowery`