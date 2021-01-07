CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `srednia cena rowerow` AS
    SELECT 
        AVG(`rowery`.`cena`) AS `AVG(cena)`
    FROM
        `rowery`