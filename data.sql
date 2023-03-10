INSERT INTO Streaming_platforms VALUES
('Netflix', 9.99, 'USA'),
('HBO Max', 9.99, 'USA'),
('Viaplay', 4.99, 'Sweden'),
('Amazon Prime Video', 5.99, 'USA'),
('Apple TV', 6.99, 'USA'),
('Disney+', 11.00, 'USA'),
('Player', 6.40, 'Poland'),
('Mubi', 10.99, 'United Kingdom');

INSERT INTO Award_ceremonies VALUES
('Oscar', '1929-01-01', 'USA'),
('Golden Globe', '1944-01-01', 'USA'),
('BAFTA', '1948-01-01', 'United Kingdom'),
('Cannes', '1946-01-01', 'France'),
('Golden Lion', '1949-01-01', 'Italy'),
('Berlinale', '1951-01-01', 'Germany'),
('Golden Raspberry Award', '1981-01-01', 'USA'),
('Emmy', '1949-01-01', 'USA'),
('Satellite Award', '1997-01-01', 'USA'),
('Saturn Award', '1973-01-01', 'USA');

INSERT INTO Productions VALUES
/*1*/('The Shawshank Redemption', 'Movie'),
/*2*/('The Green Mile', 'Movie'),
/*3*/('The Lighthouse', 'Movie'),
/*4*/('Interstellar', 'Movie'),
/*5*/('Uncut Gems', 'Movie'),
/*6*/('Avatar', 'Movie'),
/*7*/('12 Angry Men', 'Movie'),
/*8*/('One Flew Over the Cuckoo''s Nest', 'Movie'),
/*9*/('Pulp Fiction', 'Movie'),
/*10*/('Se7en', 'Movie'),
/*11*/('Fight Club', 'Movie'),
/*12*/('Ex Machina', 'Movie'),
/*13*/('Inception', 'Movie'),
/*14*/('The Silence of the Lambs', 'Movie'),
/*15*/('Scarface', 'Movie'),
/*16*/('Gran Torino', 'Movie'),
/*17*/('Leon', 'Movie'),
/*18*/('Whiplash', 'Movie'),
/*19*/('Apocalypse Now', 'Movie'),
/*20*/('Il buono, il brutto, il cattivo', 'Movie'),
/*21*/('Parasite', 'Movie'),
/*22*/('Inglorious Basterds', 'Movie'),
/*23*/('Hachi: A Dog''s Tale', 'Movie'),
/*24*/('Psycho', 'Movie'),
/*25*/('Red Rocket', 'Movie'),
/*26*/('Top Gun', 'Movie'),
/*27*/('Top Gun: Maverick', 'Movie'),
/*28*/('Elvis', 'Movie'),
/*29*/('Rocketman', 'Movie'),
/*30*/('Good Time', 'Movie'),
/*31*/('Goodfellas', 'Movie'),
/*32*/('Back to the Future', 'Movie'),
/*33*/('Back to the Future Part II', 'Movie'),
/*34*/('Back to the Future Part III', 'Movie'),
/*35*/('Le Gendarme de Saint-Tropez', 'Movie'),
/*36*/('Prisoners', 'Movie'),
/*37*/('Hodejegerne', 'Movie'),
/*38*/('Jagten', 'Movie'),
/*39*/('Nightcrawler', 'Movie'),
/*40*/('Everest', 'Movie'),
/*41*/('Joker', 'Movie'),
/*42*/('Tenet', 'Movie'),
/*43*/('Blade Runner', 'Movie'),
/*44*/('Blade Runner 2049', 'Movie'),
/*45*/('The Terminator', 'Movie'),
/*46*/('The Shining', 'Movie'),
/*47*/('Cape Fear', 'Movie'),
/*48*/('Jurassic Park', 'Movie'),
/*49*/('Misery', 'Movie'),
/*50*/('Saturday Night Fever', 'Movie'),
/*51*/('Czarnobyl', 'Series'),
/*52*/('Breaking Bad', 'Series'),
/*53*/('Game of Thrones', 'Series'),
/*54*/('Band of Brothers', 'Series'),
/*55*/('The Office', 'Series'),
/*56*/('Sherlock', 'Series'),
/*57*/('Peaky Blinders', 'Series'),
/*58*/('Narcos', 'Series'),
/*59*/('BoJack Horseman', 'Series'),
/*60*/('Twin Peaks', 'Series'),
/*61*/('House of Cards', 'Series'),
/*62*/('Vikings', 'Series'),
/*63*/('Stranger Things', 'Series'),
/*64*/('The Sopranos', 'Series'),
/*65*/('Black Mirror', 'Series'),
/*66*/('Friends', 'Series'),
/*67*/('Trailer Park Boys', 'Series'),
/*68*/('Dexter', 'Series'),
/*69*/('Dark', 'Series'),
/*70*/('Better Call Saul', 'Series'),
/*71*/('La casa de papel', 'Series'),
/*72*/('The crown', 'Series'),
/*73*/('Fargo', 'Series'),
/*74*/('Pitbull', 'Series'),
/*75*/('Yellowstone', 'Series'),
/*76*/('Suits', 'Series'),
/*77*/('Sons of Anarchy', 'Series'),
/*78*/('Wataha', 'Series'),
/*79*/('Mr. Robot', 'Series'),
/*80*/('The Big Bang Theory', 'Series');


