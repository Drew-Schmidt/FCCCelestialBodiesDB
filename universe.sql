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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance character varying(20)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    stars character varying(20) NOT NULL,
    planets integer,
    moons integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size character varying(20) NOT NULL,
    cheese boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type text NOT NULL,
    life boolean,
    star_id integer,
    avgtemp numeric(10,2),
    water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    class character varying(20) NOT NULL,
    color integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, '3c273', '1B ly');
INSERT INTO public.blackhole VALUES (2, 'Arp 151', '300M ly');
INSERT INTO public.blackhole VALUES (3, 'IC 1459', '100M ly');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Apha Centauri', '3', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Alpha Canis Majoris', '2', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Epsilon Indi', '3', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, '61 Cygni', '2', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Tau Ceti', '1', NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'MilkyWay', '1', 8, 207);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', '1738', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', '11', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', '6', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', '1821', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', '1560', false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', '2634', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', '2410', false, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', '198', false, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', '252', false, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', '533', false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', '561', false, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', '763', false, 6);
INSERT INTO public.moon VALUES (13, 'Titan', '2574', false, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', '135', false, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', '578', false, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', '584', false, 7);
INSERT INTO public.moon VALUES (17, 'Titania', '788', false, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', '761', false, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', '235', false, 7);
INSERT INTO public.moon VALUES (20, 'Triton', '1353', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Rocky', false, 1, NULL, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Rocky', false, 1, NULL, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'Rocky', true, 1, NULL, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Rocky', false, 1, NULL, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas', false, 1, NULL, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas', false, 1, NULL, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice', false, 1, NULL, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice', false, 1, NULL, true);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri A', 'Unknown', NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri B', 'Unknown', NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Tau Ceti G', 'Unknown', NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Tau Ceti H', 'Unknown', NULL, 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'G2V', NULL, 1);
INSERT INTO public.star VALUES (2, 'Promxima Centauri', 'M5.5Ve', NULL, 2);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 'G2V', NULL, 2);
INSERT INTO public.star VALUES (4, 'Toliman', 'K1V', NULL, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 'A1V', NULL, 3);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 'G8.5Vp', NULL, 6);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


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

