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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    name character varying(30) NOT NULL,
    discovered character varying(30) NOT NULL,
    discoverer character varying(30),
    comets_id integer NOT NULL
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES ('Comet Arend–Roland', '8 November 1956', 'Arend-Roland', 1);
INSERT INTO public.comets VALUES ('Bielas Comet', '27 February 1826', 'Wilhelm von Biela', 2);
INSERT INTO public.comets VALUES ('Chiron', '1 November 1977', 'Charles T. Kowal', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 3, 'great spiral galaxy in the constellation Andromeda, the nearest large galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'Black_Eye', 13280, 1700, 'a spiral galaxy that is located at constellation called Coma Berenices and belongs to a galaxy group called M94 group or Canes Venatici I cloud', false);
INSERT INTO public.galaxy VALUES (5, 'Bodes', 13301, 11, 'a grand design spiral galaxy about 12 million light-years away in the constellation Ursa Major.', false);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 1000, 45, 'two long tails of stars, gas and dust ejected from the galaxies as a result of tidal force in the collision that look like an insects antennae.', false);
INSERT INTO public.galaxy VALUES (3, 'Backward', 1110, 200, 'a galaxy with leading spiral arms.', false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 400, 489, 'Its appearance, much like that of the wheel of a wagon, is the result of an intense event – a high-speed collision between a large spiral galaxy and a smaller galaxy not visible in this image.', false);
INSERT INTO public.galaxy VALUES (7, 'Milky_way', 1400, 26670, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5000, 1, 'earth moon', false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 2000, 77, 'Mars moon', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 2000, 78, 'Mars moon', false, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 4000, 628, 'Jupiter biggest moon', false, 5);
INSERT INTO public.moon VALUES (5, 'Ganymade', 4000, 628, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (6, 'IO', 4000, 628, 'Jupiter 4 largest', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4000, 628, 'Jupiter 2 largest', false, 5);
INSERT INTO public.moon VALUES (8, 'Kallichore', 4000, 628, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 4000, 746, 'Saturn largest moon', false, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4000, 1000, 'Saturn moon', false, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 4000, 1000, 'Saturn moon', false, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 4000, 1000, 'Saturn moon', false, 6);
INSERT INTO public.moon VALUES (13, 'Lapetus', 4000, 1000, 'Saturn moon', false, 6);
INSERT INTO public.moon VALUES (14, 'Tethys', 546, 1000, 'Saturn moon', false, 6);
INSERT INTO public.moon VALUES (15, 'Titania', 5000, 3000, 'Uranus moon', false, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', 5000, 3000, 'Uranus moon', false, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 5000, 3000, 'Uranus moon', false, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 5000, 3000, 'Uranus moon', false, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 100, 4000, 'Neptunes largest moon', false, 8);
INSERT INTO public.moon VALUES (20, 'Thalassa', 2000, 4000, 'Neptunes 2 largest', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Ceres', 5000, 286, 'dwarf planet', false, 7);
INSERT INTO public.planet VALUES (10, 'Pluto', 5000, 5000, 'dwarf planet', false, 7);
INSERT INTO public.planet VALUES (11, 'Haumea', 5000, 7000, 'dwarf planet', false, 7);
INSERT INTO public.planet VALUES (12, 'Eris', 5000, 14000, 'dwarf planet', false, 7);
INSERT INTO public.planet VALUES (1, 'Mercury', 5000, 137, 'hottest planet', false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 5000, 251, 'morning star', false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 5000, 0, 'Home', true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 5000, 250, 'Red planet', false, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5000, 444, 'Biggest planet', false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 5000, 1000, 'Ring planet', false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 5000, 3000, 'Blue-green planet', false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 5000, 4000, 'Blue planet', false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 60, 97, NULL, false, 1);
INSERT INTO public.star VALUES (3, 'NGC 4622', 1110, 200, NULL, false, 3);
INSERT INTO public.star VALUES (4, '100 BILLION', 1300, 1700, NULL, false, 4);
INSERT INTO public.star VALUES (5, 'NGC 3031', 13301, 11, NULL, false, 5);
INSERT INTO public.star VALUES (6, 'ESO 350-40', 400, 489, NULL, false, 6);
INSERT INTO public.star VALUES (7, 'Sun', 5000, 150, NULL, true, 7);
INSERT INTO public.star VALUES (2, 'NGC 4038', 1000, 45, NULL, false, 2);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: comets discoverer_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT discoverer_unique UNIQUE (discoverer);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