INSERT INTO Movies VALUES
(1, 'drama', 'USA', '1994-09-10', 142),
(2, 'drama', 'USA', '1999-12-06', 188),
(3, 'horror drama', 'USA', '2019-05-19', 110),
(4, 'sci-fi', 'USA', '2014-10-26', 169),
(5, 'comedy drama', 'USA', '2019-08-30', 135),
(6, 'sci-fi', 'USA', '2009-12-10', 162),
(7, 'court drama', 'USA', '1957-04-10', 96),
(8, 'drama', 'USA', '1975-11-19', 133),
(9, 'gangster', 'USA', '1994-05-21', 154),
(10, 'thriller', 'USA', '1995-09-15', 127),
(11, 'thriller', 'USA', '1999-09-10', 139),
(12, 'sci-fi', 'United Kingdom', '2015-01-21', 108),
(13, 'sci-fi', 'USA', '2010-07-08', 148),
(14, 'thriller', 'USA', '1991-01-30', 118),
(15, 'gangster', 'USA', '1983-12-01', 170),
(16, 'drama', 'USA', '2008-12-09', 116),
(17, 'drama', 'France', '1994-09-14', 110),
(18, 'musical', 'USA', '2014-01-16', 105),
(19, 'war drama', 'USA', '1979-05-10', 147),
(20, 'western', 'Italy', '1966-12-23', 179),
(21, 'drama', 'South Korea', '2019-05-21', 132),
(22, 'war', 'USA', '2009-05-20', 153),
(23, 'drama', 'USA', '2009-06-13', 93),
(24, 'thriller', 'USA', '1960-06-16', 109),
(25, 'comedy drama', 'USA', '2021-07-14', 128),
(26, 'romance', 'USA', '1986-05-12', 110),
(27, 'action', 'USA', '2022-05-18', 131),
(28, 'musical', 'USA', '2022-05-25', 159),
(29, 'musical', 'United Kingdom', '2019-05-16', 121),
(30, 'drama', 'USA', '2017-05-25', 100),
(31, 'gangster', 'USA', '1990-09-09', 146),
(32, 'sci-fi comedy', 'USA', '1985-07-03', 116),
(33, 'sci-fi comedy', 'USA', '1989-11-20', 108),
(34, 'sci-fi comedy', 'USA', '1990-05-25', 118),
(35, 'comedy', 'France', '1964-09-09', 95),
(36, 'thriller', 'USA', '2013-08-30', 153),
(37, 'thriller', 'Norway', '2011-08-04', 98),
(38, 'drama', 'Denmark', '2020-05-20', 115),
(39, 'drama', 'USA', '2014-09-05', 117),
(40, 'thriller', 'USA', '2015-09-02', 121),
(41, 'drama', 'USA', '2019-08-31', 122),
(42, 'sci-fi thriller', 'USA', '2020-08-26', 150),
(43, 'sci-fi thriller', 'USA', '1982-06-25', 117),
(44, 'sci-fi thriller', 'USA', '2017-10-03', 163),
(45, 'sci-fi', 'USA', '1984-10-26', 107),
(46, 'horror', 'United Kingdom', '1980-05-23', 146),
(47, 'thriller', 'USA', '1991-11-13', 128),
(48, 'adventure sci-fi', 'USA', '1993-06-09', 127),
(49, 'thriller', 'USA', '1990-11-29', 107),
(50, 'musical', 'USA', '1997-12-14', 118);

INSERT INTO Series VALUES
(51, 'drama', 2019, 2019, 1, 5),
(52, 'crime drama', 2008, 2013, 5, 62),
(53, 'fantasy drama', 2011, 2019, 8, 73),
(54, 'drama', 2001, 2001, 1, 10),
(55, 'sitcom', 2019, 2019, 1, 5),
(56, 'crime drama', 2010, 2017, 4, 13),
(57, 'crime drama', 2013, 2022, 6, 36),
(58, 'crime drama', 2015, 2017, 3, 30),
(59, 'comedy', 2014, 2020, 6, 77),
(60, 'drama', 1990, 1991, 2, 30),
(61, 'thriller', 2013, 2018, 6, 73),
(62, 'historical drama', 2013, 2020, 6, 89),
(63, 'horror', 2016, NULL, 4, 34),
(64, 'crime drama', 1999, 2007, 6, 86),
(65, 'anthology', 2011, NULL, 5, 22),
(66, 'sitcom', 1994, 2004, 10, 236),
(67, 'mockumentary', 2001, 2008, 12, 105),
(68, 'crime drama', 2006, 2013, 9, 96),
(69, 'sci-fi thriller', 2017, 2020, 3, 26),
(70, 'crime drama', 2015, 2022, 6, 63),
(71, 'crime drama', 2017, 2021, 3, 41),
(72, 'historical drama', 2016, NULL, 5, 50),
(73, 'crime drama', 2014, NULL, 4, 41),
(74, 'action', 2005, 2008, 3, 31),
(75, 'drama', 2018, NULL, 1, 5),
(76, 'drama', 2011, 2019, 9, 134),
(77, 'action', 2008, 2014, 7, 92),
(78, 'thriller', 2014, 2019, 3, 18),
(79, 'thriller', 2015, 2019, 4, 45),
(80, 'comedy', 2007, 2019, 12, 279);

INSERT INTO Staff_description VALUES
('actor'),
('director'),
('screenwriter'),
('composer');

