--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Debian 13.9-0+deb11u1)
-- Dumped by pg_dump version 13.9 (Debian 13.9-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: constelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(15),
    culture_origin character varying(15),
    is_lost boolean DEFAULT true NOT NULL,
    location character varying(15)
);


ALTER TABLE public.constelation OWNER TO postgres;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO postgres;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(15),
    age integer NOT NULL,
    galaxy_type character varying(30),
    discover_year integer
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    diameter numeric(10,3)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    planet_type character varying(15),
    has_life boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    star_type character varying(15),
    discover_year integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.constelation VALUES (1, 'Fenelia', 'roman', false, 'southern sky');
INSERT INTO public.constelation VALUES (2, 'Cristy', 'roman', true, 'northern sky');
INSERT INTO public.constelation VALUES (3, 'Saraann', 'greek', true, 'southern sky');
INSERT INTO public.constelation VALUES (4, 'Hamlin', 'roman', false, 'southern sky');
INSERT INTO public.constelation VALUES (5, 'Jerrilyn', 'roman', false, 'northern sky');
INSERT INTO public.constelation VALUES (6, 'Sherline', 'greek', false, 'southern sky');
INSERT INTO public.constelation VALUES (7, 'Boyce', 'roman', false, 'northern sky');
INSERT INTO public.constelation VALUES (8, 'Zonnya', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (9, 'Erie', 'greek', true, 'southern sky');
INSERT INTO public.constelation VALUES (10, 'Eula', 'mesopotamia', true, 'southern sky');
INSERT INTO public.constelation VALUES (11, 'Deane', 'chinese', false, 'southern sky');
INSERT INTO public.constelation VALUES (12, 'Jemmy', 'greek', true, 'northern sky');
INSERT INTO public.constelation VALUES (13, 'Bucky', 'roman', true, 'southern sky');
INSERT INTO public.constelation VALUES (14, 'Hardy', 'greek', false, 'northern sky');
INSERT INTO public.constelation VALUES (15, 'Adele', 'chinese', false, 'northern sky');
INSERT INTO public.constelation VALUES (16, 'Dalston', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (17, 'Corine', 'greek', true, 'southern sky');
INSERT INTO public.constelation VALUES (18, 'Nerty', 'chinese', true, 'northern sky');
INSERT INTO public.constelation VALUES (19, 'Elfrida', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (20, 'Garrek', 'chinese', true, 'southern sky');
INSERT INTO public.constelation VALUES (21, 'Mason', 'mesopotamia', true, 'southern sky');
INSERT INTO public.constelation VALUES (22, 'Gwyneth', 'chinese', true, 'northern sky');
INSERT INTO public.constelation VALUES (23, 'Danny', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (24, 'Dell', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (25, 'Alverta', 'mesopotamia', true, 'northern sky');
INSERT INTO public.constelation VALUES (26, 'Randal', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (27, 'Beatrix', 'mesopotamia', true, 'northern sky');
INSERT INTO public.constelation VALUES (28, 'Nikki', 'greek', true, 'northern sky');
INSERT INTO public.constelation VALUES (29, 'Diena', 'mesopotamia', true, 'southern sky');
INSERT INTO public.constelation VALUES (30, 'Jen', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (31, 'Devin', 'roman', false, 'southern sky');
INSERT INTO public.constelation VALUES (32, 'Claudio', 'mesopotamia', true, 'northern sky');
INSERT INTO public.constelation VALUES (33, 'Willy', 'mesopotamia', false, 'southern sky');
INSERT INTO public.constelation VALUES (34, 'Mill', 'roman', true, 'northern sky');
INSERT INTO public.constelation VALUES (35, 'Cammi', 'roman', true, 'northern sky');
INSERT INTO public.constelation VALUES (36, 'Christel', 'chinese', true, 'southern sky');
INSERT INTO public.constelation VALUES (37, 'Erich', 'chinese', true, 'southern sky');
INSERT INTO public.constelation VALUES (38, 'Luke', 'greek', true, 'southern sky');
INSERT INTO public.constelation VALUES (39, 'Garwood', 'greek', false, 'southern sky');
INSERT INTO public.constelation VALUES (40, 'Mart', 'chinese', true, 'northern sky');
INSERT INTO public.constelation VALUES (41, 'Reinhard', 'mesopotamia', false, 'northern sky');
INSERT INTO public.constelation VALUES (42, 'Gardner', 'mesopotamia', false, 'northern sky');
INSERT INTO public.constelation VALUES (43, 'Elijah', 'chinese', true, 'northern sky');
INSERT INTO public.constelation VALUES (44, 'Anthia', 'roman', false, 'southern sky');
INSERT INTO public.constelation VALUES (45, 'Carl', 'mesopotamia', false, 'northern sky');
INSERT INTO public.constelation VALUES (46, 'Pate', 'roman', true, 'northern sky');
INSERT INTO public.constelation VALUES (47, 'Leann', 'chinese', false, 'southern sky');
INSERT INTO public.constelation VALUES (48, 'Germaine', 'greek', false, 'northern sky');
INSERT INTO public.constelation VALUES (49, 'Dacy', 'mesopotamia', true, 'southern sky');
INSERT INTO public.constelation VALUES (50, 'Fidelity', 'roman', false, 'northern sky');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Emlynne', 3960, 'Super-luminous spiral', 1058);
INSERT INTO public.galaxy VALUES (2, 'Flss', 4944, 'Elliptical galaxy', 1123);
INSERT INTO public.galaxy VALUES (3, 'Sherilyn', 1569, 'Barred spiral galaxy', 1604);
INSERT INTO public.galaxy VALUES (4, 'Heddi', 3965, 'Super-luminous spiral', 1569);
INSERT INTO public.galaxy VALUES (5, 'Leighton', 4182, 'Super-luminous spiral', 1527);
INSERT INTO public.galaxy VALUES (6, 'Kaitlin', 2275, 'Super-luminous spiral', 1615);
INSERT INTO public.galaxy VALUES (7, 'Gayel', 3126, 'Shell galaxy', 1078);
INSERT INTO public.galaxy VALUES (8, 'Claybourne', 2208, 'Irregular galaxy', 1101);
INSERT INTO public.galaxy VALUES (9, 'Allissa', 2861, 'Super-luminous spiral', 1686);
INSERT INTO public.galaxy VALUES (10, 'Salvador', 4407, 'Elliptical galaxy', 1217);
INSERT INTO public.galaxy VALUES (11, 'Innis', 2999, 'Barred spiral galaxy', 1876);
INSERT INTO public.galaxy VALUES (12, 'Maudie', 1665, 'Irregular galaxy', 1197);
INSERT INTO public.galaxy VALUES (13, 'Muhammad', 3519, 'Irregular galaxy', 1601);
INSERT INTO public.galaxy VALUES (14, 'Geoffry', 1154, 'Barred spiral galaxy', 1257);
INSERT INTO public.galaxy VALUES (15, 'Hynda', 2626, 'Irregular galaxy', 823);
INSERT INTO public.galaxy VALUES (16, 'Roman', 610, 'Irregular galaxy', 1739);
INSERT INTO public.galaxy VALUES (17, 'Robb', 1481, 'Irregular galaxy', 1727);
INSERT INTO public.galaxy VALUES (18, 'Moina', 2427, 'Irregular galaxy', 1275);
INSERT INTO public.galaxy VALUES (19, 'Marylynne', 2541, 'Barred spiral galaxy', 883);
INSERT INTO public.galaxy VALUES (20, 'Fitzgerald', 1110, 'Irregular galaxy', 950);
INSERT INTO public.galaxy VALUES (21, 'Ina', 1389, 'Barred spiral galaxy', 1233);
INSERT INTO public.galaxy VALUES (22, 'Georgie', 2036, 'Irregular galaxy', 1488);
INSERT INTO public.galaxy VALUES (23, 'Suzie', 1964, 'Elliptical galaxy', 1339);
INSERT INTO public.galaxy VALUES (24, 'Neville', 997, 'Shell galaxy', 954);
INSERT INTO public.galaxy VALUES (25, 'Ronnie', 1773, 'Irregular galaxy', 1097);
INSERT INTO public.galaxy VALUES (26, 'Stern', 4106, 'Shell galaxy', 2003);
INSERT INTO public.galaxy VALUES (27, 'Lisetta', 1511, 'Super-luminous spiral', 1245);
INSERT INTO public.galaxy VALUES (28, 'Mercie', 2626, 'Irregular galaxy', 1332);
INSERT INTO public.galaxy VALUES (29, 'Edwina', 3996, 'Super-luminous spiral', 1148);
INSERT INTO public.galaxy VALUES (30, 'Joya', 2363, 'Shell galaxy', 1017);
INSERT INTO public.galaxy VALUES (31, 'Fax', 4036, 'Shell galaxy', 1697);
INSERT INTO public.galaxy VALUES (32, 'Rupert', 4490, 'Barred spiral galaxy', 1169);
INSERT INTO public.galaxy VALUES (33, 'Griffin', 879, 'Elliptical galaxy', 1640);
INSERT INTO public.galaxy VALUES (34, 'Dimitry', 4942, 'Shell galaxy', 1689);
INSERT INTO public.galaxy VALUES (35, 'Car', 728, 'Irregular galaxy', 1147);
INSERT INTO public.galaxy VALUES (36, 'Nikolaos', 3678, 'Irregular galaxy', 1413);
INSERT INTO public.galaxy VALUES (37, 'Karylin', 2514, 'Barred spiral galaxy', 1784);
INSERT INTO public.galaxy VALUES (38, 'Livvie', 875, 'Irregular galaxy', 1275);
INSERT INTO public.galaxy VALUES (39, 'Delbert', 4802, 'Elliptical galaxy', 1721);
INSERT INTO public.galaxy VALUES (40, 'Shaine', 2358, 'Irregular galaxy', 1450);
INSERT INTO public.galaxy VALUES (41, 'Hetty', 4878, 'Shell galaxy', 1333);
INSERT INTO public.galaxy VALUES (42, 'Nealson', 1503, 'Irregular galaxy', 1475);
INSERT INTO public.galaxy VALUES (43, 'Krystyna', 1315, 'Shell galaxy', 1361);
INSERT INTO public.galaxy VALUES (44, 'Honey', 4070, 'Super-luminous spiral', 1981);
INSERT INTO public.galaxy VALUES (45, 'Lida', 2979, 'Elliptical galaxy', 1353);
INSERT INTO public.galaxy VALUES (46, 'Agnese', 3420, 'Barred spiral galaxy', 1296);
INSERT INTO public.galaxy VALUES (47, 'Lauretta', 2017, 'Barred spiral galaxy', 1596);
INSERT INTO public.galaxy VALUES (48, 'Adora', 4511, 'Irregular galaxy', 1681);
INSERT INTO public.galaxy VALUES (49, 'Shel', 1980, 'Super-luminous spiral', 1739);
INSERT INTO public.galaxy VALUES (50, 'Rodolphe', 2149, 'Irregular galaxy', 1503);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'Woolly Locoweed', 48, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus', 194475.740);
INSERT INTO public.moon VALUES (6, 'Gordon''s Bladderpod', 4, 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', 153881.989);
INSERT INTO public.moon VALUES (12, 'Sensitive Plant', 31, 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', 149150.963);
INSERT INTO public.moon VALUES (14, 'Loquat', 33, 'mollis molestie lorem quisque ut erat curabitur gravida nisi at', 188386.987);
INSERT INTO public.moon VALUES (17, 'Rimularia Lichen', 41, 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', 174875.845);
INSERT INTO public.moon VALUES (27, 'Gray''s Cloak Fern', 48, 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 146318.000);
INSERT INTO public.moon VALUES (30, 'Slender Creeping-oxeye', 41, 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', 167549.614);
INSERT INTO public.moon VALUES (32, 'Roadside Agrimony', 20, 'phasellus id sapien in sapien iaculis congue', 152760.007);
INSERT INTO public.moon VALUES (42, 'Indian Flatsedge', 41, 'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis', 175403.888);
INSERT INTO public.moon VALUES (45, 'Northern Freckled Milkvetch', 16, 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede', 85979.179);
INSERT INTO public.moon VALUES (48, 'Angel''s-wings', 29, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', 197609.760);
INSERT INTO public.moon VALUES (51, 'Adore', 44, 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', 43953.594);
INSERT INTO public.moon VALUES (55, 'Kahlil', 2, 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', 41979.353);
INSERT INTO public.moon VALUES (58, 'Bird', 34, 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', 81878.243);
INSERT INTO public.moon VALUES (59, 'Byrom', 29, 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', 81001.435);
INSERT INTO public.moon VALUES (60, 'Kathi', 5, 'eros elementum pellentesque quisque porta volutpat erat quisque', 4497.312);
INSERT INTO public.moon VALUES (61, 'Ozzie', 4, 'proin risus praesent lectus vestibulum quam sapien varius ut blandit', 50513.794);
INSERT INTO public.moon VALUES (63, 'Rozanne', 7, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', 47032.344);
INSERT INTO public.moon VALUES (65, 'Daveta', 44, 'pede venenatis non sodales sed tincidunt eu', 74023.454);
INSERT INTO public.moon VALUES (66, 'Clarey', 21, 'etiam faucibus cursus urna ut tellus nulla ut', 16589.277);
INSERT INTO public.moon VALUES (67, 'Nils', 9, 'donec posuere metus vitae ipsum', 58511.371);
INSERT INTO public.moon VALUES (70, 'Jasmine', 47, 'hac habitasse platea dictumst etiam faucibus cursus urna ut', 66828.730);
INSERT INTO public.moon VALUES (71, 'Casi', 12, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in', 6404.760);
INSERT INTO public.moon VALUES (72, 'Pauly', 7, 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', 2814.480);
INSERT INTO public.moon VALUES (74, 'Paddy', 22, 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean', 33529.469);
INSERT INTO public.moon VALUES (76, 'Christi', 12, 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est', 48022.668);
INSERT INTO public.moon VALUES (77, 'Colleen', 40, 'hac habitasse platea dictumst maecenas ut massa', 96059.486);
INSERT INTO public.moon VALUES (78, 'Aeriela', 43, 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', 41499.574);
INSERT INTO public.moon VALUES (79, 'Candy', 16, 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', 60184.763);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Raymond''s Sedge', 33, 'planetar', true);
INSERT INTO public.planet VALUES (4, 'Santa Catalina Island Bedstraw', 50, 'Giant planet', true);
INSERT INTO public.planet VALUES (5, 'Pecos River Skeletonplant', 7, 'ice giant', true);
INSERT INTO public.planet VALUES (7, 'Creeping Lovegrass', 8, 'super-earth', false);
INSERT INTO public.planet VALUES (9, 'Japanese Larch', 11, 'ice giant', false);
INSERT INTO public.planet VALUES (12, 'Rosary Babybonnets', 18, 'mini-neptune', true);
INSERT INTO public.planet VALUES (14, 'Soft Western Rosinweed', 19, 'sub-earth', true);
INSERT INTO public.planet VALUES (16, 'Bluntlobe Cliff Fern', 16, 'super-earth', true);
INSERT INTO public.planet VALUES (18, 'Rusty Foxglove', 3, 'ice giant', true);
INSERT INTO public.planet VALUES (20, 'Torrey''s Milkvetch', 7, 'sub-earth', true);
INSERT INTO public.planet VALUES (21, 'Pasture Spikesedge', 4, 'ice giant', true);
INSERT INTO public.planet VALUES (22, 'Cahaba Prairie Clover', 33, 'mesoplanet', true);
INSERT INTO public.planet VALUES (28, 'Drummond''s Wild Petunia', 30, 'planetar', false);
INSERT INTO public.planet VALUES (29, 'Sphagnum', 18, 'Giant planet', false);
INSERT INTO public.planet VALUES (31, 'Dot Lichen', 33, 'Giant planet', false);
INSERT INTO public.planet VALUES (33, 'Yellow Monkswort', 49, 'super-jupiter', false);
INSERT INTO public.planet VALUES (34, 'Howell''s Silverpuffs', 20, 'planetar', true);
INSERT INTO public.planet VALUES (38, 'Ha''a', 26, 'mini-neptune', false);
INSERT INTO public.planet VALUES (39, 'Rough Hawksbeard', 1, 'sub-earth', false);
INSERT INTO public.planet VALUES (40, 'Hairy Knight''s-spur', 30, 'sub-earth', true);
INSERT INTO public.planet VALUES (41, 'Sacky Sac Bean', 40, 'planetar', true);
INSERT INTO public.planet VALUES (43, 'Collegeflower', 17, 'ice giant', true);
INSERT INTO public.planet VALUES (44, 'Pineland Threeawn', 40, 'mesoplanet', false);
INSERT INTO public.planet VALUES (45, 'Cocona', 3, 'ice giant', false);
INSERT INTO public.planet VALUES (46, 'Tetrodontium Moss', 44, 'sub-earth', true);
INSERT INTO public.planet VALUES (47, 'Turkey Corn', 6, 'planetar', false);
INSERT INTO public.planet VALUES (48, 'Broom Bamboo', 32, 'mesoplanet', false);
INSERT INTO public.planet VALUES (49, 'Rinodina Lichen', 34, 'mini-neptune', true);
INSERT INTO public.planet VALUES (50, 'Littleleaf Buckbrush', 48, 'super-earth', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Auberon', 59, 'supergiants', 1038);
INSERT INTO public.star VALUES (2, 'Jacquelyn', 28, 'subdwarf', 1867);
INSERT INTO public.star VALUES (3, 'Teriann', 30, 'subdwarf', 1535);
INSERT INTO public.star VALUES (4, 'Christalle', 53, 'subdwarf', 1305);
INSERT INTO public.star VALUES (5, 'Mil', 56, 'white dwarf', 1179);
INSERT INTO public.star VALUES (6, 'Milo', 6, 'bright giants', 1195);
INSERT INTO public.star VALUES (7, 'Bess', 96, 'subdwarf', 1045);
INSERT INTO public.star VALUES (8, 'Catrina', 73, 'subgiants', 989);
INSERT INTO public.star VALUES (9, 'Donnie', 70, 'white dwarf', 976);
INSERT INTO public.star VALUES (10, 'Corina', 31, 'dwarfs', 1780);
INSERT INTO public.star VALUES (11, 'Briant', 53, 'yellow dwarf', 1459);
INSERT INTO public.star VALUES (12, 'Gussie', 68, 'white dwarf', 1367);
INSERT INTO public.star VALUES (13, 'Lexis', 99, 'yellow dwarf', 1231);
INSERT INTO public.star VALUES (14, 'Chen', 61, 'white dwarf', 1377);
INSERT INTO public.star VALUES (15, 'Esteban', 80, 'yellow dwarf', 1060);
INSERT INTO public.star VALUES (16, 'Farlie', 68, 'dwarfs', 877);
INSERT INTO public.star VALUES (17, 'Ann-marie', 1, 'subgiants', 975);
INSERT INTO public.star VALUES (18, 'Jarvis', 17, 'bright giants', 1068);
INSERT INTO public.star VALUES (19, 'Nikolos', 5, 'white dwarf', 1850);
INSERT INTO public.star VALUES (20, 'Blake', 40, 'dwarfs', 1445);
INSERT INTO public.star VALUES (21, 'Belia', 81, 'dwarfs', 1968);
INSERT INTO public.star VALUES (22, 'Corabelle', 19, 'supergiants', 1485);
INSERT INTO public.star VALUES (23, 'Nanni', 32, 'dwarfs', 831);
INSERT INTO public.star VALUES (24, 'Dilan', 56, 'bright giants', 2006);
INSERT INTO public.star VALUES (25, 'Gwenni', 76, 'subdwarf', 1506);
INSERT INTO public.star VALUES (26, 'Nessi', 52, 'supergiants', 1101);
INSERT INTO public.star VALUES (27, 'Emmye', 53, 'subgiants', 1229);
INSERT INTO public.star VALUES (28, 'Ellette', 55, 'yellow dwarf', 1051);
INSERT INTO public.star VALUES (29, 'Analise', 74, 'supergiants', 1147);
INSERT INTO public.star VALUES (30, 'Esmaria', 88, 'subdwarf', 1320);
INSERT INTO public.star VALUES (31, 'Korie', 65, 'dwarfs', 1390);
INSERT INTO public.star VALUES (32, 'Bette-ann', 95, 'yellow dwarf', 1301);
INSERT INTO public.star VALUES (33, 'Blane', 7, 'yellow dwarf', 1014);
INSERT INTO public.star VALUES (34, 'Lucinda', 39, 'yellow dwarf', 1152);
INSERT INTO public.star VALUES (35, 'Libby', 4, 'bright giants', 1756);
INSERT INTO public.star VALUES (36, 'Phip', 6, 'subgiants', 1512);
INSERT INTO public.star VALUES (37, 'Corene', 97, 'yellow dwarf', 1592);
INSERT INTO public.star VALUES (38, 'Shannan', 4, 'subgiants', 1378);
INSERT INTO public.star VALUES (39, 'Gwyn', 33, 'subdwarf', 1054);
INSERT INTO public.star VALUES (40, 'Meriel', 94, 'supergiants', 1888);
INSERT INTO public.star VALUES (41, 'Noelani', 82, 'dwarfs', 1115);
INSERT INTO public.star VALUES (42, 'Jolee', 47, 'bright giants', 1610);
INSERT INTO public.star VALUES (43, 'Sylas', 9, 'subgiants', 1612);
INSERT INTO public.star VALUES (44, 'Ronny', 37, 'supergiants', 977);
INSERT INTO public.star VALUES (45, 'Robby', 64, 'subdwarf', 1156);
INSERT INTO public.star VALUES (46, 'Filbert', 46, 'white dwarf', 1636);
INSERT INTO public.star VALUES (47, 'Galvin', 89, 'white dwarf', 1121);
INSERT INTO public.star VALUES (48, 'Sibylla', 7, 'white dwarf', 1369);
INSERT INTO public.star VALUES (49, 'Murvyn', 22, 'subdwarf', 1807);
INSERT INTO public.star VALUES (50, 'Milissent', 16, 'yellow dwarf', 1989);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 50, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 50, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 80, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 50, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 50, true);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

