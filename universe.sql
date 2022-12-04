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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_of_discovery integer NOT NULL,
    age integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    length_in_ly numeric,
    solar_mass integer,
    distance_in_ly integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass integer NOT NULL,
    physical_state text,
    year_of_discovery integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    physical_state character varying(30) NOT NULL,
    habitable boolean NOT NULL,
    year_of_discovery integer,
    distance_from_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dead boolean NOT NULL,
    distance_from_earth integer,
    year_of_discovery integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 1610, NULL);
INSERT INTO public.constellation VALUES (2, 'Virgo', 100, NULL);
INSERT INTO public.constellation VALUES (3, 'Scorpius', 1745, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 100000, 150, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Nebula', 'Barred Spiral', 52, 1000, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Virgo A', 'Eliptical', 132000, NULL, 53);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', 'Irregular', NULL, NULL, 25000);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', 'Radio', NULL, NULL, 600);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 'Satellite Galaxy', NULL, NULL, 160000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 5, 'Themisto', 54, 'Solid', 1975);
INSERT INTO public.moon VALUES (2, 5, 'Carpo', 67, 'Solid', 2003);
INSERT INTO public.moon VALUES (3, 5, 'Valetudo', 794, 'Solid', 2016);
INSERT INTO public.moon VALUES (4, 5, 'Leda', 7965, 'Solid', NULL);
INSERT INTO public.moon VALUES (5, 5, 'Himalaia', 79364, 'Solid', NULL);
INSERT INTO public.moon VALUES (6, 5, 'Ersa', 462, 'Solid', NULL);
INSERT INTO public.moon VALUES (7, 5, 'Pandia', 96, NULL, NULL);
INSERT INTO public.moon VALUES (8, 5, 'Elara', 26, NULL, NULL);
INSERT INTO public.moon VALUES (9, 5, 'Lysithea', 916, NULL, NULL);
INSERT INTO public.moon VALUES (10, 5, 'Dia', 4385, NULL, NULL);
INSERT INTO public.moon VALUES (11, 5, 'Carme', 7468, NULL, NULL);
INSERT INTO public.moon VALUES (12, 5, 'Taygete', 852, NULL, NULL);
INSERT INTO public.moon VALUES (13, 5, 'Eukelade', 49256, NULL, NULL);
INSERT INTO public.moon VALUES (14, 5, 'Eirene', 46445, NULL, NULL);
INSERT INTO public.moon VALUES (15, 5, 'Chaldene', 46872, NULL, NULL);
INSERT INTO public.moon VALUES (16, 5, 'Isonoe', 64851, NULL, NULL);
INSERT INTO public.moon VALUES (17, 5, 'Kalyke', 61245, NULL, NULL);
INSERT INTO public.moon VALUES (18, 5, 'Erinome', 6572, NULL, NULL);
INSERT INTO public.moon VALUES (19, 5, 'Aitne', 21875, NULL, NULL);
INSERT INTO public.moon VALUES (20, 5, 'Kale', 3285, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, '7 Canis Majoris b', 'Gas', false, 2011, 65);
INSERT INTO public.planet VALUES (2, 2, '7 Canis Majoris c', 'Gas', false, 2011, 65);
INSERT INTO public.planet VALUES (3, 3, 'Alpha Arietis b', 'Gas', false, 2010, 66);
INSERT INTO public.planet VALUES (4, 1, 'Earth', 'Solid', true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 'Gas', false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 1, 'Venus', 'Gas', false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 1, 'Mars', 'Gas', true, NULL, NULL);
INSERT INTO public.planet VALUES (8, 1, 'Saturn', 'Gas', false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 1, 'Uranus', 'Gas', false, 1781, NULL);
INSERT INTO public.planet VALUES (10, 1, 'Neptune', 'Solid', false, 1846, NULL);
INSERT INTO public.planet VALUES (11, 1, 'Pluto', 'Solid', false, 1930, NULL);
INSERT INTO public.planet VALUES (12, 1, 'Mercury', 'Gas', false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', false, 149600000, NULL);
INSERT INTO public.star VALUES (2, 1, '7 Canis Majoris', false, 65, 1801);
INSERT INTO public.star VALUES (3, 1, 'Alpha Arietis', false, 66, 2010);
INSERT INTO public.star VALUES (4, 1, '11 Comae Berenices', false, 304, 2011);
INSERT INTO public.star VALUES (5, 1, 'Rigel', false, 864, 1831);
INSERT INTO public.star VALUES (6, 1, 'Betelgeuse', false, 642, 1830);
INSERT INTO public.star VALUES (7, 1, 'Spica', false, 250, NULL);
INSERT INTO public.star VALUES (8, 1, 'Antares', false, 550, 1819);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