INSERT INTO Production_statistics VALUES
(1, 73300000, 25000000, 100000001, 123, 7.4),
(2, 2432524, 106343569, 5780578, 118, 9.0),
(3, 18302742, 6767282, 19817477, 229, 8.2),
(4, 11743147, 90841577, 22857576, 114, 8.1),
(5, 319037909, 1014064933, 3110941, 50, 7.2),
(6, 325044112, 29061864, 18775934, 55, 8.3),
(7, 12782344, 138667730, 7841781, 99, 7.8),
(8, 603445069, 115637296, 25960264, 169, 9.1),
(9, 37045861, 1014161306, 15200637, 163, 8.5),
(10, 40441561, 116459967, 18585293, 101, 8.1),
(11, 33640091, 706585039, 20437699, 237, 9.6),
(12, 84815531, 108963121, 7129810, 64, 7.7),
(13, 14247736, 75113416, 6658444, 156, 6.1),
(14, 514266663, 23223567, 20760740, 152, 7.6),
(15, 18422226, 22079643, 9494805, 118, 7.9),
(16, 327773223, 3732967, 7634636, 51, 8.2),
(17, 23897028, 13859589, 10371853, 199, 7.4),
(18, 413816927, 1009034011, 26793106, 66, 7.5),
(19, 21876036, 1017831260, 14071567, 191, 5.3),
(20, 75800179, 718973970, 24068460, 157, 8.9),
(21, 60763293, 901851620, 22702732, 145, 6.6),
(22, 32580397, 29612639, 7700147, 60, 6.3),
(23, 16170241, 11812348, 29370611, 208, 5.7),
(24, 608099747, 811003776, 7813731, 212, 7.4),
(25, 30243051, 141106328, 27462898, 231, 6.9),
(26, 88556214, 22531121, 20394189, 94, 6.0),
(27, 27135949, 9769032, 6171492, 189, 7.9),
(28, 306929473, 2416335, 24256148, 197, 6.4),
(29, 14299297, 4650333, 3567175, 173, 9.0),
(30, 88552612, 1211249937, 21560223, 232, 5.6),
(31, 93678207, 31159122, 25898999, 106, 7.1),
(32, 21811639, 7921284, 16476538, 128, 7.7),
(33, 8821423, 19128191, 23533024, 168, 8.5),
(34, 18129400, 20217556, 11197743, 129, 6.8),
(35, 10332663, 25696806, 2957942, 57, 8.0),
(36, 18465071, 705329427, 17136832, 72, 7.1),
(37, 5486977, 4862683, 16676647, 61, 6.2),
(38, 22243178, 16510894, 3941240, 92, 8.3),
(39, 56371753, 86658985, 28719800, 161, 7.5),
(40, 29803051, 19902531, 29410584, 134, 6.1),
(41, 400102307, 72755523, 19239789, 79, 9.5),
(42, 610654758, 815736595, 26018992, 218, 8.9),
(43, 712412611, 148702632, 14992061, 63, 6.4),
(44, 22213424, 18865843, 27501987, 239, 8.1),
(45, 518701856, 33756383, 3003538, 101, 6.4),
(46, 18808402, 87818662, 17638590, 167, 9.6),
(47, 29537680, 36868873, 28764500, 107, 9.2),
(48, 515539347, 1007106887, 1071876, 57, 5.1),
(49, 43322114, 30171606, 24168397, 168, 9.8),
(50, 10059490, 24210035, 21113884, 154, 8.1),
(51, 28971475, 717526909, 7073302, 177, 8.8),
(52, 804401680, 901170146, 11649547, 245, 5.4),
(53, 99116219, 11075922, 21504468, 181, 5.9),
(54, 56379679, 14196432, 23203395, 145, 6.1),
(55, 27579389, 12418171, 14654248, 131, 9.1),
(56, 602290071, 27010429, 9200950, 93, 8.2),
(57, 2098906, 5238660, 12850184, 157, 8.4),
(58, 14950517, 920038708, 13827487, 184, 5.2),
(59, 5384574, 14574420, 15376785, 153, 8.5),
(60, 14630137, 20706401, 24571353, 164, 8.0),
(61, 314228299, 94442243, 25664588, 132, 8.6),
(62, 7674702, 1207353188, 17016631, 77, 9.2),
(63, 22316807, 11955715, 23823108, 216, 6.1),
(64, 97195559, 17305721, 9370062, 234, 6.9),
(65, 12282904, 14840425, 13888005, 154, 7.9),
(66, 31414745, 1205845462, 6118497, 230, 5.5),
(67, 66639272, 9221860, 17967689, 138, 8.4),
(68, 8444370, 19637821, 7044356, 162, 8.6),
(69, 79461633, 1213927166, 20714536, 80, 8.0),
(70, 606179031, 1229573011, 29628362, 248, 7.7),
(71, 60187072, 3507177, 9515183, 80, 8.0),
(72, 13832102, 129573660, 23865662, 245, 9.7),
(73, 617072030, 16778332, 1892053, 243, 5.7),
(74, 605746149, 26145597, 5976778, 85, 6.6),
(75, 714270321, 1970379, 21594841, 202, 8.5),
(76, 75109394, 17615482, 9048592, 230, 6.7),
(77, 32321184, 95233191, 8605721, 85, 9.5),
(78, 801894493, 109321222, 10740666, 213, 7.4),
(79, 327302553, 15317941, 23969142, 68, 6.1),
(80, 5066459, 32870299, 5369147, 222, 8.3);


INSERT INTO Production_availability VALUES
(1, 1),
(1, 5),
(1, 7),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(6, 6),
(6, 5),
(7, 1),
(8, 5),
(9, 1),
(9, 3),
(9, 5),
(10, 4),
(11, 2),
(11, 7),
(11, 4),
(11, 5),
(12, 4),
(12, 3),
(12, 5),
(13, 1),
(13, 2),
(13, 5),
(13, 7),
(14, 3),
(14, 4),
(15, 1),
(15, 4),
(16, 2),
(16, 7),
(16, 5),
(17, 1),
(17, 2),
(18, 2),
(18, 7),
(18, 5),
(19, 1),
(19, 5),
(20, 5),
(21, 1),
(21, 2),
(21, 7),
(22, 1),
(23, 8),
(23, 4),
(23, 3),
(23, 4),
(24, 8),
(24, 3),
(25, 2),
(25, 1),
(25, 3),
(25, 5),
(26, 1),
(26, 2),
(26, 6),
(27, 6),
(27, 7),
(27, 2),
(28, 1),
(28, 7),
(29, 8),
(29, 5),
(29, 2),
(30, 7),
(31, 4),
(31, 5),
(31, 8),
(32, 7),
(32, 8),
(32, 4),
(33, 3),
(33, 7),
(33, 3),
(34, 6),
(34, 5),
(35, 5),
(35, 1),
(36, 7),
(36, 4),
(37, 2),
(37, 5),
(37, 3),
(37, 3),
(38, 7),
(38, 4),
(39, 5),
(39, 2),
(39, 1),
(40, 2),
(40, 7),
(40, 5),
(40, 6),
(41, 7),
(41, 2),
(42, 5),
(42, 1),
(42, 8),
(43, 7),
(43, 3),
(43, 5),
(44, 7),
(44, 5),
(44, 8),
(45, 3),
(45, 5),
(46, 5),
(46, 4),
(47, 2),
(47, 4),
(47, 5),
(48, 6),
(48, 1),
(48, 7),
(49, 8),
(49, 7),
(49, 6),
(49, 5),
(50, 5),
(50, 2),
(50, 3),
(51, 4),
(51, 3),
(51, 5),
(52, 4),
(52, 1),
(52, 2),
(52, 8),
(53, 7),
(53, 3),
(54, 3),
(54, 1),
(54, 7),
(54, 2),
(55, 8),
(55, 4),
(55, 2),
(56, 8),
(56, 7),
(57, 2),
(57, 6),
(57, 3),
(57, 8),
(58, 5),
(58, 4),
(58, 6),
(58, 8),
(59, 2),
(59, 6),
(60, 5),
(60, 8),
(60, 2),
(61, 6),
(61, 5),
(61, 4),
(62, 3),
(62, 4),
(63, 4),
(64, 4),
(64, 8),
(64, 6),
(64, 1),
(65, 4),
(65, 3),
(65, 5),
(66, 1),
(66, 7),
(66, 6),
(67, 5),
(67, 4),
(67, 6),
(68, 3),
(68, 8),
(68, 1),
(68, 4),
(69, 6),
(69, 4),
(70, 1),
(70, 6),
(70, 5),
(71, 3),
(71, 8),
(72, 6),
(72, 1),
(72, 5),
(72, 2),
(73, 8),
(73, 1),
(74, 3),
(74, 3),
(74, 4),
(74, 6),
(75, 7),
(75, 4),
(75, 8),
(76, 3),
(77, 3),
(77, 6),
(77, 2),
(78, 1),
(78, 6),
(79, 4),
(79, 5),
(80, 2),
(80, 3);

