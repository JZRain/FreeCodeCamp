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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 464, 2);
INSERT INTO public.games VALUES (2, 805, 2);
INSERT INTO public.games VALUES (3, 183, 3);
INSERT INTO public.games VALUES (4, 420, 3);
INSERT INTO public.games VALUES (5, 510, 2);
INSERT INTO public.games VALUES (6, 778, 2);
INSERT INTO public.games VALUES (7, 906, 2);
INSERT INTO public.games VALUES (8, 461, 4);
INSERT INTO public.games VALUES (9, 536, 4);
INSERT INTO public.games VALUES (10, 358, 5);
INSERT INTO public.games VALUES (11, 301, 5);
INSERT INTO public.games VALUES (12, 688, 4);
INSERT INTO public.games VALUES (13, 503, 4);
INSERT INTO public.games VALUES (14, 587, 4);
INSERT INTO public.games VALUES (15, 297, 6);
INSERT INTO public.games VALUES (16, 828, 6);
INSERT INTO public.games VALUES (17, 393, 7);
INSERT INTO public.games VALUES (18, 245, 7);
INSERT INTO public.games VALUES (19, 21, 6);
INSERT INTO public.games VALUES (20, 153, 6);
INSERT INTO public.games VALUES (21, 251, 6);
INSERT INTO public.games VALUES (22, 220, 8);
INSERT INTO public.games VALUES (23, 583, 8);
INSERT INTO public.games VALUES (24, 580, 9);
INSERT INTO public.games VALUES (25, 917, 9);
INSERT INTO public.games VALUES (26, 511, 8);
INSERT INTO public.games VALUES (27, 506, 8);
INSERT INTO public.games VALUES (28, 318, 8);
INSERT INTO public.games VALUES (29, 104, 10);
INSERT INTO public.games VALUES (30, 855, 10);
INSERT INTO public.games VALUES (31, 82, 11);
INSERT INTO public.games VALUES (32, 582, 11);
INSERT INTO public.games VALUES (33, 619, 10);
INSERT INTO public.games VALUES (34, 228, 10);
INSERT INTO public.games VALUES (35, 275, 10);
INSERT INTO public.games VALUES (36, 908, 12);
INSERT INTO public.games VALUES (37, 817, 12);
INSERT INTO public.games VALUES (38, 59, 13);
INSERT INTO public.games VALUES (39, 782, 13);
INSERT INTO public.games VALUES (40, 336, 12);
INSERT INTO public.games VALUES (41, 610, 12);
INSERT INTO public.games VALUES (42, 488, 12);
INSERT INTO public.games VALUES (43, 935, 14);
INSERT INTO public.games VALUES (44, 274, 14);
INSERT INTO public.games VALUES (45, 806, 15);
INSERT INTO public.games VALUES (46, 386, 15);
INSERT INTO public.games VALUES (47, 745, 14);
INSERT INTO public.games VALUES (48, 962, 14);
INSERT INTO public.games VALUES (49, 286, 14);
INSERT INTO public.games VALUES (50, 356, 16);
INSERT INTO public.games VALUES (51, 25, 16);
INSERT INTO public.games VALUES (52, 289, 17);
INSERT INTO public.games VALUES (53, 229, 17);
INSERT INTO public.games VALUES (54, 192, 16);
INSERT INTO public.games VALUES (55, 483, 16);
INSERT INTO public.games VALUES (56, 517, 16);
INSERT INTO public.games VALUES (57, 953, 18);
INSERT INTO public.games VALUES (58, 860, 18);
INSERT INTO public.games VALUES (59, 434, 19);
INSERT INTO public.games VALUES (60, 539, 19);
INSERT INTO public.games VALUES (61, 647, 18);
INSERT INTO public.games VALUES (62, 939, 18);
INSERT INTO public.games VALUES (63, 603, 18);
INSERT INTO public.games VALUES (64, 531, 20);
INSERT INTO public.games VALUES (65, 365, 20);
INSERT INTO public.games VALUES (66, 221, 21);
INSERT INTO public.games VALUES (67, 187, 21);
INSERT INTO public.games VALUES (68, 808, 20);
INSERT INTO public.games VALUES (69, 280, 20);
INSERT INTO public.games VALUES (70, 772, 20);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jazz');
INSERT INTO public.users VALUES (2, 'user_1740718159579');
INSERT INTO public.users VALUES (3, 'user_1740718159578');
INSERT INTO public.users VALUES (4, 'user_1740718233866');
INSERT INTO public.users VALUES (5, 'user_1740718233865');
INSERT INTO public.users VALUES (6, 'user_1740718419637');
INSERT INTO public.users VALUES (7, 'user_1740718419636');
INSERT INTO public.users VALUES (8, 'user_1740718439301');
INSERT INTO public.users VALUES (9, 'user_1740718439300');
INSERT INTO public.users VALUES (10, 'user_1740718479008');
INSERT INTO public.users VALUES (11, 'user_1740718479007');
INSERT INTO public.users VALUES (12, 'user_1740718486212');
INSERT INTO public.users VALUES (13, 'user_1740718486211');
INSERT INTO public.users VALUES (14, 'user_1740718493090');
INSERT INTO public.users VALUES (15, 'user_1740718493089');
INSERT INTO public.users VALUES (16, 'user_1740718553142');
INSERT INTO public.users VALUES (17, 'user_1740718553141');
INSERT INTO public.users VALUES (18, 'user_1740718611825');
INSERT INTO public.users VALUES (19, 'user_1740718611824');
INSERT INTO public.users VALUES (20, 'user_1740718671434');
INSERT INTO public.users VALUES (21, 'user_1740718671433');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


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

