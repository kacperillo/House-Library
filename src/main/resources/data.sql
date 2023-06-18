INSERT INTO `category`
VALUES (1, 'Matematyka'),
       (2, 'Fizyka'),
       (3, 'Elektrotechnika'),
       (4, 'Elektronika'),
       (5, 'Automatyka'),
       (6, 'Robotyka'),
       (7, 'Informatyka');

INSERT INTO `subcategory`
VALUES (1, 'Algebra', 1),
       (2, 'Analiza', 1),
       (3, 'Fizyka Ogólna', 2),
       (4, 'Mechanika', 2),
       (5, 'Elektromagnetyzm', 2),
       (6, 'Teoria pola', 2),
       (7, 'Mechanika kwantowa', 2),
       (8, 'Teoria względności', 2),
       (9, 'Fizyka Współczesna', 2),
       (10, 'Teoria obwodów', 3),
       (11, 'Maszyny elektryczne', 3),
       (12, 'Metrologia elektryczna', 3),
       (13, 'Układy analogowe i cyfrowe', 4),
       (14, 'Technika cyfrowa', 4),
       (15, 'Mikrokontrolery i mikrokomputery', 4),
       (16, 'Teoria sterowania', 5),
       (17, 'Sterowniki PLC', 5),
       (18, 'Robotyka Ogólna', 6),
       (19, 'Informatyka Ogólna', 7);