INSERT INTO Cinemas VALUES
/*1*/('Cinema City', 'Krak??w', 'Galeria Kazimierz, Podg??rska 34, 31-536'),
/*2*/('Cinema City', 'Krak??w', 'CH Bonarka City Center, Henryka Kamie??skiego 11, 30-644'),
/*3*/('Cinema City', 'Krak??w', 'Zakopia??ska 62, 30-418'),
/*4*/('Multikino', 'Krak??w', 'Dobrego Pasterza 128, 30-962'),
/*5*/('Kino pod Baranami', 'Krak??w', 'Rynek G????wny 27, 31-010'),
/*6*/('Multikino', 'Warszawa', 'Z??ote Tarasy, Z??ota 59, 00-120'),
/*7*/('Helios', 'Warszawa', 'Blue City, al. Jerozolimskie 179, 02-222'),
/*8*/('Kultura', 'Warszawa', 'Krakowskie Przedmie??cie 21/23, 00-071'),
/*9*/('Atlantic', 'Warszawa', 'Chmielna 33, 00-021'),
/*10*/('Cinema City', 'Wroc??aw', 'Sucha 1, 50-086'),
/*11*/('Multikino', 'Wroc??aw', 'plac Grunwaldzki 22, 50-363'),
/*12*/('Helios', '????d??', 'aleje Politechniki 1, 93-590'),
/*13*/('Cinema City', '????d??', 'CH Manufaktura, Drewnowska 58, 91-002'),
/*14*/('Cinema City', 'Pozna??', 'Kinepolis, Boles??awa Krzywoustego 72, 61-144'),
/*15*/('Helios', 'Pozna??', 'Pleszewska 1, 61-136'),
/*16*/('Helios', 'Gda??sk', 'Jana Kili??skiego 4, 80-452'),
/*17*/('Multikino', 'Gda??sk', 'Aleja Zwyci??stwa 14, 80-219'),
/*18*/('Helios', 'Radom', 'Ksi??cia J??zefa Poniatowskiego 5, 26-639'),
/*19*/('Cinema City', 'Sosnowiec', 'Sosnowiec Plaza, Henryka Sienkiewicza 2, 41-400'),
/*20*/('Helios', 'Bia??ystok', 'Czes??awa Mi??osza 2, 15-265'),
/*21*/('Cinema City', 'Katowice', 'Punkt 44, Gliwicka 44, 40-853'),
/*22*/('Kosmos', 'Katowice', 'Sokolska 66, 40-087');

