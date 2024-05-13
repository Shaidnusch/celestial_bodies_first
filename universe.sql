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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    systems_id integer NOT NULL,
    name character varying(40),
    size integer,
    age numeric,
    type text,
    has_life boolean,
    found boolean,
    discovered integer
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
    planet_id integer NOT NULL,
    name character varying(40),
    size integer,
    age numeric,
    type text,
    has_life boolean,
    found boolean,
    discovered integer
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
    star_id integer NOT NULL,
    name character varying(40),
    size integer,
    age numeric,
    type text,
    has_life boolean,
    found boolean,
    discovered integer
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
    galaxy_id integer NOT NULL,
    name character varying(40),
    size integer,
    age numeric,
    type text,
    has_life boolean,
    found boolean,
    discovered integer
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
-- Name: systems; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.systems (
    systems_id integer NOT NULL,
    name character varying(40),
    size integer NOT NULL
);


ALTER TABLE public.systems OWNER TO freecodecamp;

--
-- Name: systems_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.systems_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.systems_system_id_seq OWNER TO freecodecamp;

--
-- Name: systems_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.systems_system_id_seq OWNED BY public.systems.systems_id;


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
-- Name: systems systems_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systems ALTER COLUMN systems_id SET DEFAULT nextval('public.systems_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', 100, 13.6, 'Barred spiral', true, true, 1900);
INSERT INTO public.galaxy VALUES (2, 1, 'Andromeda', 220, 10, 'Spiral', false, true, 1920);
INSERT INTO public.galaxy VALUES (3, 1, 'Large Magellanic Cloud', 32, 1.5, 'Irregular', false, true, 964);
INSERT INTO public.galaxy VALUES (4, 1, 'Small Magellanic Cloud', 19, 4, 'Irregular', false, true, 1598);
INSERT INTO public.galaxy VALUES (5, 2, 'Sagittarius Dwarf Spheroidal', 10, 12, 'Dwarf spheroidal', false, true, 1994);
INSERT INTO public.galaxy VALUES (6, 3, 'Canis Major Dwarf', 42, 10, 'Dwarf irregular', false, true, 2003);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (2, 1, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (3, 2, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (4, 2, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (5, 3, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (6, 3, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (7, 4, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (8, 4, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (9, 6, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (10, 5, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (11, 5, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (12, 6, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (13, 7, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (14, 7, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (15, 8, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (16, 8, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (17, 9, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (18, 9, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (19, 10, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.moon VALUES (20, 10, 'planet2', 1, 2, 'Terrestrial', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (2, 1, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (3, 2, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (4, 2, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (5, 3, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (6, 3, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (7, 4, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (8, 4, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (9, 5, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (10, 5, 'planet2', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (11, 6, 'planet1', 1, 2, 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (12, 6, 'planet2', 1, 2, 'Terrestrial', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 1, 4.6, 'main-sequence', false, true, 0);
INSERT INTO public.star VALUES (2, 1, 'Alpha Centauri', 1, 6, 'binary', false, true, 1689);
INSERT INTO public.star VALUES (3, 1, 'Betelgeuse', 1, 0.08, 'red supergiant', false, true, 0);
INSERT INTO public.star VALUES (4, 1, 'Sirius', 1, 0.25, 'main-sequence', false, true, 0);
INSERT INTO public.star VALUES (5, 2, 'Almach', 1, 0.3, 'binary', false, true, 0);
INSERT INTO public.star VALUES (6, 2, 'Mirach', 1, 4.6, 'red-giant', false, true, 0);


--
-- Data for Name: systems; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.systems VALUES (1, 'Local group', 10000);
INSERT INTO public.systems VALUES (2, 'Sagitttarius Dwarf', 10);
INSERT INTO public.systems VALUES (3, 'Canis Major Dwarf', 42);


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
-- Name: systems_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.systems_system_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: systems systems_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systems
    ADD CONSTRAINT systems_pkey PRIMARY KEY (systems_id);


--
-- Name: systems systems_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systems
    ADD CONSTRAINT systems_system_id_key UNIQUE (systems_id);


--
-- Name: galaxy galaxy_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_system_id_fkey FOREIGN KEY (systems_id) REFERENCES public.systems(systems_id);


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