INSERT INTO `author`
VALUES (1, 'Julian', 'Klukowski'),
       (2, 'Ireneusz', 'Nabiałek'),
       (3, 'Andrzej', 'Białynicki-Birula'),
       (4, 'Aleksiej', 'Kostrikin'),
       (5, 'Franciszek', 'Leja'),
       (6, 'Ryszard', 'Rudnicki'),
       (7, 'Witold', 'Kołodziej'),
       (8, 'Walter', 'Rudin'),
       (9, 'Grigorij', 'Fichtenholz'),
       (10, 'Robert', 'Kowalczyk'),
       (11, 'Kamil', 'Niedziałomski'),
       (12, 'Cezary', 'Obczyński'),
       (13, 'Andrzej', 'Palczewski'),
       (14, 'Lawrence', 'Evans'),
       (15, 'James', 'Stewart'),
       (16, 'Igor', 'Sawieliew'),
       (17, 'Jerzy', 'Massalski'),
       (18, 'Michalina', 'Massalska'),
       (19, 'Walter', 'Thirring'),
       (20, 'Richard', 'Feynman'),
       (21, 'Robert', 'Leighton'),
       (22, 'Matthew', 'Sands'),
       (23, 'Robert', 'Resnick'),
       (24, 'David', 'Halliday'),
       (25, 'Jerzy', 'Leyko'),
       (26, 'John', 'Taylor'),
       (27, 'Lew', 'Landau'),
       (28, 'Jewgienij M.', 'Lifszyc'),
       (29, 'Wojciech', 'Rubinowicz'),
       (30, 'Wojciech', 'Królikowski'),
       (31, 'Józef', 'Nizioł'),
       (32, 'David J.', 'Griffiths'),
       (33, 'Zygmunt', 'Piątek'),
       (34, 'Paweł', 'Jabłoński'),
       (35, 'John David', 'Jackson'),
       (36, 'Krzysztof', 'Meissner'),
       (37, 'Steven', 'Weinberg'),
       (38, 'Iwo', 'Białynicki-Birula'),
       (39, 'Stanisław', 'Kryszewski'),
       (40, 'Darrel F.', 'Shroeter'),
       (41, 'Ramamurti', 'Shankar'),
       (42, 'Marek', 'Cieplak'),
       (43, 'Jerzy', 'Kamiński'),
       (44, 'Władymir B.', 'Bierestecki'),
       (45, 'Lew P.', 'Pitajewski'),
       (46, 'Richard L.', 'Liboff'),
       (47, 'James D.', 'Bjorken'),
       (48, 'Sidney D.', 'Drell'),
       (49, 'Leonard I.', 'Schiff'),
       (50, 'Paul T.', 'Matthews'),
       (51, 'Bernard F.', 'Schutz'),
       (52, 'James B.', 'Hartle'),
       (53, 'Albert', 'Einstein'),
       (54, 'Donald H.', 'Perkins'),
       (55, 'Stanisław', 'Bolkowski'),
       (56, 'Stanisław', 'Osowski'),
       (57, 'Krzysztof', 'Siwek'),
       (58, 'Michał', 'Śmiałek'),
       (59, 'Tadeusz', 'Glinka'),
       (60, 'Lech', 'Grzesiak'),
       (61, 'Bartłomiej', 'Ufnalski'),
       (62, 'Arkadiusz', 'Kaszewski'),
       (63, 'Antoni', 'Plamitzer'),
       (64, 'Władysław', 'Latek'),
       (65, 'Zdzisław', 'Grunwald'),
       (66, 'Jacek', 'Przepiórkowski'),
       (67, 'Andrzej', 'Dębowski'),
       (68, 'Augustyn', 'Chwaleba'),
       (69, 'Maciej', 'Poniński'),
       (70, 'Andrzej', 'Siedlecki'),
       (71, 'Andrzej', 'Filipkowski'),
       (72, 'Zbigniew', 'Nosal'),
       (73, 'Jerzy', 'Baranowski'),
       (74, 'Grzegorz', 'Czajkowski'),
       (75, 'Bogusław', 'Kalinowski'),
       (76, 'Józef', 'Boksa'),
       (77, 'Jerzy', 'Pasierbiński'),
       (78, 'Mirosław', 'Rusek'),
       (79, 'Bogdan', 'Moeschke'),
       (80, 'Grzegorz', 'Płoszajski'),
       (81, 'Piotr', 'Majdak'),
       (82, 'Piotr', 'Świstak'),
       (83, 'Wiesław', 'Marciniak'),
       (84, 'Ulrich', 'Tietze'),
       (85, 'Christoph', 'Schenk'),
       (86, 'Marian P.', 'Kaźmierkowski'),
       (87, 'Jerzy T.', 'Matysik'),
       (88, 'Barbara', 'Pióro'),
       (89, 'Marek', 'Pióro'),
       (90, 'Paul', 'Horowitz'),
       (91, 'Winfield', 'Hill'),
       (92, 'Marcin', 'Olszewski'),
       (93, 'Barry', 'Willkson'),
       (94, 'Józef', 'Kalisz'),
       (95, 'Wiesław', 'Traczyk'),
       (96, 'Piotr', 'Misiurewicz'),
       (97, 'Marek', 'Grzybek'),
       (98, 'Marian', 'Łakomy'),
       (99, 'Jan', 'Zabrodzki'),
       (100, 'Jan', 'Pieńkos'),
       (101, 'Janusz', 'Turczyński'),
       (102, 'Ryszard', 'Krzyżanowski'),
       (103, 'William', 'Stallings'),
       (104, 'Krzysztof', 'Paprocki'),
       (105, 'Maciej', 'Szumski'),
       (106, 'Aleksander', 'Kurczyk'),
       (107, 'Andrzej', 'Pawluczuk'),
       (108, 'Elliot', 'Williams'),
       (109, 'Tomasz', 'Francuz'),
       (110, 'Michael', 'Margolis'),
       (111, 'Brian', 'Jepson'),
       (112, 'Nicholas R.', 'Weldin'),
       (113, 'Simon', 'Monk'),
       (114, 'Tadeusz', 'Kaczorek'),
       (115, 'Andrzej', 'Dzieliński'),
       (116, 'Włodzimierz', 'Dąbrowski'),
       (117, 'Rafał', 'Łopatka'),
       (118, 'Jacek', 'Kabziński'),
       (119, 'Andrzej', 'Słota'),
       (120, 'Dominika', 'Śniegulska-Grądzka'),
       (121, 'Maciej', 'Szafarczyk'),
       (122, 'Rafał', 'Wypysiński'),
       (123, 'Zdzisław', 'Bubnicki'),
       (124, 'Marek', 'Żelazny'),
       (125, 'Przemysław', 'Mosiołek'),
       (126, 'Stefan', 'Węgrzyn'),
       (127, 'Jerzy', 'Kasprzyk'),
       (128, 'Robert', 'Sałat'),
       (129, 'Krzysztof', 'Korpyt'),
       (130, 'Paweł', 'Obstawski'),
       (131, 'Bogdan', 'Broel-Plater'),
       (132, 'Janusz', 'Kwaśniewski'),
       (133, 'Jerzy', 'Honczarenko'),
       (134, 'Piotr', 'Dutkiewicz'),
       (135, 'Waldemar', 'Wróblewski'),
       (136, 'Krzysztof', 'Kozłowski'),
       (137, 'Mordechai', 'Ben-Ari'),
       (138, 'Francesco', 'Mondada'),
       (139, 'John J.', 'Craig'),
       (140, 'J. Glenn', 'Brookshear'),
       (141, 'Dennis', 'Brylow'),
       (142, 'Abraham', 'Silberschatz'),
       (143, 'Peter B.', 'Galvin'),
       (144, 'Greg', 'Gagne'),
       (145, 'Krzysztof', 'Barteczko'),
       (146, 'Matthew', 'Hickey'),
       (147, 'Jennifer', 'Arcuri'),
       (148, 'Sylwester', 'Walczak'),
       (149, 'Chris', 'Bernhardt'),
       (150, 'Gynvael', 'Coldwind'),
       (151, 'Marcin', 'Szeliga'),
       (152, 'Russell', 'Bradford'),
       (153, 'Brian', 'Ward');

