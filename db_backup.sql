--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE answers (
    id bigint NOT NULL,
    answer character varying,
    question_id integer,
    taker_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE answers OWNER TO "Guest";

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answers_id_seq OWNER TO "Guest";

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE answers_id_seq OWNED BY answers.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "Guest";

--
-- Name: questions; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE questions (
    id bigint NOT NULL,
    question character varying,
    survey_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE questions OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questions_id_seq OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Guest";

--
-- Name: surveys; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE surveys (
    id bigint NOT NULL,
    name character varying,
    author character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE surveys OWNER TO "Guest";

--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE surveys_id_seq OWNER TO "Guest";

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE surveys_id_seq OWNED BY surveys.id;


--
-- Name: takers; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE takers (
    id bigint NOT NULL,
    name character varying,
    survey_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE takers OWNER TO "Guest";

--
-- Name: takers_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE takers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE takers_id_seq OWNER TO "Guest";

--
-- Name: takers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE takers_id_seq OWNED BY takers.id;


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY answers ALTER COLUMN id SET DEFAULT nextval('answers_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY surveys ALTER COLUMN id SET DEFAULT nextval('surveys_id_seq'::regclass);


--
-- Name: takers id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY takers ALTER COLUMN id SET DEFAULT nextval('takers_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY answers (id, answer, question_id, taker_id, created_at, updated_at) FROM stdin;
4	purple seamonkey	1	3	2017-09-26 20:53:24.293316	2017-09-26 20:53:24.293316
5	green	4	3	2017-09-26 20:53:24.295337	2017-09-26 20:53:24.295337
6	cool	5	3	2017-09-26 20:53:24.29691	2017-09-26 20:53:24.29691
7	Bronto	7	4	2017-09-26 21:00:59.186358	2017-09-26 21:00:59.186358
8	Soros	6	4	2017-09-26 21:00:59.23494	2017-09-26 21:00:59.23494
9	Little Foot	7	5	2017-09-26 21:19:23.836118	2017-09-26 21:19:23.836118
10	Ducky	6	5	2017-09-26 21:19:23.853336	2017-09-26 21:19:23.853336
11	sagiscorpius	1	6	2017-09-26 21:43:16.924193	2017-09-26 21:43:16.924193
12	twelve	4	6	2017-09-26 21:43:16.941238	2017-09-26 21:43:16.941238
13	111	5	6	2017-09-26 21:43:16.958387	2017-09-26 21:43:16.958387
14	My sign is really complicated, let me explain in great detail. Technically I'm a horse, but a horse isnt a sign so...	1	7	2017-09-26 21:44:35.641498	2017-09-26 21:44:35.641498
15	blu	4	7	2017-09-26 21:44:35.658621	2017-09-26 21:44:35.658621
16	was	5	7	2017-09-26 21:44:35.660251	2017-09-26 21:44:35.660251
\.


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('answers_id_seq', 16, true);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2017-09-26 17:15:30.951521	2017-09-26 17:15:30.951521
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY questions (id, question, survey_id, created_at, updated_at) FROM stdin;
1	What is your sign?	4	2017-09-26 18:38:04.049838	2017-09-26 20:00:57.559574
4	What is your favorite color?	4	2017-09-26 20:01:03.406331	2017-09-26 20:01:03.406331
5	How cool are you?	4	2017-09-26 20:01:06.965664	2017-09-26 20:01:06.965664
7	Whats the biggest dino?	5	2017-09-26 20:59:39.715858	2017-09-26 20:59:39.715858
6	whats the coolest dino	5	2017-09-26 20:59:29.629189	2017-09-26 21:00:24.554535
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('questions_id_seq', 7, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY schema_migrations (version) FROM stdin;
20170926160134
20170926160140
20170926161752
20170926161811
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY surveys (id, name, author, created_at, updated_at) FROM stdin;
4	Spirit Animal	Joe	2017-09-26 18:36:27.697211	2017-09-26 18:36:27.697211
5	Dinosuars	Me	2017-09-26 20:59:19.99636	2017-09-26 20:59:19.99636
6	Awesome Survey (Take me get 5 dolla)	John Doe	2017-09-26 21:28:54.583183	2017-09-26 21:28:54.583183
3	What are your most favorite things	Tom	2017-09-26 18:24:19.824964	2017-09-26 21:42:17.461577
7	Waht	me	2017-09-26 22:09:30.7679	2017-09-26 22:09:30.7679
8	Waht are u doin	me	2017-09-26 22:09:43.909104	2017-09-26 22:09:43.909104
10	testtesttesat	me	2017-09-26 22:11:11.361665	2017-09-26 22:11:11.361665
11	What are your most favorite things	Bob	2017-09-26 22:11:25.457512	2017-09-26 22:11:25.457512
13	What Are Your Most Favorite Things	Tom	2017-09-26 22:14:10.457948	2017-09-26 22:20:44.466975
12	Whoa	Tom	2017-09-26 22:11:51.904615	2017-09-26 22:21:57.616467
\.


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('surveys_id_seq', 14, true);


--
-- Data for Name: takers; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY takers (id, name, survey_id, created_at, updated_at) FROM stdin;
3	Ron	4	2017-09-26 20:53:07.583718	2017-09-26 20:53:07.583718
4	Nate	5	2017-09-26 21:00:46.113984	2017-09-26 21:00:46.113984
5	Dawson	5	2017-09-26 21:18:56.816622	2017-09-26 21:18:56.816622
6	jimbo	4	2017-09-26 21:42:44.660686	2017-09-26 21:42:44.660686
7	greg	4	2017-09-26 21:43:50.168574	2017-09-26 21:43:50.168574
8	test	3	2017-09-26 22:03:44.888654	2017-09-26 22:03:44.888654
9	test	5	2017-09-26 22:03:57.684242	2017-09-26 22:03:57.684242
\.


--
-- Name: takers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('takers_id_seq', 9, true);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: takers takers_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY takers
    ADD CONSTRAINT takers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

