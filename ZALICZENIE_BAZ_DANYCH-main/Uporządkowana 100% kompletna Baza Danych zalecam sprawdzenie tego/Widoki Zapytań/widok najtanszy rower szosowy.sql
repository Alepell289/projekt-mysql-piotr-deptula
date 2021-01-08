CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `widok najtanszy rower szosowy` AS
    SELECT 
        MIN(`rowery`.`wartosc_produktu`) AS `najtanszy rower szosowy`
    FROM
        `rowery`
    WHERE
        (`rowery`.`typ roweru` = 'SZOSOWY')