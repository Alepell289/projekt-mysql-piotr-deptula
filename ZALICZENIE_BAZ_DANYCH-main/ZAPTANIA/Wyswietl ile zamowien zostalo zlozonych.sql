SELECT COUNT(zamowienia.idklienta) AS ilosczamowien FROM klienci INNER JOIN zamowienia ON klienci.idklienta=zamowienia.idklienta  ;