-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 09 fév. 2021 à 08:45
-- Version du serveur :  8.0.23
-- Version de PHP : 7.4.3

/*
Avant d'importer le fichier SQL, vous devez :

Créer la base de données "wsbookstore"
Créer les utilisateurs "adminbs" et "clientbs" avec le mot de passe "abcd4abcd"
Exécutez les commandes SQL ci-dessous pour les utilisateurs
GRANT USAGE ON *.* TO `adminbs`@`%`;
GRANT ALL PRIVILEGES ON `wsbookstore`.* TO `adminbs`@`%`;
GRANT USAGE ON *.* TO `clientbs`@`%`;
GRANT SELECT ON `wsbookstore`.* TO `clientbs`@`%`;
GRANT SELECT, INSERT, DELETE ON `wsbookstore`.`command` TO `clientbs`@`%`;
GRANT SELECT, INSERT, UPDATE, DELETE ON `wsbookstore`.`commanddetail` TO `clientbs`@`%`;
*/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wsbookstore`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE `author` (
  `id` int NOT NULL,
  `lname` varchar(40) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `phone` char(12) DEFAULT NULL,
  `mail` varchar(100) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `contract` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id`, `lname`, `fname`, `phone`, `mail`, `address`, `city`, `country`, `contract`) VALUES
