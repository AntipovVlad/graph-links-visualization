--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-04-02 09:46:35

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
-- TOC entry 224 (class 1259 OID 254245)
-- Name: cen_lab; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cen_lab (
    cen_lab_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 223 (class 1259 OID 254244)
-- Name: cen_lab_cen_lab_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cen_lab_cen_lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 223
-- Name: cen_lab_cen_lab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cen_lab_cen_lab_id_seq OWNED BY public.cen_lab.cen_lab_id;


--
-- TOC entry 210 (class 1259 OID 254133)
-- Name: direction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.direction (
    direction_id integer NOT NULL,
    name character varying
);


--
-- TOC entry 209 (class 1259 OID 254132)
-- Name: direction_direction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.direction_direction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 209
-- Name: direction_direction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.direction_direction_id_seq OWNED BY public.direction.direction_id;


--
-- TOC entry 216 (class 1259 OID 254178)
-- Name: edu_program; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.edu_program (
    edu_program_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 215 (class 1259 OID 254177)
-- Name: edu_program_edu_program_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.edu_program_edu_program_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 215
-- Name: edu_program_edu_program_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.edu_program_edu_program_id_seq OWNED BY public.edu_program.edu_program_id;


--
-- TOC entry 226 (class 1259 OID 254262)
-- Name: equip_po; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.equip_po (
    equip_po_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 225 (class 1259 OID 254261)
-- Name: equip_po_equip_po_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.equip_po_equip_po_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 225
-- Name: equip_po_equip_po_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.equip_po_equip_po_id_seq OWNED BY public.equip_po.equip_po_id;


--
-- TOC entry 212 (class 1259 OID 254144)
-- Name: expert; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.expert (
    expert_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 211 (class 1259 OID 254143)
-- Name: expert_expert_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.expert_expert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 211
-- Name: expert_expert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.expert_expert_id_seq OWNED BY public.expert.expert_id;


--
-- TOC entry 228 (class 1259 OID 254279)
-- Name: grant; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."grant" (
    grant_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 227 (class 1259 OID 254278)
-- Name: grant_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grant_grant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 227
-- Name: grant_grant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grant_grant_id_seq OWNED BY public."grant".grant_id;


--
-- TOC entry 222 (class 1259 OID 254228)
-- Name: partner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.partner (
    partner_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 221 (class 1259 OID 254227)
-- Name: partner_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.partner_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 221
-- Name: partner_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.partner_partner_id_seq OWNED BY public.partner.partner_id;


--
-- TOC entry 218 (class 1259 OID 254195)
-- Name: project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project (
    project_id integer NOT NULL,
    number integer,
    direction_id integer
);


--
-- TOC entry 217 (class 1259 OID 254194)
-- Name: project_project_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 217
-- Name: project_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_project_id_seq OWNED BY public.project.project_id;


--
-- TOC entry 214 (class 1259 OID 254161)
-- Name: student_leader; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.student_leader (
    student_leader_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 213 (class 1259 OID 254160)
-- Name: student_leader_student_leader_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.student_leader_student_leader_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 213
-- Name: student_leader_student_leader_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.student_leader_student_leader_id_seq OWNED BY public.student_leader.student_leader_id;


--
-- TOC entry 220 (class 1259 OID 254211)
-- Name: study_course; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.study_course (
    study_course_id integer NOT NULL,
    name character varying,
    direction_id integer
);


--
-- TOC entry 219 (class 1259 OID 254210)
-- Name: study_course_study_course_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.study_course_study_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 219
-- Name: study_course_study_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.study_course_study_course_id_seq OWNED BY public.study_course.study_course_id;


--
-- TOC entry 3216 (class 2604 OID 254248)
-- Name: cen_lab cen_lab_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cen_lab ALTER COLUMN cen_lab_id SET DEFAULT nextval('public.cen_lab_cen_lab_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 254136)
-- Name: direction direction_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.direction ALTER COLUMN direction_id SET DEFAULT nextval('public.direction_direction_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 254181)
-- Name: edu_program edu_program_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.edu_program ALTER COLUMN edu_program_id SET DEFAULT nextval('public.edu_program_edu_program_id_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 254265)
-- Name: equip_po equip_po_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equip_po ALTER COLUMN equip_po_id SET DEFAULT nextval('public.equip_po_equip_po_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 254147)
-- Name: expert expert_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expert ALTER COLUMN expert_id SET DEFAULT nextval('public.expert_expert_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 254282)
-- Name: grant grant_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."grant" ALTER COLUMN grant_id SET DEFAULT nextval('public.grant_grant_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 254231)
-- Name: partner partner_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.partner ALTER COLUMN partner_id SET DEFAULT nextval('public.partner_partner_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 254198)
-- Name: project project_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project ALTER COLUMN project_id SET DEFAULT nextval('public.project_project_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 254164)
-- Name: student_leader student_leader_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_leader ALTER COLUMN student_leader_id SET DEFAULT nextval('public.student_leader_student_leader_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 254214)
-- Name: study_course study_course_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.study_course ALTER COLUMN study_course_id SET DEFAULT nextval('public.study_course_study_course_id_seq'::regclass);


--
-- TOC entry 3432 (class 0 OID 254245)
-- Dependencies: 224
-- Data for Name: cen_lab; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cen_lab (cen_lab_id, name, direction_id) FROM stdin;
1	ЦИИ	1
2	ЦПЭ	1
3	СВТ/МЦ	1
\.


--
-- TOC entry 3418 (class 0 OID 254133)
-- Dependencies: 210
-- Data for Name: direction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.direction (direction_id, name) FROM stdin;
1	ИИ
\.


--
-- TOC entry 3424 (class 0 OID 254178)
-- Dependencies: 216
-- Data for Name: edu_program; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.edu_program (edu_program_id, name, direction_id) FROM stdin;
1	МИВ	1
2	ПМИИ	1
\.


--
-- TOC entry 3434 (class 0 OID 254262)
-- Dependencies: 226
-- Data for Name: equip_po; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.equip_po (equip_po_id, name, direction_id) FROM stdin;
6	Кластер НИУ ВШЭ	1
7	Стенд КРО	1
8	МЦ / Видеозалы	1
9	Framework Auto OD	1
10	Оборуд. мастерских	1
\.


--
-- TOC entry 3420 (class 0 OID 254144)
-- Dependencies: 212
-- Data for Name: expert; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.expert (expert_id, name, direction_id) FROM stdin;
7	Сластников	1
8	Минченков	1
9	Иванов Ф.	1
10	Ганчиев	1
11	Вальба	1
12	Клышинский	1
\.


--
-- TOC entry 3436 (class 0 OID 254279)
-- Dependencies: 228
-- Data for Name: grant; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."grant" (grant_id, name, direction_id) FROM stdin;
4	ЦИИ Связь Телеком	1
5	ЦИИ Комп. зрение	1
6	АФК Умный фонарь	1
\.


--
-- TOC entry 3430 (class 0 OID 254228)
-- Dependencies: 222
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.partner (partner_id, name, direction_id) FROM stdin;
5	ВК	1
6	АФК Система	1
7	Webinar	1
8	ИСС	1
\.


--
-- TOC entry 3426 (class 0 OID 254195)
-- Dependencies: 218
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.project (project_id, number, direction_id) FROM stdin;
1	592	1
2	400	1
3	1371	1
4	1117	1
5	608	1
\.


--
-- TOC entry 3422 (class 0 OID 254161)
-- Dependencies: 214
-- Data for Name: student_leader; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.student_leader (student_leader_id, name, direction_id) FROM stdin;
1	Шевцов	1
2	Грошев	1
3	Солдатов	1
4	Веденский	1
\.


--
-- TOC entry 3428 (class 0 OID 254211)
-- Dependencies: 220
-- Data for Name: study_course; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.study_course (study_course_id, name, direction_id) FROM stdin;
1	Введение в АД	1
2	ML	1
3	Нейронные сети	1
4	Математика ML	1
5	Online	1
\.


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 223
-- Name: cen_lab_cen_lab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cen_lab_cen_lab_id_seq', 3, true);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 209
-- Name: direction_direction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.direction_direction_id_seq', 1, true);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 215
-- Name: edu_program_edu_program_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.edu_program_edu_program_id_seq', 2, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 225
-- Name: equip_po_equip_po_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.equip_po_equip_po_id_seq', 10, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 211
-- Name: expert_expert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.expert_expert_id_seq', 12, true);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 227
-- Name: grant_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grant_grant_id_seq', 6, true);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 221
-- Name: partner_partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.partner_partner_id_seq', 8, true);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 217
-- Name: project_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.project_project_id_seq', 5, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 213
-- Name: student_leader_student_leader_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.student_leader_student_leader_id_seq', 4, true);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 219
-- Name: study_course_study_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.study_course_study_course_id_seq', 5, true);


--
-- TOC entry 3255 (class 2606 OID 254252)
-- Name: cen_lab cen_lab_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cen_lab
    ADD CONSTRAINT cen_lab_pkey PRIMARY KEY (cen_lab_id);


--
-- TOC entry 3220 (class 2606 OID 254140)
-- Name: direction direction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.direction
    ADD CONSTRAINT direction_pkey PRIMARY KEY (direction_id);


--
-- TOC entry 3234 (class 2606 OID 254185)
-- Name: edu_program edu_program_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.edu_program
    ADD CONSTRAINT edu_program_pkey PRIMARY KEY (edu_program_id);


--
-- TOC entry 3260 (class 2606 OID 254269)
-- Name: equip_po equip_po_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equip_po
    ADD CONSTRAINT equip_po_pkey PRIMARY KEY (equip_po_id);


--
-- TOC entry 3224 (class 2606 OID 254151)
-- Name: expert expert_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expert
    ADD CONSTRAINT expert_pkey PRIMARY KEY (expert_id);


--
-- TOC entry 3265 (class 2606 OID 254286)
-- Name: grant grant_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."grant"
    ADD CONSTRAINT grant_pkey PRIMARY KEY (grant_id);


--
-- TOC entry 3253 (class 2606 OID 254235)
-- Name: partner partner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (partner_id);


--
-- TOC entry 3241 (class 2606 OID 254202)
-- Name: project project_number_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_number_key UNIQUE (number);


--
-- TOC entry 3243 (class 2606 OID 254200)
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- TOC entry 3232 (class 2606 OID 254168)
-- Name: student_leader student_leader_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_leader
    ADD CONSTRAINT student_leader_pkey PRIMARY KEY (student_leader_id);


--
-- TOC entry 3248 (class 2606 OID 254218)
-- Name: study_course study_course_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.study_course
    ADD CONSTRAINT study_course_pkey PRIMARY KEY (study_course_id);


--
-- TOC entry 3256 (class 1259 OID 254259)
-- Name: ix_cen_lab_cen_lab_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_cen_lab_cen_lab_id ON public.cen_lab USING btree (cen_lab_id);


--
-- TOC entry 3257 (class 1259 OID 254258)
-- Name: ix_cen_lab_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_cen_lab_direction_id ON public.cen_lab USING btree (direction_id);


--
-- TOC entry 3258 (class 1259 OID 254260)
-- Name: ix_cen_lab_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_cen_lab_name ON public.cen_lab USING btree (name);


--
-- TOC entry 3221 (class 1259 OID 254142)
-- Name: ix_direction_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_direction_direction_id ON public.direction USING btree (direction_id);


--
-- TOC entry 3222 (class 1259 OID 254141)
-- Name: ix_direction_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ix_direction_name ON public.direction USING btree (name);


--
-- TOC entry 3235 (class 1259 OID 254193)
-- Name: ix_edu_program_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_edu_program_direction_id ON public.edu_program USING btree (direction_id);


--
-- TOC entry 3236 (class 1259 OID 254191)
-- Name: ix_edu_program_edu_program_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_edu_program_edu_program_id ON public.edu_program USING btree (edu_program_id);


--
-- TOC entry 3237 (class 1259 OID 254192)
-- Name: ix_edu_program_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ix_edu_program_name ON public.edu_program USING btree (name);


--
-- TOC entry 3261 (class 1259 OID 254277)
-- Name: ix_equip_po_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_equip_po_direction_id ON public.equip_po USING btree (direction_id);


--
-- TOC entry 3262 (class 1259 OID 254276)
-- Name: ix_equip_po_equip_po_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_equip_po_equip_po_id ON public.equip_po USING btree (equip_po_id);


--
-- TOC entry 3263 (class 1259 OID 254275)
-- Name: ix_equip_po_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_equip_po_name ON public.equip_po USING btree (name);


--
-- TOC entry 3225 (class 1259 OID 254159)
-- Name: ix_expert_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_expert_direction_id ON public.expert USING btree (direction_id);


--
-- TOC entry 3226 (class 1259 OID 254157)
-- Name: ix_expert_expert_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_expert_expert_id ON public.expert USING btree (expert_id);


--
-- TOC entry 3227 (class 1259 OID 254158)
-- Name: ix_expert_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_expert_name ON public.expert USING btree (name);


--
-- TOC entry 3266 (class 1259 OID 254293)
-- Name: ix_grant_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_grant_direction_id ON public."grant" USING btree (direction_id);


--
-- TOC entry 3267 (class 1259 OID 254294)
-- Name: ix_grant_grant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_grant_grant_id ON public."grant" USING btree (grant_id);


--
-- TOC entry 3268 (class 1259 OID 254292)
-- Name: ix_grant_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_grant_name ON public."grant" USING btree (name);


--
-- TOC entry 3249 (class 1259 OID 254241)
-- Name: ix_partner_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_partner_direction_id ON public.partner USING btree (direction_id);


--
-- TOC entry 3250 (class 1259 OID 254242)
-- Name: ix_partner_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ix_partner_name ON public.partner USING btree (name);


--
-- TOC entry 3251 (class 1259 OID 254243)
-- Name: ix_partner_partner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_partner_partner_id ON public.partner USING btree (partner_id);


--
-- TOC entry 3238 (class 1259 OID 254208)
-- Name: ix_project_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_project_direction_id ON public.project USING btree (direction_id);


--
-- TOC entry 3239 (class 1259 OID 254209)
-- Name: ix_project_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_project_project_id ON public.project USING btree (project_id);


--
-- TOC entry 3228 (class 1259 OID 254175)
-- Name: ix_student_leader_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_student_leader_direction_id ON public.student_leader USING btree (direction_id);


--
-- TOC entry 3229 (class 1259 OID 254174)
-- Name: ix_student_leader_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_student_leader_name ON public.student_leader USING btree (name);


--
-- TOC entry 3230 (class 1259 OID 254176)
-- Name: ix_student_leader_student_leader_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_student_leader_student_leader_id ON public.student_leader USING btree (student_leader_id);


--
-- TOC entry 3244 (class 1259 OID 254224)
-- Name: ix_study_course_direction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_study_course_direction_id ON public.study_course USING btree (direction_id);


--
-- TOC entry 3245 (class 1259 OID 254225)
-- Name: ix_study_course_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_study_course_name ON public.study_course USING btree (name);


--
-- TOC entry 3246 (class 1259 OID 254226)
-- Name: ix_study_course_study_course_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_study_course_study_course_id ON public.study_course USING btree (study_course_id);


--
-- TOC entry 3275 (class 2606 OID 254253)
-- Name: cen_lab cen_lab_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cen_lab
    ADD CONSTRAINT cen_lab_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3271 (class 2606 OID 254186)
-- Name: edu_program edu_program_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.edu_program
    ADD CONSTRAINT edu_program_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3276 (class 2606 OID 254270)
-- Name: equip_po equip_po_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equip_po
    ADD CONSTRAINT equip_po_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3269 (class 2606 OID 254152)
-- Name: expert expert_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expert
    ADD CONSTRAINT expert_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3277 (class 2606 OID 254287)
-- Name: grant grant_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."grant"
    ADD CONSTRAINT grant_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3274 (class 2606 OID 254236)
-- Name: partner partner_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3272 (class 2606 OID 254203)
-- Name: project project_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3270 (class 2606 OID 254169)
-- Name: student_leader student_leader_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_leader
    ADD CONSTRAINT student_leader_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


--
-- TOC entry 3273 (class 2606 OID 254219)
-- Name: study_course study_course_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.study_course
    ADD CONSTRAINT study_course_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.direction(direction_id);


-- Completed on 2023-04-02 09:46:35

--
-- PostgreSQL database dump complete
--

