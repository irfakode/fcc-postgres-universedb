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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    area numeric(10,2),
    planet_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    num_of_stars integer
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
    name character varying(255),
    has_water boolean NOT NULL,
    has_ore boolean,
    ore_name character varying(255),
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    close_to_black_hole boolean DEFAULT false NOT NULL,
    radius numeric(10,2),
    num_of_moons integer,
    star_id integer NOT NULL
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
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    num_of_planets integer,
    has_life boolean,
    galaxy_id integer NOT NULL
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 13424.00, 1, 'europe');
INSERT INTO public.continent VALUES (3, 134245.00, 2, 'antartica');
INSERT INTO public.continent VALUES (4, 1342456.00, 2, 'america');
INSERT INTO public.continent VALUES (5, 134.00, 3, 'africa');
INSERT INTO public.continent VALUES (2, 1349925.00, 3, 'asia');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 45000, 'M31 galaxy', 'andromeda', 1000000000);
INSERT INTO public.galaxy VALUES (2, 50000, 'D10 galaxy', 'mikly way', 100000000);
INSERT INTO public.galaxy VALUES (1, 55000, 'M104 galaxy', 'Sombrero', 100000);
INSERT INTO public.galaxy VALUES (4, 60000, 'M33 galaxy', 'triangulum', 10000);
INSERT INTO public.galaxy VALUES (5, 70000, 'M51 galaxy', 'whirlpool', 15000);
INSERT INTO public.galaxy VALUES (6, 80000, 'M101 galaxy', 'pinwheel', 16000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, false, '', 1);
INSERT INTO public.moon VALUES (2, 'phobos', false, false, '', 2);
INSERT INTO public.moon VALUES (3, 'deimos', false, false, '', 3);
INSERT INTO public.moon VALUES (4, 'Io', false, false, '', 4);
INSERT INTO public.moon VALUES (5, 'europa', false, false, '', 4);
INSERT INTO public.moon VALUES (6, 'ganymede', false, false, '', 4);
INSERT INTO public.moon VALUES (7, 'callisto', false, false, '', 4);
INSERT INTO public.moon VALUES (8, 'titan', false, false, '', 5);
INSERT INTO public.moon VALUES (9, 'encladus', false, false, '', 5);
INSERT INTO public.moon VALUES (10, 'mimas', false, false, '', 5);
INSERT INTO public.moon VALUES (11, 'rhea', false, false, '', 5);
INSERT INTO public.moon VALUES (13, 'charon', false, false, '', 6);
INSERT INTO public.moon VALUES (12, 'ceres', false, false, '', 7);
INSERT INTO public.moon VALUES (14, 'dione', false, false, '', 8);
INSERT INTO public.moon VALUES (15, 'hyperion', false, false, '', 9);
INSERT INTO public.moon VALUES (16, 'phobe', false, false, '', 9);
INSERT INTO public.moon VALUES (17, 'miranda', false, false, '', 9);
INSERT INTO public.moon VALUES (18, 'tethys', false, false, '', 10);
INSERT INTO public.moon VALUES (19, 'oberon', false, false, '', 11);
INSERT INTO public.moon VALUES (20, 'luna', false, false, '', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', false, 1245.12, 1, 1);
INSERT INTO public.planet VALUES (4, 'pluto', false, 1241231.12, 4, 4);
INSERT INTO public.planet VALUES (5, 'neptune', true, 11.12, 5, 5);
INSERT INTO public.planet VALUES (3, 'venera', true, 124.12, 3, 1);
INSERT INTO public.planet VALUES (7, 'ragazi', false, 1234124.19, 3, 2);
INSERT INTO public.planet VALUES (13, 'grazi', true, 5345499.32, 5, 2);
INSERT INTO public.planet VALUES (12, 'pegasi', true, 53454.32, 4, 3);
INSERT INTO public.planet VALUES (11, 'uranus', false, 53454.12, 3, 3);
INSERT INTO public.planet VALUES (10, 'jupiter', false, 3454.12, 2, 4);
INSERT INTO public.planet VALUES (9, 'mercury', false, 345234.12, 2, 4);
INSERT INTO public.planet VALUES (8, 'butan', false, 234.12, 1, 4);
INSERT INTO public.planet VALUES (2, 'mars', false, 12345.20, 2, 5);
INSERT INTO public.planet VALUES (6, 'saturn', true, 1134234.12, 6, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'red', 'alpheratz', 1000, false, 3);
INSERT INTO public.star VALUES (2, 'yellow', 'sun', 10000, true, 2);
INSERT INTO public.star VALUES (3, 'brown', 'moho', 100, false, 1);
INSERT INTO public.star VALUES (4, 'green', 'tylo', 10, false, 4);
INSERT INTO public.star VALUES (5, 'purple', 'Duna', 100000, true, 5);
INSERT INTO public.star VALUES (6, 'black', 'Eve', 150000, false, 6);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


--
-- Name: galaxy galaxy_num_of_stars_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_num_of_stars_key UNIQUE (num_of_stars);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_radius_key UNIQUE (radius);


--
-- Name: star star_num_of_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_num_of_planets_key UNIQUE (num_of_planets);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