(1, 'Ableson', 'Frank W.', '408 496-7223', 'fictif@gmail.com', '10932 Bigge Rd.', 'Menlo Park', 'CA', 1),
(2, 'Collins', 'Charlie', '415 986-7020', 'fictif@gmail.com', '309 63rd St. #411', 'Oakland', 'CA', 1),
(3, 'Sen', 'Robi', '415 548-7723', 'fictif@gmail.com', '589 Darwin Ln.', 'Berkeley', 'CA', 1),
(4, 'Adzic', 'Gojko', '408 286-2428', 'fictif@gmail.com', '22 Cleveland Av. #14', 'San Jose', 'CA', 1),
(5, 'Hirschi', 'Jon', '415 834-2919', 'fictif@gmail.com', '5420 College Av.', 'Oakland', 'CA', 1),
(6, 'Smith', 'Meander', '913 843-0462', 'fictif@gmail.com', '10 Mississippi Dr.', 'Lawrence', 'KS', 1),
(7, 'Bennet', 'Abraham', '415 658-9932', 'fictif@gmail.com', '6223 Bateman St.', 'Berkeley', 'CA', 1),
(8, 'Dull', 'An', '415 836-7128', 'fictif@gmail.com', '3410 Blonde St.', 'Palo Alto', 'CA', 1),
(9, 'Gringlesby', 'Burt', '707 938-6445', 'fictif@gmail.com', 'PO Box 792', 'Covelo', 'CA', 1),
(10, 'Locksley', 'Charlene', '415 585-4620', 'fictif@gmail.com', '18 Broadway Av.', 'San Francisco', 'CA', 1),
(11, 'Greene', 'Morningstar', '615 297-2723', 'fictif@gmail.com', '22 Graybar House Rd.', 'Nashville', 'T', 1),
(12, 'Blotchet-Halls', 'Reginald', '503 745-6402', 'fictif@gmail.com', '55 Hillsdale Bl.', 'Corvallis', 'OR', 1),
(13, 'Yokomoto', 'Akiko', '415 935-4228', 'fictif@gmail.com', '3 Silver Ct.', 'Walnut Creek', 'CA', 1),
(14, 'del Castillo', 'Innes', '615 996-8275', 'fictif@gmail.com', '2286 Cram Pl. #86', 'Ann Arbor', 'MI', 1),
(15, 'DeFrance', 'Michel', '219 547-9982', 'fictif@gmail.com', '3 Balding Pl.', 'Gary', 'I', 1),
(16, 'Stringer', 'Dirk', '415 843-2991', 'fictif@gmail.com', '5420 Telegraph Av.', 'Oakland', 'CA', 1),
(17, 'Karse', 'Livia', '415 534-9219', 'fictif@gmail.com', '5720 McAuley St.', 'Oakland', 'CA', 1),
(18, 'Panteley', 'Sylvia', '301 946-8853', 'fictif@gmail.com', '1956 Arlington Pl.', 'Rockville', 'MD', 1),
(19, 'Hunter', 'Sheryl', '415 836-7128', 'fictif@gmail.com', '3410 Blonde St.', 'Palo Alto', 'CA', 1),
(20, 'McBadde', 'Heather', '707 448-4982', 'fictif@gmail.com', '301 Putnam', 'Vacaville', 'CA', 1),
(21, 'Ringer', 'Anne', '801 826-0752', 'fictif@gmail.com', '67 Seventh Av.', 'Salt Lake City', 'UT', 1),
(22, 'Zecchetti', 'Daphnée', '2609817060', 'fictif@gmail.com', '03551 Charing Cross Plaza', 'Fort Wayne', 'US', 1),
(23, 'Bearblock', 'Bénédicte', '8922498888', 'fictif@gmail.com', '35494 Lien Court', 'Stavyshche', 'UA', 1),
(24, 'Lombardo', 'Gérald', '9503932332', 'fictif@gmail.com', '83851 Basil Parkway', 'Chalon-sur-Saône', 'FR', 1),
(25, 'Friedman', 'Céline', '8612064246', 'fictif@gmail.com', '267 Onsgard Crossing', 'Hernando', 'AR', 1),
(26, 'Riepl', 'Réservés', '8346837008', 'fictif@gmail.com', '2 Manley Circle', 'Lidian', 'CN', 1),
(27, 'Landsberg', 'Aimée', '7814671798', 'fictif@gmail.com', '6 Mosinee Alley', 'Shuishi', 'CN', 1),
(28, 'Shawley', 'Lauréna', '9987413906', 'fictif@gmail.com', '49 Knutson Street', 'Xiyuan', 'CN', 1),
(29, 'Patrone', 'Stéphanie', '4695597938', 'fictif@gmail.com', '7197 Cottonwood Drive', 'Gällivare', 'SE', 1),
(30, 'Mugg', 'Yú', '5276163405', 'fictif@gmail.com', '6516 Doe Crossing Crossing', 'Qinhong', 'CN', 1),
(31, 'Melmoth', 'Judicaël', '2062794411', 'fictif@gmail.com', '8331 Thompson Parkway', 'Sann', 'PK', 1),
(32, 'Hazel', 'Magdalène', '9042473055', 'fictif@gmail.com', '1 Spaight Alley', 'Trzebnica', 'PL', 1),
(33, 'Athelstan', 'Yáo', '3022742619', 'fictif@gmail.com', '2807 Chinook Point', 'Taphan Hin', 'TH', 1),
(34, 'Clixby', 'Ruò', '9241893543', 'fictif@gmail.com', '0 Dorton Trail', 'Marathon', 'CA', 1),
(35, 'O\'Noland', 'Angèle', '1743452076', 'fictif@gmail.com', '94655 Lindbergh Place', 'Lazaro Cardenas', 'MX', 1),
(36, 'Lessmare', 'Adélaïde', '1511314850', 'fictif@gmail.com', '29734 Manitowish Avenue', 'Kelin', 'CN', 1),
(37, 'Kytter', 'Eléonore', '6914280087', 'fictif@gmail.com', '83 Transport Trail', 'Gurra e Vogël', 'AL', 1),
(38, 'Coggeshall', 'Simplifiés', '1539644025', 'fictif@gmail.com', '63 Crownhardt Point', 'Postojna', 'SI', 1),
(39, 'Basley', 'Miléna', '6313361291', 'fictif@gmail.com', '216 Meadow Vale Parkway', 'Aryiropoúlion', 'GR', 1),
(40, 'Cownden', 'Alizée', '8177830872', 'fictif@gmail.com', '01851 Hoffman Hill', 'Arlington', 'US', 1),
(41, 'Rossi', 'Almérinda', '6486771727', 'fictif@gmail.com', '0737 Transport Park', 'Vysotskoye', 'RU', 1),
(42, 'Lander', 'Estève', '4495643585', 'fictif@gmail.com', '38 Dovetail Hill', 'Nagoya-shi', 'JP', 1),
(43, 'Barabisch', 'Maëlann', '4595079123', 'fictif@gmail.com', '5 Manley Trail', 'São Pedro do Estoril', 'PT', 1),
(44, 'Berriman', 'Wá', '9874207177', 'fictif@gmail.com', '1085 Dorton Point', 'Roches Noire', 'MU', 1),
(45, 'O\'Heneghan', 'Maëly', '5552847630', 'fictif@gmail.com', '3165 Barnett Lane', 'Petrolina de Goiás', 'BR', 1),
(46, 'Tolman', 'Léonie', '6419131376', 'fictif@gmail.com', '60 Annamark Junction', 'Sua', 'ID', 1),
(47, 'Crosetti', 'Lài', '9198447497', 'fictif@gmail.com', '0829 Cottonwood Drive', 'Mohammedia', 'MA', 1),
(48, 'Porcher', 'Anaé', '5286015462', 'fictif@gmail.com', '5397 Hintze Way', 'Huiyuan', 'CN', 1),
(49, 'Glanfield', 'Naéva', '9224354158', 'fictif@gmail.com', '45197 South Hill', 'San Andrés Villa Sec', 'GT', 1),
(50, 'Minster', 'Marie-françoise', '1308021570', 'fictif@gmail.com', '9155 Old Gate Center', 'Vardablur', 'AM', 1),
(51, 'Knightsbridge', 'Danièle', '8408304898', 'fictif@gmail.com', '328 Pearson Terrace', 'Horní Stropnice', 'CZ', 1),
(52, 'Willerstone', 'Clémentine', '6021780845', 'fictif@gmail.com', '63 Oxford Court', 'Lisakovsk', 'KZ', 1),
(53, 'Summersby', 'Annotés', '5315447313', 'fictif@gmail.com', '1 Lunder Point', 'Embu', 'BR', 1),
(54, 'Oxley', 'Yú', '4368679814', 'fictif@gmail.com', '77 Westerfield Road', 'Puerto Madryn', 'AR', 1),
(55, 'McIlvenny', 'Léana', '4039950658', 'fictif@gmail.com', '55 Di Loreto Hill', 'Grojec', 'PL', 1),
(56, 'Balazin', 'Garçon', '1202367243', 'fictif@gmail.com', '09 Thierer Hill', 'Dicun', 'CN', 1),
(57, 'Hartridge', 'Gérald', '8275371697', 'fictif@gmail.com', '2120 Prairieview Street', 'Nagrak', 'ID', 1),
(58, 'Kaser', 'Illustrée', '6573466879', 'fictif@gmail.com', '798 Del Sol Street', 'Salantai', 'LT', 1),
(59, 'Danielot', 'Cléopatre', '1404024773', 'fictif@gmail.com', '971 Summerview Road', 'Pijao', 'CO', 1),
(60, 'Poznanski', 'Eliès', '3872718163', 'fictif@gmail.com', '29 Elka Terrace', 'Bergen', 'NO', 1),
(61, 'Mutton', 'Cléopatre', '7821420184', 'fictif@gmail.com', '93 Eagan Junction', 'Carpiquet', 'FR', 1),
(62, 'Pladen', 'Angélique', '7326983621', 'fictif@gmail.com', '42 Algoma Hill', 'Dongfanghong', 'CN', 1),
(63, 'Calton', 'Sélène', '6838059105', 'fictif@gmail.com', '690 Moose Point', 'Spandaryan', 'AM', 1),
(64, 'Leftridge', 'Dorothée', '6407613463', 'fictif@gmail.com', '7600 Scoville Court', 'Bokhan', 'RU', 1),
(65, 'Speak', 'Eloïse', '3182922733', 'fictif@gmail.com', '77568 Merchant Terrace', 'Zhoutian', 'CN', 1),
(66, 'Core', 'Gaïa', '9487926322', 'fictif@gmail.com', '89 Amoth Point', 'Encrucijada', 'CU', 1),
(67, 'Carabet', 'Océanne', '7707858078', 'fictif@gmail.com', '610 Holmberg Court', 'Thāru Shāh', 'PK', 1),
(68, 'Le Fleming', 'Tán', '8462300004', 'fictif@gmail.com', '485 Burning Wood Pass', 'Xijia', 'CN', 1),
(69, 'Gow', 'Océanne', '8993715019', 'fictif@gmail.com', '56 Beilfuss Center', 'Andorinha', 'PT', 1),
(70, 'Springtorpe', 'Mélodie', '8812101793', 'fictif@gmail.com', '8722 Hagan Parkway', 'Walton', 'GB', 1),
(71, 'Rebanks', 'Håkan', '1673983262', 'fictif@gmail.com', '5 Fulton Road', 'Cigenca', 'ID', 1),
(72, 'Zecchetti', 'Daphnée', '2609817060', 'fictif@gmail.com', '03551 Charing Cross Plaza', 'Fort Wayne', 'US', 1);

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `isbn` char(13) NOT NULL,
  `publisher_id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `publicationyear` date DEFAULT NULL,
  `price` double NOT NULL,
  `format` varchar(50) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `dimensions` varchar(30) DEFAULT NULL,
  `overview` varchar(250) DEFAULT NULL,
  `synopsis` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`isbn`, `publisher_id`, `title`, `publicationyear`, `price`, `format`, `edition`, `pages`, `dimensions`, `overview`, `synopsis`) VALUES
('9780060540123', 12, 'This is a test', '2021-01-19', 99.99, 'Paperback', 'Reprint', 555, '6.10 (w) x 9.20 (h) x 1.80 (d)', 'Test overview update', 'Test synopsis update'),
('9780060540425', 12, 'Best Poems of the English Language: From Chaucer Through Robert Frost', '2005-08-16', 15.79, 'Paperback', 'Reprint', 1008, '6.10 (w) x 9.20 (h) x 1.80 (d)', 'This comprehensive anthology attempts to give the common reader possession of six centuries of great British and American poetry. The book features a large introductory essay by Harold Bloom called The Art of Reading Poetry, which presents his critic', 'This comprehensive anthology attempts to give the common reader possession of six centuries of great British and American poetry. The book features a large introductory essay by Harold Bloom called The Art of Reading Poetry, which presents his critic'),
('9780060595371', 12, 'Couldn\'t Keep It to Myself: Testimonies from Our Imprisoned Sisters', '2010-06-17', 10.59, 'Paperback', 'Reprint', 368, '6.00 (w) x 9.00 (h) x 0.92 (d)', 'In a stunning work of insight and hope, <em>New York Times</em> bestselling author Wally Lamb once again reveals his unmatched talent for finding humanity in the lost and lonely and celebrates the transforming power of the written word.For several ye', 'In a stunning work of insight and hope, <i>New York Times</i> bestselling author Wally Lamb once again reveals his unmatched talent for finding humanity in the lost and lonely and celebrates the transforming power of the written word.For several year'),
('9780060882501', 12, 'Mental Floss: Scatterbrained', '1996-11-30', 10.72, 'Paperback', '', 256, '7.18 (w) x 10.90 (h) x 0.68 (d', 'The bathroom read to end all bathroom reads!What does Greece (the country) have to do with Grease (the movie)? And what does Grease (the movie) have to do with greasy food? Plenty, if you ask the folks at mental_floss.Based on the magazine\'s Scatterb', 'The bathroom read to end all bathroom reads! What does Greece (the country) have to do with <i>Grease</i> (the movie)? And what does <i>Grease</i> (the movie) have to do with greasy food? Plenty, if you ask the folks at <i>mental_floss</i>. Based on '),
('9780060927639', 12, 'Modern American Memoirs', '2018-12-01', 11.99, 'Paperback', 'Reprint', 464, '5.31 (w) x 8.00 (h) x 1.04 (d)', 'In Modern American Memoirs, two very discerning writers and readers have selected samples from 35 of the finest memoirs written in this century, including contributions by such diverse writers as Margaret Mead, Malcolm X, Maxine Hong Kingston, Loren ', 'In <i>Modern American Memoirs,</i> two very discerning writers and readers have selected samples from 35 of the finest memoirs written in this century, including contributions by such diverse writers as Margaret Mead, Malcolm X, Maxine Hong Kingston,'),
('9780061174070', 12, 'I Am Not My Breast Cancer: Women Talk Openly about Love and Sex, Hair Loss and Weight Gain, Mothers and Daughters, and Being a Woman with Breast Cancer', '2011-06-05', 15.95, 'Paperback', '', 100, '', '', 'I am not my breast, and I am not cancer; they are only pieces of who I am. What is my heart like, am I kind, strong, loving, compassionate. . . . Those are the things that count. I Am Not My Breast Cancer gathers the warm, loving, frank, and informed'),
('9780061626395', 12, 'I\'ll Fly Away: Further Testimonies from the Women of York Prison', '2018-04-13', 10.99, 'Paperback', '', 288, '5.30 (w) x 7.90 (h) x 0.80 (d)', 'For several years, Wally Lamb, the author of two of the most beloved novels of our time, has run a writing workshop at the York Correctional Institution, Connecticut\'s only maximum-security prison for women. Writing, Lamb discovered, was a way for th', 'For several years, Wally Lamb, the author of two of the most beloved novels of our time, has run a writing workshop at the York Correctional Institution, Connecticut\'s only maximum-security prison for women. Writing, Lamb discovered, was a way for th'),
('9780061728945', 12, 'Humor Me: An Anthology of Funny Contemporary Writing (Plus Some Great Old Stuff Too)', '1995-06-04', 25.99, 'Hardcover', '', 100, '', '', '<i>Humor Me</i> is a literary cavalcade of contemporary American funnymen&#151;and funnywomen&#151;of the page. Selected by the renowned humor-ist Ian Frazier and featuring more than fifty pieces of the greatest comic writing of our time, the book in'),
('9780077239046', 63, 'The American Tradition in Literature, Volume 1(book alone)', '2005-05-20', 100.79, 'Paperback', '12nd Edition', 2040, '5.90 (w) x 9.10 (h) x 2.00 (d)', 'Widely known as the anthology that best unites tradition with innovation, The American Tradition in Literature is proud to enter its fifth decade of leadership among textbook anthologies of American literature.Each volume continues to offer a flexibl', 'Widely known as the anthology that best unites tradition with innovation, The American Tradition in Literature is proud to enter its fifth decade of leadership among textbook anthologies of American literature.Each volume continues to offer a flexibl'),
('9780132216470', 35, 'Anthology of American Literature Volume II', '1990-08-08', 92.2, 'Paperback', '9th Edition', 100, '', '', 'This leading, two-volume anthology represents America&#39;s literary heritage from the colonial times of William Bradford and Anne Bradstreet to the contemporary era of Saul Bellow and Alice Walker. This anthology is best known for its solid headnote'),
('9780140170368', 15, 'The Portable Harlem Renaissance Reader', '2007-03-22', 15.9, 'Paperback', '1', 816, '5.18 (w) x 7.78 (h) x 1.47 (d)', 'Gathering a representative sampling of the New Negro Movement\'s most important figures, and providing substantial introductory essays, headnotes, and brief biographical notes, Lewis\' volume—organized chronologically—includes the poetry and prose of S', 'From its beginnings in 1919, with soldiers returning from the Great War, to its sputtering end in 1934, with the Great Depression, the New Negro Movement in arts and letters ...<h3>Library Journal</h3>Editor Lewis is a noted author of several books, '),
('9780142001943', 15, 'The Portable Sixties Reader', '2018-03-30', 13.79, 'Paperback', '', 672, '5.20 (w) x 7.80 (h) x 1.16 (d)', 'From civil rights to free love, JFK to LSD, Woodstock to the Moonwalk, the Sixties was a time of change, political unrest, and radical experiments in the arts, sexuality, and personal identity. In this anthology of more than one hundred selections of', 'Compiled by a lifelong scholar of the Beat generation, this anthology contains excerpts from essays, speeches, poetry, and fiction representative of the American counterculture of the 1960s. Included are the words of Allen Ginsberg on conducting a de'),
('9780142437537', 15, 'The Portable Beat Reader', '1999-04-14', 18, 'Paperback', 'Reissue', 100, '', '', 'Through poetry, fiction, essays, song lyrics, letters, and memoirs, this authoritative single-volume collection of Beat literature captures the triumphant energy of a movement that swept through American letters with hurricane force. Featuring&#58; J'),
('9780195092622', 8, 'The Oxford Book of American Short Stories', '2014-02-21', 19.95, 'Paperback', '~', 100, '', '', 'How ironic, Joyce Carol Oates writes in her introduction to this marvelous collection, that in our age of rapid mass-production and the easy proliferation of consumer products, the richness and diversity of the American literary imagination should be'),
('9780205655106', 30, 'Literature: A Pocket Anthology', '2019-05-30', 46.67, 'Paperback', '4th Edition', 100, '', '', 'Always a good price with quality selections, the Fourth Edition of Gwynn&#39;s Literature&#58; A Pocket Anthology continues that tradition. Organized chronologically with a thematic appendix and streamlined apparatus, this anthology can be taylored t'),
('9780205763108', 35, 'Concise Anthology of American Literature', '1990-05-13', 92.38, 'Paperback', '7th Edition', 2368, '6.40 (w) x 9.20 (h) x 2.10 (d)', 'Student Edition:After careful thought, your professor assigned McMichael’s <i>Concise Anthology of American Literature, Seventh Edition</i> for your course. This anthology is rich in contextual content, giving you the historical events that influence', 'This consise anthology offers a balanced approach to the enjoyment of reading American literature. Over 20 new authors representing diverse cultural backgrounds allow students to read about unique experiences through the eyes of esteemed writers incl'),
('9780205779390', 30, 'Anthology of American Literature, Volume I', '2009-10-21', 1.99, 'Paperback', '10th Edition', 2256, '6.40 (w) x 9.20 (h) x 2.00 (d)', 'Pick a Penguin Program*We offer select Penguin Putnam titles at a substantial discount to your students when you request a special package of one or more Penguin titles with this text. Among the many American Literature titles available from Penguin ', 'This two-volume anthology represents America&#39;s literary heritage from colonial times through the American renaissance to the contemporary era of post-modernism. Volume I offers early contextual selections from Christopher Columbus and Gaspar Pere'),
('9780231080286', 78, 'The Top 500 Poems', '2001-01-06', 27.96, 'Hardcover', '', 1132, '6.29 (w) x 9.32 (h) x 1.97 (d)', '<i>The Top 500 Poems</i> offers a vivid portrait of poetry in English, assembling a host of popular and enduring poems as chosen by critics, editors, poets, and general readers. These works speak across centuries, beginning with Chaucer\'s resourceful', 'This is the story of poetry in English, a collection of the best 500 poems, based not on one critic\'s choice, not on one poet\'s choice, but on the collective choice of 550 critics, editors, and poets.<h3>School Library Journal</h3>YA-- A chronologica'),
('9780307268341', 19, 'The Four Seasons: Poems', '2000-08-24', 11.16, 'Hardcover', '', 256, '6.48 (w) x 4.38 (h) x 0.73 (d)', 'For the poet, even the most minute details of the natural world are starting points for flights of the imagination, and the pages of this collection celebrating the four seasons are brimming with an extraordinary range of observation and imagery.&nbs', 'For the poet, even the most minute details of the natural world are starting points for flights of the imagination, and the pages of this collection celebrating the four seasons are brimming with an extraordinary range of observation and imagery.&#16'),
('9780312463199', 23, 'Poems, Poets, Poetry: An Introduction and Anthology', '1995-02-15', 1.99, 'Paperback', '3rd Edition', 752, '5.90 (w) x 9.00 (h) x 1.00 (d)', 'Many students today are puzzled by the meaning and purpose of poetry. <i>Poems, Poets, Poetry</i> demystifies the form and introduces students to its artistry and pleasures, using methods that Helen Vendler has successfully used herself over her long', 'Written by a preeminent critic and legendary teacher, this text and anthology presents the incisive, practical methods of reading and writing that Helen Vendler has used for decades to demystify poetry for her students and introduce them to its artis'),
('9780312474911', 23, 'Making Literature Matter: An Anthology for Readers and Writers', '1992-03-12', 19.95, 'Paperback', '4th Edition', 100, '', '', 'Prepared by editors whose scholarship fuses literary and composition studies, <I>Making Literature Matter </I>combines a comprehensive writing text with a uniquely organized anthology for introductory literature courses that emphasize critical and ac'),
('9780321012692', 30, 'The Harper American Literature, Single Volume Edition', '2002-09-13', 89.47, 'Hardcover', '3rd Edition', 2867, '6.38 (w) x 9.14 (h) x 2.45 (d)', 'A richly diverse gathering of new and familiar voices, on subjects new and old, The Harper Single Volume American Literature takes the reader on a journey through America\'s literary past and ever-projecting future. Eleven cultural portfolios provide ', 'A richly diverse gathering of new and familiar voices, on subjects new and old, The Harper Single Volume American Literature takes the reader on a journey through America\'s literary past and ever-projecting future. Eleven cultural portfolios provide '),
('9780321113412', 30, 'African American Literature (Penguin Academics Series)', '1998-01-25', 42.47, 'Paperback', '1st Edition', 1376, '5.40 (w) x 8.20 (h) x 1.60 (d)', '<i>African-American Literature</i> is thematically arranged, comprehensive survey of African-American Literature.', 'African-American Literature is thematically arranged, comprehensive survey of African-American Literature.'),
('9780321484895', 30, 'American Short Stories', '2018-06-04', 76.05, 'Hardcover', '8th Edition', 760, '5.90 (w) x 8.90 (h) x 1.10 (d)', 'American short stories capture America’s past and present in a unique way. Now you have an opportunity to immerse yourself in the more than two hundred year history of the American short story by taking this course and reading the new eighth edition ', 'American Short Stories, 8/e is a streamlined anthology that includes classic works and contemporary stories that are organized chronologically. Of the sixty selected stories making up this anthology, sixteen are new to the eighth edition and nine of '),
('9780375415043', 19, 'Poems of New York', '2015-06-10', 11.02, 'Hardcover', '', 256, '4.34 (w) x 6.49 (h) x 0.74 (d)', 'New York City has always been a larger-than-life, half-mythical place, and this collection offers an appropriately stunning mosaic of its many incarnations in poetry–ranging from Walt Whitman’s exuberant celebrations to contemporary poets’ moving res', 'New York City has always been a larger-than-life, half-mythical place, and this collection offers an appropriately stunning mosaic of its many incarnations in poetry&#8211;ranging from Walt Whitman&#8217;s exuberant celebrations to contemporary poets'),
('9780375761270', 70, 'Fierce Pajamas: An Anthology of Humor Writing from the New Yorker', '1994-10-22', 16.24, 'Paperback', 'Reprint', 528, '6.14 (w) x 9.20 (h) x 1.12 (d)', 'When Harold Ross founded <i>The New Yorker</i> in 1925, he called it a “comic weekly.” And although it has become much more than that, it has remained true in its irreverent heart to the founder’s description, publishing the most illustrious literary', 'When Harold Ross founded <i>The New Yorker</i> in 1925, he described it as a comic weekly.<h3>Library Journal</h3>Remnick, New Yorker editor since 1999, and Finder, the magazine\'s editorial director, recommend taking this book in small doses. However'),
('9780385000192', 19, 'The Best Loved Poems of the American People', '2016-04-29', 17.92, 'Hardcover', 'Reissue', 670, '5.99 (w) x 8.56 (h) x 2.06 (d)', 'More than 1,500,000 copies in print! Over 575&nbsp;&nbsp;traditional favorites to be read and reread.&nbsp;&nbsp;Categorized by theme, and indexed by author and first&nbsp;&nbsp;line, this is a collection that will be treasured.', 'More than 1,500,000 copies in print! Over 575&#160;&#160;traditional favorites to be read and reread.&#160;&#160;Categorized by theme, and indexed by author and first&#160;&#160;line, this is a collection that will be treasured.'),
('9780393061819', 6, 'The Poets Laureate Anthology', '1996-08-24', 38.52, 'Hardcover', 'New Edition', 816, '6.50 (w) x 9.30 (h) x 1.70 (d)', '<p class=null1>The first anthology to gather poems by the forty-three poets laureate of the United States.As a record of poetry, The Poets Laureate Anthology is groundbreaking, charting the course of American poetry over the last seventy-five years, ', 'The first anthology to gather poems by the forty-three poets laureate of the United States.<h3>Publishers Weekly</h3>The United States has a long tradition of choosing a national poet, though the term poet laureate only came to be used here after 198'),
('9780393316988', 6, 'Postmodern American Fiction: A Norton Anthology', '1996-06-02', 18.76, 'Paperback', '1 ED', 704, '5.70 (w) x 9.20 (h) x 1.20 (d)', 'It includes works by sixty-eight authors: short fiction, novels, cartoons, graphics,hypertexts, creative nonfiction, and theoretical writings. This is the first anthology to do full justice to the vast range of American innovation in fiction writing ', 'From William S. Burroughs to David Foster Wallace, Postmodern American Fiction offers up witty, risky, exhilarating, groundbreaking fiction from five decades of postwar American life.'),
('9780393326659', 6, 'In Fact: The Best of Creative Nonfiction', '2017-03-07', 15.24, 'Paperback', '', 480, '5.50 (w) x 8.50 (h) x 1.20 (d)', '<p class=null1>Twenty-five arresting selections from the groundbreaking journal that defined a genre.Creative nonfiction, also known as narrative nonfiction, liberated journalism by inviting writers to dramatize, interpret, speculate, and even re-cre', 'Twenty-five arresting selections from the groundbreaking journal that defined a genre.'),
('9780393336450', 6, 'Sudden Fiction Latino: Short-Short Stories from the United States and Latin America', '2018-09-13', 11.05, 'Paperback', 'Original', 336, '5.50 (w) x 8.20 (h) x 0.90 (d)', '<p class=null1>For readers who love great short-short stories, this bountiful anthology is the best of Latin American and U.S. Latino writers.Following on the success of the Flash Fiction and Sudden Fiction series, Robert Shapard and James Thomas joi', 'For readers who love great short-short stories, this bountiful anthology is the best of Latin American and U.S. Latino writers.<h3>Publishers Weekly</h3>After the Sudden Fiction and Flash Fiction anthologies, editors Shapard and Thomas teamed with Go'),
('9780393927399', 6, 'The Norton Anthology of American Literature: Volume A: Beginnings to 1820', '1999-04-05', 37.77, 'Paperback', '7th Edition', 972, '6.00 (w) x 9.20 (h) x 1.10 (d)', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed'),
('9780393927429', 6, 'The Norton Anthology of American Literature: Volume D: 1914-1945', '2003-08-16', 37.77, 'Paperback', '7th Edition', 910, '6.00 (w) x 9.20 (h) x 1.00 (d)', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed'),
('9780393929942', 6, 'The Norton Anthology of American Literature, Package 2: Volumes C, D, and E', '2008-09-23', 20, 'Paperback', '7th Edition', 2870, '6.00 (w) x 9.20 (h) x 3.70 (d)', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed'),
('9780393930146', 6, 'The Norton Anthology of Literature by Women: The Traditions in English, Vol. 2', '2005-03-30', 59.65, 'Hardcover', '3rd Edition', 100, '', '', 'Long the standard teaching anthology, the landmark Norton Anthology of Literature by Women has introduced generations of readers to the rich variety of women&rsquo;s writing in English.'),
('9780393930573', 6, 'The Norton Anthology of American Literature, Shorter Seventh Edition, One-Volume Paperback', '2016-10-04', 63.03, 'Paperback', '7th Edition', 3008, '6.00 (w) x 9.20 (h) x 2.50 (d)', 'Under Nina Baym\'s direction, the editors have considered afresh each selection and the entire apparatus to make the Shorter Edition an even better teaching tool for the one-semester and brief two-semester courses.', 'Firmly grounded in the core strengths that have made it the best-selling undergraduate survey in the field, The Norton Anthology of American Literature has been revitalized in this Seventh Edition through the collaboration between three new period ed'),
('9780393977783', 6, 'The Norton Anthology of African American Literature, Vol. 2', '2004-08-06', 72.82, 'Paperback', '2nd Edition', 2832, '6.00 (w) x 9.30 (h) x 2.30 (d)', 'Welcomed on publication as brilliant, definitive, and a joy to teach from, The Norton Anthology of African American Literature was adopted at more than 1,275 colleges and universities worldwide. Now, the new Second Edition offers these highlights.', 'Welcomed on publication as brilliant, definitive, and a joy to teach from, The Norton Anthology of African American Literature was adopted at more than 1,275 colleges and universities worldwide. Now, the new Second Edition offers these highlights.<h3'),
('9780393979206', 6, 'The Norton Anthology of Poetry', '2009-05-11', 66.3, 'Paperback', '5th Edition', 2256, '6.00 (w) x 9.20 (h) x 2.00 (d)', 'Offering over one thousand years of verse from the medieval period to the present, The Norton Anthology of Poetry is the classroom standard for the study of poetry in English.The Fifth Edition retains the flexibility and breadth of selection that has', 'Offering over one thousand years of verse from the medieval period to the present, The Norton Anthology of Poetry is the classroom standard for the study of poetry in English.'),
('9780393979213', 6, 'The Norton Anthology of Poetry, Shorter 5th Edition', '2010-10-30', 58.69, 'Paperback', '5th Edition', 1424, '9.16 (w) x 5.86 (h) x 1.50 (d)', 'Offering over one thousand years of verse from the medieval period to the present, The Norton Anthology of Poetry is the classroom standard for the study of poetry in English.The Fifth Edition retains the flexibility and breadth of selection that has', 'Offering over one thousand years of verse from the medieval period to the present, The Norton Anthology of Poetry is the classroom standard for the study of poetry in English.'),
('9780395765289', 3, 'The Latino Reader: An American Literary Tradition from 1542 to the Present', '1995-01-22', 13.98, 'Paperback', 'None', 528, '5.50 (w) x 8.25 (h) x 0.50 (d)', 'The Latino Reader is the first anthology to present the full history of this important American literary tradition, from the mid-sixteenth century to the present day. Selections include works of history, memoirs, letters, and essays, as well as ficti', 'The Latino Reader is the first anthology to present the full history of this important American literary tradition, from the mid-sixteenth century to the present day. Selections include works of history, memoirs, letters, and essays, as well as ficti'),
('9780425234280', 15, 'The Gift of Love', '2004-03-22', 14.43, 'Paperback', '', 368, '5.10 (w) x 7.90 (h) x 1.00 (d)', 'Edited by <i>New York Times</i> bestselling author Lori Foster-a heartwarming anthology of all-new stories that celebrate family love.Families come in many configurations, and every one is unique, made up of the personalities of each member. But the ', 'Edited by <i>New York Times</i> bestselling author Lori Foster-a heartwarming anthology of all-new stories that celebrate family love.  Families come in many configurations, and every one is unique, made up of the personalities of each member. But th'),
('9780435910105', 1, 'Opening Spaces: An Anthology of Contemporary African Women\'s Writing', '2011-09-28', 14.52, 'Paperback', '1st Edition', 186, '5.07 (w) x 7.78 (h) x 0.42 (d)', 'In this anthology the award-winning author Yvonne Vera brings together the stories of many talented writers from different parts of Africa.', 'African women are seldom given the space to express their concerns, their ideas and their reflections about the societies in which they live. In situations where a good woman is expected to remain silent, literature can provide an important medium fo'),
('9780446579223', 2, 'The Daily Show with Jon Stewart Presents Earth (the Book): A Visitor\'s Guide to the Human Race', '2011-04-12', 1.99, 'Hardcover', '', 244, '8.40 (w) x 10.30 (h) x 0.90 (d', 'The eagerly awaited new book from the Emmy-winning, Oscar-hosting, Daily Show-anchoring Jon Stewart—the man behind the megaseller America (The Book).Where do we come from? Who created us? Why are we here? These questions have puzzled us since the daw', 'The eagerly awaited new book from the Emmy-winning, Oscar-hosting, Daily Show-anchoring Jon Stewart&#151;the man behind the megaseller America (The Book). Where do we come from? Who created us? Why are we here? These questions have puzzled us since t'),
('9780449905081', 70, 'Spider Woman\'s Granddaughters: Traditional Tales and Contemporary Writing by Native American Women', '1993-09-16', 10.31, 'Paperback', 'Reissue', 288, '5.06 (w) x 7.97 (h) x 0.56 (d)', 'Impressive....Haunting....Enchanting...Every story in the book, which covers nearly a century of tradition, is interesting, written with intelligent passion.THE NEW YORK TIMES BOOK REVIEW Native American scholar, literary critic, poet, and novelist P', '&quot;Impressive....Haunting....Enchanting...Every story in the book, which covers nearly a century of tradition, is interesting, written with intelligent passion.&quot;THE NEW YORK TIMES BOOK REVIEW Native American scholar, literary critic, poet, an'),
('9780451527820', 15, 'Black Voices: An Anthology of African-American Literature', '2016-02-28', 8.07, 'Mass Market Paperback', 'Reissue', 720, '4.26 (w) x 6.86 (h) x 1.17 (d)', 'Featuring poetry, fiction, autobiography and literary criticism, this is a comprehensive and vital collection featuring the work of the major black voices of a century. An unparalleled important classic anthology with timeless appeal...', 'Featuring poetry, fiction, autobiography and literary criticism, this is a comprehensive and vital collection featuring the work of the major black voices of a century. An unparalleled important classic anthology with timeless appeal.'),
('9780451528247', 15, 'Classic Slave Narratives: The Life of Olaudah Equiano, The History of Mary Prince, Narrative of the Life of Frederick Douglass, Incidents in the Life of a Slave Girl', '1996-10-09', 1.99, 'Mass Market Paperback', 'Reissue', 688, '4.36 (w) x 7.08 (h) x 1.48 (d)', 'No group of slaves anywhere, in any era, has left such prolific testimony to the horror of bondage as African-American slaves. Here are four of the most notable narratives: <i>The Life of Olaudah Equiano; The History of Mary Prince; Narrative of the ', 'No group of slaves anywhere, in any era, has left such prolific testimony to the horror of bondage as African-American slaves. Here are four of the most notable narratives&#58; <i>The Life of Olaudah Equiano; The History of Mary Prince; Narrative of '),
('9780451529152', 15, 'Classic American Autobiographies', '2003-11-17', 6.94, 'Mass Market Paperback', 'Reissue', 464, '4.44 (w) x 6.82 (h) x 0.81 (d)', 'Includes: <i>A True History of the Captivity and Restoration of Mrs. Mary Rowlandson, The Autobiography of Benjamin Franklin, Narrative of the Life of Frederick Douglass, Old Times on the Mississippi by Mark Twain</i>, and <i>Four Autobiographical Na', 'Includes&#58; <i>A True History of the Captivity and Restoration of Mrs. Mary Rowlandson, The Autobiography of Benjamin Franklin, Narrative of the Life of Frederick Douglass, Old Times on the Mississippi by Mark Twain</i>, and <i>Four Autobiographica'),
('9780451529633', 15, 'The Signet Classic Book of American Short Stories', '2013-10-26', 7.75, 'Mass Market Paperback', 'Reissue', 688, '4.38 (w) x 6.88 (h) x 1.14 (d)', '<i>The best of American short fiction</i>Spanning over 100 years of literary history, here are 33 of the finest short stories by Washington Irving• Nathaniel Hawthorne• Edgar Allan Poe• Herman Melville• Harriet Beecher Stowe• Bret Harte• Bayard Taylo', 'The best of American short fiction Spanning over 100 years of literary history, here are 33 of the finest short stories by Washington Irving &bull; Nathaniel Hawthorne &bull; Edgar Allan Poe &bull; Herman Melville &bull; Harriet Beecher Stowe &bull; '),
('9780486271651', 5, 'Best Remembered Poems', '2005-12-19', 5.94, 'Paperback', '', 224, '5.40 (w) x 8.45 (h) x 0.45 (d)', 'The 126 poems in this superb collection of 19th- and 20th-century British and American verse range from the impassioned Renascence of Edna St. Vincent Millay to Edward Lear\'s whimsical The Owl and the Pussycat.&nbsp; Famous poets such as Wordsworth, ', 'The 126 poems in this superb collection of 19th- and 20th-century British and American verse range from famous poets such as Wordsworth, Tennyson, Whitman, and Frost to less well-known poets.'),
('9780486272849', 5, 'Great Love Poems', '2010-04-08', 1.99, 'Paperback', 'Special Value', 128, '5.12 (w) x 8.34 (h) x 0.32 (d)', 'Treasury of over 150 familiar poems by English and American poets, including a selection of Shakespeare\'s sonnets, John Donne\'s The Ecstasy, William Blake\'s The Garden of Love, as well as works by W. B. Yeats, Emily Dickinson, Walt Whitman, Elizabeth', 'Over 150 familiar works by English and American poets&#58; John Donne\'s The Ecstasy, William Blake\'s The Garden of Love, as well as poems by Shakespeare, Milton, Keats, Whitman,&#160;Dickinson, many more.'),
('9780486285535', 5, '100 Best-Loved Poems', '2007-03-26', 1.8, 'Paperback', 'Special Value', 97, '5.22 (w) x 8.28 (h) x 0.28 (d)', 'Popular, well-known poetry: The Passionate Shepherd to His Love, Shall I compare thee to a summer\'s day? Death, be not proud, The Raven, The Road Not Taken, plus works by Blake, Wordsworth, Byron, Coleridge, Shelley, Emerson, Browning, Keats, Kipling', 'The Passionate Shepherd to His Love, Shall I compare thee to a summer\'s day? Death, be not proud, The Raven, The Road Not Taken, plus works by Blake, Wordsworth, Byron, Shelley, Keats, many others.'),
('9780486294506', 5, 'Native American Songs and Poems: An Anthology', '2011-11-30', 2.99, 'Paperback', 'Special Value', 64, '5.25 (w) x 8.25 (h) x 0.15 (d)', 'Wonderful collection of authentic traditional songs and contemporary Indian verse composed by Seminole, Hopi, Navajo, Pima, Arapaho, Paiute, Nootka, other Indian writers and poets. Topics include nature\'s beauty and rhythms, themes of tradition and c', 'Rich selection of traditional songs and contemporary verse by Seminole, Hopi, Arapaho, Nootka, other Indian writers and poets. Nature, tradition, Indians\' role in contemporary society, other topics.'),
('9780486296043', 5, 'African-American Poetry: An Anthology, 1773-1930', '1997-01-19', 1.8, 'Paperback', 'Special Value', 96, '5.29 (w) x 8.21 (h) x 0.25 (d)', 'Rich selection of 74 poems ranging from the religious and moral verse of Phillis Wheatley Peters (ca. 1753–1784) to 20th-century work of Langston Hughes and Countee Cullen. Other contributors include James Weldon Johnson, Paul Laurence Dunbar, many o', 'Rich selection of 74 poems ranging from religious and moral verse of Phillis Wheatley Peters (ca. 1753&#150;1784) to 20th-century work of Countee Cullen, James Weldon Johnson, and Langston Hughes. Introduction.'),
('9780521540285', 61, 'In Our Own Words: Student Writers at Work', '2009-09-11', 33.09, 'Paperback', '3rd Edition', 288, '7.01 (w) x 10.04 (h) x 0.59 (d', 'In Our Own Words takes the unique approach of using student writing as a resource for writing instruction and idea development. The defining characteristic of this unique high-intermediate to advanced writing text is the use of non-native student wri', 'In Our Own Words takes the unique approach of using student writing as a resource for writing instruction and idea development.'),
('9780547201801', 36, 'The Heath Anthology of American Literature: Contemporary Period (1945 To The Present), Volume E', '2006-02-06', 87.49, 'Paperback', '6th Edition', 3612, '6.00 (w) x 9.10 (h) x 1.50 (d)', 'A best-selling anthology since its first edition, this premier survey of American literature has influenced the manner in which the American literary canon is taught in classrooms across the nation. In response to readers\' requests, the editors of th', 'Unrivaled diversity and ease of use have made THE HEATH ANTHOLOGY OF AMERICAN LITERATURE&#58; VOLUME E&#58; CONTEMPORARY PERIOD (1945 TO THE PRESENT), 6th Edition a best-selling text since 1989, when the first edition was published. In presenting a m'),
('9780547201948', 36, 'The Heath Anthology of American Literature: Modern Period (1910?1945), Volume D', '2008-04-16', 80.66, 'Paperback', '6th Edition', 1138, '6.10 (w) x 9.10 (h) x 1.30 (d)', 'American Literature courses.', 'Unrivaled diversity and ease of use have made THE HEATH ANTHOLOGY OF AMERICAN LITERATURE&#58; VOLUME D&#58; MODERN PERIOD (1910-1945), 6th Edition a best-selling text since 1989, when the first edition was published. In presenting a more inclusive ca'),
('9780547241609', 3, 'The Best American Nonrequired Reading 2009', '2009-07-31', 14.39, 'Paperback', '', 432, '5.40 (w) x 8.10 (h) x 1.20 (d)', 'This great volume highlights the very best of this year\'s fiction, nonfiction, alternative comics, screenplys, blogs and more (<i>OK!).</i> Compiled by Dave Eggers and students from his San Francisco writing center, it is both uproarious and illumina', 'This great volume highlights the very best of this year\'s fiction, nonfiction, alternative comics, screenplys, blogs and more (<i>OK!).</i> Compiled by Dave Eggers and students from his San Francisco writing center, it is both uproarious and illumina'),
('9780547241630', 3, 'The Best American Nonrequired Reading 2010', '1991-08-22', 11.17, 'Paperback', '', 484, '5.50 (w) x 8.20 (h) x 1.30 (d)', 'An&nbsp;eclectic volume introduced by David Sedaris and compiled by Dave Eggers and students of his San Francisco writing center, who don’t leave a stone unturned in their search for nonrequired gems.&nbsp;Cover art by art by Maurice Sendak.', 'An&#160;eclectic volume introduced by David Sedaris and compiled by Dave Eggers and students of his San Francisco writing center, who don&#8217;t leave a stone unturned in their search for nonrequired gems. &#160;Cover art by art by Maurice Sendak.<h'),
('9780609808405', 66, 'Bum Rush the Page: A Def Poetry Jam', '1994-06-08', 14.95, 'Paperback', '1ST', 320, '6.10 (w) x 9.15 (h) x 0.80 (d)', 'Bum Rush the Page is a groundbreaking collection, capturing the best new work from the poets who have brought fresh energy, life, and relevance to American poetry.“Here is a democratic orchestration of voices and visions, poets of all ages, ethniciti', 'Bum Rush the Page is a groundbreaking collection, capturing the best new work from the poets who have brought fresh energy, life, and relevance to American poetry.&#8220;Here is a democratic orchestration of voices and visions, poets of all ages, eth'),
('9780618155873', 3, 'The Best American Essays of the Century', '2019-06-07', 14.84, 'Paperback', '', 624, '6.00 (w) x 9.00 (h) x 1.50 (d)', 'This singular collection is nothing less than a political, spiritual, and intensely personal record of America’s tumultuous modern age, as experienced by our foremost critics, commentators, activists, and artists. Joyce Carol Oates has collected a gr', 'This singular collection is nothing less than a political, spiritual, and intensely personal record of America&#8217;s tumultuous modern age, as experienced by our foremost critics, commentators, activists, and artists. Joyce Carol Oates has collecte'),
('9780618197330', 3, 'The Best American Short Stories 2003', '2001-07-25', 21.95, 'Paperback', 'Older Edition', 386, '0.86 (w) x 8.50 (h) x 5.50 (d)', 'Since its inception in 1915, the Best American series has become the premier annual showcase for the country\'s finest short fiction and nonfiction. For each volume, a series editor reads pieces from hundreds of periodicals, then selects between fifty', 'Since its inception in 1915, the Best American series has become the premier annual showcase for the country\'s finest short fiction and nonfiction. For each volume, a series editor reads pieces from hundreds of periodicals, then selects between fifty'),
('9780618197354', 3, 'The Best American Short Stories 2004', '2006-05-15', 28.95, 'Paperback', '~', 498, '1.11 (w) x 5.50 (h) x 8.50 (d)', 'Since its inception in 1915, the Best American series has become the premier annual showcase for the country\'s finest short fiction and nonfiction. For each volume, a series editor reads pieces from hundreds of periodicals, then selects between fifty', 'Since its inception in 1915, the Best American series has become the premier annual showcase for the country\'s finest short fiction and nonfiction. For each volume, a series editor reads pieces from hundreds of periodicals, then selects between fifty'),
('9780618751181', 3, 'The Best American Sports Writing 2008', '2004-12-10', 13.58, 'Paperback', '', 448, '5.40 (w) x 8.10 (h) x 1.10 (d)', 'In this exciting new collection, William Nack, veteran sportswriter and author of the classic Secretariat, honors the year’s finest sports journalism and thus upholds the tradition that began seventeen years ago, with David Halberstam at the helm. In', 'In this exciting new collection, William Nack, veteran sportswriter and author of the classic Secretariat, honors the year s finest sports journalism and thus upholds the tradition that began seventeen years ago, with David Halberstam at the helm. In'),
('9780618982721', 3, 'The Best American Essays 2009', '2020-02-18', 13.56, 'Paperback', '', 224, '5.40 (w) x 8.40 (h) x 0.60 (d)', 'Edited by award-winning poet and essayist Mary Oliver, the latest edition of this rich and thoughtful collection (<i>Publishers Weekly</i>) offers the finest essays judiciously selected from countless publications (<i>Chicago Tribune</i>).', 'Edited by award-winning poet and essayist Mary Oliver, the latest edition of this rich and thoughtful collection (<i>Publishers Weekly</i>) offers the finest essays judiciously selected from countless publications (<i>Chicago Tribune</i>).'),
('9780641974120', 57, 'Best American Spiritual Writing 2007', '2001-03-08', 19.95, 'Paperback', 'Bargain', 100, '', '', 'The latest edition of this annual, assembled by the acclaimed writer and editor Philip Zaleski, not only showcases some of the finest writing of the year but offers astute perceptions on subjects that are universal, timeless, and yet deeply personal.'),
('9780679767992', 19, 'American Dreams', '1995-07-17', 13.68, 'Paperback', '1st Vintage Books Edition', 192, '5.18 (w) x 8.02 (h) x 0.43 (d)', 'In the tradition of Alice Walker, this electrifying new African American voice delivers the verdict on the urban condition in a sensual, propulsive, and prophetic book of poetry and prose.Whether she is writing about an enraged teenager gone wilding ', 'In the tradition of Alice Walker, this electrifying new African American voice delivers the verdict on the urban condition in a sensual, propulsive, and prophetic book of poetry and prose. Whether she is writing about an enraged teenager gone &quot;w'),
('9780684823072', 7, 'Black Theatre USA, V2: Plays by African Americans 1935-Today, Vol. 2', '2000-02-09', 19.27, 'Hardcover', 'Revised and Expanded Edition', 528, '7.00 (w) x 9.90 (h) x 1.30 (d)', 'This revised and expanded Black Theatre U.S.A. broadens its collection to fifty-one outstanding plays, enhancing its status as the most authoritative anthology of African American drama with 22 new selections. Building on the well-respected first edi', 'This revised and expanded Black Theatre U.S.A. broadens its collection to fifty-one outstanding plays, enhancing its status as the most authoritative anthology of African American drama with 22 new selections. Building on the well-respected first edi'),
('9780689808692', 52, 'I Am the Darker Brother: An Anthology of Modern Poems by African Americans', '2004-01-24', 5.84, 'Mass Market Paperback', 'Revised', 192, '4.10 (w) x 6.80 (h) x 0.60 (d)', '\'I Am the Darker Brother\' exposes the quintessential African American, a proud, lonely, vulnerable yet independent human being who has forged out of hardship that combination of endurance, understanding, and spirit called soul.                       ', '\'I Am the Darker Brother\' exposes the quintessential African American, a proud, lonely, vulnerable yet independent human being who has forged out of hardship that combination of endurance, understanding, and spirit called soul.<h3>Children\'s Literatu'),
('9780743299770', 7, 'The Best American Poetry 2009', '2014-10-19', 16, 'Paperback', '', 240, '5.48 (w) x 8.28 (h) x 0.64 (d)', 'Award-winning poet David Wagoner and renowned editor David Lehman present the twenty-second edition of the <i>Best American Poetry</i> series—a ‘best’ anthology that really lives up to its title (<i>Chicago Tribune</i>).Eagerly anticipated by scholar', 'David Wagoner writes about regular lives with plain grace and transcendent humanity, and the seventy-five poems he has chosen for the 2009 edition of <i>The Best American Poetry</i> grapple with life, celebrate freedom, and teem with imaginative ener'),
('9780806639628', 76, 'Listening For God Reader Volume 3', '2011-02-08', 13.99, 'Paperback', 'New Edition', 160, '5.50 (w) x 8.50 (h) x 0.34 (d)', 'Keep up with current culture while you integrate the perspectives of Christian faith. This two-part resource helps adults explore the issues of discipleship and theology through the guided interaction of 8-10 selections of American literature. Volume', 'Where do you listen for God? In this new collection of stories and essays, the challenge is to pay attention everywhere. <I>Listening for God</i> is a resource intended to help readers investigate how life and faith merge in surprising ways and place'),
('9780812975093', 70, 'The American Transcendentalists: Essential Writings', '1992-12-07', 11.75, 'Paperback', '', 640, '5.17 (w) x 7.99 (h) x 1.26 (d)', 'Transcendentalism was the first major intellectual movement in U.S. history, championing the inherent divinity of each individual, as well as the value of collective social action. In the mid-nineteenth century, the movement took off, changing how Am', 'Transcendentalism was the first major intellectual movement in U.S. history, championing the inherent divinity of each individual, as well as the value of collective social action. In the mid-nineteenth century, the movement took off, changing how Am'),
('9780813538624', 96, 'Bronx Accent: A Literary and Pictorial History of the Borough', '2011-12-24', 24.95, 'Paperback', 'Reprint', 330, '7.00 (w) x 9.90 (h) x 0.90 (d)', 'While The Bronx is presently undergoing a renaissance, a mention of this borough often conjures up Fort-Apache-the-Bronx images of urban blight and crime. Yet for the last three hundred years, and through all its various social and economic transform', 'While The Bronx is presently undergoing a renaissance, a mention of this borough often conjures up Fort-Apache-the-Bronx images of urban blight and crime. Yet for the last three hundred years, and through all its various social and economic transform'),
('9780814775721', 91, 'New York Stories: The Best of the City Section of the New York Times', '1992-12-28', 11.95, 'Paperback', '1st Edition', 303, '6.04 (w) x 9.04 (h) x 0.74 (d)', 'There are eight million stories in the Naked City. This famous line from the 1948 film <i>The Naked City</i> has become an emblem of New York City itself. One publication cultivating many of New York City\'s greatest stories is the City section in <i>', 'One publication cultivating many of New York City\'s greatest stories is the City section in The New York Times.<h3>Publishers Weekly</h3>The City section of the Sunday edition of the New York Times features vivid accounts of life, past and present, i'),
('9780820334318', 42, 'Black Nature', '2011-10-17', 14.87, 'Paperback', '', 432, '6.00 (w) x 8.90 (h) x 1.10 (d)', '<i>Black Nature</i> is the first anthology to focus on nature writing by African American poets, a genre that until now has not commonly been counted as one in which African American poets have participated.Black poets have a long tradition of incorp', '<i>Black Nature</i> is the first anthology to focus on nature writing by African American poets, a genre that until now has not commonly been counted as one in which African American poets have participated.Black poets have a long tradition of incorp'),
('9780822220558', 62, 'Touch', '2007-06-09', 7.2, 'Paperback', '', 51, '52.50 (w) x 75.00 (h) x 2.50 (', 'Kyle Kalke, an astronomer since childhood, a high school science nerd, falls in love with flamboyant, outspoken, openhearted Zoe, who—astonishingly—loves him back. When she is kidnapped and murdered, Kyle barricades himself by devoting himself more f', 'Kyle Kalke, an astronomer since childhood, a high school science nerd, falls in love with flamboyant, outspoken, openhearted Zoe, who astonishingly loves him back. When she is kidnapped and murdered, Kyle barricades himself by devoting himself more f'),
('9780896086265', 74, 'Loving in the War Years: Lo que nunca paso por sus labios', '2019-07-31', 16.28, 'Paperback', '2ND', 264, '5.30 (w) x 8.30 (h) x 0.50 (d)', 'Weaving together poetry and prose, Spanish and English, family history and political theory, <i>Loving in the War Years</i> has been a classic in the feminist and Chicano canon since its 1983 release. This new edition—including a new introduction and', 'A new edition of Moraga\'s seminal work on identity, sexuality, history, and the politics of Chicana feminism.'),
('9781400030934', 19, 'The Vintage Book of Contemporary American Poetry', '2017-02-16', 13.65, 'Paperback', 'Revised', 656, '5.20 (w) x 7.99 (h) x 1.16 (d)', 'Dazzling in its range, exhilarating in its immediacy and grace, this collection gathers together, from every region of the country and from the past forty years, the poems that continue to shape our imaginations. From Robert Lowell and Elizabeth Bish', 'Dazzling in its range, exhilarating in its immediacy and grace, this collection gathers together, from every region of the country and from the past forty years, the poems that continue to shape our imaginations. From Robert Lowell and Elizabeth Bish'),
('9781400077182', 19, 'Bordering Fires: The Vintage Book of Contemporary Mexican and Chicano/a Literature', '2016-08-01', 13.95, 'Paperback', '', 304, '5.25 (w) x 7.96 (h) x 0.66 (d)', 'As the descendants of Mexican immigrants have settled throughout the United States, a great literature has emerged, but its correspondances with the literature of Mexico have gone largely unobserved. In <i>Bordering Fires</i>, the first anthology to ', 'As the descendants of Mexican immigrants have settled throughout the United States, a great literature has emerged, but its correspondances with the literature of Mexico have gone largely unobserved. In <i>Bordering Fires</i>, the first anthology to '),
('9781423606994', 75, 'Don\'t Squat With Your Spurs On: A Cowboy\'s Guide to Life', '1990-10-05', 7.99, 'Paperback', 'Revised', 128, '4.20 (w) x 6.70 (h) x 0.50 (d)', 'If you find yourself in a hole, the first thing to do is stop digging.', 'Henry Ward Beecher said the common sense of one century is the common sense of the next. That said, these pocket-sized humor books pack quite a bit of punch-lines that is. With more than 1.5 million copies in print, their all-new look will leave a wh'),
('9781439181454', 7, 'The Best American Poetry 2010', '2017-11-01', 13.87, 'Paperback', '', 229, '5.40 (w) x 8.30 (h) x 0.70 (d)', 'AMY GERSTLER’S COMMITMENT TO INNOVATIVE POETRY that conveys meaning, feeling, wit, and humor informs the cross section of poems in the 2010 edition of <i>The Best American Poetry.</i> The works collected here represent the wealth, the breadth, and th', 'AMY GERSTLER&rsquo;S COMMITMENT TO INNOVATIVE POETRY that conveys meaning, feeling, wit, and humor informs the cross section of poems in the 2010 edition of <I>The Best American Poetry. </i>The works collected here represent the wealth, the breadth, '),
('9781557837493', 26, 'The Best American Short Plays 2007-2008', '1995-08-13', 18.99, 'Paperback', '', 100, '', '', 'Applause is proud to continue the series that for over 60 years has been the standard of excellence for one-act plays in America. Our editor Barbara Parisi has selected the following 14 plays&#58; A Roz by Any Other Name and Weird, by B. T. Ryback; B'),
('9781557837608', 26, 'The Best American Short Plays 2008-2009', '2001-09-16', 14.85, 'Paperback', '', 356, '5.50 (w) x 8.40 (h) x 1.10 (d)', 'This edition of the highly esteemed and long-enduring Best American Short Plays series contains fresh-voiced, cutting-edge plays by nineteen playwrights, both established and among the most promising of the new millennium. Each of these plays reflect', 'Applause is proud to continue the series that for over 70 years has been the standard of excellence for one-act plays in America. From its inception, The Best American Short Plays has identified new, cutting-edge playwrights who have gone on to estab');
INSERT INTO `book` (`isbn`, `publisher_id`, `title`, `publicationyear`, `price`, `format`, `edition`, `pages`, `dimensions`, `overview`, `synopsis`) VALUES
('9781558850033', 60, 'Luis Valdez - Early Works: Actos, Bernabe and Pensamiento Serpentino', '2018-05-29', 4.9, 'Hardcover', '1st Edition', 189, '4.88 (w) x 8.66 (h) x 0.50 (d)', 'Drama. EARLY WORKS: ACTOS, BERNABE AND PENSAMIENTO SERPENTINE is three books in one: 1) a collection of one act plays by Valdez and the famous farmworker theater, El Teatro Campesino, 2) one of the first fully realized, full-length plays by Valdez al', ''),
('9781560255505', 67, 'The Outlaw Bible of American Literature', '2018-12-03', 16.92, 'Paperback', 'First Trade Paper Edition', 920, '6.12 (w) x 9.00 (h) x 1.61 (d)', 'The Outlaw Bible of American Literature will serve as a primer for generational revolt and an enduring document of the visionary tradition of authenticity and nonconformity in literature. This exuberant manifesto includes lives of the writers, on-the', 'The Outlaw Bible of American Literature will serve as a primer for generational revolt and an enduring document of the visionary tradition of authenticity and nonconformity in literature. This exuberant manifesto includes lives of the writers, on-the'),
('9781571312693', 71, 'Transforming a Rape Culture', '2007-05-02', 15.13, 'Paperback', 'Revised', 424, '6.04 (w) x 9.02 (h) x 1.10 (d)', 'A rape culture is a society that accepts sexual violence as the norm. In this groundbreaking new work, a diverse group of opinions lays the foundation for change in basic attitudes about power, gender, race, and sexuality--for a future without sexual', 'Originally published in 1993, this pioneering anthology is a powerful polemic for fundamental cultural change&#58; the transformation of basic attitudes about power, gender, race, and sexuality. This edition adds new pieces on Internet pornography, t'),
('9781598530209', 32, 'American Earth: Environmental Writing Since Thoreau', '1990-04-15', 29.13, 'Hardcover', '', 900, '5.12 (w) x 8.18 (h) x 2.10 (d)', 'As America and the world grapple with the consequences of global environmental change, writer and activist Bill McKibben offers this unprecedented, provocative, and timely anthology, gathering the best and most significant American environmental writ', 'As America and the world grapple with the consequences of global environmental change, writer and activist Bill McKibben offers this unprecedented, provocative, and timely anthology, gathering the best and most significant American environmental writ'),
('9781598530216', 32, 'Writing New York: A Literary Anthology', '2016-01-01', 24.02, 'Paperback', 'Expanded', 1050, '6.06 (w) x 9.26 (h) x 1.57 (d)', '\'Few cities,\' writes Phillip Lopate in his introduction to this historic anthology, \'have inspired as much great writing as New York.\' Here Lopate and The Library of America present a sweeping literary portrait of the city as seen through the eyes of', '&ldquo;Few cities,&rdquo; writes Phillip Lopate in his introduction to this historic anthology, &ldquo;have inspired as much great writing as New York.&rdquo; Here Lopate and The Library of America present a sweeping literary portrait of the city as '),
('9781598530315', 32, 'True Crime: An American Anthology', '1997-01-02', 40, 'Hardcover', '', 900, '5.96 (w) x 10.92 (h) x 2.02 (d', 'Americans have had an uneasy fascination with crime since the earliest European settlements in the New World, and right from the start true crime writing became a dominant genre in American writing. <i>True Crime: An American Anthology</i> offers the', 'Americans have had an uneasy fascination with crime since the earliest European settlements in the New World, and right from the start true crime writing became a dominant genre in American writing. <i>True Crime&#58; An American Anthology</i> offers'),
('9781598530414', 32, 'American Food Writing: An Anthology with Classic Recipes', '1995-12-08', 24, 'Paperback', '', 100, '', '', 'Now in paperback, this groundbreaking anthology from celebrated food writer Molly O\'Neill is a history of America as told by our tastebuds. Here are classic accounts of iconic American foods&#58; Thoreau on the delights of watermelon; Melville, with '),
('9781598530698', 32, 'The American Stage: Writing on Theater from Washington Irving to Tony Kushner', '1991-01-15', 29.3, 'Hardcover', '', 850, '5.32 (w) x 8.14 (h) x 1.49 (d)', 'Here is the story, told firsthand through electric, deeply engaged writing, of America\'s living theater, high and low, mainstream and experimental. Drawing on history, criticism, memoir, fiction, poetry, and parody, editor Laurence Senelick presents ', 'Here is the story, told firsthand through electric, deeply engaged writing, of America\'s living theater, high and low, mainstream and experimental. Drawing on history, criticism, memoir, fiction, poetry, and parody, editor Laurence Senelick presents '),
('9781607886150', 4, 'The Daily Show with Jon Stewart Presents Earth (the Book): A Visitor\'s Guide to the Human Race', '1993-06-09', 24.98, 'Compact Disc', '', 100, '', '', 'The eagerly awaited new book from the Emmy-winning, Oscar-hosting, Daily Show-anchoring Jon Stewart&#151;the man behind the megaseller America (The Book). Where do we come from? Who created us? Why are we here? These questions have puzzled us since t'),
('9781615521647', 7, 'The Best American Poetry 2009', '2018-07-09', 19.95, 'Paperback', 'Bargain', 100, '', '', 'David Wagoner writes about regular lives with plain grace and transcendent humanity, and the seventy-five poems he has chosen for the 2009 edition of <i>The Best American Poetry</i> grapple with life, celebrate freedom, and teem with imaginative ener'),
('9781616823764', 49, 'The Hudson River Valley Reader', '2014-11-05', 19.95, 'Hardcover', 'Bargain', 100, '', '', '2009 marks the 400th Anniversary of the exploration of the Hudson River and it\'s valley, which was first discovered by Henry Hudson in 1609 while about the ship Half Moon. This literary anthology covers the history and literary heritage of the valley'),
('9781616836863', 3, 'The Best American Essays 2009', '2003-11-06', 19.95, 'Paperback', 'Bargain', 100, '', '', 'Edited by award-winning poet and essayist Mary Oliver, the latest edition of this rich and thoughtful collection (<i>Publishers Weekly</i>) offers the finest essays judiciously selected from countless publications (<i>Chicago Tribune</i>).'),
('9781881847083', 89, 'Finding Freedom: Writings from Death Row', '1999-05-22', 11.23, 'Paperback', '', 179, '5.49 (w) x 8.53 (h) x 0.64 (d)', '', ''),
('9781931082099', 32, 'Baseball: A Literary Anthology', '1996-09-08', 25.31, 'Hardcover', '1', 721, '6.28 (w) x 9.43 (h) x 1.59 (d)', 'Robert Frost never felt more at home in America than when watching baseball be it in park or sand lot. Full of heroism and heartbreak, the most beloved of American sports is also the most poetic, and writers have been drawn to this sport as to no oth', 'Robert Frost never felt more at home than when watching baseball, be it in park or sand lot. Full of heroism and heartbreak, the most beloved of American sports is also the most poetic, and writers have been drawn to this sports as no other. With <i>'),
('9781934633946', 68, 'Mother California: A Story of Redemption Behind Bars', '1999-08-31', 14, 'Paperback', '', 100, '', '', 'A magnificent inquiry into the human condition.&mdash;Publishers Weekly, starred review<h3>Publishers Weekly</h3>Starred Review. In this memoir, a magnificent inquiry into the human condition, a man serving a life sentence in the California prison sy');

-- --------------------------------------------------------

--
-- Structure de la table `bookauthor`
--

CREATE TABLE `bookauthor` (
  `book_isbn` char(13) NOT NULL,
  `author_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bookauthor`
--

INSERT INTO `bookauthor` (`book_isbn`, `author_id`) VALUES
('9780435910105', 2),
('9780446579223', 3),
('9781607886150', 3),
('9780547241609', 4),
('9780547241630', 4),
('9780547241630', 5),
('9780307268341', 6),
('9780486285535', 6),
('9781560255505', 6),
('9780393927399', 7),
('9780393930573', 7),
('9780806639628', 7),
('9780393927399', 8),
('9780393927429', 8),
('9780393929942', 8),
('9780393930573', 8),
('9781560255505', 8),
('9780393927429', 9),
('9780393929942', 9),
('9780393930573', 9),
('9780393927399', 10),
('9780393927429', 10),
('9780393929942', 10),
('9780393930573', 10),
('9780451527820', 10),
('9781931082099', 10),
('9780393927399', 11),
('9780393927429', 11),
('9780393930573', 11),
('9780743299770', 12),
('9781615521647', 12),
('9780743299770', 13),
('9781439181454', 13),
('9781557837493', 13),
('9781615521647', 13),
('9780195092622', 14),
('9780618155873', 14),
('9780618982721', 15),
('9781598530698', 15),
('9781616836863', 15),
('9780618155873', 16),
('9780618982721', 16),
('9781423606994', 16),
('9781616836863', 16),
('9780393929942', 17),
('9780077239046', 18),
('9780205779390', 18),
('9780393929942', 18),
('9780486296043', 19),
('9780609808405', 19),
('9780060595371', 20),
('9780061626395', 20),
('9780205779390', 20),
('9781598530414', 20),
('9780060595371', 21),
('9780547201948', 21),
('9780060595371', 22),
('9780060595371', 23),
('9780375761270', 23),
('9780393316988', 23),
('9780060595371', 24),
('9780205779390', 25),
('9780393979206', 25),
('9780393979213', 25),
('9780393979206', 26),
('9780393979213', 26),
('9780618197330', 26),
('9780393979206', 27),
('9780393979213', 27),
('9781439181454', 28),
('9780393977783', 29),
('9780451528247', 29),
('9780618751181', 29),
('9780451528247', 30),
('9780451528247', 31),
('9780451528247', 32),
('9780609808405', 32),
('9780679767992', 32),
('9780451528247', 33),
('9780547241609', 34),
('9780393326659', 35),
('9780060927639', 36),
('9780061174070', 36),
('9780375761270', 36),
('9780393326659', 36),
('9780385000192', 37),
('9781400077182', 37),
('9780385000192', 38),
('9780321113412', 39),
('9780385000192', 39),
('9780393927399', 40),
('9780393927429', 40),
('9781881847083', 40),
('9780205779390', 41),
('9780393977783', 41),
('9780813538624', 41),
('9781571312693', 41),
('9780312463199', 42),
('9780321113412', 43),
('9780393061819', 43),
('9780393061819', 44),
('9780321113412', 45),
('9780393061819', 45),
('9780142001943', 46),
('9780142437537', 46),
('9780521540285', 46),
('9780449905081', 47),
('9781557837608', 47),
('9780231080286', 48),
('9780425234280', 48),
('9780425234280', 49),
('9780813538624', 49),
('9780896086265', 49),
('9780425234280', 50),
('9780077239046', 51),
('9780393316988', 51),
('9780425234280', 51),
('9780618751181', 51),
('9781598530698', 51),
('9780425234280', 52),
('9780393316988', 53),
('9780609808405', 53),
('9781400030934', 53),
('9780205655106', 54),
('9780061626395', 55),
('9780375415043', 56),
('9780806639628', 56),
('9781598530209', 56),
('9780486294506', 57),
('9780547201948', 57),
('9781598530209', 57),
('9780060540425', 58),
('9781881847083', 58),
('9781934633946', 58),
('9780061728945', 59),
('9780547201948', 59),
('9780132216470', 60),
('9780205763108', 60),
('9780205763108', 61),
('9780684823072', 61),
('9780812975093', 61),
('9780132216470', 62),
('9780205763108', 62),
('9780684823072', 62),
('9780205763108', 63),
('9781571312693', 63),
('9780205763108', 64),
('9780547201948', 64),
('9780684823072', 64),
('9780547201801', 65),
('9780547201801', 66),
('9780822220558', 66),
('9781571312693', 66),
('9780547201801', 67),
('9780547201801', 68),
('9780547201801', 69),
('9780140170368', 70),
('9780547201948', 70),
('9780140170368', 71),
('9780684823072', 71),
('9781571312693', 71),
('9781598530315', 71),
('9780321484895', 72),
('9780684823072', 72);

-- --------------------------------------------------------

--
-- Structure de la table `bookgenre`
--

CREATE TABLE `bookgenre` (
  `book_isbn` char(13) NOT NULL,
  `genre_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bookgenre`
--

INSERT INTO `bookgenre` (`book_isbn`, `genre_id`) VALUES
('9780060540425', 1),
('9780393930573', 1),
('9780393979206', 1),
('9780618155873', 1),
('9780618197330', 1),
('9780812975093', 1),
('9780822220558', 1),
('9781557837493', 1),
('9780060540425', 2),
('9780060595371', 2),
('9780060882501', 2),
('9780077239046', 2),
('9780205763108', 2),
('9780205779390', 2),
('9780321012692', 2),
('9780321484895', 2),
('9780375415043', 2),
('9780486272849', 2),
('9780618197354', 2),
('9780618982721', 2),
('9780060540425', 3),
('9780321484895', 3),
('9780393316988', 3),
('9780435910105', 3),
('9780486285535', 3),
('9780521540285', 3),
('9780684823072', 3),
('9780822220558', 3),
('9780060540425', 4),
('9780393336450', 4),
('9780395765289', 4),
('9781400077182', 4),
('9780060540425', 5),
('9780385000192', 5),
('9780393930146', 5),
('9780449905081', 5),
('9780486271651', 5),
('9780679767992', 5),
('9780896086265', 5),
('9781931082099', 5),
('9780060540425', 6),
('9780393979206', 6),
('9780395765289', 6),
('9780486294506', 6),
('9780806639628', 6),
('9780822220558', 6),
('9780060595371', 7),
('9780393061819', 7),
('9780393927399', 7),
('9780435910105', 7),
('9780449905081', 7),
('9781439181454', 7),
('9781598530414', 7),
('9780060595371', 8),
('9780618751181', 8),
('9780684823072', 8),
('9781423606994', 8),
('9780060882501', 9),
('9780061728945', 9),
('9780393979206', 9),
('9781439181454', 9),
('9780060882501', 10),
('9780385000192', 10),
('9780393326659', 10),
('9780393927429', 10),
('9780451528247', 10),
('9780641974120', 10),
('9781598530209', 10),
('9781616823764', 10),
('9780060927639', 11),
('9780393326659', 11),
('9780451529152', 11),
('9780486272849', 11),
('9780547241609', 11),
('9780609808405', 11),
('9780618155873', 11),
('9780689808692', 11),
('9781439181454', 11),
('9781557837493', 11),
('9781571312693', 11),
('9780060927639', 12),
('9780395765289', 12),
('9780449905081', 12),
('9780679767992', 12),
('9781934633946', 12),
('9780061174070', 13),
('9780393061819', 13),
('9780393326659', 13),
('9780446579223', 13),
('9781598530216', 13),
('9781934633946', 13),
('9780061174070', 14),
('9780486272849', 14),
('9780486294506', 14),
('9780486296043', 14),
('9780806639628', 14),
('9781400030934', 14),
('9781598530209', 14),
('9781931082099', 14),
('9780061626395', 15),
('9780393979213', 15),
('9780689808692', 15),
('9780820334318', 15),
('9781423606994', 15),
('9781598530209', 15),
('9781598530414', 15),
('9780061626395', 16),
('9780385000192', 16),
('9780425234280', 16),
('9780486271651', 16),
('9780547241630', 16),
('9780813538624', 16),
('9781557837608', 16),
('9781571312693', 16),
('9781931082099', 16),
('9780061626395', 17),
('9780375415043', 17),
('9780385000192', 17),
('9780393061819', 17),
('9780425234280', 17),
('9780486271651', 17),
('9780618197354', 17),
('9780618751181', 17),
('9780618982721', 17),
('9781557837608', 17),
('9780061728945', 18),
('9780195092622', 18),
('9780312474911', 18),
('9780393326659', 18),
('9780547241609', 18),
('9780743299770', 18),
('9780813538624', 18),
('9781598530698', 18),
('9780132216470', 19),
('9780142437537', 19),
('9780205655106', 19),
('9780393979213', 19),
('9780486294506', 19),
('9780521540285', 19),
('9780814775721', 19),
('9780140170368', 20),
('9780547201948', 20),
('9780820334318', 20),
('9781558850033', 20),
('9781598530315', 20),
('9780140170368', 21),
('9780375415043', 21),
('9780393979213', 21),
('9780609808405', 21),
('9780814775721', 21),
('9780822220558', 21),
('9781598530216', 21),
('9781598530315', 21),
('9781607886150', 21),
('9780140170368', 22),
('9780486294506', 22),
('9780547201801', 22),
('9780814775721', 22),
('9780896086265', 22),
('9781560255505', 22),
('9780142001943', 23),
('9780451527820', 23),
('9780486296043', 23),
('9780521540285', 23),
('9780814775721', 23),
('9780142001943', 24),
('9780393336450', 24),
('9780486272849', 24),
('9780486296043', 24),
('9781400077182', 24),
('9781571312693', 24),
('9781598530698', 24),
('9781616836863', 24),
('9780142437537', 25),
('9780375761270', 25),
('9780393336450', 25),
('9780451529152', 25),
('9780743299770', 25),
('9781400030934', 25),
('9781881847083', 25),
('9780195092622', 26),
('9780393929942', 26),
('9780393979213', 26),
('9780618197330', 26),
('9780689808692', 26),
('9780896086265', 26),
('9781571312693', 26),
('9780231080286', 27),
('9780307268341', 27),
('9780312463199', 27),
('9780393979206', 27),
('9780451529633', 27),
('9780521540285', 27),
('9780609808405', 27),
('9780743299770', 27),
('9781598530698', 27),
('9781881847083', 27),
('9780231080286', 28),
('9780307268341', 28),
('9780312463199', 28),
('9780451528247', 28),
('9780486272849', 28),
('9780813538624', 28),
('9780820334318', 28),
('9781557837608', 28),
('9780231080286', 29),
('9780307268341', 29),
('9780312463199', 29),
('9780393316988', 29),
('9780451528247', 29),
('9780618197330', 29),
('9780618197354', 29),
('9780679767992', 29),
('9780684823072', 29),
('9780231080286', 30),
('9780312463199', 30),
('9780425234280', 30),
('9780684823072', 30),
('9780231080286', 31),
('9780312463199', 31),
('9780449905081', 31),
('9780547241630', 31),
('9780307268341', 32),
('9780375415043', 32),
('9780393930146', 32),
('9780486296043', 32),
('9780618197354', 32),
('9780806639628', 32),
('9780820334318', 32),
('9780312474911', 33),
('9780393977783', 33),
('9780451528247', 33),
('9780618197330', 33),
('9781615521647', 33),
('9780321113412', 34);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `orderdate` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`id`, `customer_id`, `orderdate`) VALUES
(1, 1, '2021-01-04 08:33:17'),
(2, 1, '2021-01-14 08:33:17'),
(3, 2, '2021-01-17 08:33:32'),
(4, 1, '2021-02-08 10:30:40'),
(5, 1, '2021-02-08 10:30:40'),
(6, 1, '2021-02-08 10:30:40'),
(7, 1, '2021-02-18 10:30:40');

-- --------------------------------------------------------

--
-- Structure de la table `commanddetail`
--

CREATE TABLE `commanddetail` (
  `id` int NOT NULL,
  `command_id` int NOT NULL,
  `book_isbn` char(13) NOT NULL,
  `unitprice` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `quantity` int NOT NULL DEFAULT '1',
  `discount` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commanddetail`