INSERT INTO Screenings VALUES
(16, '2021-01-13 21:55', 3, 21),
(11, '2021-01-11 21:52', 33, 15),
(3, '2021-01-10 20:44', 26, 5),
(15, '2022-06-19 20:54', 24, 20),
(5, '2020-07-03 19:10', 14, 8),
(11, '2021-07-25 15:19', 31, 16),
(15, '2020-01-28 15:54', 2, 20),
(15, '2022-12-27 17:51', 34, 20),
(16, '2022-12-01 14:59', 20, 21),
(6, '2022-06-01 10:19', 7, 9),
(20, '2021-07-18 14:29', 15, 26),
(9, '2020-10-19 21:20', 30, 13),
(5, '2020-02-07 15:59', 28, 8),
(16, '2020-11-28 14:32', 38, 21),
(12, '2020-06-13 13:16', 11, 17),
(4, '2020-04-17 11:50', 18, 7),
(3, '2022-10-07 13:36', 8, 5),
(16, '2020-03-26 11:39', 37, 21),
(17, '2022-12-28 13:28', 10, 23),
(6, '2022-03-22 12:43', 49, 9),
(20, '2022-05-03 12:43', 13, 27),
(22, '2020-06-22 11:57', 40, 31),
(3, '2020-12-08 17:10', 45, 5),
(22, '2021-06-14 16:32', 5, 30),
(18, '2021-12-05 15:10', 26, 24),
(10, '2022-05-17 13:52', 39, 14),
(4, '2022-08-01 16:29', 32, 6),
(7, '2021-04-10 10:23', 4, 11),
(9, '2020-04-23 18:45', 24, 13),
(1, '2022-05-16 18:47', 45, 3),
(11, '2022-09-26 17:34', 28, 15),
(20, '2021-01-18 13:17', 35, 28),
(7, '2021-01-14 18:32', 49, 11),
(12, '2020-01-25 14:12', 38, 17),
(16, '2020-06-10 21:32', 11, 21),
(7, '2021-05-23 10:35', 9, 10),
(7, '2022-10-14 11:54', 24, 10),
(20, '2021-01-02 21:50', 11, 26),
(1, '2021-09-25 17:45', 44, 1),
(18, '2021-10-19 14:42', 7, 24),
(9, '2022-04-25 17:41', 41, 13),
(7, '2021-12-15 19:17', 49, 11),
(6, '2022-09-28 20:32', 42, 9),
(22, '2020-04-03 11:40', 2, 30),
(17, '2020-12-07 21:37', 44, 22),
(8, '2022-05-16 15:41', 17, 12),
(17, '2022-12-05 19:40', 50, 22),
(22, '2021-11-14 10:00', 19, 30),
(10, '2022-02-19 18:16', 22, 14),
(17, '2022-02-10 20:16', 35, 23),
(1, '2021-08-23 10:10', 38, 2),
(22, '2022-05-04 15:11', 14, 30),
(22, '2021-11-02 16:38', 3, 31),
(9, '2022-10-28 13:51', 21, 13),
(15, '2022-10-26 17:33', 49, 20),
(8, '2020-12-14 20:40', 49, 12),
(7, '2022-08-26 17:18', 51, 11),
(11, '2020-08-07 22:14', 49, 15),
(3, '2020-04-25 17:54', 6, 5),
(9, '2021-01-28 10:15', 37, 13),
(16, '2021-02-25 21:38', 34, 21),
(20, '2021-05-21 21:34', 7, 28),
(4, '2020-12-12 17:58', 1, 7),
(17, '2021-08-02 17:24', 39, 22),
(17, '2022-12-22 22:43', 44, 23),
(10, '2022-11-18 18:30', 14, 14),
(22, '2020-03-03 12:27', 2, 31),
(6, '2022-03-18 22:55', 21, 9),
(6, '2020-06-14 15:41', 24, 9),
(22, '2020-08-15 10:16', 50, 31),
(14, '2020-04-11 17:56', 18, 19),
(6, '2020-12-05 13:19', 35, 9),
(20, '2020-05-21 21:26', 47, 28),
(19, '2021-12-08 14:59', 36, 25),
(21, '2021-02-16 20:17', 8, 29),
(22, '2020-08-05 14:31', 26, 30),
(8, '2020-04-01 20:46', 26, 12),
(17, '2022-09-16 12:00', 18, 22),
(3, '2020-12-26 19:55', 32, 5),
(6, '2022-09-03 14:28', 2, 9),
(2, '2022-07-17 19:53', 43, 4),
(20, '2020-10-28 10:51', 21, 27),
(13, '2022-05-05 14:48', 41, 18),
(4, '2022-09-19 18:50', 21, 7),
(16, '2022-07-14 22:48', 20, 21),
(8, '2020-12-11 14:30', 8, 12),
(9, '2020-04-01 20:48', 8, 13),
(22, '2020-12-01 14:43', 39, 31),
(14, '2021-10-17 21:35', 35, 19),
(1, '2020-01-23 14:56', 40, 3),
(4, '2022-03-22 12:22', 9, 6),
(13, '2021-11-03 11:29', 22, 18),
(5, '2021-10-02 20:19', 32, 8),
(5, '2021-04-25 21:59', 1, 8),
(14, '2020-09-02 18:44', 47, 19),
(7, '2021-09-19 15:13', 39, 10),
(4, '2022-09-13 21:51', 31, 7),
(22, '2022-05-04 17:55', 16, 31),
(2, '2022-11-11 22:48', 28, 4),
(8, '2020-11-16 13:29', 41, 12),
(12, '2021-11-19 12:15', 26, 17),
(18, '2021-11-07 21:23', 46, 24),
(5, '2021-06-10 15:18', 16, 8),
(9, '2022-06-01 22:39', 43, 13),
(14, '2022-12-19 11:28', 16, 19),
(18, '2021-03-21 22:36', 8, 24),
(10, '2022-11-19 14:25', 10, 14),
(6, '2020-03-23 19:20', 44, 9),
(18, '2022-11-19 17:42', 12, 24),
(10, '2020-05-03 18:30', 34, 14),
(18, '2020-04-22 15:41', 41, 24),
(19, '2020-12-12 12:57', 5, 25),
(22, '2021-05-27 22:20', 16, 30),
(8, '2021-08-26 15:31', 49, 12),
(19, '2022-06-04 21:26', 14, 25),
(6, '2022-05-12 20:48', 5, 9),
(16, '2021-11-18 12:12', 29, 21),
(16, '2020-02-10 20:29', 19, 21),
(1, '2021-04-26 14:32', 47, 1),
(6, '2022-12-23 17:17', 15, 9),
(22, '2022-02-18 12:30', 25, 30),
(21, '2021-06-16 16:32', 37, 29),
(8, '2022-08-11 20:49', 14, 12),
(14, '2022-04-20 11:21', 35, 19),
(10, '2021-02-12 18:19', 21, 14),
(13, '2020-12-05 22:58', 46, 18),
(10, '2020-12-12 19:11', 16, 14),
(9, '2020-12-12 10:37', 21, 13),
(8, '2021-02-07 12:10', 49, 12),
(12, '2021-04-21 19:21', 17, 17),
(20, '2021-03-06 16:29', 37, 26),
(21, '2022-02-08 11:42', 14, 29),
(8, '2022-10-03 16:20', 42, 12),
(8, '2021-06-28 13:33', 6, 12),
(12, '2022-08-04 16:21', 25, 17),
(15, '2020-01-15 19:21', 4, 20),
(18, '2021-12-22 17:48', 21, 24),
(3, '2022-12-15 19:39', 8, 5),
(7, '2022-05-25 11:15', 47, 10),
(6, '2020-01-11 22:12', 6, 9),
(14, '2020-12-28 11:00', 31, 19),
(7, '2020-07-08 15:15', 38, 11),
(21, '2021-08-10 16:48', 13, 29),
(17, '2020-03-13 17:12', 37, 22),
(2, '2021-06-14 22:56', 1, 4),
(15, '2020-03-09 14:59', 27, 20),
(19, '2022-12-14 15:52', 19, 25),
(6, '2021-08-20 13:49', 7, 9),
(19, '2020-04-25 22:59', 39, 25),
(3, '2022-07-12 16:50', 2, 5),
(4, '2022-01-07 20:51', 2, 6),
(21, '2022-06-22 12:30', 29, 29),
(20, '2021-12-06 15:37', 20, 27),
(13, '2020-08-19 13:41', 23, 18),
(4, '2021-05-11 20:21', 12, 7),
(14, '2021-10-16 13:44', 48, 19),
(11, '2022-12-08 19:22', 51, 15),
(3, '2020-03-20 12:30', 42, 5),
(16, '2021-11-15 22:23', 11, 21),
(22, '2022-11-06 21:58', 3, 31),
(2, '2022-11-11 22:29', 5, 4),
(5, '2022-06-13 20:43', 46, 8),
(2, '2022-03-13 20:42', 26, 4),
(15, '2021-10-19 10:17', 20, 20),
(17, '2021-05-24 22:17', 29, 22),
(7, '2021-12-16 19:38', 21, 11),
(3, '2022-02-01 16:10', 8, 5),
(19, '2022-12-15 11:58', 25, 25),
(1, '2021-07-11 21:16', 43, 1),
(20, '2022-12-13 10:13', 15, 27),
(8, '2020-11-02 18:31', 33, 12),
(15, '2020-05-27 15:22', 47, 20),
(11, '2021-08-09 15:39', 13, 15),
(14, '2022-04-07 20:48', 21, 19),
(3, '2021-10-06 22:53', 33, 5),
(6, '2020-09-08 16:45', 42, 9),
(2, '2022-02-14 22:19', 22, 4),
(18, '2020-09-24 10:17', 38, 24),
(18, '2022-03-03 21:50', 20, 24),
(14, '2020-01-18 14:17', 51, 19),
(3, '2022-09-03 19:28', 46, 5),
(11, '2022-05-07 20:34', 25, 15),
(15, '2020-12-19 18:00', 34, 20),
(6, '2022-02-11 14:11', 6, 9),
(18, '2020-12-27 11:20', 40, 24),
(1, '2020-01-22 21:31', 50, 2),
(4, '2022-11-04 10:49', 31, 7),
(20, '2021-12-08 10:44', 35, 27),
(20, '2020-03-26 17:50', 4, 28),
(17, '2022-02-15 21:59', 39, 22),
(8, '2022-12-09 21:31', 32, 12),
(19, '2021-09-03 14:34', 28, 25),
(22, '2022-12-06 13:57', 23, 31),
(18, '2021-11-26 13:14', 1, 24),
(1, '2020-06-01 18:22', 5, 2),
(10, '2020-12-15 10:21', 31, 14),
(21, '2021-12-10 13:47', 27, 29),
(6, '2020-07-08 10:52', 2, 9),
(12, '2022-09-07 17:19', 36, 17),
(11, '2022-06-09 16:53', 31, 15);

