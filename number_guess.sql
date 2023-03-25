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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    numofguesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 20, 4);
INSERT INTO public.games VALUES (2, 20, 1);
INSERT INTO public.games VALUES (3, 20, 2);
INSERT INTO public.games VALUES (4, 22, 582);
INSERT INTO public.games VALUES (5, 23, 455);
INSERT INTO public.games VALUES (6, 23, 473);
INSERT INTO public.games VALUES (7, 22, 828);
INSERT INTO public.games VALUES (8, 22, 922);
INSERT INTO public.games VALUES (9, 22, 280);
INSERT INTO public.games VALUES (10, 24, 862);
INSERT INTO public.games VALUES (11, 24, 569);
INSERT INTO public.games VALUES (12, 25, 974);
INSERT INTO public.games VALUES (13, 24, 824);
INSERT INTO public.games VALUES (14, 24, 813);
INSERT INTO public.games VALUES (15, 24, 945);
INSERT INTO public.games VALUES (16, 26, 1);
INSERT INTO public.games VALUES (17, 27, 618);
INSERT INTO public.games VALUES (18, 27, 980);
INSERT INTO public.games VALUES (19, 28, 29);
INSERT INTO public.games VALUES (20, 28, 488);
INSERT INTO public.games VALUES (21, 27, 662);
INSERT INTO public.games VALUES (22, 27, 584);
INSERT INTO public.games VALUES (23, 27, 636);
INSERT INTO public.games VALUES (24, 29, 506);
INSERT INTO public.games VALUES (25, 29, 378);
INSERT INTO public.games VALUES (26, 30, 449);
INSERT INTO public.games VALUES (27, 30, 717);
INSERT INTO public.games VALUES (28, 29, 885);
INSERT INTO public.games VALUES (29, 29, 420);
INSERT INTO public.games VALUES (30, 29, 799);
INSERT INTO public.games VALUES (31, 31, 542);
INSERT INTO public.games VALUES (32, 32, 126);
INSERT INTO public.games VALUES (33, 32, 606);
INSERT INTO public.games VALUES (34, 31, 600);
INSERT INTO public.games VALUES (35, 31, 314);
INSERT INTO public.games VALUES (36, 31, 467);
INSERT INTO public.games VALUES (37, 33, 73);
INSERT INTO public.games VALUES (38, 33, 467);
INSERT INTO public.games VALUES (39, 34, 342);
INSERT INTO public.games VALUES (40, 34, 662);
INSERT INTO public.games VALUES (41, 33, 520);
INSERT INTO public.games VALUES (42, 33, 34);
INSERT INTO public.games VALUES (43, 33, 175);
INSERT INTO public.games VALUES (44, 35, 761);
INSERT INTO public.games VALUES (45, 35, 537);
INSERT INTO public.games VALUES (46, 36, 128);
INSERT INTO public.games VALUES (47, 36, 230);
INSERT INTO public.games VALUES (48, 35, 290);
INSERT INTO public.games VALUES (49, 35, 844);
INSERT INTO public.games VALUES (50, 35, 311);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (20, 'test');
INSERT INTO public.users VALUES (22, 'user_1679768905310');
INSERT INTO public.users VALUES (23, 'user_1679768905309');
INSERT INTO public.users VALUES (24, 'user_1679769025487');
INSERT INTO public.users VALUES (25, 'user_1679769025486');
INSERT INTO public.users VALUES (26, 'freecodecamp');
INSERT INTO public.users VALUES (27, 'user_1679769143122');
INSERT INTO public.users VALUES (28, 'user_1679769143121');
INSERT INTO public.users VALUES (29, 'user_1679769191262');
INSERT INTO public.users VALUES (30, 'user_1679769191261');
INSERT INTO public.users VALUES (31, 'user_1679769251033');
INSERT INTO public.users VALUES (32, 'user_1679769251032');
INSERT INTO public.users VALUES (33, 'user_1679769276563');
INSERT INTO public.users VALUES (34, 'user_1679769276562');
INSERT INTO public.users VALUES (35, 'user_1679769295962');
INSERT INTO public.users VALUES (36, 'user_1679769295961');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