INSERT INTO `book`
VALUES (1, 3, 'Algebra dla studentów', 1, 1),
       (2, 1, 'Algebra', 1, 1),
       (3, 1, 'Wstęp do algebry', 1, 1),
       (4, 3, 'Rachunek różniczkowy i całkowy', 1, 2),
       (5, 3, 'Wykłady z analizy matematycznej', 1, 2),
       (6, 2, 'Analiza matematyczna', 1, 2),
       (7, 2, 'Analiza funkcjonalna', 1, 2),
       (8, 1, 'Rachunek różniczkowy i całkowy', 1, 2),
       (9, 1, 'Podstawy analizy matematycznej', 1, 2),
       (10, 1, 'Całki. Metody rozwiązywania zadań', 1, 2),
       (11, 1, 'Równania różniczkowe zwyczajne', 1, 2),
       (12, 1, 'Równania różniczkowe cząstkowe', 1, 2),
       (13, 0, 'Calculus', 1, 2),
       (14, 2, 'Wykłady z fizyki I-III', 2, 3),
       (15, 2, 'Fizyka dla inżynierów I-II', 2, 3),
       (16, 2, 'Fizyka matematyczna', 2, 3),
       (17, 0, 'Feynmana wykłady z fizyki', 2, 3),
       (19, 3, 'Mechanika ogólna', 2, 4),
       (20, 2, 'Mechanika klasyczna', 2, 4),
       (21, 2, 'Mechanika', 2, 4),
       (22, 2, 'Mechanika teoretyczna', 2, 4),
       (23, 1, 'Metodyka rozwiązywania zadań z mechaniki ', 2, 4),
       (24, 3, 'Podstawy elektrodynamiki', 2, 5),
       (25, 2, 'Podstawy teorii pola elektromagnetycznego', 2, 5),
       (26, 0, 'Elektrodynamika klasyczna', 2, 5),
       (27, 3, 'Teoria pola', 2, 6),
       (28, 2, 'Klasyczna teoria pola', 2, 6),
       (29, 2, 'Teoria pól kwantowych I-III', 2, 6),
       (30, 1, 'Wstęp do teorii pól kwantowych', 2, 6),
       (31, 2, 'Mechanika kwantowa', 2, 7),
       (32, 3, 'Wstęp do mechaniki kwantowej', 2, 7),
       (33, 2, 'Mechanika kwantowa', 2, 7),
       (34, 2, 'Teoria kwantów', 2, 7),
       (35, 2, 'Elektrodynamika kwantowa', 2, 7),
       (36, 1, 'Wstęp do mechaniki kwantowej', 2, 7),
       (37, 2, 'Mechanika kwantowa', 2, 7),
       (38, 2, 'Relatywistyczna teoria kwantów', 2, 7),
       (39, 1, 'Mechanika kwantowa', 2, 7),
       (40, 1, 'Wstęp do mechaniki kwantowej', 2, 7),
       (41, 2, 'Wstęp do ogólnej teorii względności', 2, 8),
       (42, 0, 'Grawitacja', 2, 8),
       (43, 0, 'Istota teorii względności', 2, 8),
       (44, 0, 'Wstęp do fizyki wysokich energii', 2, 9),
       (45, 3, 'Teoria obwodów', 3, 10),
       (46, 1, 'Teoria obwodów', 3, 10),
       (47, 3, 'Maszyny elektryczne i transformatory', 3, 11),
       (48, 2, 'Sterowanie napędów elektrycznych', 3, 11),
       (49, 1, 'Maszyny elektryczne', 3, 11),
       (50, 3, 'Maszyny elektryczne w pytaniach i odpowiedziach', 3, 11),
       (51, 1, 'Napęd elektryczny', 3, 11),
       (52, 1, 'Silniki elektryczne w praktyce elektronika', 3, 11),
       (53, 1, 'Automatyka. Napęd elektryczny', 3, 11),
       (54, 1, 'Elektryczny napęd trakcyjny', 3, 11),
       (55, 1, 'Maszyny elektryczne wzbudzane magnesami trwałymi', 3, 11),
       (56, 2, 'Metrologia elektryczna', 3, 12),
       (57, 3, 'Układy analogowe i cyfrowe', 4, 13),
       (58, 3, 'Układy elektroniczne I-III', 4, 13),
       (59, 2, 'Analogowe układy elektroniczne', 4, 13),
       (60, 2, 'Elementy i układy elektroniczne w pytaniach i odpowiedziach', 4, 13),
       (61, 2, 'Podstawy elektroniki', 4, 13),
       (62, 2, 'Przyrządy półprzewodnikowe i układy scalone', 4, 13),
       (63, 0, 'Układy półprzewodnikowe', 4, 13),
       (64, 2, 'Wprowadzenie do elektroniki i energoelektroniki', 4, 13),
       (65, 0, 'Podstawy elektroniki', 4, 13),
       (66, 0, 'Sztuka elektroniki', 4, 13),
       (67, 0, 'Elektronika dla informatyków', 4, 13),
       (68, 2, 'Układy cyfrowe', 4, 14),
       (69, 3, 'Podstawy elektroniki cyfrowej', 4, 14),
       (70, 1, 'Układy cyfrowe automatyki', 4, 14),
       (71, 2, 'Podstawy techniki cyfrowej', 4, 14),
       (72, 1, 'Półprzewodnikowe układy logiczne TTL', 4, 14),
       (73, 0, 'Cyfrowe układy scalone TTL', 4, 14),
       (74, 0, 'Układy scalone TTL w systemach cyfrowych', 4, 14),
       (75, 0, 'Układy cyfrowe. Podstawy teoretyczne i metody syntezy', 4, 14),
       (76, 2, 'Układy mikroprocesorowe', 4, 15),
       (77, 3, 'Organizacja i architektura systemu komputerowego I-II', 7, 19),
       (78, 2, 'Układy mikroprocesorowe', 4, 15),
       (79, 1, 'Podstawy techniki mikroprocesorowej', 4, 15),
       (80, 2, 'Mikrokontrolery STM32 w praktyce', 4, 15),
       (81, 2, 'Mikrokontrolery STM32 w systemach sterowania i regulacji', 4, 15),
       (82, 1, 'Mikrokontrolery STM32 dla początkujących', 4, 15),
       (83, 1, 'Sztuka programowania mikrokontrolerów AVR. Podstawy', 4, 15),
       (84, 1, 'Programowanie układów AVR dla praktyków', 4, 15),
       (85, 2, 'Język C dla mikrokontrolerów AVR', 4, 15),
       (86, 1, 'Arduino', 4, 15),
       (87, 1, 'Raspberry Pi. Receptury', 4, 15),
       (88, 3, 'Podstawy teorii sterowania', 5, 16),
       (89, 3, 'Teoria sterowania', 5, 16),
       (90, 2, 'Sterowanie procesami ciągłymi', 5, 16),
       (91, 2, 'Podstawy układów sterowań cyfrowych i komputerowych', 5, 16),
       (92, 1, 'Teoria i algorytmy sterowania', 5, 16),
       (93, 1, 'Automatyka. Podstawy teorii', 5, 16),
       (94, 1, 'Automatyka. Technika regulacji', 5, 16),
       (95, 2, 'Podstawy automatyki', 5, 16),
       (96, 1, 'Projektowanie nieliniowych układów sterowania', 5, 16),
       (97, 1, 'Podstawy automatyki', 5, 16),
       (98, 2, 'Programowanie sterowników przemysłowych', 5, 17),
       (99, 2, 'Wstęp do programowania sterowników PLC', 5, 17),
       (100, 1, 'Układy wykorzystujące sterowniki PLC', 5, 17),
       (101, 1, 'Sterowniki PLC w praktyce inżynierskiej', 5, 17),
       (102, 1, 'Inteligentny dom i inne systemy sterowania w 100 przykładach', 5, 17),
       (103, 2, 'Roboty przemysłowe', 6, 18),
       (104, 2, 'Modelowanie i sterowanie robotów', 6, 18),
       (105, 1, 'Elementy robotyki', 6, 18),
       (106, 1, 'Wprowadzenie do robotyki', 6, 18),
       (107, 2, 'Informatyka w ogólnym zarysie', 7, 19),
       (108, 2, 'Podstawy systemów operacyjnych I-II', 7, 19),
       (109, 2, 'Java. Uniwersalne techniki programowania', 7, 19),
       (110, 2, 'Warsztat hakera', 7, 19),
       (111, 1, 'Nowoczesne Django', 7, 19),
       (112, 1, 'Obliczenia kwantowe dla każdego', 7, 19),
       (113, 1, 'Zrozumieć programowanie', 7, 19),
       (114, 1, 'Praktyczne uczenie maszynowe', 7, 19),
       (115, 1, 'Podstawy sieci komputerowych', 7, 19),
       (116, 1, 'Jak działa Linux', 7, 19);


