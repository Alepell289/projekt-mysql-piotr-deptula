DROP DATABASE `Polska Wypozyczalnia Rowerów`;
CREATE DATABASE `Polska Wypozyczalnia Rowerów`
DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Polska Wypozyczalnia Rowerów`;

CREATE TABLE klienci (
  idklienta INT PRIMARY KEY AUTO_INCREMENT,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `PESEL` BIGINT(11) NOT NULL ,
  `nazwisko` text COLLATE utf8_polish_ci  NOT NULL,
  `plec` text COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` text COLLATE utf8_polish_ci NOT NULL
);

INSERT INTO klienci (`imie`, `PESEL`, `nazwisko`, `plec`, `miejscowosc`) VALUES
('Jakub', '19427658432', 'Nowak', 'Mężczyzna', 'Gdańsk'),
('Antoni', '20397338602', 'Kowalski', 'Mężczyzna', 'Katowice'),
('Jan', '92527182134' , 'Wiśniewski', 'Mężczyzna', 'Bydgoszcz'),
('Szymon', '31538262792','Wójcik', 'Mężczyzna', 'Lublin'),
('Filip', '08041801104', 'Kowalczyk', 'Mężczyzna', 'Jelenia Góra'),
('Aleksander', '46573842150' , 'Kamiński', 'Mężczyzna', 'Kraków'),
('Wojciech', '19200421894', 'Lewandowski', 'Mężczyzna', 'Kielce'),
('Franciszek', '06646138985', 'Zieliński', 'Mężczyzna', 'Olsztyn'),
('Mikołaj', '46830046166', 'Szymański', 'Mężczyzna', 'Rybnik'),
('Halina', '36789868265', 'Wozniak', 'Kobieta', 'Pułtusk'),
('Alain', '91115003550' , 'Delon', 'Mężczyzna', 'Olsztyn'),
('Alain', '18638342854', 'Dąbrowski', 'Mężczyzna', 'Olsztyn');

CREATE TABLE pracownicy (
  `idpracownika` INT(9) NOT NULL AUTO_INCREMENT,
  `imie` TEXT COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` TEXT COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idpracownika`), KEY `id` (`idpracownika`),idklienta int,FOREIGN KEY (idklienta) REFERENCES klienci(idklienta)
);

INSERT INTO pracownicy (`idpracownika`, `imie`, `nazwisko`,idklienta) VALUES
(1, 'Piotr', 'Król',1),
(2, 'Tymon', 'Wieczorek',2),
(3, 'Wiktor', 'Jabłoński',3),
(4, 'Ignacy', 'Olszewski',5),
(5, 'Jan', 'Duda',6),
(6, 'Alan', 'Tępień',8),
(7, 'Igor', 'malinowski',9),
(8, 'Mateusz', 'Górski',6),
(9, 'Ewa', 'Malewicz',7),
(10, 'Piotr', 'Deptuła',3),
(11, 'Mikołaj', 'Lewandowski',1);

CREATE TABLE rowery (
  `idroweru` int(20) NOT NULL AUTO_INCREMENT,
  `marka` text NOT NULL,
  `seria` text NOT NULL,
  `nazwa roweru` text NOT NULL,
  `typ roweru` text NOT NULL,
  `wartosc_produktu` float NOT NULL,
  PRIMARY KEY (`idroweru`),idpracownika int, FOREIGN KEY (idpracownika) REFERENCES pracownicy(idpracownika)
)AUTO_INCREMENT=20;

INSERT INTO rowery (`idroweru`, `marka`, `seria`, `nazwa roweru`, `typ roweru`, `wartosc_produktu`,idpracownika) VALUES
(1, 'Scott',      'S17', 'Tiger Nitro',      'Górski'    ,9999.29,1),
(2, 'Cannondale', 'G6', 'Black Panther Byke','Szosowy'   ,4699.99,2),
(3, 'Trek',       'T4', 'UBer Byke ',        'Miejski'   ,3766.70,3),
(4, 'Scott',      'H6', 'Glover'      ,      'Szosowy'   ,1399.99,3),
(5, 'Specialized','H2', 'MicroCar',          'Szosowy'   ,2699.99,4),
(6, 'Scott',      'S3' , 'Polish Best Byke', 'Miejski'   ,999.00,4),
(7, 'Cannondale', 'S6','White Panther Byke', 'Górski'    ,17999.00,5),
(8, 'Scott',      'J6', 'FOrk Drive'      ,  'Szosowy'   ,1799.99,6),
(9, 'Specialized','H4', 'MicroCar v2',       'Szosowy'   ,6699.99,7),
(10, 'Scott',     'S1' ,'Polish Byke Economic','Miejski' ,299.00,8),
(11, 'Cannondale','G7','Unitro Super',       'Górski'    ,399.00,9);

CREATE TABLE platnosci (
  `idplatnosci` int(10) NOT NULL AUTO_INCREMENT,
  `koszt zakupu` int,
  `data wplaty` datetime,
  `typ platnosci` varchar(20),
  KEY `id` (`idplatnosci`),idklienta int,FOREIGN KEY (idklienta) REFERENCES klienci(idklienta)
) DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci auto_increment=9;

INSERT INTO platnosci ( `idplatnosci`,`koszt zakupu`, `data wplaty` ,`typ platnosci`,idklienta ) VALUES
(1, 1065, '2020-10-08', 'karta płatnicza',4),
(2, 9034, '2018-09-05', 'gotówka',1),
(3, 1834, '2019-10-11', 'kurier przy odbiorze',9),
(4, 6945, '2020-10-15', 'kurier przy odbiorze',8),
(5, 1567, '2019-08-12', 'gotówka',7),
(6, 212, '2018-10-20', 'karta',6),
(7, 97,    '2020-08-14', 'karta płatnicza',5),
(8, 1864,  '2020-08-19', 'gotówka',3),
(9, 12986, '2020-11-19', 'gotówka',4),
(10,34567,  '2018-10-20',  'kurier przy odbiorze',2),
(11,12986, '2020-11-19', 'gotówka',1);

CREATE TABLE zamowienia (
  `idzamowienia` int NOT NULL AUTO_INCREMENT,
  `idroweru` int NOT NULL,
  `data` date NOT NULL,
  `stan_realizacji_zamowienia` text COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idzamowienia`),idklienta int 
) DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO zamowienia (`idzamowienia`, `idroweru`, `data`, `stan_realizacji_zamowienia`, `idklienta`) VALUES
(1,1, '2019-10-08', 'oczekiwanie na wysylke',1),
(2,3,'2019-09-05', 'wysłane',2),
(3,2, '2020-10-11', 'wysłane',4),
(4,4,'2020-10-15', 'oczekiwanie na wysylke',6),
(5,5, '2020-08-12', 'wysłane',8),
(6,6, '2020-10-20', 'wysłane',4),
(7,1, '2020-08-14', 'wysłane',8),
(8,2, '2020-08-19', 'wysłane',1),
(9,6, '2020-11-19', 'wysłane',9),
(10,6, '2020-12-28', 'oczekiwanie na wysylke',7),
(11,4,'2020-01-06', 'oczekiwanie na wysylke ',5);