INSERT INTO Production_awards VALUES
(2000, 2, 10),
(2019, 3, 4),
(2010, 6, 2),
(2010, 6, 10),
(1957, 7, 6),
(1976, 8, 1),
(1976, 8, 2),
(1976, 8, 3),
(1994, 9, 4),
(1994, 9, 10),
(2011, 13, 10),
(1992, 14, 1),
(1992, 14, 10),
(1979, 19, 4),
(2020, 21, 1),
(2019, 21, 4),
(2010, 22, 10),
(1991, 31, 3),
(1986, 32, 10),
(2019, 41, 5),
(2018, 44, 10),
(2020, 51, 2),
(2019, 51, 8),
(2020, 51, 9),
(2014, 52, 2),
(2014, 52, 8),
(2013, 52, 8),
(2014, 52, 9),
(2009, 52, 9),
(2019, 53, 8),
(2018, 53, 8),
(2016, 53, 8),
(2015, 53, 8),
(2002, 54, 2),
(2002, 54, 8),
(2006, 55, 8),
(2010, 56, 9),
(1991, 60, 2),
(2018, 62, 9),
(2000, 64, 2),
(2007, 64, 8),
(2004, 64, 8),
(2021, 72, 2),
(2017, 72, 2),
(2021, 72, 8),
(2016, 79, 2);