INSERT INTO `author_book`
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (5, 4),
       (6, 5),
       (7, 6),
       (8, 7),
       (9, 8),
       (8, 9),
       (10, 10),
       (11, 10),
       (12, 10),
       (13, 11),
       (14, 12),
       (15, 13),
       (16, 14),
       (17, 15),
       (18, 15),
       (19, 16),
       (20, 17),
       (21, 17),
       (22, 17),
       (25, 19),
       (26, 20),
       (27, 21),
       (28, 21),
       (29, 22),
       (30, 22),
       (31, 23),
       (32, 24),
       (33, 25),
       (34, 25),
       (35, 26),
       (27, 27),
       (28, 27),
       (36, 28),
       (37, 29),
       (38, 30),
       (39, 31),
       (32, 32),
       (40, 32),
       (41, 33),
       (38, 34),
       (42, 34),
       (43, 34),
       (44, 35),
       (28, 35),
       (45, 35),
       (46, 36),
       (27, 37),
       (28, 37),
       (47, 38),
       (48, 38),
       (49, 39),
       (50, 40),
       (51, 41),
       (52, 42),
       (53, 43),
       (54, 44),
       (55, 45),
       (56, 46),
       (57, 46),
       (58, 46),
       (59, 47),
       (60, 48),
       (61, 48),
       (62, 48),
       (63, 49),
       (64, 50),
       (65, 51),
       (66, 52),
       (67, 53),
       (67, 54),
       (59, 55),
       (68, 56),
       (69, 56),
       (70, 56),
       (71, 57),
       (72, 58),
       (73, 58),
       (74, 58),
       (75, 58),
       (76, 59),
       (77, 60),
       (78, 60),
       (68, 61),
       (79, 61),
       (80, 61),
       (81, 61),
       (82, 61),
       (83, 62),
       (84, 63),
       (85, 63),
       (86, 64),
       (87, 64),
       (88, 65),
       (89, 65),
       (90, 66),
       (91, 66),
       (92, 67),
       (93, 68),
       (94, 69),
       (95, 70),
       (96, 71),
       (96, 72),
       (97, 72),
       (98, 73),
       (99, 73),
       (100, 74),
       (101, 74),
       (95, 75),
       (102, 76),
       (103, 77),
       (96, 78),
       (96, 79),
       (104, 80),
       (105, 81),
       (106, 82),
       (107, 83),
       (108, 84),
       (109, 85),
       (110, 86),
       (111, 86),
       (112, 86),
       (113, 87),
       (114, 88),
       (115, 88),
       (116, 88),
       (117, 88),
       (118, 89),
       (119, 90),
       (120, 91),
       (121, 91),
       (122, 91),
       (123, 92),
       (67, 93),
       (67, 94),
       (124, 95),
       (118, 96),
       (125, 96),
       (126, 97),
       (127, 98),
       (128, 99),
       (129, 99),
       (130, 99),
       (131, 100),
       (132, 101),
       (132, 102),
       (133, 103),
       (134, 104),
       (135, 104),
       (136, 104),
       (137, 105),
       (138, 105),
       (139, 106),
       (140, 107),
       (141, 107),
       (142, 108),
       (143, 108),
       (144, 108),
       (145, 109),
       (146, 110),
       (147, 110),
       (148, 111),
       (149, 112),
       (150, 113),
       (151, 114),
       (152, 115),
       (153, 116);
