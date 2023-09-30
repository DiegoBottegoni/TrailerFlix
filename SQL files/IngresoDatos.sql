use trailerflix;

-- Insertar datos en la tabla "categorias"
INSERT INTO categorias (id, nombre) VALUES
(1, 'Serie'),
(2, 'Película');

-- Insertar datos en la tabla 'Catalogo'
INSERT INTO Catalogo (id, poster, titulo, idCategoria, resumen, temporadas, trailer)
VALUES
(1, '/posters/1.jpg', 'The Crown', 1, 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 4, NULL),
(2, '/posters/2.jpg', 'Riverdale', 1, 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 5, NULL),
(3, '/posters/3.jpg', 'The Mandalorian', 1, 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.', 2, 'https://www.youtube.com/embed/aOC8E8z_ifw'),
(4, '/posters/4.jpg', 'The Umbrella Academy', 1, 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 1, 'https://www.youtube.com/embed/aOC8E8z_ifw'),
(5, '/posters/5.jpg', 'Gambito de Dama', 1, 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 1, NULL),
(6, '/posters/6.jpg', 'Enola Holmes', 2, 'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.', NULL, NULL),
(7, '/posters/7.jpg', 'Guasón', 2, 'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.', NULL, 'https://www.youtube.com/embed/zAGVQLHvwOY'),
(8, '/posters/8.jpg', 'Avengers: End Game', 2, 'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', NULL, NULL),
(9, '/posters/9.jpg', 'Juego de tronos', 1, 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 8, NULL),
(10, '/posters/10.jpg', 'The Flash', 1, 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.', 6, NULL),
(11, '/posters/11.jpg', 'The Big Bang Theory', 1, 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 12, 'https://www.youtube.com/embed/WBb3fojgW0Q'),
(12, '/posters/12.jpg', 'Friends', 1, "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.", 10, NULL),
(13, '/posters/13.jpg', 'Anne with an \'E\'', 1, 'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.', 2, NULL),
(14, '/posters/14.jpg', 'Expedientes Secretos \'X\'', 1, 'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'', 11, 'https://www.youtube.com/embed/KKziOmsJxzE'),
(15, '/posters/15.jpg', 'Chernobyl', 1, 'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.', 1, 'https://www.youtube.com/embed/s9APLXM9Ei8'),
(16, '/posters/16.jpg', 'Westworld', 1, "'Westworld' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.", 3, 'https://www.youtube.com/embed/qLFBcdd6Qw0'),
(17, '/posters/17.jpg', 'Halt and Catch Fire', 1, 'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).', 4, 'https://www.youtube.com/embed/pWrioRji60A'),
(18, '/posters/18.jpg', 'Ava', 2, 'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.', NULL, NULL),
(19, '/posters/19.jpg', 'Aves de presa y la fantabulosa emancipación de una Harley Quinn', 2, 'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.', NULL, NULL),
(20, '/posters/20.jpg', 'Archivo', 2, '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.', NULL, 'https://www.youtube.com/embed/VHSoCnDioAo'),
(21, '/posters/21.jpg', 'Jumanji - The Next Level', 2, 'Las aventuras continúan en el fantástico mundo del videojuego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?', NULL, 'https://www.youtube.com/embed/rBxcF-r9Ibs'),
(22, '/posters/22.jpg', '3022', 2, 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forwards.', NULL, 'https://www.youtube.com/embed/AGQ7OkmIx4Q'),
(23, '/posters/23.jpg', 'IT - Capítulo 2', 2, 'En este segundo capitulo Han pasado 27 años desde que el "Club de los Perdedores", formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.', NULL, 'https://www.youtube.com/embed/hZeFeYSmBcg'),
(24, '/posters/24.jpg', 'Pantera Negra', 2, 'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.', NULL, 'https://www.youtube.com/embed/BE6inv8Xh4A'),
(25, '/posters/25.jpg', 'Contra lo imposible (Ford versus Ferrari)', 2, 'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.', NULL, 'https://www.youtube.com/embed/SOVb0-2g1Q0'),
(26, '/posters/26.jpg', 'Centígrados', 2, 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.', NULL, NULL),
(27, '/posters/27.jpg', 'DOOM: Aniquilación', 2, 'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.', NULL, 'https://www.youtube.com/embed/nat3u3gAVLE'),
(28, '/posters/28.jpg', 'Contagio', 2, 'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.', NULL, 'https://www.youtube.com/embed/4sYSyuuLk5g'),
(29, '/posters/29.jpg', 'Viuda Negra', 2, 'Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.', NULL, 'https://www.youtube.com/embed/BIn8iANwEog'),
(30, '/posters/30.jpg', 'The Martian', 2, 'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.', NULL, 'https://www.youtube.com/embed/XvB58bCVfng'),
(31, '/posters/31.jpg', 'Ex-Machina', 2, 'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.', NULL, 'https://www.youtube.com/embed/XRYL5spvEcI'),
(32, '/posters/32.jpg', 'Jurassic World', 2, 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic World, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.', NULL, NULL),
(33, '/posters/33.jpg', 'Soy leyenda', 2, 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.', NULL, 'https://www.youtube.com/embed/dtKMEAXyPkg'),
(34, '/posters/34.jpg', 'El primer hombre en la luna', 2, 'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.', NULL, NULL),
(35, '/posters/35.jpg', 'Titanes del Pacífico - La Insurrección', 2, 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.', NULL, NULL);

-- Insertar datos en la tabla "genero"
INSERT INTO genero (id, nombre)
VALUES (1, 'Ciencia Ficción'),
(2, 'Fantasía'),
(3, 'Drama'),
(4, 'Ficción'),
(5, 'Sucesos'),
(6, 'Misterio'),
(7, 'Hechos verídicos'),
(8, 'Comedia'),
(9, 'Familia'),
(10, 'Western'),
(11, 'Tecnología'),
(12, 'Acción'),
(13, 'Aventura'),
(14, 'Crimen'),
(15, 'Suspenso'),
(16, 'Terror'),
(17, 'Acción'),
(18, 'Intriga');

-- Insertar datos en la tabla "actricesyactores"
INSERT INTO actricesyactores (id, nombre) VALUES
(1, 'Pedro Pascal'),
(2, 'Carl Weathers'),
(3, 'Misty Rosas'),
(4, 'Chris Bartlett'),
(5, 'Rio Hackford'),
(6, 'Giancarlo Esposito'),
(7, 'Tom Hopper'),
(8, 'David Castañeda'),
(9, 'Emmy Raver-Lampman'),
(10, 'Robert Sheehan'),
(11, 'Aidan Gallagher'),
(12, 'Elliot Page'),
(13, 'Anya Taylor-Joy'),
(14, 'Thomas Brodie-Sangster'),
(15, 'Harry Melling'),
(16, 'Moses Ingram'),
(17, 'Chloe Pirrie'),
(18, 'Janina Elkin'),
(19, 'Lili Reinhart'),
(20, 'Casey Cott'),
(21, 'Camila Mendes'),
(22, 'Marisol Nichols'),
(23, 'Madelaine Petsch'),
(24, 'Mädchen Amick'),
(25, 'Claire Fox'),
(26, 'Olivia Colman'),
(27, 'Matt Smith'),
(28, 'Tobias Menzies'),
(29, 'Vanesa Kirby'),
(30, 'Helena Bonham Carter'),
(31, 'Millie Bobby Brown'),
(32, 'Henry Cavill'),
(33, 'Sam Claflin'),
(34, 'Louis Partridge'),
(35, 'Adeel Akhtar'),
(36, 'Joaquin Phoenix'),
(37, 'Robert De Niro'),
(38, 'Zazie Beetz'),
(39, 'Frances Conroy'),
(40, 'Brett Cullen'),
(41, 'Shea Whigham'),
(42, 'Robert Downey Jr.'),
(43, 'Chris Evans'),
(44, 'Mark Ruffalo'),
(45, 'Chris Hemsworth'),
(46, 'Scarlett Johansson'),
(47, 'Jeremy Renner'),
(48, 'Emilia Clarke'),
(49, 'Lena Headey'),
(50, 'Sophie Turner'),
(51, 'Kit Harington'),
(52, 'Peter Dinklage'),
(53, 'Nikolaj Coster-Waldau'),
(54, 'Grant Gustin'),
(55, 'Carlos Valdes'),
(56, 'Danielle Panabaker'),
(57, 'Candice Patton'),
(58, 'Jesse L. Martin'),
(59, 'Tom Cavanagh'),
(60, 'Jim Parsons'),
(61, 'Johnny Galecki'),
(62, 'Kaley Cuoco'),
(63, 'Simon Helberg'),
(64, 'Kunal Nayyar'),
(65, 'Melissa Rauch'),
(66, 'Mayim Bialik'),
(67, 'Jennifer Aniston'),
(68, 'Courteney Cox'),
(69, 'Lisa Kudrow'),
(70, 'David Schwimmer'),
(71, 'Matthew Perry'),
(72, 'Matt LeBlanc'),
(73, 'Amybeth McNulty'),
(74, 'Geraldine James'),
(75, 'R. H. Thomson'),
(76, 'Corrine Koslo'),
(77, 'Dalila Bela'),
(78, 'Lucas Jade Zumann'),
(79, 'Gillian Anderson'),
(80, 'David Duchovny'),
(81, 'Mitch Pileggi'),
(82, 'Robert Patrick'),
(83, 'Tom Braidwood'),
(84, 'Bruce Harwood'),
(85, 'Jared Harris'),
(86, 'Stellan Skarsgård'),
(87, 'Emily Watson'),
(88, 'Paul Ritter'),
(89, 'Jessie Buckley'),
(90, 'Adam Nagaitis'),
(91, 'Evan Rachel Wood'),
(92, 'Thandie Newton'),
(93, 'Jeffrey Wright'),
(94, 'Tessa Thompson'),
(95, 'Ed Harris'),
(96, 'Luke Hemsworth'),
(97, 'Lee Pace'),
(98, 'Scoot McNairy'),
(99, 'Mackenzie Davis'),
(100, 'Kerry Bishé'),
(101, 'Toby Huss'),
(102, 'Alana Cavanaugh'),
(103, 'Jessica Chastain'),
(104, 'John Malkovich'),
(105, 'Colin Farrell'),
(106, 'Common'),
(107, 'Geena Davis'),
(108, 'Ioan Gruffudd'),
(109, 'Margot Robbie'),
(110, 'Ewan McGregor'),
(111, 'Mary Elizabeth Winstead'),
(112, 'Jurnee Smollett'),
(113, 'Rosie Perez'),
(114, 'Chris Messina'),
(115, 'Stacy Martin'),
(116, 'Rhona Mitra'),
(117, 'Theo James'),
(118, 'Peter Ferdinando'),
(119, 'Lia Williams'),
(120, 'Toby Jones'),
(121, 'Dwayne Johnson'),
(122, 'Kevin Hart'),
(123, 'Jack Black'),
(124, 'Karen Gillan'),
(125, 'Awkwafina'),
(126, 'Nick Jonas'),
(127, 'Miranda Cosgrove'),
(128, 'Kate Walsh'),
(129, 'Omar Epps'),
(130, 'Angus Macfadyen'),
(131, 'Jorja Fox'),
(132, 'Enver Gjokaj'),
(133, 'Bill Skarsgård'),
(134, 'James McAvoy'),
(135, 'Isaiah Mustafa'),
(136, 'Jay Ryan'),
(137, 'Chadwick Boseman'),
(138, 'Michael B. Jordan'),
(139, 'Lupita Nyong o'),
(140, 'Danai Gurira'),
(141, 'Martin Freeman'),
(142, 'Daniel Kaluuya'),
(143, 'Christian Bale'),
(144, 'Matt Damon'),
(145, 'Caitriona Balfe'),
(146, 'Josh Lucas'),
(147, 'Noah Jupe'),
(148, 'Jon Bernthal'),
(149, 'Génesis Rodríguez'),
(150, 'Vincent Piazza'),
(151, 'Benjamin Sokolow'),
(152, 'Emily Bayiokos'),
(153, 'Amy Manson'),
(154, 'Luke Allen-Gale'),
(155, 'Nina Bergman'),
(156, 'Dominic Mafham'),
(157, 'James Weber Brown'),
(158, 'Lorina Kamburova'),
(159, 'Marion Cotillard'),
(160, 'Matt Damon'),
(161, 'Laurence Fishburne'),
(162, 'Jude Law'),
(163, 'Kate Winslet'),
(164, 'Jennifer Ehle'),
(165, 'Gwyneth Paltrow'),
(166, 'Scarlett Johansson'),
(167, 'Florence Pugh'),
(168, 'David Harbour'),
(169, 'O.T. Fagbenle'),
(170, 'Rachel Weisz'),
(171, 'William Hurt'),
(172, 'Ray Winstone'),
(173, 'Kristen Wiig'),
(174, 'Bill Hader'),
(175, 'Jeff Daniels'),
(176, 'Michael Peña'),
(177, 'Sean Bean'),
(178, 'Kate Mara'),
(179, 'Alicia Vikander'),
(180, 'Domhnall Gleeson'),
(181, 'Oscar Isaac'),
(182, 'Sonoya Mizuno'),
(183, 'Corey Johnson'),
(184, 'Claire Selby'),
(185, 'Gana Bayarsaikhan'),
(186, 'Bryce Dallas Howard'),
(187, 'Chris Pratt'),
(188, 'Irrfan Khan'),
(189, 'Vincent D Onofrio'),
(190, 'Omar Sy'),
(191, 'Nick Robinson'),
(192, 'Judy Greer'),
(193, 'Will Smith'),
(194, 'Alice Braga'),
(195, 'Charlie Tahan'),
(196, 'Dash Mihok'),
(197, 'Salli Richardson-Whitfield'),
(198, 'Willow Smith'),
(199, 'Emma Thompson'),
(200, 'John Boyega'),
(201, 'Scott Eastwood'),
(202, 'Cailee Spaeny'),
(203, 'Jing Tian'),
(204, 'Rinko Kikuchi'),
(205, 'Burn Gorman'),
(206, 'Ryan Gosling'),
(207, 'Claire Foy'),
(208, 'Jason Clarke'),
(209, 'Kyle Chandler'),
(210, 'Corey Stoll'),
(211, 'Patrick Fugit');


-- Insertar datos en la tabla "catalogoGenero"
INSERT INTO catalogoGenero (idCatalogo, idGenero) VALUES
(3, 1),   -- Ciencia Ficción
(3, 2),   -- Fantasía
(4, 1),   -- Ciencia Ficción
(4, 2),   -- Fantasía
(5, 3),   -- Drama
(5, 4),   -- Ficción
(5, 5),   -- Sucesos
(6, 3),   -- Drama
(6, 6),   -- Misterio
(6, 4),   -- Ficción
(7, 3),   -- Drama
(7, 7),   -- Hechos verídicos
(8, 10),  -- Aventura
(8, 1),   -- Ciencia Ficción
(8, 12),  -- Acción
(9, 10),  -- Aventura
(9, 2),   -- Fantasía
(9, 3),   -- Drama
(10, 1),  -- Ciencia Ficción
(11, 11), -- Tecnología
(11, 8),  -- Comedia
(11, 2),  -- Fantasía
(12, 8),  -- Comedia
(12, 9),  -- Familia
(12, 3),  -- Drama
(13, 3),  -- Drama
(13, 9),  -- Familia
(13, 10), -- Aventura
(13, 6),  -- Misterio
(14, 3),  -- Drama
(14, 1),  -- Ciencia Ficción
(15, 3),  -- Drama
(15, 7),  -- Hechos verídicos
(16, 9),  -- Familia
(16, 3),  -- Drama
(16, 6),  -- Misterio
(17, 4),  -- Ficción
(17, 3),  -- Drama
(17, 11), -- Tecnología
(18, 12), -- Acción
(18, 3),  -- Drama
(18, 15), -- Suspenso
(19, 12), -- Acción
(19, 4),  -- Ficción
(19, 8),  -- Comedia
(20, 12), -- Acción
(20, 1),  -- Ciencia Ficción
(20, 15), -- Suspenso
(21, 8),  -- Comedia
(21, 4),  -- Ficción
(21, 10), -- Aventura
(22, 1),  -- Ciencia Ficción
(22, 15), -- Suspenso
(23, 16), -- Terror
(23, 15), -- Suspenso
(23, 2),  -- Fantasía
(24, 12), -- Acción
(24, 10), -- Aventura
(24, 2),  -- Fantasía
(25, 3),  -- Drama
(25, 14), -- Crimen
(25, 10), -- Aventura
(26, 3),  -- Drama
(26, 15), -- Suspenso
(26, 18), -- Intriga
(27, 12), -- Acción
(27, 1),  -- Ciencia Ficción
(27, 16), -- Terror
(28, 3),  -- Drama
(28, 15), -- Suspenso
(28, 4),  -- Ficción
(29, 3),  -- Drama
(29, 12), -- Acción
(29, 10), -- Aventura
(30, 3),  -- Drama
(30, 1),  -- Ciencia Ficción
(30, 10), -- Aventura
(31, 3),  -- Drama
(31, 1),  -- Ciencia Ficción
(31, 15), -- Suspenso
(32, 15), -- Suspenso
(32, 10), -- Aventura
(32, 4),  -- Ficción
(33, 3),  -- Drama
(33, 16), -- Terror
(33, 4),  -- Ficción
(34, 3),  -- Drama
(34, 7),  -- Hechos verídicos
(35, 12), -- Acción
(35, 2),  -- Fantasía
(35, 1);  -- Ciencia Ficción

-- Insertar datos en la tabla "catalogoReparto"
INSERT INTO catalogoReparto (idCatalogo, idAct) VALUES
    (1, 25), (1, 26), (1, 27), (1, 28), (1, 29), (1, 30),
    (2, 19), (2, 20), (2, 21), (2, 22), (2, 23), (2, 24),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6),
    (4, 7), (4, 8), (4, 9), (4, 10), (4, 11), (4, 12),
    (5, 13), (5, 14), (5, 15), (5, 16), (5, 17), (5, 18),
    (6, 31), (6, 32), (6, 33), (6, 34), (6, 35), (6, 36),
    (7, 37), (7, 38), (7, 39), (7, 40), (7, 41),
    (8, 42), (8, 43), (8, 44), (8, 45), (8, 46), (8, 47),
    (9, 48), (9, 49), (9, 50), (9, 51), (9, 52), (9, 53),
    (10, 54), (10, 55), (10, 56), (10, 57), (10, 58), (10, 59),
	(11, 60), (11, 61), (11, 62), (11, 63), (11, 64), (11, 65), (11, 66),
    (12, 67), (12, 68), (12, 69), (12, 70), (12, 71), (12, 72), 
    (13, 73), (13, 74), (13, 75), (13, 76), (13, 77), (13, 78),
    (14, 79), (14, 80), (14, 81), (14, 82), (14, 83), (14, 84),
    (15, 85), (15, 86), (15, 87), (15, 88), (15, 89), (15, 90),
    (16, 91), (16, 92), (16, 93), (16,94), (16, 95), (16, 96),
    (17, 97), (17, 98), (17, 99), (17, 100), (17, 101), (17, 102),
    (18, 103), (18, 104), (18, 105), (18, 106), (18, 107), (18, 108),
    (19, 109), (19, 110), (19, 111), (19, 112), (19, 113), (19, 114),
    (20, 115), (20, 116), (20, 117), (20, 118), (20, 119), (20, 120),
    (21, 121), (21, 122), (21, 123), (21, 124), (21, 125), (21, 126),
    (22, 127), (22, 128), (22, 129), (22, 130), (22, 131), (22, 132),
    (23, 133), (23, 103), (23, 134), (23, 135), (23, 136),
    (24, 137), (24, 138), (24, 139), (24, 140), (24, 141), (24, 142),
    (25, 143), (25, 144), (25, 145), (25, 146), (25, 147), (25, 148), 
    (26, 149), (26, 150), (26, 151), (26, 152),
    (27, 153), (27, 154), (27, 155), (27, 156), (27, 157), (27, 158), 
    (28, 159), (28, 160), (28, 161), (28, 162), (28, 163), (28, 164), (28, 165),
    (29, 166), (29, 167), (29, 168), (29, 169), (29, 170), (29, 171), (29, 172),
    (30, 160), (30, 103), (30, 133), (30, 133), (30, 133), (30, 133), 
    (31, 179), (31, 180), (31, 182), (31, 183), (31, 184), (31, 185),
    (32, 186), (32, 187), (32, 188), (32, 189), (32, 190), (32, 191), (32, 192),
	(33, 193), (33, 194), (33, 195), (33, 196), (33, 197), (33, 198), (33, 199),
    (34, 206), (34, 207), (34, 208), (34, 209), (34, 210), (34, 211), 
    (35, 200), (35, 201), (35, 202), (35, 203), (35, 204), (35, 205);