INSERT INTO People VALUES
/*1*/('Adam', 'Sandler', 'M', 56, 'USA', 178),
/*2*/('Leonardo', 'DiCaprio', 'M', 48, 'USA', 183),
/*3*/('Morgan', 'Freeman', 'M', 85, 'USA', 188),
/*4*/('Tim', 'Robbins', 'M', 64, 'USA', 196),
/*5*/('Clint', 'Eastwood', 'M', 92, 'USA', 193),
/*6*/('Arnold', 'Schwarzenegger', 'M', 75, 'Austria', 188),
/*7*/('Mads', 'Mikkelsen', 'M', 57, 'Denmark', 183),
/*8*/('Matthew', 'McConaughey', 'M', 53, 'USA', 182),
/*9*/('Anne', 'Hathaway', 'F', 40, 'USA', 173),
/*10*/('Jack', 'Nicholson', 'M', 85, 'USA', 177),
/*11*/('Robert', 'Pattinson', 'M', 36, 'United Kingdom', 185),
/*12*/('Tom', 'Cruise', 'M', 60, 'USA', 170),
/*13*/('Ryan', 'Gosling', 'M', 42, 'Canada', 184),
/*14*/('Miles', 'Teller', 'M', 35, 'USA', 183),
/*15*/('Lakeith', 'Stanfield', 'M', 31, 'USA', 183),
/*16*/('Al', 'Pacino', 'M', 82, 'USA', 170),
/*17*/('Robert', 'De Niro', 'M', 79, 'USA', 175),
/*18*/('Joaquin', 'Phoenix', 'M', 48, 'Puerto Rico', 173),
/*19*/('Simon', 'Rex', 'M', 48, 'USA', 188),
/*20*/('Suzanna', 'Son', 'F', 27, 'USA', 150),
/*21*/('Harrison', 'Ford', 'M', 80, 'USA', 185),
/*22*/('Domhnall', 'Gleeson', 'M', 39, 'Ireland', 185),
/*23*/('Oscar', 'Isaac', 'M', 43, 'Guatemala', 174),
/*24*/('Jake', 'Gyllenhaal', 'M', 42, 'USA', 183),
/*25*/('Rene', 'Russo', 'F', 68, 'USA', 173),
/*26*/('John', 'Travolta', 'M', 68, 'USA', 188),
/*27*/('Samuel L.', 'Jackson', 'M', 74, 'USA', 189),
/*28*/('Christoph', 'Waltz', 'M', 66, 'Austria', 170),
/*29*/('Brad', 'Pitt', 'M', 59, 'USA', 180),
/*30*/('Gwyneth', 'Paltrow', 'F', 50, 'USA', 175),
/*31*/('Austin', 'Butler', 'M', 31, 'USA', 183),
/*32*/('Anthony', 'Hopkins', 'M', 84, 'United Kingdom', 175),
/*33*/('Jodie', 'Foster', 'F', 60, 'USA', 161),
/*34*/('Steven', 'Bauer', 'M', 66, 'Cuba', 188),
/*35*/('Bryan', 'Cranston', 'M', 66, 'USA', 179),
/*36*/('Mark', 'Margolis', 'M', 83, 'USA', 180),
/*37*/('Jonathan', 'Banks', 'M', 75, 'USA', 174),
/*38*/('Giancarlo', 'Esposito', 'M', 64, 'Denmark', 171),
/*39*/('Bob', 'Odenkirk', 'M', 60, 'USA', 182),
/*40*/('Aaron', 'Paul', 'M', 43, 'USA', 173),
/*41*/('Rhea', 'Seehorn', 'F', 50, 'USA', 164),
/*42*/('Emilia', 'Clarke', 'F', 36, 'United Kingdom', 157),
/*43*/('Peter', 'Dinklage', 'M', 53, 'USA', 132),
/*44*/('Kit', 'Harington', 'M', 35, 'United Kingdom', 173),
/*45*/('Wagner', 'Moura', 'M', 46, 'Brazil', 180),
/*46*/('Rami', 'Malek', 'M', 41, 'USA', 175),
/*47*/('Winona', 'Ryder', 'F', 51, 'USA', 161),
/*48*/('Millie Bobby', 'Brown', 'F', 18, 'Spain', 165),
/*49*/('Quentin', 'Tarantino', 'M', 59, 'USA', 185),
/*50*/('Christopher', 'Nolan', 'M', 52, 'United Kingdom', 180),
/*51*/('Martin', 'Scorsese', 'M', 80, 'USA', 160),
/*52*/('Josh', 'Safdie', 'M', 38, 'USA', 183),
/*53*/('Benny', 'Safdie', 'M', 36, 'USA', 175),
/*54*/('Todd', 'Phillips', 'M', 52, 'USA', 180),
/*55*/('Sean', 'Baker', 'M', 51, 'USA', 180),
/*56*/('Frank', 'Darabont', 'M', 63, 'France', 183),
/*57*/('Ludwig', 'Goransson', 'M', 38, 'Sweden', 183),
/*58*/('Hans', 'Zimmer', 'M', 65, 'Germany', 178),
/*59*/('Vince', 'Gilligan', 'M', 55, 'USA', 183),
/*60*/('John', 'Williams', 'M', 90, 'USA', 182),
/*61*/('Alan', 'Silvestri', 'M', 72, 'USA', 187),
/*62*/('Evangelos', 'Papathanassiou', 'M', 79, 'Greece', 196),
/*63*/('Joon-ho', 'Bong', 'M', 53, 'South Korea', 182);

INSERT INTO Screening_rooms VALUES
(1, 100),
(1, 85),
(1, 40),
(2, 90),
(3, 170),
(4, 200),
(4, 25),
(5, 100),
(6, 120),
(7, 100),
(7, 80),
(8, 110),
(9, 50),
(10, 200),
(11, 300),
(11, 350),
(12, 30),
(13, 100),
(14, 80),
(15, 100),
(16, 100),
(17, 50),
(17, 150),
(18, 200),
(19, 230),
(20, 130),
(20, 75),
(20, 90),
(21, 100),
(22, 120),
(22, 125);

INSERT INTO Staff VALUES
(1, 1, 5),
(1, 3, 1),
(1, 4, 1),
(1, 2, 13),
(1, 11, 3),
(1, 8, 4),
(1, 9, 4),
(2, 50, 4),
(4, 58, 4),
(1, 10, 8),
(1, 26, 9),
(1, 27, 9),
(2, 49, 9),
(3, 49, 9),
(1, 3, 10),
(1, 29, 10),
(1, 29, 11),
(1, 22, 12),
(1, 23, 12),
(1, 2, 13),
(2, 50, 13),
(4, 58, 13),
(1, 32, 14),
(1, 33, 14),
(1, 16, 15),
(1, 34, 15),
(1, 5, 16),
(2, 5, 16),
(1, 14, 18),
(1, 5, 20),
(2, 63, 21),
(1, 29, 22),
(1, 28, 22),
(2, 49, 22),
(3, 49, 22),
(1, 19, 25),
(1, 20, 25),
(1, 12, 26),
(1, 12, 27),
(1, 14, 27),
(1, 31, 28),
(1, 11, 30),
(1, 53, 30),
(2, 52, 30),
(2, 53, 30),
(3, 52, 30),
(2, 51, 31),
(1, 17, 31),
(4, 61, 32),
(4, 61, 33),
(4, 61, 34),
(1, 24, 36),
(1, 7, 38),
(1, 24, 39),
(1, 18, 41),
(2, 54, 41),
(3, 54, 41),
(2, 50, 42),
(3, 50, 42),
(4, 57, 42),
(4, 62, 43),
(1, 13, 44),
(1, 6, 45),
(1, 10, 46),
(1, 17, 47),
(2, 51, 47),
(1, 60, 48),
(1, 26, 50),
(1, 35, 52),
(1, 36, 52),
(1, 34, 52),
(1, 37, 52),
(1, 38, 52),
(1, 39, 52),
(1, 40, 52),
(2, 59, 52),
(3, 59, 52),
(1, 42, 53),
(1, 43, 53),
(1, 44, 53),
(1, 45, 58),
(1, 47, 63),
(1, 48, 63),
(1, 22, 65),
(1, 23, 65),
(1, 34, 70),
(1, 36, 70),
(1, 37, 70),
(1, 38, 70),
(1, 39, 70),
(1, 41, 70),
(2, 59, 70),
(3, 59, 70),
(1, 46, 79);

