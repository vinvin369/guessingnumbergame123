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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 30, 1);
INSERT INTO public.games VALUES (2, 14, 1);
INSERT INTO public.games VALUES (3, 685, 2);
INSERT INTO public.games VALUES (4, 448, 2);
INSERT INTO public.games VALUES (5, 772, 3);
INSERT INTO public.games VALUES (6, 448, 3);
INSERT INTO public.games VALUES (7, 345, 2);
INSERT INTO public.games VALUES (8, 863, 2);
INSERT INTO public.games VALUES (9, 662, 2);
INSERT INTO public.games VALUES (10, 556, 4);
INSERT INTO public.games VALUES (11, 943, 4);
INSERT INTO public.games VALUES (12, 42, 5);
INSERT INTO public.games VALUES (13, 500, 5);
INSERT INTO public.games VALUES (14, 430, 4);
INSERT INTO public.games VALUES (15, 538, 4);
INSERT INTO public.games VALUES (16, 112, 4);
INSERT INTO public.games VALUES (17, 79, 6);
INSERT INTO public.games VALUES (18, 975, 6);
INSERT INTO public.games VALUES (19, 30, 7);
INSERT INTO public.games VALUES (20, 490, 7);
INSERT INTO public.games VALUES (21, 706, 6);
INSERT INTO public.games VALUES (22, 945, 6);
INSERT INTO public.games VALUES (23, 510, 6);
INSERT INTO public.games VALUES (24, 175, 8);
INSERT INTO public.games VALUES (25, 631, 8);
INSERT INTO public.games VALUES (26, 603, 9);
INSERT INTO public.games VALUES (27, 318, 9);
INSERT INTO public.games VALUES (28, 542, 8);
INSERT INTO public.games VALUES (29, 927, 8);
INSERT INTO public.games VALUES (30, 536, 8);
INSERT INTO public.games VALUES (31, 908, 10);
INSERT INTO public.games VALUES (32, 680, 10);
INSERT INTO public.games VALUES (33, 7, 11);
INSERT INTO public.games VALUES (34, 752, 11);
INSERT INTO public.games VALUES (35, 540, 10);
INSERT INTO public.games VALUES (36, 153, 10);
INSERT INTO public.games VALUES (37, 771, 10);
INSERT INTO public.games VALUES (38, 999, 12);
INSERT INTO public.games VALUES (39, 385, 12);
INSERT INTO public.games VALUES (40, 733, 13);
INSERT INTO public.games VALUES (41, 479, 13);
INSERT INTO public.games VALUES (42, 538, 12);
INSERT INTO public.games VALUES (43, 710, 12);
INSERT INTO public.games VALUES (44, 14, 12);
INSERT INTO public.games VALUES (45, 822, 14);
INSERT INTO public.games VALUES (46, 831, 14);
INSERT INTO public.games VALUES (47, 901, 15);
INSERT INTO public.games VALUES (48, 304, 15);
INSERT INTO public.games VALUES (49, 273, 14);
INSERT INTO public.games VALUES (50, 993, 14);
INSERT INTO public.games VALUES (51, 513, 14);
INSERT INTO public.games VALUES (52, 562, 16);
INSERT INTO public.games VALUES (53, 167, 16);
INSERT INTO public.games VALUES (54, 139, 17);
INSERT INTO public.games VALUES (55, 942, 17);
INSERT INTO public.games VALUES (56, 342, 16);
INSERT INTO public.games VALUES (57, 383, 16);
INSERT INTO public.games VALUES (58, 497, 16);
INSERT INTO public.games VALUES (59, 155, 18);
INSERT INTO public.games VALUES (60, 772, 18);
INSERT INTO public.games VALUES (61, 905, 19);
INSERT INTO public.games VALUES (62, 547, 19);
INSERT INTO public.games VALUES (63, 900, 18);
INSERT INTO public.games VALUES (64, 743, 18);
INSERT INTO public.games VALUES (65, 482, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'bunny');
INSERT INTO public.users VALUES (2, 'user_1711558324239');
INSERT INTO public.users VALUES (3, 'user_1711558324238');
INSERT INTO public.users VALUES (4, 'user_1711558610909');
INSERT INTO public.users VALUES (5, 'user_1711558610908');
INSERT INTO public.users VALUES (6, 'user_1711558676763');
INSERT INTO public.users VALUES (7, 'user_1711558676762');
INSERT INTO public.users VALUES (8, 'user_1711558686493');
INSERT INTO public.users VALUES (9, 'user_1711558686492');
INSERT INTO public.users VALUES (10, 'user_1711558705538');
INSERT INTO public.users VALUES (11, 'user_1711558705537');
INSERT INTO public.users VALUES (12, 'user_1711558722150');
INSERT INTO public.users VALUES (13, 'user_1711558722149');
INSERT INTO public.users VALUES (14, 'user_1711558738385');
INSERT INTO public.users VALUES (15, 'user_1711558738384');
INSERT INTO public.users VALUES (16, 'user_1711558782874');
INSERT INTO public.users VALUES (17, 'user_1711558782873');
INSERT INTO public.users VALUES (18, 'user_1711558807934');
INSERT INTO public.users VALUES (19, 'user_1711558807933');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 65, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


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