--

INSERT INTO `commanddetail` (`id`, `command_id`, `book_isbn`, `unitprice`, `quantity`, `discount`) VALUES
(1, 1, '9780205655106', '9.0000', 2, 0),
(2, 1, '9780312474911', '7.0000', 5, 0),
(5, 2, '9780393930146', '34.0000', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `lname` varchar(40) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `roles` varchar(60) NOT NULL DEFAULT 'ROLE_USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `lname`, `fname`, `mail`, `address`, `city`, `country`, `password`, `roles`) VALUES
(1, 'DURAND', 'Paul', 'paul.durand@fictif.com', 'une adresse', 'Montpellier', 'FRANCE', 'abcd4ABCD', 'ROLE_USER'),
(2, 'TRAN', 'Laura', 'laura.tran@fictif.com', 'une adresse', 'Toulouse', 'FRANCE', 'abcd4ABCD', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Poetry'),
(2, 'American Literature Anthologies'),
(3, 'Anthologies'),
(4, 'English'),
(5, 'Irish'),
(6, '& Scottish Poetry'),
(7, 'Penology & Correctional Studies'),
(8, 'True Crime'),
(9, 'Humor'),
(10, 'General Reference'),
(11, 'Historical Biography - United States - General & Miscellaneous'),
(12, 'U.S. Authors - 20th Century - Litera'),
(13, 'Health &amp; Fitness'),
(14, 'Women\'s Health'),
(15, 'Penology & Correctional Studies - General & Miscellaneous'),
(16, 'Prisons & Prison Life'),
(17, 'American Literatur'),
(18, 'General'),
(19, 'Literary Collections'),
(20, 'Places - Literary Anthologies'),
(21, 'Regional American Anthologies'),
(22, 'Peoples & Cultures - American Antholog'),
(23, 'American Fiction & Literature Classics'),
(24, 'Post-World War II American History - General & Miscellaneous'),
(25, 'American'),
(26, 'Biographies &amp; Autobiographies'),
(27, 'Poetry Anthologies'),
(28, 'American Poetry'),
(29, 'English Poetry'),
(30, 'English & Irish Literature Anthologies'),
(31, 'America'),
(32, 'Literature Anthologies - General & Miscellaneou'),
(33, 'Language Arts &amp; Disciplines'),
(34, 'Peoples & Cultures - American Anthologies');

-- --------------------------------------------------------

--
-- Structure de la table `publisher`
--

CREATE TABLE `publisher` (
  `id` int NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `mail` varchar(100) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `mail`, `city`, `state`, `country`) VALUES
(1, 'Heinemann', 'fictif@gmail.com', 'city', 'st', 'GERMANY'),
(2, 'Grand Central Publishing', 'fictif@gmail.com', 'city', 'st', 'USA'),
(3, 'Houghton Mifflin Harcourt', 'fictif@gmail.com', 'city', 'st', 'USA'),
(4, 'Hachette Audio', 'fictif@gmail.com', 'city', 'st', 'FR'),
(5, 'Dover Publications', 'fictif@gmail.com', 'city', 'st', 'USA'),
(6, 'Norton, W. W. & Company, Inc.', 'fictif@gmail.com', 'city', 'st', 'USA'),
(7, 'Simon & Schuster Adult Publishing Group', 'fictif@gmail.com', 'city', 'st', 'USA'),
(8, 'Oxford University Press, USA', 'fictif@gmail.com', 'city', 'st', 'USA'),
(12, 'HarperCollins Publishers', 'fictif@gmail.com', 'city', 'st', 'USA'),
(15, 'Penguin Group (USA)', 'fictif@gmail.com', 'city', 'st', 'USA'),
(19, 'Knopf Doubleday Publishing Group', 'fictif@gmail.com', 'city', 'st', 'USA'),
(23, 'Bedford/St. Martin\'s', 'fictif@gmail.com', 'city', 'st', 'USA'),
(26, 'Applause Theatre Book Publishers', 'fictif@gmail.com', 'city', 'st', 'USA'),
(28, 'Paperback', 'fictif@gmail.com', 'city', 'st', 'USA'),
(30, 'Longman', 'fictif@gmail.com', 'city', 'st', 'USA'),
(32, 'Library of America', 'fictif@gmail.com', 'city', 'st', 'USA'),
(35, 'Prentice Hall', 'fictif@gmail.com', 'city', 'st', 'USA'),
(36, 'Cengage Learning', 'fictif@gmail.com', 'city', 'st', 'USA'),
(42, 'University of Georgia Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(45, ' Rosencrantz and Guildenstern are Dead', 'fictif@gmail.com', 'city', 'st', 'USA'),
(49, 'Cider Mill Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(52, 'Simon & Schuster Children\'s Publishing', 'fictif@gmail.com', 'city', 'st', 'USA'),
(57, 'Houghton Mifflin Company', 'fictif@gmail.com', 'city', 'st', 'USA'),
(60, 'Arte Publico Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(61, 'Cambridge University Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(62, 'Dramatists Play Service, Incorporated', 'fictif@gmail.com', 'city', 'st', 'USA'),
(63, 'McGraw-Hill Companies, The', 'fictif@gmail.com', 'city', 'st', 'USA'),
(66, 'Crown Publishing Group', 'fictif@gmail.com', 'city', 'st', 'USA'),
(67, 'Basic Books', 'fictif@gmail.com', 'city', 'st', 'USA'),
(68, 'Atlas & Co.', 'fictif@gmail.com', 'city', 'st', 'USA'),
(70, 'Random House Publishing Group', 'fictif@gmail.com', 'city', 'st', 'USA'),
(71, 'Milkweed Editions', 'fictif@gmail.com', 'city', 'st', 'USA'),
(74, 'South End Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(75, 'Smith, Gibbs Publisher', 'fictif@gmail.com', 'city', 'st', 'USA'),
(76, 'Augsburg Fortress, Publishers', 'fictif@gmail.com', 'city', 'st', 'USA'),
(78, 'Columbia University Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(89, 'Padma Publishing', 'fictif@gmail.com', 'city', 'st', 'USA'),
(91, 'New York University Press', 'fictif@gmail.com', 'city', 'st', 'USA'),
(96, 'Rivergate Books', 'fictif@gmail.com', 'city', 'st', 'USA');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Index pour la table `bookauthor`
--
ALTER TABLE `bookauthor`
  ADD PRIMARY KEY (`book_isbn`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Index pour la table `bookgenre`
--
ALTER TABLE `bookgenre`
  ADD PRIMARY KEY (`book_isbn`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Index pour la table `commanddetail`
--
ALTER TABLE `commanddetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_isbn` (`book_isbn`),
  ADD KEY `command_id` (`command_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `command`
--
ALTER TABLE `command`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commanddetail`
--
ALTER TABLE `commanddetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `bookauthor`
--
ALTER TABLE `bookauthor`
  ADD CONSTRAINT `bookauthor_ibfk_1` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`isbn`),
  ADD CONSTRAINT `bookauthor_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`);

--
-- Contraintes pour la table `bookgenre`
--
ALTER TABLE `bookgenre`
  ADD CONSTRAINT `bookgenre_ibfk_1` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`isbn`),
  ADD CONSTRAINT `bookgenre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `command_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `commanddetail`
--
ALTER TABLE `commanddetail`
  ADD CONSTRAINT `commanddetail_ibfk_1` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`isbn`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `commanddetail_ibfk_2` FOREIGN KEY (`command_id`) REFERENCES `command` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
