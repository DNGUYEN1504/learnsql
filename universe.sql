--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    quantity character varying(30),
    distance_from_earth_in_light_year integer,
    has_life boolean
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
-- Name: jupiter_super_heroes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.jupiter_super_heroes (
    name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    jupiter_super_heroes_id integer NOT NULL
);


ALTER TABLE public.jupiter_super_heroes OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    moon_colors text,
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
    name character varying(50) NOT NULL,
    planet_types character varying(50),
    age_in_millions_of_years numeric,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    distance_from_earth_in_light_year integer,
    age_in_millions_of_years numeric,
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', '3', 0, true);
INSERT INTO public.galaxy VALUES (2, 'black eye galaxy', '2', 17000000, false);
INSERT INTO public.galaxy VALUES (3, 'condor galaxy', '2', 665300, false);
INSERT INTO public.galaxy VALUES (4, 'centaurus A', '48', 13700000, false);
INSERT INTO public.galaxy VALUES (5, 'sculptor galaxy', '8', 13700000, false);
INSERT INTO public.galaxy VALUES (6, 'circinus galaxy', '45', 13000000, false);


--
-- Data for Name: jupiter_super_heroes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.jupiter_super_heroes VALUES ('Captain Japanese', 1, 1, 1);
INSERT INTO public.jupiter_super_heroes VALUES ('Thor', 4, 1, 2);
INSERT INTO public.jupiter_super_heroes VALUES ('Black Widow', 5, 1, 3);
INSERT INTO public.jupiter_super_heroes VALUES ('Iron man', 19, 1, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 4503, true, 'white', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4503, false, 'grey', 8);
INSERT INTO public.moon VALUES (3, 'Deimos', 4503, false, 'pink white', 8);
INSERT INTO public.moon VALUES (4, 'Callisto', 4503, true, 'yellow', 1);
INSERT INTO public.moon VALUES (5, 'Lo', 4503, true, 'green white', 1);
INSERT INTO public.moon VALUES (6, 'Adrastea', 4503, false, 'black', 1);
INSERT INTO public.moon VALUES (7, 'Himalia', 4503, false, 'white black', 1);
INSERT INTO public.moon VALUES (8, 'Triton', 4503, true, 'grey white', 7);
INSERT INTO public.moon VALUES (9, 'Preteus', 4503, false, 'grey white', 7);
INSERT INTO public.moon VALUES (10, 'Galatea', 4503, false, 'white', 7);
INSERT INTO public.moon VALUES (11, 'Sao', 4503, false, 'white', 7);
INSERT INTO public.moon VALUES (12, 'Exomoon', 4503, true, 'white blue', 4);
INSERT INTO public.moon VALUES (13, 'blueomoon', 4503, true, 'white blue', 2);
INSERT INTO public.moon VALUES (14, 'Titan', 4003, true, 'yellow  blue', 10);
INSERT INTO public.moon VALUES (15, 'Dion', 4003, true, 'grey', 10);
INSERT INTO public.moon VALUES (16, 'Mimas', 4003, true, 'grey', 10);
INSERT INTO public.moon VALUES (17, 'Taiwan', 4003, true, 'grey', 5);
INSERT INTO public.moon VALUES (18, 'Apha Cir', 4003, true, 'grey', 6);
INSERT INTO public.moon VALUES (19, 'Jupiter LXI', 4504, true, 'white blue', 1);
INSERT INTO public.moon VALUES (20, 'Cyllenne', 4504, true, 'Orange', 1);
INSERT INTO public.moon VALUES (21, 'Moon', 4504, true, 'grey', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 'gas giant', 463000, true, 1);
INSERT INTO public.planet VALUES (2, 'blue plantary', 'green planet', 34000, true, 5);
INSERT INTO public.planet VALUES (3, 'Delta Pavonis', 'sub giant', 7000, false, 3);
INSERT INTO public.planet VALUES (4, 'Exo planet', 'gas giant', 12700, false, 2);
INSERT INTO public.planet VALUES (5, 'Tapeizo', 'tiny planetti', 45000, false, 6);
INSERT INTO public.planet VALUES (6, 'Alpha Circini', 'brightest planetary', 65000, false, 8);
INSERT INTO public.planet VALUES (7, 'Neptune', 'ice giant', 450300, false, NULL);
INSERT INTO public.planet VALUES (8, 'Mars', 'rocky planet', 460300, false, NULL);
INSERT INTO public.planet VALUES (9, 'Venus', 'terrestrial planet', 450300, false, NULL);
INSERT INTO public.planet VALUES (10, 'Saturn', 'gas giant', 450300, false, NULL);
INSERT INTO public.planet VALUES (12, 'Uranus', 'terrestrial', 450300, false, NULL);
INSERT INTO public.planet VALUES (11, 'Earth', 'gas giant', 454300, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sagitarius', 378, 500, 1);
INSERT INTO public.star VALUES (2, 'Coma Berenices', 29950000, 7000, 2);
INSERT INTO public.star VALUES (3, 'Pavo', 19000000, 7000, 3);
INSERT INTO public.star VALUES (5, 'Centaurus', 12500, 67000, 4);
INSERT INTO public.star VALUES (6, 'Sculptor', 46000, 43000, 5);
INSERT INTO public.star VALUES (8, 'circinus', 37900, 5467000, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: moon constraint_moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_moon_name_unique UNIQUE (name);


--
-- Name: galaxy constraint_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name_unique UNIQUE (name);


--
-- Name: planet constraint_planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_planet_name_unique UNIQUE (name);


--
-- Name: star constraint_star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_star_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: jupiter_super_heroes name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jupiter_super_heroes
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: jupiter_super_heroes planet_moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jupiter_super_heroes
    ADD CONSTRAINT planet_moons_pkey PRIMARY KEY (jupiter_super_heroes_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star constraint_galaxy_id_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_galaxy_id_foreign_key FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

