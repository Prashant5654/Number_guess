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
    user_id integer NOT NULL,
    no_of_guesses integer NOT NULL
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
    name character varying(22),
    no_of_games integer
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

INSERT INTO public.games VALUES (1, 1, 24);
INSERT INTO public.games VALUES (2, 2, 815);
INSERT INTO public.games VALUES (3, 2, 730);
INSERT INTO public.games VALUES (4, 3, 901);
INSERT INTO public.games VALUES (5, 3, 138);
INSERT INTO public.games VALUES (6, 2, 786);
INSERT INTO public.games VALUES (7, 2, 809);
INSERT INTO public.games VALUES (8, 2, 218);
INSERT INTO public.games VALUES (9, 4, 48);
INSERT INTO public.games VALUES (10, 4, 497);
INSERT INTO public.games VALUES (11, 5, 824);
INSERT INTO public.games VALUES (12, 5, 11);
INSERT INTO public.games VALUES (13, 4, 776);
INSERT INTO public.games VALUES (14, 4, 638);
INSERT INTO public.games VALUES (15, 4, 611);
INSERT INTO public.games VALUES (16, 6, 493);
INSERT INTO public.games VALUES (17, 6, 231);
INSERT INTO public.games VALUES (18, 7, 812);
INSERT INTO public.games VALUES (19, 7, 752);
INSERT INTO public.games VALUES (20, 6, 122);
INSERT INTO public.games VALUES (21, 6, 799);
INSERT INTO public.games VALUES (22, 6, 494);
INSERT INTO public.games VALUES (23, 8, 484);
INSERT INTO public.games VALUES (24, 8, 941);
INSERT INTO public.games VALUES (25, 9, 742);
INSERT INTO public.games VALUES (26, 9, 782);
INSERT INTO public.games VALUES (27, 8, 810);
INSERT INTO public.games VALUES (28, 8, 54);
INSERT INTO public.games VALUES (29, 8, 912);
INSERT INTO public.games VALUES (30, 10, 949);
INSERT INTO public.games VALUES (31, 10, 537);
INSERT INTO public.games VALUES (32, 11, 265);
INSERT INTO public.games VALUES (33, 11, 530);
INSERT INTO public.games VALUES (34, 10, 174);
INSERT INTO public.games VALUES (35, 10, 239);
INSERT INTO public.games VALUES (36, 10, 646);
INSERT INTO public.games VALUES (37, 12, 144);
INSERT INTO public.games VALUES (38, 12, 285);
INSERT INTO public.games VALUES (39, 13, 242);
INSERT INTO public.games VALUES (40, 13, 608);
INSERT INTO public.games VALUES (41, 12, 45);
INSERT INTO public.games VALUES (42, 12, 793);
INSERT INTO public.games VALUES (43, 12, 582);
INSERT INTO public.games VALUES (44, 14, 22);
INSERT INTO public.games VALUES (45, 14, 976);
INSERT INTO public.games VALUES (46, 15, 618);
INSERT INTO public.games VALUES (47, 15, 532);
INSERT INTO public.games VALUES (48, 14, 603);
INSERT INTO public.games VALUES (49, 14, 17);
INSERT INTO public.games VALUES (50, 14, 28);
INSERT INTO public.games VALUES (51, 16, 46);
INSERT INTO public.games VALUES (52, 16, 676);
INSERT INTO public.games VALUES (53, 17, 227);
INSERT INTO public.games VALUES (54, 17, 147);
INSERT INTO public.games VALUES (55, 16, 18);
INSERT INTO public.games VALUES (56, 16, 328);
INSERT INTO public.games VALUES (57, 16, 878);
INSERT INTO public.games VALUES (58, 18, 142);
INSERT INTO public.games VALUES (59, 18, 239);
INSERT INTO public.games VALUES (60, 19, 540);
INSERT INTO public.games VALUES (61, 19, 436);
INSERT INTO public.games VALUES (62, 18, 233);
INSERT INTO public.games VALUES (63, 18, 475);
INSERT INTO public.games VALUES (64, 18, 456);
INSERT INTO public.games VALUES (65, 20, 397);
INSERT INTO public.games VALUES (66, 20, 189);
INSERT INTO public.games VALUES (67, 21, 475);
INSERT INTO public.games VALUES (68, 21, 437);
INSERT INTO public.games VALUES (69, 20, 666);
INSERT INTO public.games VALUES (70, 20, 815);
INSERT INTO public.games VALUES (71, 20, 419);
INSERT INTO public.games VALUES (72, 22, 930);
INSERT INTO public.games VALUES (73, 22, 744);
INSERT INTO public.games VALUES (74, 23, 586);
INSERT INTO public.games VALUES (75, 23, 627);
INSERT INTO public.games VALUES (76, 22, 470);
INSERT INTO public.games VALUES (77, 22, 156);
INSERT INTO public.games VALUES (78, 22, 211);
INSERT INTO public.games VALUES (79, 24, 189);
INSERT INTO public.games VALUES (80, 24, 421);
INSERT INTO public.games VALUES (81, 25, 124);
INSERT INTO public.games VALUES (82, 25, 879);
INSERT INTO public.games VALUES (83, 24, 628);
INSERT INTO public.games VALUES (84, 24, 553);
INSERT INTO public.games VALUES (85, 24, 402);
INSERT INTO public.games VALUES (86, 26, 783);
INSERT INTO public.games VALUES (87, 26, 875);
INSERT INTO public.games VALUES (88, 27, 2);
INSERT INTO public.games VALUES (89, 27, 285);
INSERT INTO public.games VALUES (90, 26, 952);
INSERT INTO public.games VALUES (91, 26, 140);
INSERT INTO public.games VALUES (92, 26, 936);
INSERT INTO public.games VALUES (93, 28, 766);
INSERT INTO public.games VALUES (94, 28, 146);
INSERT INTO public.games VALUES (95, 29, 42);
INSERT INTO public.games VALUES (96, 29, 271);
INSERT INTO public.games VALUES (97, 28, 165);
INSERT INTO public.games VALUES (98, 28, 877);
INSERT INTO public.games VALUES (99, 28, 394);
INSERT INTO public.games VALUES (100, 30, 207);
INSERT INTO public.games VALUES (101, 30, 894);
INSERT INTO public.games VALUES (102, 31, 320);
INSERT INTO public.games VALUES (103, 31, 556);
INSERT INTO public.games VALUES (104, 30, 656);
INSERT INTO public.games VALUES (105, 30, 200);
INSERT INTO public.games VALUES (106, 30, 840);
INSERT INTO public.games VALUES (107, 32, 342);
INSERT INTO public.games VALUES (108, 32, 353);
INSERT INTO public.games VALUES (109, 33, 452);
INSERT INTO public.games VALUES (110, 33, 998);
INSERT INTO public.games VALUES (111, 32, 895);
INSERT INTO public.games VALUES (112, 32, 901);
INSERT INTO public.games VALUES (113, 32, 631);
INSERT INTO public.games VALUES (114, 1, 10);
INSERT INTO public.games VALUES (115, 34, 856);
INSERT INTO public.games VALUES (116, 34, 389);
INSERT INTO public.games VALUES (117, 35, 564);
INSERT INTO public.games VALUES (118, 35, 328);
INSERT INTO public.games VALUES (119, 34, 276);
INSERT INTO public.games VALUES (120, 34, 484);
INSERT INTO public.games VALUES (121, 34, 161);
INSERT INTO public.games VALUES (122, 36, 659);
INSERT INTO public.games VALUES (123, 36, 126);
INSERT INTO public.games VALUES (124, 37, 578);
INSERT INTO public.games VALUES (125, 37, 747);
INSERT INTO public.games VALUES (126, 36, 74);
INSERT INTO public.games VALUES (127, 36, 429);
INSERT INTO public.games VALUES (128, 36, 167);
INSERT INTO public.games VALUES (129, 38, 177);
INSERT INTO public.games VALUES (130, 38, 277);
INSERT INTO public.games VALUES (131, 39, 421);
INSERT INTO public.games VALUES (132, 39, 314);
INSERT INTO public.games VALUES (133, 38, 853);
INSERT INTO public.games VALUES (134, 38, 147);
INSERT INTO public.games VALUES (135, 38, 100);
INSERT INTO public.games VALUES (136, 40, 873);
INSERT INTO public.games VALUES (137, 40, 698);
INSERT INTO public.games VALUES (138, 41, 598);
INSERT INTO public.games VALUES (139, 41, 184);
INSERT INTO public.games VALUES (140, 40, 795);
INSERT INTO public.games VALUES (141, 40, 187);
INSERT INTO public.games VALUES (142, 40, 801);
INSERT INTO public.games VALUES (143, 42, 717);
INSERT INTO public.games VALUES (144, 42, 480);
INSERT INTO public.games VALUES (145, 43, 721);
INSERT INTO public.games VALUES (146, 43, 632);
INSERT INTO public.games VALUES (147, 42, 262);
INSERT INTO public.games VALUES (148, 42, 813);
INSERT INTO public.games VALUES (149, 42, 71);
INSERT INTO public.games VALUES (150, 44, 18);
INSERT INTO public.games VALUES (151, 45, 233);
INSERT INTO public.games VALUES (152, 45, 34);
INSERT INTO public.games VALUES (153, 46, 517);
INSERT INTO public.games VALUES (154, 46, 791);
INSERT INTO public.games VALUES (155, 45, 68);
INSERT INTO public.games VALUES (156, 45, 651);
INSERT INTO public.games VALUES (157, 45, 821);
INSERT INTO public.games VALUES (158, 47, 763);
INSERT INTO public.games VALUES (159, 47, 303);
INSERT INTO public.games VALUES (160, 48, 268);
INSERT INTO public.games VALUES (161, 48, 475);
INSERT INTO public.games VALUES (162, 47, 501);
INSERT INTO public.games VALUES (163, 47, 607);
INSERT INTO public.games VALUES (164, 47, 168);
INSERT INTO public.games VALUES (165, 1, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1717162458855', 2);
INSERT INTO public.users VALUES (2, 'user_1717162458856', 5);
INSERT INTO public.users VALUES (25, 'user_1717162703905', 2);
INSERT INTO public.users VALUES (5, 'user_1717162471796', 2);
INSERT INTO public.users VALUES (4, 'user_1717162471797', 5);
INSERT INTO public.users VALUES (24, 'user_1717162703906', 5);
INSERT INTO public.users VALUES (7, 'user_1717162475221', 2);
INSERT INTO public.users VALUES (6, 'user_1717162475222', 5);
INSERT INTO public.users VALUES (9, 'user_1717162493286', 2);
INSERT INTO public.users VALUES (27, 'user_1717162707403', 2);
INSERT INTO public.users VALUES (8, 'user_1717162493287', 5);
INSERT INTO public.users VALUES (11, 'user_1717162580900', 2);
INSERT INTO public.users VALUES (26, 'user_1717162707404', 5);
INSERT INTO public.users VALUES (10, 'user_1717162580901', 5);
INSERT INTO public.users VALUES (13, 'user_1717162585176', 2);
INSERT INTO public.users VALUES (29, 'user_1717162710895', 2);
INSERT INTO public.users VALUES (12, 'user_1717162585177', 5);
INSERT INTO public.users VALUES (15, 'user_1717162620695', 2);
INSERT INTO public.users VALUES (28, 'user_1717162710896', 5);
INSERT INTO public.users VALUES (14, 'user_1717162620696', 5);
INSERT INTO public.users VALUES (17, 'user_1717162624366', 2);
INSERT INTO public.users VALUES (16, 'user_1717162624367', 5);
INSERT INTO public.users VALUES (31, 'user_1717163079259', 2);
INSERT INTO public.users VALUES (19, 'user_1717162627430', 2);
INSERT INTO public.users VALUES (18, 'user_1717162627431', 5);
INSERT INTO public.users VALUES (30, 'user_1717163079260', 5);
INSERT INTO public.users VALUES (21, 'user_1717162631688', 2);
INSERT INTO public.users VALUES (20, 'user_1717162631689', 5);
INSERT INTO public.users VALUES (23, 'user_1717162635278', 2);
INSERT INTO public.users VALUES (33, 'user_1717163083629', 2);
INSERT INTO public.users VALUES (22, 'user_1717162635279', 5);
INSERT INTO public.users VALUES (32, 'user_1717163083630', 5);
INSERT INTO public.users VALUES (35, 'user_1717163157350', 2);
INSERT INTO public.users VALUES (34, 'user_1717163157351', 5);
INSERT INTO public.users VALUES (37, 'user_1717163160776', 2);
INSERT INTO public.users VALUES (36, 'user_1717163160777', 5);
INSERT INTO public.users VALUES (39, 'user_1717163163527', 2);
INSERT INTO public.users VALUES (38, 'user_1717163163528', 5);
INSERT INTO public.users VALUES (41, 'user_1717163166409', 2);
INSERT INTO public.users VALUES (40, 'user_1717163166410', 5);
INSERT INTO public.users VALUES (43, 'user_1717163176554', 2);
INSERT INTO public.users VALUES (42, 'user_1717163176555', 5);
INSERT INTO public.users VALUES (44, 'John', 1);
INSERT INTO public.users VALUES (45, 'user_1717163725204', 1);
INSERT INTO public.users VALUES (46, 'user_1717163725203', 1);
INSERT INTO public.users VALUES (47, 'user_1717163761844', 1);
INSERT INTO public.users VALUES (48, 'user_1717163761843', 1);
INSERT INTO public.users VALUES (1, 'Prash', 3);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 165, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

