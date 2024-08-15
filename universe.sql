--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    distance numeric,
    info text,
    habitable boolean
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    distance numeric,
    info text,
    habitable boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    distance numeric,
    info text,
    habitable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    distance numeric,
    info text,
    habitable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    distance numeric,
    info text,
    habitable boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Gaia BH1', 1560, 1560, 'Gaia BH1 is the closest known black hole to Earth.', false);
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 5000000, 6070, 'Cygnus X-1 was the first black hole discovered.', false);
INSERT INTO public.blackhole VALUES (3, 'Messier 87*', 1300000000, 53000000, 'Messier 87* was the first black hole to be imaged.', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 765, 'A barred spiral galaxy', false);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 100, 45, 'A pair of interacting galaxies', false);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 13, 0, 'Earth is here :)', true);
INSERT INTO public.galaxy VALUES (4, 'Eye of God', 10600, 650, 'AKA Helix Nebula', false);
INSERT INTO public.galaxy VALUES (5, 'Needle', 130, 50, 'Discovered by William Herschel', false);
INSERT INTO public.galaxy VALUES (6, 'Spider', 10, 30, 'Has spider like arms with glowing stars on the tips.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4510, 384400, 'The Moon is Earth’s only natural satellite.', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 9377, 'Phobos is gradually getting closer to Mars and will eventually crash into the planet.', false, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 23460, 'Deimos is one of the smallest moons in the solar system.', false, 1);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 628300, 'Io is the most volcanically active body in the solar system.', false, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 628300, 'Europa has a subsurface ocean that might harbor life.', true, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 628300, 'Ganymede is the largest moon in the solar system.', false, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 628300, 'Callisto has the oldest and most heavily cratered surface in the solar system.', false, 1);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 1275000, 'Titan has lakes and rivers of liquid methane and ethane.', true, 1);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 1275000, 'Enceladus has geysers that shoot water ice into space.', true, 1);
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, 1275000, 'Mimas is known as the “Death Star” moon due to its large crater.', false, 1);
INSERT INTO public.moon VALUES (11, 'Triton', 4500, 4351400, 'Triton orbits Neptune in the opposite direction of the planet’s rotation.', false, 1);
INSERT INTO public.moon VALUES (12, 'Charon', 4500, 4437400, 'Charon is the largest moon relative to its planet, Pluto.', false, 1);
INSERT INTO public.moon VALUES (13, 'Oberon', 4500, 2724000, 'Oberon is the second-largest moon of Uranus.', false, 1);
INSERT INTO public.moon VALUES (14, 'Titania', 4500, 2724000, 'Titania is the largest moon of Uranus.', false, 1);
INSERT INTO public.moon VALUES (15, 'Rhea', 4500, 1275000, 'Rhea might have a thin ring system.', false, 1);
INSERT INTO public.moon VALUES (16, 'Iapetus', 4500, 1275000, 'Iapetus has a unique two-tone coloration.', false, 1);
INSERT INTO public.moon VALUES (17, 'Dione', 4500, 1275000, 'Dione has bright ice cliffs.', false, 1);
INSERT INTO public.moon VALUES (18, 'Tethys', 4500, 1275000, 'Tethys has a massive canyon called Ithaca Chasma.', false, 1);
INSERT INTO public.moon VALUES (19, 'Hyperion', 4500, 1275000, 'Hyperion has a very irregular shape and chaotic rotation.', false, 1);
INSERT INTO public.moon VALUES (20, 'Miranda', 4500, 2724000, 'Miranda has one of the most varied and extreme landscapes in the solar system.', false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4503, 77, 'Mercury’s craters are named after famous artists, musicians, and authors.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4503, 261, 'Venus is the hottest planet in the solar system.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4543, 0, 'Earth’s atmosphere protects us from meteoroids and radiation from the Sun.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4503, 78, 'There have been more missions to Mars than any other planet.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4565, 628, 'Jupiter has more than double the mass of all the other planets combined.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4543, 1275, 'Saturn has more moons than any other planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4543, 2724, 'Uranus has only been visited by a single spacecraft, Voyager 2.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4543, 4351, 'It takes more than 4 hours for light to reach Neptune from the Sun.', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4503, 4437, 'Pluto is now considered a dwarf planet.', false, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 4560, 414, 'Ceres is the largest object in the asteroid belt.', false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 4560, 6452, 'Haumea is shaped like an egg.', false, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 4560, 14000, 'Eris follows the most elliptical path of any planet.', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 46, 1, 'The star that belongs to the human race', false, 1);
INSERT INTO public.star VALUES (2, 'Vega', 455, 25, 'Second star to be photographed', false, 1);
INSERT INTO public.star VALUES (3, 'Alcor', 500, 81, 'Part of the sextuple system', false, 1);
INSERT INTO public.star VALUES (4, 'Polaris', 70, 430, 'A triple star system.', false, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8, 860, 'A blue supergiant and birghtest star in Orion', false, 1);
INSERT INTO public.star VALUES (6, 'Altair', 1200, 17, 'Rotates extremely fast approx 9 hours', false, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

