--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-04-22 11:35:44

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
-- TOC entry 201 (class 1259 OID 16420)
-- Name: datacostumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datacostumer (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    alamat character varying(225) NOT NULL,
    kota character varying(225) NOT NULL,
    pendapatan bigint
);


ALTER TABLE public.datacostumer OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16418)
-- Name: datacostumer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.datacostumer_id_seq
    AS integer
    START WITH 3
    INCREMENT BY 1
    MINVALUE 3
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datacostumer_id_seq OWNER TO postgres;

--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 200
-- Name: datacostumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.datacostumer_id_seq OWNED BY public.datacostumer.id;


--
-- TOC entry 2851 (class 2604 OID 16423)
-- Name: datacostumer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datacostumer ALTER COLUMN id SET DEFAULT nextval('public.datacostumer_id_seq'::regclass);


--
-- TOC entry 2985 (class 0 OID 16420)
-- Dependencies: 201
-- Data for Name: datacostumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datacostumer (id, nama, alamat, kota, pendapatan) FROM stdin;
1	Ilham	Pagarsih	Bandung	10000000
2	Silfi	Konoha	Uchiha	5000000
3	sassasa	sasadasd	sdasdadad	12313
4	Ilham	Baik	dadawdsad	312312421
5	Ilham	Baik	dadawdsad	312312421
6	wadsadwad	dwasdaw	sadwads	21312421
7	Ilham	asdawdask	saadklwandas	1231231290
\.


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 200
-- Name: datacostumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datacostumer_id_seq', 7, true);


--
-- TOC entry 2853 (class 2606 OID 16428)
-- Name: datacostumer datacostumer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datacostumer
    ADD CONSTRAINT datacostumer_pkey PRIMARY KEY (id);


-- Completed on 2021-04-22 11:35:45

--
-- PostgreSQL database dump complete
--

