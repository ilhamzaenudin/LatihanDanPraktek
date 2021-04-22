--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-04-22 11:38:04

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
-- TOC entry 201 (class 1259 OID 16397)
-- Name: daftarsiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daftarsiswa (
    id integer NOT NULL,
    nama character varying(75) NOT NULL,
    keterangan text NOT NULL
);


ALTER TABLE public.daftarsiswa OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: daftarsiswa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.daftarsiswa_id_seq
    AS integer
    START WITH 9
    INCREMENT BY 1
    MINVALUE 9
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.daftarsiswa_id_seq OWNER TO postgres;

--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 200
-- Name: daftarsiswa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.daftarsiswa_id_seq OWNED BY public.daftarsiswa.id;


--
-- TOC entry 2851 (class 2604 OID 16400)
-- Name: daftarsiswa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftarsiswa ALTER COLUMN id SET DEFAULT nextval('public.daftarsiswa_id_seq'::regclass);


--
-- TOC entry 2985 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: daftarsiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.daftarsiswa (id, nama, keterangan) FROM stdin;
1	Ilham	Murid pintar dari kelas rpl
2	Andri	Murid pintar dari kelas rpl
3	Gani	Mahasiswa pintar di bidang it
9	Ilham	Baik
10	Hafizh	Pekerja Keras
11	Ratih	Pekerja Keras
14	Ilham	Zaenudin
15	Ilham	Zaenudin
16	Ilham	Zaenudin
17	Ilham	Zaenudin
18	Ilham	Zaenudin
19	Ilham	Zaenudin
20	Ilham	Zaenudin
21	Andri	Murid pintar dari kelas rpl
\.


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 200
-- Name: daftarsiswa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.daftarsiswa_id_seq', 28, true);


--
-- TOC entry 2853 (class 2606 OID 16405)
-- Name: daftarsiswa daftarSiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftarsiswa
    ADD CONSTRAINT "daftarSiswa_pkey" PRIMARY KEY (id);


-- Completed on 2021-04-22 11:38:05

--
-- PostgreSQL database dump complete
--