INSERT INTO Roles VALUES
('Howard', 'Ratner', 'M', 5, 1),
('Andy', 'Dufresne', 'M', 1, 4),
('Ellis Boyd', 'Redding', 'M', 1, 3),
('Joseph', 'Cooper', 'M', 4, 8),
('Amelia', 'Brand', 'F', 4, 9),
('Randle Patrick', 'McMurphy', 'M', 8, 10),
('Vincent', 'Vega', 'M', 9, 26),
('Jules', 'Winnfield', 'M', 9, 27),
('Tyler', 'Durden', 'M', 11, 29),
('Hannibal', 'Lecter', 'M', 14, 32),
('Clarice', 'Starling', 'F', 14, 33),
('Tony', 'Montana', 'M', 15, 16),
('Manny', 'Ribera', 'M', 15, 34),
('Walt', 'Kowalski', 'M', 16, 5),
('Aldo', 'Raine', 'M', 22, 29),
('Hans', 'Landa', 'M', 22, 28),
('Mikey', 'Saber', 'M', 25, 19),
('Pete', 'Mitchell', 'M', 26, 12),
('Pete', 'Mitchell', 'M', 27, 12),
('Bradley', 'Bradshaw', 'M', 27, 14),
('Elvis', 'Presley', 'M', 28, 31),
('Louis', 'Bloom', 'M', 39, 24),
('Arthur ''Joker''', 'Fleck', 'M', 41, 18),
('Terminator', 'T-800', 'M', 45, 6),
('Jack', 'Torrance', 'M', 46, 10),
('Max', 'Cady', 'M', 47, 17),
('Walter', 'White', 'M', 52, 35),
('Jesse', 'Pinkman', 'M', 52, 40),
('Saul', 'Goodman', 'M', 52, 39),
('Gustavo', 'Fring', 'M', 52, 38),
('Mike', 'Ehrmentraut', 'M', 52, 38),
('Don Eladio', 'Vuente', 'M', 52, 34),
('Hector', 'Salamanca', 'M', 52, 36),
('Daenerys', 'Targaryen', 'F', 53, 42),
('Jon', 'Snow', 'M', 53, 44),
('Tyrion', 'Lannister', 'M', 53, 43),
('Pablo', 'Escobar', 'M', 58, 45),
('Joyce', 'Byers', 'F', 63, 47),
('Eleven', 'Hopper', 'F', 63, 48),
('Jimmy', 'McGill', 'M', 70, 39),
('Hector', 'Salamanca', 'M', 70, 36),
('Don Eladio', 'Vuente', 'M', 70, 34),
('Mike', 'Ehrmentraut', 'M', 70, 37),
('Gustavo', 'Fring', 'M', 70, 38),
('Kim', 'Wexler', 'F', 70, 41),
('Elliot', 'Alderson', 'M', 79, 46);

INSERT INTO Person_awards VALUES
(1995, 27, 9, 3),
(1992, 32, 14, 1),
(1992, 33, 14, 1),
(2010, 28, 22, 1),
(2010, 28, 22, 2),
(2010, 28, 22, 3),
(2009, 28, 22, 4),
(2009, 28, 22, 9),
(2020, 18, 41, 1),
(2020, 18, 41, 2),
(2020, 18, 41, 3),
(2014, 35, 52, 2),
(2014, 35, 52, 8),
(2014, 40, 52, 8),
(2012, 40, 52, 8),
(2010, 35, 52, 8),
(2010, 40, 52, 8),
(2009, 35, 52, 8),
(2008, 35, 52, 8),
(2013, 35, 52, 10),
(2012, 35, 52, 10),
(2010, 40, 52, 10),
(2014, 35, 52, 9),
(2014, 40, 52, 9),
(2010, 35, 52, 9),
(2009, 35, 52, 9),
(2008, 35, 52, 9),
(2012, 43, 53, 2),
(2019, 43, 53, 8),
(2018, 43, 53, 8),
(2015, 43, 53, 8),
(2011, 43, 53, 8),
(2019, 43, 53, 10),
(2019, 42, 53, 10),
(2011, 43, 53, 9),
(2017, 48, 63, 10),
(2022, 39, 70, 10),
(2022, 37, 70, 10),
(2022, 41, 70, 10),
(2018, 41, 70, 10),
(2021, 39, 70, 9),
(2016, 41, 70, 9),
(2011, 50, 13, 10),
(2011, 58, 13, 10),
(2020, 63, 21, 1),
(2020, 54, 41, 9);


INSERT INTO Soundtracks VALUES
(20, 60, 48, 60),
(15, 81, 32, 61),
(12, 45, 33, 61),
(13, 56, 34, 61),
(15, 50, 4, 58),
(14, 49, 13, 58),
(12, 48, 42, 57),
(16, 51, 42, 62);

INSERT INTO User_table VALUES
('admin', 'admin', 'ADMIN'),
('wojtek', 'wojtek', 'USER'),
('gocha', 'gocha', 'USER')