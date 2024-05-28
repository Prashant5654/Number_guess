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

INSERT INTO public.games VALUES (1, 1, 8);
INSERT INTO public.games VALUES (2, 1, 13);
INSERT INTO public.games VALUES (3, 2, 546);
INSERT INTO public.games VALUES (4, 2, 699);
INSERT INTO public.games VALUES (5, 3, 70);
INSERT INTO public.games VALUES (6, 3, 671);
INSERT INTO public.games VALUES (7, 2, 867);
INSERT INTO public.games VALUES (8, 2, 159);
INSERT INTO public.games VALUES (9, 2, 693);
INSERT INTO public.games VALUES (10, 4, 483);
INSERT INTO public.games VALUES (11, 4, 553);
INSERT INTO public.games VALUES (12, 5, 280);
INSERT INTO public.games VALUES (13, 5, 855);
INSERT INTO public.games VALUES (14, 4, 702);
INSERT INTO public.games VALUES (15, 4, 15);
INSERT INTO public.games VALUES (16, 4, 850);
INSERT INTO public.games VALUES (17, 6, 581);
INSERT INTO public.games VALUES (18, 6, 727);
INSERT INTO public.games VALUES (19, 7, 974);
INSERT INTO public.games VALUES (20, 7, 96);
INSERT INTO public.games VALUES (21, 6, 622);
INSERT INTO public.games VALUES (22, 6, 647);
INSERT INTO public.games VALUES (23, 6, 748);
INSERT INTO public.games VALUES (24, 8, 708);
INSERT INTO public.games VALUES (25, 8, 862);
INSERT INTO public.games VALUES (26, 9, 418);
INSERT INTO public.games VALUES (27, 9, 701);
INSERT INTO public.games VALUES (28, 8, 70);
INSERT INTO public.games VALUES (29, 8, 171);
INSERT INTO public.games VALUES (30, 8, 626);
INSERT INTO public.games VALUES (31, 10, 152);
INSERT INTO public.games VALUES (32, 10, 143);
INSERT INTO public.games VALUES (33, 11, 664);
INSERT INTO public.games VALUES (34, 11, 638);
INSERT INTO public.games VALUES (35, 10, 95);
INSERT INTO public.games VALUES (36, 10, 224);
INSERT INTO public.games VALUES (37, 10, 532);
INSERT INTO public.games VALUES (38, 12, 432);
INSERT INTO public.games VALUES (39, 12, 15);
INSERT INTO public.games VALUES (40, 13, 64);
INSERT INTO public.games VALUES (41, 13, 654);
INSERT INTO public.games VALUES (42, 12, 221);
INSERT INTO public.games VALUES (43, 12, 956);
INSERT INTO public.games VALUES (44, 12, 560);
INSERT INTO public.games VALUES (45, 14, 295);
INSERT INTO public.games VALUES (46, 14, 565);
INSERT INTO public.games VALUES (47, 15, 827);
INSERT INTO public.games VALUES (48, 15, 787);
INSERT INTO public.games VALUES (49, 14, 867);
INSERT INTO public.games VALUES (50, 14, 131);
INSERT INTO public.games VALUES (51, 14, 177);
INSERT INTO public.games VALUES (52, 16, 41);
INSERT INTO public.games VALUES (53, 16, 976);
INSERT INTO public.games VALUES (54, 17, 680);
INSERT INTO public.games VALUES (55, 17, 320);
INSERT INTO public.games VALUES (56, 16, 893);
INSERT INTO public.games VALUES (57, 16, 162);
INSERT INTO public.games VALUES (58, 16, 883);
INSERT INTO public.games VALUES (59, 18, 325);
INSERT INTO public.games VALUES (60, 18, 820);
INSERT INTO public.games VALUES (61, 19, 727);
INSERT INTO public.games VALUES (62, 19, 842);
INSERT INTO public.games VALUES (63, 18, 536);
INSERT INTO public.games VALUES (64, 18, 377);
INSERT INTO public.games VALUES (65, 18, 321);
INSERT INTO public.games VALUES (66, 20, 617);
INSERT INTO public.games VALUES (67, 20, 47);
INSERT INTO public.games VALUES (68, 21, 996);
INSERT INTO public.games VALUES (69, 21, 416);
INSERT INTO public.games VALUES (70, 20, 909);
INSERT INTO public.games VALUES (71, 20, 536);
INSERT INTO public.games VALUES (72, 20, 173);
INSERT INTO public.games VALUES (73, 22, 681);
INSERT INTO public.games VALUES (74, 22, 272);
INSERT INTO public.games VALUES (75, 23, 490);
INSERT INTO public.games VALUES (76, 23, 764);
INSERT INTO public.games VALUES (77, 22, 306);
INSERT INTO public.games VALUES (78, 22, 683);
INSERT INTO public.games VALUES (79, 22, 228);
INSERT INTO public.games VALUES (80, 24, 203);
INSERT INTO public.games VALUES (81, 24, 417);
INSERT INTO public.games VALUES (82, 25, 895);
INSERT INTO public.games VALUES (83, 25, 990);
INSERT INTO public.games VALUES (84, 24, 870);
INSERT INTO public.games VALUES (85, 24, 941);
INSERT INTO public.games VALUES (86, 24, 668);
INSERT INTO public.games VALUES (87, 26, 803);
INSERT INTO public.games VALUES (88, 26, 437);
INSERT INTO public.games VALUES (89, 27, 241);
INSERT INTO public.games VALUES (90, 27, 954);
INSERT INTO public.games VALUES (91, 26, 270);
INSERT INTO public.games VALUES (92, 26, 284);
INSERT INTO public.games VALUES (93, 26, 659);
INSERT INTO public.games VALUES (94, 28, 233);
INSERT INTO public.games VALUES (95, 28, 595);
INSERT INTO public.games VALUES (96, 29, 368);
INSERT INTO public.games VALUES (97, 29, 412);
INSERT INTO public.games VALUES (98, 28, 714);
INSERT INTO public.games VALUES (99, 28, 254);
INSERT INTO public.games VALUES (100, 28, 218);
INSERT INTO public.games VALUES (101, 30, 426);
INSERT INTO public.games VALUES (102, 30, 623);
INSERT INTO public.games VALUES (103, 31, 665);
INSERT INTO public.games VALUES (104, 31, 633);
INSERT INTO public.games VALUES (105, 30, 559);
INSERT INTO public.games VALUES (106, 30, 778);
INSERT INTO public.games VALUES (107, 30, 820);
INSERT INTO public.games VALUES (108, 32, 731);
INSERT INTO public.games VALUES (109, 32, 645);
INSERT INTO public.games VALUES (110, 33, 267);
INSERT INTO public.games VALUES (111, 33, 619);
INSERT INTO public.games VALUES (112, 32, 562);
INSERT INTO public.games VALUES (113, 32, 642);
INSERT INTO public.games VALUES (114, 32, 365);
INSERT INTO public.games VALUES (115, 34, 365);
INSERT INTO public.games VALUES (116, 34, 374);
INSERT INTO public.games VALUES (117, 35, 757);
INSERT INTO public.games VALUES (118, 35, 113);
INSERT INTO public.games VALUES (119, 34, 50);
INSERT INTO public.games VALUES (120, 34, 51);
INSERT INTO public.games VALUES (121, 34, 984);
INSERT INTO public.games VALUES (122, 36, 485);
INSERT INTO public.games VALUES (123, 36, 467);
INSERT INTO public.games VALUES (124, 37, 586);
INSERT INTO public.games VALUES (125, 37, 658);
INSERT INTO public.games VALUES (126, 36, 428);
INSERT INTO public.games VALUES (127, 36, 336);
INSERT INTO public.games VALUES (128, 36, 294);
INSERT INTO public.games VALUES (129, 38, 946);
INSERT INTO public.games VALUES (130, 38, 83);
INSERT INTO public.games VALUES (131, 39, 96);
INSERT INTO public.games VALUES (132, 39, 105);
INSERT INTO public.games VALUES (133, 38, 327);
INSERT INTO public.games VALUES (134, 38, 625);
INSERT INTO public.games VALUES (135, 38, 489);
INSERT INTO public.games VALUES (136, 40, 864);
INSERT INTO public.games VALUES (137, 40, 319);
INSERT INTO public.games VALUES (138, 41, 247);
INSERT INTO public.games VALUES (139, 41, 353);
INSERT INTO public.games VALUES (140, 40, 870);
INSERT INTO public.games VALUES (141, 40, 271);
INSERT INTO public.games VALUES (142, 40, 898);
INSERT INTO public.games VALUES (143, 42, 892);
INSERT INTO public.games VALUES (144, 42, 411);
INSERT INTO public.games VALUES (145, 43, 30);
INSERT INTO public.games VALUES (146, 43, 125);
INSERT INTO public.games VALUES (147, 42, 687);
INSERT INTO public.games VALUES (148, 42, 37);
INSERT INTO public.games VALUES (149, 42, 231);
INSERT INTO public.games VALUES (150, 44, 195);
INSERT INTO public.games VALUES (151, 44, 596);
INSERT INTO public.games VALUES (152, 45, 21);
INSERT INTO public.games VALUES (153, 45, 432);
INSERT INTO public.games VALUES (154, 44, 479);
INSERT INTO public.games VALUES (155, 44, 468);
INSERT INTO public.games VALUES (156, 44, 608);
INSERT INTO public.games VALUES (157, 46, 91);
INSERT INTO public.games VALUES (158, 46, 788);
INSERT INTO public.games VALUES (159, 47, 960);
INSERT INTO public.games VALUES (160, 47, 437);
INSERT INTO public.games VALUES (161, 46, 665);
INSERT INTO public.games VALUES (162, 46, 386);
INSERT INTO public.games VALUES (163, 46, 449);
INSERT INTO public.games VALUES (164, 48, 645);
INSERT INTO public.games VALUES (165, 48, 474);
INSERT INTO public.games VALUES (166, 49, 448);
INSERT INTO public.games VALUES (167, 49, 400);
INSERT INTO public.games VALUES (168, 48, 829);
INSERT INTO public.games VALUES (169, 48, 33);
INSERT INTO public.games VALUES (170, 48, 90);
INSERT INTO public.games VALUES (171, 50, 86);
INSERT INTO public.games VALUES (172, 50, 53);
INSERT INTO public.games VALUES (173, 51, 342);
INSERT INTO public.games VALUES (174, 51, 889);
INSERT INTO public.games VALUES (175, 50, 255);
INSERT INTO public.games VALUES (176, 50, 311);
INSERT INTO public.games VALUES (177, 50, 351);
INSERT INTO public.games VALUES (178, 52, 144);
INSERT INTO public.games VALUES (179, 52, 983);
INSERT INTO public.games VALUES (180, 53, 86);
INSERT INTO public.games VALUES (181, 53, 365);
INSERT INTO public.games VALUES (182, 52, 387);
INSERT INTO public.games VALUES (183, 52, 662);
INSERT INTO public.games VALUES (184, 52, 701);
INSERT INTO public.games VALUES (185, 54, 620);
INSERT INTO public.games VALUES (186, 54, 717);
INSERT INTO public.games VALUES (187, 55, 486);
INSERT INTO public.games VALUES (188, 55, 962);
INSERT INTO public.games VALUES (189, 54, 467);
INSERT INTO public.games VALUES (190, 54, 277);
INSERT INTO public.games VALUES (191, 54, 158);
INSERT INTO public.games VALUES (192, 56, 472);
INSERT INTO public.games VALUES (193, 56, 514);
INSERT INTO public.games VALUES (194, 57, 399);
INSERT INTO public.games VALUES (195, 57, 277);
INSERT INTO public.games VALUES (196, 56, 227);
INSERT INTO public.games VALUES (197, 56, 766);
INSERT INTO public.games VALUES (198, 56, 45);
INSERT INTO public.games VALUES (199, 58, 652);
INSERT INTO public.games VALUES (200, 58, 111);
INSERT INTO public.games VALUES (201, 59, 117);
INSERT INTO public.games VALUES (202, 59, 954);
INSERT INTO public.games VALUES (203, 58, 904);
INSERT INTO public.games VALUES (204, 58, 752);
INSERT INTO public.games VALUES (205, 58, 195);
INSERT INTO public.games VALUES (206, 60, 375);
INSERT INTO public.games VALUES (207, 60, 722);
INSERT INTO public.games VALUES (208, 61, 919);
INSERT INTO public.games VALUES (209, 61, 399);
INSERT INTO public.games VALUES (210, 60, 579);
INSERT INTO public.games VALUES (211, 60, 6);
INSERT INTO public.games VALUES (212, 60, 727);
INSERT INTO public.games VALUES (213, 62, 166);
INSERT INTO public.games VALUES (214, 62, 304);
INSERT INTO public.games VALUES (215, 63, 417);
INSERT INTO public.games VALUES (216, 63, 795);
INSERT INTO public.games VALUES (217, 62, 855);
INSERT INTO public.games VALUES (218, 62, 929);
INSERT INTO public.games VALUES (219, 62, 237);
INSERT INTO public.games VALUES (220, 64, 189);
INSERT INTO public.games VALUES (221, 64, 119);
INSERT INTO public.games VALUES (222, 65, 766);
INSERT INTO public.games VALUES (223, 65, 255);
INSERT INTO public.games VALUES (224, 64, 198);
INSERT INTO public.games VALUES (225, 64, 142);
INSERT INTO public.games VALUES (226, 64, 762);
INSERT INTO public.games VALUES (227, 66, 683);
INSERT INTO public.games VALUES (228, 66, 338);
INSERT INTO public.games VALUES (229, 67, 407);
INSERT INTO public.games VALUES (230, 67, 138);
INSERT INTO public.games VALUES (231, 66, 826);
INSERT INTO public.games VALUES (232, 66, 493);
INSERT INTO public.games VALUES (233, 66, 742);
INSERT INTO public.games VALUES (234, 68, 993);
INSERT INTO public.games VALUES (235, 68, 185);
INSERT INTO public.games VALUES (236, 69, 756);
INSERT INTO public.games VALUES (237, 69, 213);
INSERT INTO public.games VALUES (238, 68, 966);
INSERT INTO public.games VALUES (239, 68, 201);
INSERT INTO public.games VALUES (240, 68, 77);
INSERT INTO public.games VALUES (241, 70, 266);
INSERT INTO public.games VALUES (242, 70, 981);
INSERT INTO public.games VALUES (243, 71, 154);
INSERT INTO public.games VALUES (244, 71, 560);
INSERT INTO public.games VALUES (245, 70, 733);
INSERT INTO public.games VALUES (246, 70, 688);
INSERT INTO public.games VALUES (247, 70, 473);
INSERT INTO public.games VALUES (248, 72, 508);
INSERT INTO public.games VALUES (249, 72, 446);
INSERT INTO public.games VALUES (250, 73, 89);
INSERT INTO public.games VALUES (251, 73, 71);
INSERT INTO public.games VALUES (252, 72, 119);
INSERT INTO public.games VALUES (253, 72, 833);
INSERT INTO public.games VALUES (254, 72, 397);
INSERT INTO public.games VALUES (255, 74, 868);
INSERT INTO public.games VALUES (256, 74, 597);
INSERT INTO public.games VALUES (257, 75, 851);
INSERT INTO public.games VALUES (258, 75, 654);
INSERT INTO public.games VALUES (259, 74, 349);
INSERT INTO public.games VALUES (260, 74, 321);
INSERT INTO public.games VALUES (261, 74, 103);
INSERT INTO public.games VALUES (262, 76, 297);
INSERT INTO public.games VALUES (263, 76, 748);
INSERT INTO public.games VALUES (264, 77, 817);
INSERT INTO public.games VALUES (265, 77, 676);
INSERT INTO public.games VALUES (266, 76, 237);
INSERT INTO public.games VALUES (267, 76, 527);
INSERT INTO public.games VALUES (268, 76, 369);
INSERT INTO public.games VALUES (269, 78, 125);
INSERT INTO public.games VALUES (270, 78, 470);
INSERT INTO public.games VALUES (271, 79, 439);
INSERT INTO public.games VALUES (272, 79, 277);
INSERT INTO public.games VALUES (273, 78, 816);
INSERT INTO public.games VALUES (274, 78, 715);
INSERT INTO public.games VALUES (275, 78, 133);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Prashant', 2);
INSERT INTO public.users VALUES (3, 'user_1716904762750', 2);
INSERT INTO public.users VALUES (2, 'user_1716904762751', 5);
INSERT INTO public.users VALUES (27, 'user_1716904913409', 2);
INSERT INTO public.users VALUES (5, 'user_1716904768731', 2);
INSERT INTO public.users VALUES (52, 'user_1716904968017', 5);
INSERT INTO public.users VALUES (4, 'user_1716904768732', 5);
INSERT INTO public.users VALUES (26, 'user_1716904913410', 5);
INSERT INTO public.users VALUES (7, 'user_1716904771961', 2);
INSERT INTO public.users VALUES (73, 'user_1716905002423', 2);
INSERT INTO public.users VALUES (6, 'user_1716904771962', 5);
INSERT INTO public.users VALUES (9, 'user_1716904775124', 2);
INSERT INTO public.users VALUES (29, 'user_1716904917011', 2);
INSERT INTO public.users VALUES (8, 'user_1716904775125', 5);
INSERT INTO public.users VALUES (55, 'user_1716904971445', 2);
INSERT INTO public.users VALUES (11, 'user_1716904813357', 2);
INSERT INTO public.users VALUES (28, 'user_1716904917012', 5);
INSERT INTO public.users VALUES (10, 'user_1716904813358', 5);
INSERT INTO public.users VALUES (13, 'user_1716904816125', 2);
INSERT INTO public.users VALUES (31, 'user_1716904919861', 2);
INSERT INTO public.users VALUES (12, 'user_1716904816126', 5);
INSERT INTO public.users VALUES (15, 'user_1716904819091', 2);
INSERT INTO public.users VALUES (54, 'user_1716904971446', 5);
INSERT INTO public.users VALUES (30, 'user_1716904919862', 5);
INSERT INTO public.users VALUES (14, 'user_1716904819092', 5);
INSERT INTO public.users VALUES (17, 'user_1716904822174', 2);
INSERT INTO public.users VALUES (16, 'user_1716904822175', 5);
INSERT INTO public.users VALUES (33, 'user_1716904923007', 2);
INSERT INTO public.users VALUES (19, 'user_1716904825344', 2);
INSERT INTO public.users VALUES (72, 'user_1716905002424', 5);
INSERT INTO public.users VALUES (18, 'user_1716904825345', 5);
INSERT INTO public.users VALUES (32, 'user_1716904923008', 5);
INSERT INTO public.users VALUES (21, 'user_1716904828584', 2);
INSERT INTO public.users VALUES (57, 'user_1716904974760', 2);
INSERT INTO public.users VALUES (20, 'user_1716904828585', 5);
INSERT INTO public.users VALUES (23, 'user_1716904859435', 2);
INSERT INTO public.users VALUES (35, 'user_1716904925742', 2);
INSERT INTO public.users VALUES (22, 'user_1716904859436', 5);
INSERT INTO public.users VALUES (25, 'user_1716904862499', 2);
INSERT INTO public.users VALUES (34, 'user_1716904925743', 5);
INSERT INTO public.users VALUES (24, 'user_1716904862500', 5);
INSERT INTO public.users VALUES (56, 'user_1716904974761', 5);
INSERT INTO public.users VALUES (37, 'user_1716904928832', 2);
INSERT INTO public.users VALUES (36, 'user_1716904928833', 5);
INSERT INTO public.users VALUES (39, 'user_1716904931681', 2);
INSERT INTO public.users VALUES (59, 'user_1716904978892', 2);
INSERT INTO public.users VALUES (75, 'user_1716905005584', 2);
INSERT INTO public.users VALUES (38, 'user_1716904931682', 5);
INSERT INTO public.users VALUES (41, 'user_1716904934453', 2);
INSERT INTO public.users VALUES (58, 'user_1716904978893', 5);
INSERT INTO public.users VALUES (40, 'user_1716904934454', 5);
INSERT INTO public.users VALUES (43, 'user_1716904951106', 2);
INSERT INTO public.users VALUES (61, 'user_1716904982533', 2);
INSERT INTO public.users VALUES (42, 'user_1716904951107', 5);
INSERT INTO public.users VALUES (74, 'user_1716905005585', 5);
INSERT INTO public.users VALUES (45, 'user_1716904954560', 2);
INSERT INTO public.users VALUES (60, 'user_1716904982534', 5);
INSERT INTO public.users VALUES (44, 'user_1716904954561', 5);
INSERT INTO public.users VALUES (47, 'user_1716904957780', 2);
INSERT INTO public.users VALUES (46, 'user_1716904957781', 5);
INSERT INTO public.users VALUES (63, 'user_1716904986019', 2);
INSERT INTO public.users VALUES (49, 'user_1716904961316', 2);
INSERT INTO public.users VALUES (77, 'user_1716905015588', 2);
INSERT INTO public.users VALUES (48, 'user_1716904961317', 5);
INSERT INTO public.users VALUES (62, 'user_1716904986020', 5);
INSERT INTO public.users VALUES (51, 'user_1716904964794', 2);
INSERT INTO public.users VALUES (50, 'user_1716904964795', 5);
INSERT INTO public.users VALUES (53, 'user_1716904968016', 2);
INSERT INTO public.users VALUES (65, 'user_1716904989368', 2);
INSERT INTO public.users VALUES (76, 'user_1716905015589', 5);
INSERT INTO public.users VALUES (64, 'user_1716904989369', 5);
INSERT INTO public.users VALUES (67, 'user_1716904992338', 2);
INSERT INTO public.users VALUES (79, 'user_1716905019161', 2);
INSERT INTO public.users VALUES (66, 'user_1716904992339', 5);
INSERT INTO public.users VALUES (69, 'user_1716904995690', 2);
INSERT INTO public.users VALUES (78, 'user_1716905019162', 5);
INSERT INTO public.users VALUES (68, 'user_1716904995691', 5);
INSERT INTO public.users VALUES (71, 'user_1716904998956', 2);
INSERT INTO public.users VALUES (70, 'user_1716904998957', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 275, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 79, true);


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

