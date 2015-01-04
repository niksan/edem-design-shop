--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    ancestry character varying(255),
    "position" integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying(255) NOT NULL,
    data_content_type character varying(255),
    data_file_size integer,
    assetable_id integer,
    assetable_type character varying(30),
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.ckeditor_assets OWNER TO postgres;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO postgres;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE order_items (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer DEFAULT 1,
    price numeric DEFAULT 0
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_id_seq OWNER TO postgres;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_items_id_seq OWNED BY order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orders (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    address character varying(255),
    email character varying(255),
    additional text,
    state character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE photos (
    id integer NOT NULL,
    product_id integer,
    image character varying(255),
    ancestry character varying(255),
    "position" integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.photos OWNER TO postgres;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO postgres;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE photos_id_seq OWNED BY photos.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    category_id integer,
    name character varying(255),
    description text,
    price numeric DEFAULT 0.0,
    ancestry character varying(255),
    slug character varying(255),
    "position" integer,
    show_on_main_page boolean DEFAULT false,
    disabled boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    published boolean DEFAULT true
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: rails_admin_histories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rails_admin_histories (
    id integer NOT NULL,
    message text,
    username character varying(255),
    item integer,
    "table" character varying(255),
    month smallint,
    year bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.rails_admin_histories OWNER TO postgres;

--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rails_admin_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rails_admin_histories_id_seq OWNER TO postgres;

--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rails_admin_histories_id_seq OWNED BY rails_admin_histories.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: roles_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles_users (
    id integer NOT NULL,
    role_id integer,
    user_id integer
);


ALTER TABLE public.roles_users OWNER TO postgres;

--
-- Name: roles_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_users_id_seq OWNER TO postgres;

--
-- Name: roles_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_users_id_seq OWNED BY roles_users.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE versions (
    id integer NOT NULL,
    item_type character varying(255) NOT NULL,
    item_id integer NOT NULL,
    event character varying(255) NOT NULL,
    whodunnit character varying(255),
    object text,
    created_at timestamp without time zone
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE versions_id_seq OWNED BY versions.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY order_items ALTER COLUMN id SET DEFAULT nextval('order_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY photos ALTER COLUMN id SET DEFAULT nextval('photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rails_admin_histories ALTER COLUMN id SET DEFAULT nextval('rails_admin_histories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles_users ALTER COLUMN id SET DEFAULT nextval('roles_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY versions ALTER COLUMN id SET DEFAULT nextval('versions_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categories (id, name, slug, ancestry, "position", created_at, updated_at) FROM stdin;
1	Тюльпаны	tyulpany	\N	\N	2014-02-19 13:07:25.932329	2014-02-19 13:07:25.932329
3	Комнатные растения	komnatnye-rasteniya	\N	\N	2015-01-04 17:09:38.053947	2015-01-04 17:09:38.053947
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categories_id_seq', 3, true);


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ckeditor_assets (id, data_file_name, data_content_type, data_file_size, assetable_id, assetable_type, type, width, height, created_at, updated_at) FROM stdin;
\.


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 1, false);


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY order_items (id, order_id, product_id, quantity, price) FROM stdin;
\.


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_items_id_seq', 1, false);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY orders (id, first_name, last_name, address, email, additional, state, created_at, updated_at) FROM stdin;
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orders_id_seq', 1, false);


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY photos (id, product_id, image, ancestry, "position", created_at, updated_at) FROM stdin;
1	1	485679e1d7f571712faa270fd3443b50.jpg	\N	\N	2014-02-19 13:14:14.497671	2014-03-04 11:51:06.218638
2	2	88957d92f00fde9726ecc632b0214c43.jpg	\N	\N	2014-02-19 13:48:37.975277	2014-03-04 11:51:06.76257
3	3	f465f8b822a2f22b218229e44bd2ed93.jpg	\N	\N	2014-02-27 06:29:19.766805	2014-03-04 11:51:07.500312
4	4	0e0a1da3fd53fad5cc051f5a71b112e4.jpg	\N	\N	2014-02-27 06:29:48.215595	2014-03-04 11:51:08.035193
5	5	fc33e1dcd7674f4a3be67473291bad46.jpg	\N	\N	2014-02-27 06:37:55.679405	2014-03-04 11:51:08.819711
6	6	136f83ada0416b93844c4f53376d7145.jpg	\N	\N	2014-02-27 06:38:08.400575	2014-03-04 11:51:09.36223
7	7	6306b2e5b8184ff17fc740ecd4e7a31d.jpg	\N	\N	2014-02-27 06:38:20.225793	2014-03-04 11:51:10.075832
9	8	6f90d6d24390788333199374f2dbf873.jpg	\N	\N	2014-02-27 06:38:46.029706	2014-03-04 11:51:10.630157
8	9	2dfdc5f9d16bb514136c7041f474784a.jpg	\N	\N	2014-02-27 06:38:35.269398	2014-03-04 11:51:11.434971
10	10	00a94c8d947418ccb565d3eeef81d946.jpg	\N	\N	2014-02-27 06:39:00.799994	2014-03-04 11:51:12.190985
11	11	e10749df2f9cf54ea13544d1041d0ad5.jpg	\N	\N	2014-02-27 06:39:10.576264	2014-03-04 11:51:12.744346
12	12	4cff4286af00e7d7d55134d09aea5107.jpg	\N	\N	2014-02-27 06:39:21.857857	2014-03-04 11:51:13.746905
13	13	9bc4c8ffb90b8eb3a8ba028b48a5e0dd.jpg	\N	\N	2014-02-27 06:39:35.424522	2014-03-04 11:51:14.323101
14	14	de7779b68674d08065c6d41557dce6a3.jpg	\N	\N	2014-02-27 06:39:49.737113	2014-03-04 11:51:15.072997
15	15	c9b375751dab58c301b2453a9875d9e1.jpg	\N	\N	2014-02-27 06:40:00.471433	2014-03-04 11:51:15.761062
16	16	0931fcc2092f36de8d9f8a86a17e864e.jpg	\N	\N	2014-02-27 06:49:13.115535	2014-03-04 11:51:16.292132
17	17	fc74f5e5c010acfc679cf6418cb40a32.jpg	\N	\N	2014-02-27 06:49:28.231436	2014-03-04 11:51:17.115892
18	18	e83269d5a646f6d9a23d73c9dc3bbe0d.jpg	\N	\N	2014-02-27 06:49:42.035444	2014-03-04 11:51:17.71828
19	19	f6c0f297bdc3231c96985fcdf127e02e.jpg	\N	\N	2014-02-27 06:49:54.038945	2014-03-04 11:51:18.23126
20	20	6147afa571f29a4c24a16a9710d1283c.jpg	\N	\N	2014-02-27 06:50:04.323769	2014-03-04 11:51:18.66529
21	21	983e74f13babfe03499f43ac74ab62b7.jpg	\N	\N	2014-11-04 18:18:55.429642	2014-11-04 18:19:13.942946
22	22	fdc1d7f19d59df99f0a4b4eccecc6995.jpg	\N	\N	2014-11-04 18:28:33.085089	2014-11-04 18:28:51.745694
23	23	0335707acb3ccc759912c54ee0e863e4.JPG	\N	\N	2014-11-04 18:30:08.369755	2014-11-04 18:30:24.747779
24	24	cdabd467ce6087ef32ba4c9e8da9236d.jpg	\N	\N	2014-11-04 18:31:00.854977	2014-11-04 18:32:01.2378
25	25	cf1b9e28de79e01a53530eb1003b2327.jpg	\N	\N	2014-11-04 18:33:11.247033	2014-11-04 18:33:45.803888
26	26	fc0df7e276807a26a576e9c86885e963.jpg	\N	\N	2014-11-04 18:34:53.899005	2014-11-04 18:35:06.43773
27	27	facc61341072e5656a3398ff0f10e119.jpg	\N	\N	2014-11-04 18:37:35.39757	2014-11-04 18:37:49.055349
28	28	bd7589d8471672ae823b33995c48a309.jpg	\N	\N	2014-11-04 18:41:57.289063	2014-11-04 18:42:14.8872
29	29	fd69a95b28ff8d751de19f351f925ec8.jpg	\N	\N	2014-11-04 18:43:11.635123	2014-11-04 18:43:23.638849
30	30	bd86da925fd1d8daa4fb9ee427f4faa7.jpg	\N	\N	2014-11-04 18:44:08.936866	2014-11-04 18:44:21.916317
31	31	2808fd65a52600fe3a99eca733dee4c8.jpg	\N	\N	2014-11-04 18:46:55.212395	2014-11-04 18:47:14.653348
50	50	b366c22ed06e1d09f8f1f768b68aeec2.jpg	\N	\N	2015-01-04 16:20:14.218215	2015-01-04 16:20:29.379766
33	33	e4e35f4079411b463356af0eba5a2d19.jpg	\N	\N	2014-11-04 18:56:20.550708	2014-11-04 18:57:06.015945
34	34	bb6cb05a140d7896aa376a4f7cec92d6.jpg	\N	\N	2014-11-04 19:00:44.500264	2014-11-04 19:01:28.463064
35	35	05f2e55a1d14c222403c57fd03a47996.jpg	\N	\N	2014-11-04 19:03:46.075003	2014-11-04 19:04:35.035906
36	36	2376fd5ba1f0c0e64f09d33cf3c7a95b.jpg	\N	\N	2014-11-04 19:07:39.241779	2014-11-04 19:08:58.110694
37	37	b2d36938da8ad68331f6a0a98fbbc816.jpg	\N	\N	2014-11-04 19:11:58.673134	2014-11-04 19:12:41.188226
38	38	5b9839cb7881b72b1e03ab195f56dcb8.jpg	\N	\N	2014-11-04 19:17:40.511686	2014-11-04 19:19:38.443667
39	39	27c49f8ec9d3a89977082c6f0e22f566.jpg	\N	\N	2014-11-04 19:25:11.311787	2014-11-04 19:26:11.20207
40	40	a7e85381c9e0fe06e5d8993b2f0ab63b.jpg	\N	\N	2014-11-04 19:29:51.870958	2014-11-04 19:30:43.927846
41	41	61b5b9e572157ab56870a23239f340c8.jpg	\N	\N	2014-11-04 19:34:28.83585	2014-11-04 19:35:19.14935
42	42	3281abe2a13e2acf9a6d787773b3c470.jpg	\N	\N	2014-11-04 19:40:28.785662	2014-11-04 19:41:19.200112
43	43	01f1515ccf46b639cc2337f134e63eae.jpg	\N	\N	2014-11-04 20:05:00.088547	2014-11-04 20:05:57.871883
32	32	d2c15d625ca04777ebc951cda2c7abe3.jpg	\N	\N	2014-11-04 18:50:30.634847	2014-11-04 20:08:13.198934
44	44	df76df25382cc2b73c523422d06152d8.jpg	\N	\N	2014-11-04 20:17:16.244069	2014-11-04 20:18:03.35582
45	45	f862269c9e2a7bac1fd0f97d6a99b93d.jpg	\N	\N	2014-11-04 20:21:22.392371	2014-11-04 20:22:09.698502
46	46	06fc2381a80b84aa226d9cbdf6830d0f.jpg	\N	\N	2014-11-04 20:27:18.901645	2014-11-04 20:28:22.715011
47	47	02da729f58dd60e759aa346dd2662ab3.jpg	\N	\N	2014-11-04 20:33:19.342957	2014-11-04 20:34:06.501862
48	48	8e5b3d65d3bb823864399dfb07f0e3fc.jpg	\N	\N	2014-11-04 20:36:46.632865	2014-11-04 20:37:31.668911
49	49	28e5116766325867a0d26cf280eff4e3.jpg	\N	\N	2014-11-04 20:40:06.046696	2014-11-04 20:40:55.502488
51	51	e27f19f03e8e1e24770053bf5d43c076.jpg	\N	\N	2015-01-04 16:24:05.956346	2015-01-04 16:24:37.338499
52	52	a942ff18a468288397f30458188bdeae.jpg	\N	\N	2015-01-04 16:26:34.671454	2015-01-04 16:26:47.199928
53	53	f08f954a800c3ff242cf8c4a1df7b6d2.jpg	\N	\N	2015-01-04 16:28:42.990184	2015-01-04 16:28:57.757479
54	54	9affc388f7b7d6467786d261dbb59da2.jpg	\N	\N	2015-01-04 16:30:19.055852	2015-01-04 16:30:28.636498
55	55	78f97e0a24212a45d800af011338367e.jpg	\N	\N	2015-01-04 16:32:09.522054	2015-01-04 16:32:19.856106
56	56	28293ec144e4451a4105bf67097a12a6.jpg	\N	\N	2015-01-04 17:10:28.370519	2015-01-04 17:10:39.346066
57	57	a884ad99e963f3d4e8fc54bb8feaee26.jpg	\N	\N	2015-01-04 17:13:40.71339	2015-01-04 17:13:50.467034
58	58	d700511a7549ea2a096e0f1aa6c6ed11.jpg	\N	\N	2015-01-04 17:16:30.497577	2015-01-04 17:16:42.252287
59	59	00d6ea46752408602187f5f80d04daa0.jpg	\N	\N	2015-01-04 17:19:24.50796	2015-01-04 17:19:37.057316
60	60	7d027a5af795ddab853bcf83d901519c.jpg	\N	\N	2015-01-04 17:22:13.385378	2015-01-04 17:22:28.699343
61	60	9eda018217bc71459cf1adf16940bdb3.jpg	\N	\N	2015-01-04 17:22:13.416667	2015-01-04 17:22:28.741439
62	61	e1b1b3f134c1f40bf664da50783c23cd.jpg	\N	\N	2015-01-04 17:26:11.166096	2015-01-04 17:26:21.049484
63	62	566a1a46cafb6dc03a01091af060b0ec.jpg	\N	\N	2015-01-04 17:27:50.73037	2015-01-04 17:28:01.132715
64	63	2217881ec1824dea446c00012f315586.jpg	\N	\N	2015-01-04 17:30:10.372676	2015-01-04 17:30:20.858147
65	64	54373dd64bd9aaf64cd9855d593dad6d.jpg	\N	\N	2015-01-04 17:31:57.162884	2015-01-04 17:32:07.030726
66	65	69891255336b7f7dd09bcf899b8b28d8.jpg	\N	\N	2015-01-04 17:34:34.010546	2015-01-04 17:34:44.22912
67	66	4a73443a7fad7fc8ad0efba2db912bfc.jpg	\N	\N	2015-01-04 17:36:15.953217	2015-01-04 17:36:25.220643
68	67	7f09f1f00d3e7d2a45f92f8c42f3004d.jpg	\N	\N	2015-01-04 17:38:11.126553	2015-01-04 17:38:22.700873
69	68	55b82494f349da33288489cdf8788964.jpg	\N	\N	2015-01-04 17:39:55.300289	2015-01-04 17:40:09.641475
70	69	dd9921e7d26f0cc8a8ddc49c38e653b3.jpg	\N	\N	2015-01-04 17:41:44.212076	2015-01-04 17:41:54.552561
71	70	6c2a7555d03238ed4415b8c62d8735f7.jpg	\N	\N	2015-01-04 17:43:10.861862	2015-01-04 17:43:20.936364
\.


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('photos_id_seq', 71, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (id, category_id, name, description, price, ancestry, slug, "position", show_on_main_page, disabled, created_at, updated_at, published) FROM stdin;
1	1	AD REM1		50.0	\N	ad-rem1	\N	t	t	2014-02-19 13:14:14.489913	2014-11-04 17:41:55.011626	t
3	1	Bolroyal Pink		50.0	\N	bolroyal-pink	\N	t	t	2014-02-27 06:29:11.153013	2014-11-04 17:41:55.091571	t
2	1	Bolroyal Silver 1		50.0	\N	tyulpan-bolroyal-silver-1	\N	t	t	2014-02-19 13:48:37.966484	2014-11-04 17:41:55.118987	t
7	1	Cousteau		50.0	\N	tyulpan-cousteau	\N	t	t	2014-02-27 06:32:37.629916	2014-11-04 17:41:55.143893	t
18	1	Flash point (махровый)		50.0	\N	flash-point-mahrovyy	\N	t	t	2014-02-27 06:35:39.853073	2014-11-04 17:41:55.168468	t
5	1	Golden Tycoon		50.0	\N	golden-tycoon	\N	t	t	2014-02-27 06:31:31.838362	2014-11-04 17:41:55.190536	t
9	1	Lady chantal		50.0	\N	lady-chantal	\N	t	t	2014-02-27 06:33:28.109912	2014-11-04 17:41:55.211268	t
8	1	Laptop		50.0	\N	tyulpan-laptop	\N	t	t	2014-02-27 06:32:56.00585	2014-11-04 17:41:55.23202	t
10	1	Malaysia		50.0	\N	malaysia	\N	t	t	2014-02-27 06:33:50.761767	2014-11-04 17:41:55.259496	t
11	1	Neper		50.0	\N	neper	\N	t	t	2014-02-27 06:34:05.102809	2014-11-04 17:41:55.284161	t
12	1	Pacific Pearl (бахромчатый)		50.0	\N	pacific-pearl-bahromchatyy	\N	t	t	2014-02-27 06:34:20.220089	2014-11-04 17:41:55.303269	t
13	1	Primavera		50.0	\N	primavera	\N	t	t	2014-02-27 06:34:31.179645	2014-11-04 17:41:55.325545	t
14	1	Red power		50.0	\N	red-power	\N	t	t	2014-02-27 06:34:42.466287	2014-11-04 17:41:55.346382	t
15	1	Roussilion		50.0	\N	roussilion	\N	t	t	2014-02-27 06:34:53.533438	2014-11-04 17:41:55.370408	t
16	1	Royal ten		50.0	\N	royal-ten	\N	t	t	2014-02-27 06:35:06.413409	2014-11-04 17:41:55.391714	t
17	1	Tetry pink		50.0	\N	tetry-pink	\N	t	t	2014-02-27 06:35:21.402508	2014-11-04 17:41:55.414463	t
4	1	White heart (Махровый)		50.0	\N	white-heart-mahrovyy	\N	t	t	2014-02-27 06:29:39.339595	2014-11-04 17:41:55.434556	t
6	1	Сafe noir		50.0	\N	safe-noir	\N	t	t	2014-02-27 06:32:19.664816	2014-11-04 17:41:55.454733	t
20	2	Delnashaugh		0.0	\N	delnashaugh	\N	t	t	2014-02-27 06:37:36.363127	2015-01-04 16:32:43.490537	f
19	2	Tahiti		50.0	\N	tahiti	\N	t	t	2014-02-27 06:37:25.050848	2015-01-04 16:32:43.496245	f
21	1	Ad Rem	<p>Форма: бокаловидная<br />\r\nОкрас цветка: красно-желтый<br />\r\nВысота бокала: до 6см<br />\r\nДиаметр бокала: до 4см<br />\r\nВысота: до 65см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	ad-rem	\N	t	f	2014-11-04 18:18:55.411137	2014-11-04 18:19:26.743434	f
23	1	White Heart	<p>Окрас цветка: белый, махровый<br />\r\nВысота: 40-45см<br />\r\nЦветок махровый, крупный</p>\r\n	0.0	\N	white-heart	\N	t	f	2014-11-04 18:29:52.521501	2014-11-04 18:30:08.35842	f
27	1	Clearwater	<p>Форма: бокаловидная<br />\r\nОкрас цветка: белый<br />\r\nВысота бокала: до 7см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 50-70см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	clearwater	\N	t	f	2014-11-04 18:37:35.376718	2014-11-04 18:37:49.045204	f
28	1	Cobra	<p>Форма: бокаловидная<br />\r\nОкрас цветка: красно-желтый<br />\r\nВысота бокала: до 6см<br />\r\nДиаметр бокала: до 4см<br />\r\nВысота: 50-60см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	cobra	\N	t	f	2014-11-04 18:41:57.269363	2014-11-04 18:42:14.871034	f
29	1	Cousteau	<p>Форма: бокаловидная<br />\r\nОкрас цветка: баклажановый<br />\r\nВысота бокала: до 6см<br />\r\nДиаметр бокала: до 4см<br />\r\nВысота: 40-45см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	cousteau	\N	t	f	2014-11-04 18:43:11.612113	2014-11-04 18:43:23.627787	f
30	1	Lalibela	<p>Форма: бокаловидная<br />\r\nОкрас цветка: св. красный<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 50-60см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	lalibela	\N	t	f	2014-11-04 18:44:08.917538	2014-11-04 18:44:21.902895	f
31	1	Lanka	<p>Форма: бокаловидная<br />\r\nОкрас цветка: белый<br />\r\nВысота бокала: 8-10см<br />\r\nДиаметр бокала: до 7см<br />\r\nВысота: 60-70см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	lanka	\N	t	f	2014-11-04 18:46:55.188892	2014-11-04 18:47:14.627417	f
22	1	Barcelona	<p>Форма: бокаловидная<br />\r\nОкрас цветка: сиреневый<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 6см<br />\r\nВысота: до 60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	barcelona	\N	t	f	2014-11-04 18:20:16.722525	2015-01-04 16:07:03.963351	t
26	1	Curly Sue	<p>Форма: бокаловидная<br />\r\nОкрас цветка: фиолетовый, бахромчатый<br />\r\nВысота бокала: до 7см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 45-60см<br />\r\nЦветок классический, крупный</p>\r\n	50.0	\N	curly-sue	\N	t	f	2014-11-04 18:34:53.88008	2015-01-04 16:14:49.901484	t
24	1	Jumbo Beauty	<p>Форма: бокаловидная<br />\r\nОкрас цветка: кремово-розовый<br />\r\nВысота бокала: 8-10см<br />\r\nВысота: 70-90см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	jumbo-beauty	\N	t	f	2014-11-04 18:31:00.839576	2015-01-04 16:16:52.170997	t
33	1	Malaysia	<p>Форма: бокаловидная<br />\r\nОкрас цветка: слоновая кость<br />\r\nВысота бокала: 7-8см<br />\r\nВысота: 50-60см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	malaysia-511e175e-9983-4397-bd4a-28065a6e1a22	\N	t	f	2014-11-04 18:56:20.511066	2014-11-04 18:57:05.975073	f
35	1	Primavera	<p>Форма: бокаловидная<br />\r\nОкрас цветка: розовый<br />\r\nВысота: 40-50см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	primavera-c46c6299-2cc1-4ed2-ae84-0ebfd72301bd	\N	t	f	2014-11-04 19:03:45.988194	2014-11-04 19:04:35.002579	f
36	1	Primavista	<p>Форма: бокаловидная<br />\r\nОкрас цветка: малиновый<br />\r\nВысота: 40-45см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	primavista	\N	t	f	2014-11-04 19:07:39.217863	2014-11-04 19:08:58.083859	f
40	1	Snow Lady	<p>Форма: бокаловидная<br />\r\nОкрас цветка: белый<br />\r\nВысота бокала: 7см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	snow-lady	\N	t	f	2014-11-04 19:29:51.805166	2014-11-04 19:30:43.881596	f
41	1	Strong Gold	<p>Форма: бокаловидная<br />\r\nОкрас цветка: желтый<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-50см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	strong-gold	\N	t	f	2014-11-04 19:34:28.713014	2014-11-04 19:35:19.116652	f
42	1	Angels Wish	<p>Форма: бокаловидная<br />\r\nОкрас цветка: белый<br />\r\nВысота бокала: 6-9см<br />\r\nВысота: 45-55см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	angels-wish	\N	t	f	2014-11-04 19:40:28.730488	2014-11-04 19:41:19.152192	f
47	1	Caractere	<p>Форма: бокаловидная<br />\r\nОкрас цветка: желтый<br />\r\nВысота бокала: до 7см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	caractere	\N	t	f	2014-11-04 20:33:19.210191	2014-11-04 20:34:06.468493	f
49	1	Seattle	<p>Окрас цветка: желтый<br />\r\nВысота: 50-60см<br />\r\nЦветок классический, крупный</p>\r\n	0.0	\N	seattle	\N	t	f	2014-11-04 20:40:06.003576	2014-11-04 20:40:55.466141	f
25	1	The Mounties	<p>Окрас цветка: малиновый<br />\r\nВысота бокала: 7см<br />\r\nВысота: 40-50см</p>\r\n	0.0	\N	the-mounties	\N	t	f	2014-11-04 18:33:11.22481	2015-01-04 16:00:48.234587	f
37	1	Red Power	<p>Форма: бокаловидная<br />\r\nОкрас цветка: красный<br />\r\nВысота бокала: до 7см<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	red-power-0b1b8534-bb74-4636-ad99-9819d6de5149	\N	t	f	2014-11-04 19:11:58.618673	2015-01-04 16:12:11.533334	t
43	1	Dynasty	<p>Форма: бокаловидная<br />\r\nОкрас цветка: розово-белый<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-50см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	dynasty	\N	t	f	2014-11-04 20:05:00.005257	2015-01-04 16:09:38.252546	t
32	1	Laptop	<p>Форма: бокаловидная<br />\r\nОкрас цветка: сиреневый<br />\r\nВысота бокала: 8-9см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-50см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	laptop	\N	t	f	2014-11-04 18:50:30.593462	2015-01-04 16:11:29.293237	t
38	1	Roussillion	<p>Форма: бокаловидная<br />\r\nОкрас цветка: темно-розовый<br />\r\nВысота бокала: 6-7см<br />\r\nВысота: 45-50см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	roussillion	\N	t	f	2014-11-04 19:17:40.349018	2015-01-04 16:12:53.949782	t
39	1	Royal Ten	<p>Форма: бокаловидная<br />\r\nОкрас цветка: розовый<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 6см<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	royal-ten-0bb8dd3f-f80f-487e-9b0b-7052e861b058	\N	t	f	2014-11-04 19:25:11.243518	2015-01-04 16:13:42.490693	t
44	1	Holland Snow	<p>Форма: бокаловидная<br />\r\nОкрас цветка: белый<br />\r\nВысота бокала: до 7см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	holland-snow	\N	t	f	2014-11-04 20:17:16.177614	2015-01-04 16:15:21.097329	t
45	1	Mondial	<p>Форма: пионовидная<br />\r\nОкрас цветка: белый, махровый<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 12см<br />\r\nВысота: до 60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	mondial	\N	t	f	2014-11-04 20:21:22.338001	2015-01-04 16:15:50.126037	t
46	1	Lemon Ice = Bolroyal Honey	<p>Форма: бокаловидная<br />\r\nОкрас цветка: светло-желтый<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	lemon-ice-bolroyal-honey	\N	t	f	2014-11-04 20:27:18.843599	2015-01-04 16:16:25.646006	t
34	1	Milka	<p>Форма: бокаловидная<br />\r\nОкрас цветка: фиолетовый<br />\r\nВысота бокала: 7-8см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 45-50см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	milka	\N	t	f	2014-11-04 19:00:44.455753	2015-01-04 16:17:31.829455	t
48	1	Supermodel	<p>Форма: бокаловидная<br />\r\nОкрас цветка: розовый<br />\r\nВысота: 45см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	supermodel	\N	t	f	2014-11-04 20:36:46.595237	2015-01-04 16:17:59.983313	t
50	1	Arie Hoek	<p>Форма: чашевидная<br />\r\nОкрас цветка: ярко-красный<br />\r\nВысота бокала: до 6см<br />\r\nДиаметр бокала: до 5см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	arie-hoek	\N	t	f	2015-01-04 16:20:14.179508	2015-01-04 16:20:29.374226	t
52	1	Fun for two	<p>Форма: бокаловидная<br />\r\nОкрас цветка: белый с желтыми отливами<br />\r\nВысота бокала: до 7см<br />\r\nДиаметр бокала: до 5см<br />\r\nВысота: 40-60см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	fun-for-two	\N	t	f	2015-01-04 16:26:34.660092	2015-01-04 16:26:34.660092	t
51	1	Columbus	<p>Форма: чашевидная<br />\r\nОкрас цветка: красный с белым краем<br />\r\nВысота бокала: до 9см<br />\r\nДиаметр бокала: до 6см<br />\r\nВысота: до 40см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	columbus	\N	t	f	2015-01-04 16:22:39.039807	2015-01-04 16:24:37.330817	t
53	1	Hunter	<p>Форма: бокаловидная<br />\r\nОкрас цветка: красный<br />\r\nВысота бокала: до 8см<br />\r\nДиаметр бокала: до 6см<br />\r\nВысота: до 55см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	hunter	\N	t	f	2015-01-04 16:28:42.976764	2015-01-04 16:28:42.976764	t
54	1	Purple Prince	<p>Форма: бокаловидная<br />\r\nОкрас цветка: пурпурный<br />\r\nВысота бокала: 8-10см<br />\r\nВысота: до 35см<br />\r\nЦветок классический, крупный</p>\r\n	40.0	\N	purple-prince	\N	t	f	2015-01-04 16:30:19.041217	2015-01-04 16:30:19.041217	t
55	1	Queensland	<p>Окрас цветка: розовый бахромчатый<br />\r\nВысота бокала: 6-8см<br />\r\nВысота: 35-40см<br />\r\nЦветок классический, крупный</p>\r\n	50.0	\N	queensland	\N	t	f	2015-01-04 16:32:09.511052	2015-01-04 16:32:19.844407	t
56	3	Алоэ	<p>Декоративнолистное суккулентное растение.</p>\r\n\r\n<p>Листья: обладают бактерицидными свойствами. Их широко применяют в медицине.</p>\r\n\r\n<p>Размещение: хорошо растет на солнце, температура умеренная с весны до осени. Зимой прохладное сожержание.</p>\r\n\r\n<p>Полив: обильный в период роста и редкий зимой, в период покоя.</p>\r\n\r\n<p>Уход: подкормка удобрениями для кактусов не чаще 1 раза в месяц летом.</p>\r\n\r\n<p>Размножение: боковыми отростками.</p>\r\n	200.0	\N	aloe	\N	t	f	2015-01-04 17:10:28.359251	2015-01-04 17:10:28.359251	t
57	3	Бегония	<p>Многолетнее травянистое растение</p>\r\n\r\n<p>Листья: блестящие, крупные</p>\r\n\r\n<p>Цветение: обильное, длительное.</p>\r\n\r\n<p>Цветки белые, розовые, желтые, красные</p>\r\n\r\n<p>Размещение: предпочитают полутень, желательна температура не ниже 18˚</p>\r\n\r\n<p>Полив: регулярный, хорошо переносит опрыскивание</p>\r\n\r\n<p>Уход: подкармливать жидкими удобрениями раз в 10-15 дней</p>\r\n\r\n<p>Размножение: верхушечными и листовыми черенками и семенами</p>\r\n	350.0	\N	begoniya	\N	t	f	2015-01-04 17:13:40.696835	2015-01-04 17:13:50.453168	t
58	3	Диффенбахия	<p>Декоративнолиственное травянистое растение</p>\r\n\r\n<p>Листья: пестроокрашенные</p>\r\n\r\n<p>Размещение: светлое или слегка затененное местоположение, боится сухости воздуха</p>\r\n\r\n<p>Полив: умеренный</p>\r\n\r\n<p>Уход: в период роста не менее двух раз в месяц подкармливать комплексными удобрениями</p>\r\n\r\n<p>Размножение: черенкованием верхушечной части стебля</p>\r\n\r\n<p>Внимание! Сок растений ядовит!</p>\r\n	350.0	\N	diffenbahiya	\N	t	f	2015-01-04 17:16:30.481782	2015-01-04 17:16:42.225469	t
59	3	Зефирантес	<p>Небольшое луковичное растение</p>\r\n\r\n<p>Листья: темно-зеленые, линейные или ремневидные, длиной 15-20см</p>\r\n\r\n<p>Цветение: цветки звездчатые, воронковидные, широко раскрытые. Окраска белая</p>\r\n\r\n<p>Размещение: светолюбивое растение, зимой горшок с луковицей хранят в темноте до появления листьев</p>\r\n\r\n<p>Полив: обильный, зимой редкий</p>\r\n\r\n<p>Уход: в период роста и цветения подкормка полными минеральными удобрениями 2-3 раза в месяц</p>\r\n\r\n<p>Размножение: дочерними луковицами</p>\r\n	400.0	\N	zefirantes	\N	t	f	2015-01-04 17:19:24.491056	2015-01-04 17:19:37.045885	t
60	3	Ипомея Батат	<p>Многолетнее растение</p>\r\n\r\n<p>Листья: сердцевидной формы, от зеленого и желтоватого до темно-пурпурного и красноватого цвета</p>\r\n\r\n<p>Размещение: светолюбивое растение, не требует притенения</p>\r\n\r\n<p>Полив: умеренный</p>\r\n\r\n<p>Уход: подкормка с апреля по сентябрь 2 раза в месяц цветочными удобрениями</p>\r\n\r\n<p>Размножение: черенкование</p>\r\n	200.0	\N	ipomeya-batat	\N	t	f	2015-01-04 17:22:13.372777	2015-01-04 17:22:28.68085	t
61	3	Лимон	<p>Многолетнее вечнозеленое растение</p>\r\n\r\n<p>Листья: зеленые</p>\r\n\r\n<p>Цветение: бутоны и цветки собраны в гроздь, при хорошем уходе цветет и плодоносит, плоды созревают осенью</p>\r\n\r\n<p>Размещение: светлые, солнечные помещения, зимой предпочтительно прохладное помещение</p>\r\n\r\n<p>Полив: летом обильный, зимой умеренный</p>\r\n\r\n<p>Уход: в период роста 1 раз в 2 недели проводить подкормку, пересадка до 5-6 лет ежегодно</p>\r\n\r\n<p>Размножение: черенкованием в начале весны</p>\r\n	150.0	\N	limon	\N	t	f	2015-01-04 17:26:11.148068	2015-01-04 17:26:21.029188	t
62	3	Кочедыжник	<p>Многолетнее растение Листья: дважды и трижды перистыми красивыми листьями</p>\r\n\r\n<p>Размещение: полутень, не переносит прямых солнечных лучей, влажность воздуха высокая</p>\r\n\r\n<p>Полив: обильный, зимой умеренный</p>\r\n\r\n<p>Уход: пересадка ежегодно весной</p>\r\n\r\n<p>Размножение: спорами и живородящими почками</p>\r\n	350.0	\N	kochedyzhnik	\N	t	f	2015-01-04 17:27:50.715215	2015-01-04 17:28:01.119129	t
63	3	Нефролепис	<p>Многолетнее травянистое растение</p>\r\n\r\n<p>Листья: ярко-зеленые, перисто-рассеченные</p>\r\n\r\n<p>Размещение: предпочитает светлые, хорошо проветриваемые помещения</p>\r\n\r\n<p>Полив: регулярный в течении всего года</p>\r\n\r\n<p>Уход: пересадка ежегодно</p>\r\n\r\n<p>Размножение: делением куста весной</p>\r\n	350.0	\N	nefrolepis	\N	t	f	2015-01-04 17:30:10.360542	2015-01-04 17:30:20.845343	t
64	3	Педилантус	<p>Травянистое растение с ветвящимися темно-зелеными стеблями, которые образуют ломаную линию в виде зигзага</p>\r\n\r\n<p>Листья: небольшие, длиной до 6см</p>\r\n\r\n<p>Цветение: цветки мелкие, находятся в зонтико-видных соцветиях</p>\r\n\r\n<p>Размещение: растение очень светолюбиво, температура не ниже 15-16&deg;</p>\r\n\r\n<p>Полив: умеренный</p>\r\n\r\n<p>Уход: подкормка минеральными удобрениями ежемесячно</p>\r\n\r\n<p>Размножение: черенками</p>\r\n	350.0	\N	pedilantus	\N	t	f	2015-01-04 17:31:57.146591	2015-01-04 17:32:07.011266	t
65	3	Пеларгония (герань)	<p>Многолетнее растение</p>\r\n\r\n<p>Листья: широкие, округлые, в разной степени рассеченные</p>\r\n\r\n<p>Цветение: цветки простые, полумахровые или махровые, собраны в соцветие зонтик, самой разнообразной окраски</p>\r\n\r\n<p>Размещение: светолюбивое растение, зимой содержат при температуре 6-8&deg;</p>\r\n\r\n<p>Полив: летом обильный, зимой резко прекращают</p>\r\n\r\n<p>Уход: подкармливают минеральными удобрениями, обрезают в начале весны для мощного роста</p>\r\n\r\n<p>Размножение: черенками</p>\r\n	300.0	\N	pelargoniya-geran	\N	t	f	2015-01-04 17:34:33.99784	2015-01-04 17:34:44.217358	t
66	3	Рео	<p>Декоративнолистное травянистое растение с коротким стеблем</p>\r\n\r\n<p>Листья: двухцветные, сидячие, зеленые и пурпурные, линейно-ланцетные, длиной до 30 см</p>\r\n\r\n<p>Цветение: из пазух листьев периодически появляются &laquo;лодочки&raquo; с мелкими белыми цветками</p>\r\n\r\n<p>Размещение: светлое помещение</p>\r\n\r\n<p>Полив: летом обильный, зимой уверенный</p>\r\n\r\n<p>Уход: пересадка ежегодно весной</p>\r\n\r\n<p>Размножение: верхушечными черенками, боковыми побегами, можно и семенами</p>\r\n	200.0	\N	reo	\N	t	f	2015-01-04 17:36:15.938011	2015-01-04 17:36:25.202304	t
67	3	Сансевьера	<p>Многолетнее корневищное вечнозеленое растение</p>\r\n\r\n<p>Листья: удлиненно-ланцетные, мечевидные, полосатые</p>\r\n\r\n<p>Цветение: весной и осенью, при хорошем уходе, цветки бело-зеленоватые, душистые</p>\r\n\r\n<p>Размещение: светолюбива, но хорошо растет и в полутени, мирится с сухостью воздуха и перепадами температур</p>\r\n\r\n<p>Полив: умеренный, зимой сократить до 1 раза в месяц</p>\r\n\r\n<p>Уход: пересадку растений до 5 лет проводить ежегодно, в дальнейшем &ndash; 1 раз в 2-3 года</p>\r\n\r\n<p>Размножение: черенками весной или делением корневища</p>\r\n	150.0	\N	sanseviera	\N	t	f	2015-01-04 17:38:11.111506	2015-01-04 17:38:22.6921	t
68	3	Сеткреазия	<p>Многолетнее суккулентное травянистое растение</p>\r\n\r\n<p>Листья: фиолетовые, удлиненно-ланцетные длиной до 10-18см</p>\r\n\r\n<p>Цветение: цветки бело-пурпурные, розовые, плод - коробочка</p>\r\n\r\n<p>Размещение: теплолюбивое и светолюбивое растение, чем ярче свет, тем красивее листья.</p>\r\n\r\n<p>Полив: летом обильный, зимой равномерный</p>\r\n\r\n<p>Уход: подкормка с апреля по август 2 раза в месяц полным минеральным удобрением</p>\r\n\r\n<p>Размножение: черенками</p>\r\n	200.0	\N	setkreaziya	\N	t	f	2015-01-04 17:39:55.28125	2015-01-04 17:40:09.609193	t
69	3	Фикус Бенджамина	<p>Вечнозеленый кустарник</p>\r\n\r\n<p>Листья: мелкие листья</p>\r\n\r\n<p>Размещение: яркий рассеянный свет, повышенная влажность воздуха, летом необходимо опрыскивание</p>\r\n\r\n<p>Полив: обильный, зимой ограниченный</p>\r\n\r\n<p>Уход: 2 раза в месяц, пересадка до 4-5 лет каждую весну</p>\r\n\r\n<p>Размножение: семенами, воздушными отводками и черенками</p>\r\n	150.0	\N	fikus-bendzhamina	\N	t	f	2015-01-04 17:41:44.186784	2015-01-04 17:41:54.532645	t
70	3	Щитовник	<p>Многолетнее растение</p>\r\n\r\n<p>Листья: непарноперистые зеленые, длиной до 30 см. На нижней стороне расположены спорангии со спорами</p>\r\n\r\n<p>Размещение: светолюбивое растение, хорошо растет и в полутени</p>\r\n\r\n<p>Полив: регулярный, зимой поддерживать земляной ком чуть влажным</p>\r\n\r\n<p>Уход: пересадка ежегодно весной</p>\r\n\r\n<p>Размножение: делением корневищ или семенами</p>\r\n	350.0	\N	schitovnik	\N	t	f	2015-01-04 17:43:10.845552	2015-01-04 17:43:20.921509	t
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 70, true);


--
-- Data for Name: rails_admin_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rails_admin_histories (id, message, username, item, "table", month, year, created_at, updated_at) FROM stdin;
1	new	\N	1	Category	\N	\N	2014-02-19 13:07:25.964719	2014-02-19 13:07:25.964719
2	new	\N	1	Product	\N	\N	2014-02-19 13:14:14.514712	2014-02-19 13:14:14.514712
3	new	\N	2	Product	\N	\N	2014-02-19 13:48:38.018226	2014-02-19 13:48:38.018226
4		\N	2	Product	\N	\N	2014-02-19 13:52:24.227579	2014-02-19 13:52:24.227579
5	name: "Тюльпан Bolroyal Silver 1" -> "Bolroyal Silver 1"	\N	2	Product	\N	\N	2014-02-27 06:28:38.611912	2014-02-27 06:28:38.611912
6	new	\N	3	Product	\N	\N	2014-02-27 06:29:11.168755	2014-02-27 06:29:11.168755
7		\N	3	Product	\N	\N	2014-02-27 06:29:19.80011	2014-02-27 06:29:19.80011
8	new	\N	4	Product	\N	\N	2014-02-27 06:29:39.344321	2014-02-27 06:29:39.344321
9		\N	4	Product	\N	\N	2014-02-27 06:29:48.240874	2014-02-27 06:29:48.240874
10	show_on_main_page: false -> true	\N	1	Product	\N	\N	2014-02-27 06:29:55.482454	2014-02-27 06:29:55.482454
11	show_on_main_page: false -> true	\N	2	Product	\N	\N	2014-02-27 06:30:00.084489	2014-02-27 06:30:00.084489
12	show_on_main_page: false -> true	\N	3	Product	\N	\N	2014-02-27 06:30:03.506158	2014-02-27 06:30:03.506158
13	show_on_main_page: false -> true	\N	4	Product	\N	\N	2014-02-27 06:30:06.640179	2014-02-27 06:30:06.640179
14		\N	3	Product	\N	\N	2014-02-27 06:30:27.022612	2014-02-27 06:30:27.022612
15		\N	4	Product	\N	\N	2014-02-27 06:30:43.262996	2014-02-27 06:30:43.262996
16	new	\N	5	Product	\N	\N	2014-02-27 06:31:31.848334	2014-02-27 06:31:31.848334
17		\N	5	Product	\N	\N	2014-02-27 06:31:45.93882	2014-02-27 06:31:45.93882
18	new	\N	6	Product	\N	\N	2014-02-27 06:32:19.67525	2014-02-27 06:32:19.67525
19	new	\N	7	Product	\N	\N	2014-02-27 06:32:37.636686	2014-02-27 06:32:37.636686
20	new	\N	8	Product	\N	\N	2014-02-27 06:32:56.014333	2014-02-27 06:32:56.014333
21	name: "Тюльпан Cousteau" -> "Cousteau"	\N	7	Product	\N	\N	2014-02-27 06:33:01.892859	2014-02-27 06:33:01.892859
22	name: "Тюльпан Laptop" -> "Laptop"	\N	8	Product	\N	\N	2014-02-27 06:33:07.573564	2014-02-27 06:33:07.573564
23	new	\N	9	Product	\N	\N	2014-02-27 06:33:28.118808	2014-02-27 06:33:28.118808
24	new	\N	10	Product	\N	\N	2014-02-27 06:33:50.769724	2014-02-27 06:33:50.769724
25	new	\N	11	Product	\N	\N	2014-02-27 06:34:05.110303	2014-02-27 06:34:05.110303
26	new	\N	12	Product	\N	\N	2014-02-27 06:34:20.225477	2014-02-27 06:34:20.225477
27	new	\N	13	Product	\N	\N	2014-02-27 06:34:31.187321	2014-02-27 06:34:31.187321
28	new	\N	14	Product	\N	\N	2014-02-27 06:34:42.470387	2014-02-27 06:34:42.470387
29	new	\N	15	Product	\N	\N	2014-02-27 06:34:53.539599	2014-02-27 06:34:53.539599
30	new	\N	16	Product	\N	\N	2014-02-27 06:35:06.4186	2014-02-27 06:35:06.4186
31	new	\N	17	Product	\N	\N	2014-02-27 06:35:21.411104	2014-02-27 06:35:21.411104
32	new	\N	18	Product	\N	\N	2014-02-27 06:35:39.857447	2014-02-27 06:35:39.857447
33	new	\N	2	Category	\N	\N	2014-02-27 06:36:14.542178	2014-02-27 06:36:14.542178
34	new	\N	19	Product	\N	\N	2014-02-27 06:37:25.059044	2014-02-27 06:37:25.059044
35	new	\N	20	Product	\N	\N	2014-02-27 06:37:36.37571	2014-02-27 06:37:36.37571
36	show_on_main_page: false -> true	\N	5	Product	\N	\N	2014-02-27 06:37:55.706818	2014-02-27 06:37:55.706818
37	show_on_main_page: false -> true	\N	6	Product	\N	\N	2014-02-27 06:38:08.422187	2014-02-27 06:38:08.422187
38	show_on_main_page: false -> true	\N	7	Product	\N	\N	2014-02-27 06:38:20.255173	2014-02-27 06:38:20.255173
39	show_on_main_page: false -> true	\N	9	Product	\N	\N	2014-02-27 06:38:35.314193	2014-02-27 06:38:35.314193
40	show_on_main_page: false -> true	\N	8	Product	\N	\N	2014-02-27 06:38:46.06086	2014-02-27 06:38:46.06086
41	name: "malaysia" -> "Malaysia", show_on_main_page: false -> true	\N	10	Product	\N	\N	2014-02-27 06:39:00.828487	2014-02-27 06:39:00.828487
42	show_on_main_page: false -> true	\N	11	Product	\N	\N	2014-02-27 06:39:10.591673	2014-02-27 06:39:10.591673
43	show_on_main_page: false -> true	\N	12	Product	\N	\N	2014-02-27 06:39:21.87838	2014-02-27 06:39:21.87838
44	show_on_main_page: false -> true	\N	13	Product	\N	\N	2014-02-27 06:39:35.453172	2014-02-27 06:39:35.453172
45	show_on_main_page: false -> true	\N	14	Product	\N	\N	2014-02-27 06:39:49.768436	2014-02-27 06:39:49.768436
46	show_on_main_page: false -> true	\N	15	Product	\N	\N	2014-02-27 06:40:00.514767	2014-02-27 06:40:00.514767
47	show_on_main_page: false -> true	\N	16	Product	\N	\N	2014-02-27 06:49:13.130896	2014-02-27 06:49:13.130896
48	show_on_main_page: false -> true	\N	17	Product	\N	\N	2014-02-27 06:49:28.248032	2014-02-27 06:49:28.248032
49	show_on_main_page: false -> true	\N	18	Product	\N	\N	2014-02-27 06:49:42.05511	2014-02-27 06:49:42.05511
50	show_on_main_page: false -> true	\N	19	Product	\N	\N	2014-02-27 06:49:54.063439	2014-02-27 06:49:54.063439
51	show_on_main_page: false -> true	\N	20	Product	\N	\N	2014-02-27 06:50:04.341579	2014-02-27 06:50:04.341579
52		\N	5	Product	\N	\N	2014-02-27 06:50:37.095943	2014-02-27 06:50:37.095943
53		\N	6	Product	\N	\N	2014-02-27 06:50:52.494761	2014-02-27 06:50:52.494761
54		\N	7	Product	\N	\N	2014-02-27 06:51:07.180528	2014-02-27 06:51:07.180528
55		\N	8	Product	\N	\N	2014-02-27 06:51:17.785584	2014-02-27 06:51:17.785584
56		\N	9	Product	\N	\N	2014-02-27 06:51:30.490299	2014-02-27 06:51:30.490299
57		\N	10	Product	\N	\N	2014-02-27 06:51:41.799876	2014-02-27 06:51:41.799876
58		\N	11	Product	\N	\N	2014-02-27 06:51:52.364903	2014-02-27 06:51:52.364903
59		\N	12	Product	\N	\N	2014-02-27 06:52:02.722946	2014-02-27 06:52:02.722946
60		\N	13	Product	\N	\N	2014-02-27 06:52:36.649322	2014-02-27 06:52:36.649322
61		\N	14	Product	\N	\N	2014-02-27 06:52:48.230566	2014-02-27 06:52:48.230566
62		\N	15	Product	\N	\N	2014-02-27 06:53:01.963015	2014-02-27 06:53:01.963015
63		\N	16	Product	\N	\N	2014-02-27 06:53:22.249475	2014-02-27 06:53:22.249475
64		\N	17	Product	\N	\N	2014-02-27 06:53:34.96885	2014-02-27 06:53:34.96885
65		\N	18	Product	\N	\N	2014-02-27 06:53:49.530531	2014-02-27 06:53:49.530531
66		\N	19	Product	\N	\N	2014-02-27 06:53:59.005513	2014-02-27 06:53:59.005513
67		\N	20	Product	\N	\N	2014-02-27 06:54:09.092787	2014-02-27 06:54:09.092787
68	new	\N	21	Product	\N	\N	2014-11-04 18:18:55.498978	2014-11-04 18:18:55.498978
69	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: красно-желтый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 6см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 4см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: до 65см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: красно-желтый<br />\\r\\nВысота бокала: до 6см<br />\\r\\nДиаметр бокала: до 4см<br />\\r\\nВысота: до 65см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	21	Product	\N	\N	2014-11-04 18:19:14.080296	2014-11-04 18:19:14.080296
70	show_on_main_page: false -> true	\N	21	Product	\N	\N	2014-11-04 18:19:26.793587	2014-11-04 18:19:26.793587
71	new	\N	22	Product	\N	\N	2014-11-04 18:20:16.762331	2014-11-04 18:20:16.762331
72	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: сиреневый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 6см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: до 60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: сиреневый<br />\\r\\nВысота бокала: до 8см<br />\\r\\nДиаметр бокала: до 6см<br />\\r\\nВысота: до 60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	22	Product	\N	\N	2014-11-04 18:28:01.93103	2014-11-04 18:28:01.93103
73		\N	22	Product	\N	\N	2014-11-04 18:28:33.161086	2014-11-04 18:28:33.161086
74		\N	22	Product	\N	\N	2014-11-04 18:28:51.804585	2014-11-04 18:28:51.804585
75		\N	22	Product	\N	\N	2014-11-04 18:28:58.607748	2014-11-04 18:28:58.607748
76	new	\N	23	Product	\N	\N	2014-11-04 18:29:52.58858	2014-11-04 18:29:52.58858
77	description: "<p>Окрас цветка: белый, махровый<br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-45см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок махровый, крупный</span></p>\\r\\n" -> "<p>Окрас цветка: белый, махровый<br />\\r\\nВысота: 40-45см<br />\\r\\nЦветок махровый, крупный</p>\\r\\n"	\N	23	Product	\N	\N	2014-11-04 18:30:08.483689	2014-11-04 18:30:08.483689
78		\N	23	Product	\N	\N	2014-11-04 18:30:24.865979	2014-11-04 18:30:24.865979
79		\N	23	Product	\N	\N	2014-11-04 18:30:40.328602	2014-11-04 18:30:40.328602
80	new	\N	24	Product	\N	\N	2014-11-04 18:31:00.905493	2014-11-04 18:31:00.905493
81	description: "" -> "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: кремово-розовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 8-10см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 70-90см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n"	\N	24	Product	\N	\N	2014-11-04 18:32:01.312675	2014-11-04 18:32:01.312675
82	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: кремово-розовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 8-10см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 70-90см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: кремово-розовый<br />\\r\\nВысота бокала: 8-10см<br />\\r\\nВысота: 70-90см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	24	Product	\N	\N	2014-11-04 18:32:30.482236	2014-11-04 18:32:30.482236
83	new	\N	25	Product	\N	\N	2014-11-04 18:33:11.299753	2014-11-04 18:33:11.299753
84		\N	25	Product	\N	\N	2014-11-04 18:33:45.933043	2014-11-04 18:33:45.933043
85		\N	25	Product	\N	\N	2014-11-04 18:34:03.982092	2014-11-04 18:34:03.982092
86	new	\N	26	Product	\N	\N	2014-11-04 18:34:54.025342	2014-11-04 18:34:54.025342
87	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: фиолетовый, бахромчатый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 45-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: фиолетовый, бахромчатый<br />\\r\\nВысота бокала: до 7см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 45-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	26	Product	\N	\N	2014-11-04 18:35:06.503682	2014-11-04 18:35:06.503682
88		\N	26	Product	\N	\N	2014-11-04 18:36:35.191262	2014-11-04 18:36:35.191262
89	new	\N	27	Product	\N	\N	2014-11-04 18:37:35.453796	2014-11-04 18:37:35.453796
90	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: белый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 50-70см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: белый<br />\\r\\nВысота бокала: до 7см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 50-70см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	27	Product	\N	\N	2014-11-04 18:37:49.130366	2014-11-04 18:37:49.130366
91		\N	27	Product	\N	\N	2014-11-04 18:38:02.087106	2014-11-04 18:38:02.087106
92	new	\N	28	Product	\N	\N	2014-11-04 18:41:57.358037	2014-11-04 18:41:57.358037
93	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: красно-желтый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 6см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 4см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 50-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: красно-желтый<br />\\r\\nВысота бокала: до 6см<br />\\r\\nДиаметр бокала: до 4см<br />\\r\\nВысота: 50-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	28	Product	\N	\N	2014-11-04 18:42:14.999793	2014-11-04 18:42:14.999793
94		\N	28	Product	\N	\N	2014-11-04 18:42:33.170782	2014-11-04 18:42:33.170782
95	new	\N	29	Product	\N	\N	2014-11-04 18:43:11.716247	2014-11-04 18:43:11.716247
96	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: баклажановый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 6см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 4см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-45см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: баклажановый<br />\\r\\nВысота бокала: до 6см<br />\\r\\nДиаметр бокала: до 4см<br />\\r\\nВысота: 40-45см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	29	Product	\N	\N	2014-11-04 18:43:23.72754	2014-11-04 18:43:23.72754
97		\N	29	Product	\N	\N	2014-11-04 18:43:32.864892	2014-11-04 18:43:32.864892
98	new	\N	30	Product	\N	\N	2014-11-04 18:44:08.996944	2014-11-04 18:44:08.996944
99	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: св. красный</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 50-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: св. красный<br />\\r\\nВысота бокала: до 8см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 50-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	30	Product	\N	\N	2014-11-04 18:44:21.997072	2014-11-04 18:44:21.997072
100		\N	30	Product	\N	\N	2014-11-04 18:44:32.664355	2014-11-04 18:44:32.664355
101	new	\N	31	Product	\N	\N	2014-11-04 18:46:55.291734	2014-11-04 18:46:55.291734
183		\N	56	Product	\N	\N	2015-01-04 17:10:39.421558	2015-01-04 17:10:39.421558
184	new	\N	57	Product	\N	\N	2015-01-04 17:13:40.85076	2015-01-04 17:13:40.85076
102	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: белый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 8-10см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 60-70см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: белый<br />\\r\\nВысота бокала: 8-10см<br />\\r\\nДиаметр бокала: до 7см<br />\\r\\nВысота: 60-70см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	31	Product	\N	\N	2014-11-04 18:47:14.843229	2014-11-04 18:47:14.843229
103		\N	31	Product	\N	\N	2014-11-04 18:48:20.883556	2014-11-04 18:48:20.883556
104	new	\N	32	Product	\N	\N	2014-11-04 18:50:30.734559	2014-11-04 18:50:30.734559
105	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: сиреневый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 8-9см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-50см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: сиреневый<br />\\r\\nВысота бокала: 8-9см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 40-50см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	32	Product	\N	\N	2014-11-04 18:53:25.940814	2014-11-04 18:53:25.940814
106		\N	32	Product	\N	\N	2014-11-04 18:54:51.116971	2014-11-04 18:54:51.116971
107	new	\N	33	Product	\N	\N	2014-11-04 18:56:20.665701	2014-11-04 18:56:20.665701
108	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: слоновая кость</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 7-8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 50-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: слоновая кость<br />\\r\\nВысота бокала: 7-8см<br />\\r\\nВысота: 50-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	33	Product	\N	\N	2014-11-04 18:57:06.128546	2014-11-04 18:57:06.128546
109		\N	33	Product	\N	\N	2014-11-04 18:57:32.944124	2014-11-04 18:57:32.944124
110	new	\N	34	Product	\N	\N	2014-11-04 19:00:44.621901	2014-11-04 19:00:44.621901
111	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: фиолетовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 7-8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 45-50см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: фиолетовый<br />\\r\\nВысота бокала: 7-8см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 45-50см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	34	Product	\N	\N	2014-11-04 19:01:28.604414	2014-11-04 19:01:28.604414
112		\N	34	Product	\N	\N	2014-11-04 19:01:57.298678	2014-11-04 19:01:57.298678
113	new	\N	35	Product	\N	\N	2014-11-04 19:03:46.29362	2014-11-04 19:03:46.29362
114	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: розовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-50см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: розовый<br />\\r\\nВысота: 40-50см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	35	Product	\N	\N	2014-11-04 19:04:35.233066	2014-11-04 19:04:35.233066
115		\N	35	Product	\N	\N	2014-11-04 19:05:47.096496	2014-11-04 19:05:47.096496
116	new	\N	36	Product	\N	\N	2014-11-04 19:07:39.336654	2014-11-04 19:07:39.336654
117	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: малиновый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-45см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: малиновый<br />\\r\\nВысота: 40-45см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	36	Product	\N	\N	2014-11-04 19:08:58.258429	2014-11-04 19:08:58.258429
118		\N	36	Product	\N	\N	2014-11-04 19:09:31.864835	2014-11-04 19:09:31.864835
119	new	\N	37	Product	\N	\N	2014-11-04 19:11:58.838323	2014-11-04 19:11:58.838323
120	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: красный</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: красный<br />\\r\\nВысота бокала: до 7см<br />\\r\\nВысота: 40-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	37	Product	\N	\N	2014-11-04 19:12:41.372895	2014-11-04 19:12:41.372895
121		\N	37	Product	\N	\N	2014-11-04 19:13:57.07321	2014-11-04 19:13:57.07321
122	new	\N	38	Product	\N	\N	2014-11-04 19:17:40.75601	2014-11-04 19:17:40.75601
123	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: темно-розовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 6-7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 45-50см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: темно-розовый<br />\\r\\nВысота бокала: 6-7см<br />\\r\\nВысота: 45-50см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	38	Product	\N	\N	2014-11-04 19:19:38.594647	2014-11-04 19:19:38.594647
124		\N	38	Product	\N	\N	2014-11-04 19:20:40.240187	2014-11-04 19:20:40.240187
125	new	\N	39	Product	\N	\N	2014-11-04 19:25:11.423015	2014-11-04 19:25:11.423015
126	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: розовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 6см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: розовый<br />\\r\\nВысота бокала: до 8см<br />\\r\\nДиаметр бокала: до 6см<br />\\r\\nВысота: 40-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	39	Product	\N	\N	2014-11-04 19:26:11.349898	2014-11-04 19:26:11.349898
127		\N	39	Product	\N	\N	2014-11-04 19:27:34.257784	2014-11-04 19:27:34.257784
128	new	\N	40	Product	\N	\N	2014-11-04 19:29:52.008632	2014-11-04 19:29:52.008632
129	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: белый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: белый<br />\\r\\nВысота бокала: 7см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 40-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	40	Product	\N	\N	2014-11-04 19:30:44.062794	2014-11-04 19:30:44.062794
130		\N	40	Product	\N	\N	2014-11-04 19:31:38.150909	2014-11-04 19:31:38.150909
131	new	\N	41	Product	\N	\N	2014-11-04 19:34:28.939347	2014-11-04 19:34:28.939347
132	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: желтый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-50см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: желтый<br />\\r\\nВысота бокала: до 8см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 40-50см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	41	Product	\N	\N	2014-11-04 19:35:19.301382	2014-11-04 19:35:19.301382
133		\N	41	Product	\N	\N	2014-11-04 19:36:16.515761	2014-11-04 19:36:16.515761
134	new	\N	42	Product	\N	\N	2014-11-04 19:40:28.900097	2014-11-04 19:40:28.900097
135	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: белый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: 6-9см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 45-55см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: белый<br />\\r\\nВысота бокала: 6-9см<br />\\r\\nВысота: 45-55см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	42	Product	\N	\N	2014-11-04 19:41:19.434318	2014-11-04 19:41:19.434318
136	new	\N	43	Product	\N	\N	2014-11-04 20:05:00.22773	2014-11-04 20:05:00.22773
137	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: розово-белый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-50см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: розово-белый<br />\\r\\nВысота бокала: до 8см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 40-50см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	43	Product	\N	\N	2014-11-04 20:05:58.100011	2014-11-04 20:05:58.100011
138		\N	32	Product	\N	\N	2014-11-04 20:08:13.36267	2014-11-04 20:08:13.36267
139	new	\N	44	Product	\N	\N	2014-11-04 20:17:16.395861	2014-11-04 20:17:16.395861
140	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: белый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: белый<br />\\r\\nВысота бокала: до 7см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 40-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	44	Product	\N	\N	2014-11-04 20:18:03.521133	2014-11-04 20:18:03.521133
141	new	\N	45	Product	\N	\N	2014-11-04 20:21:22.522458	2014-11-04 20:21:22.522458
142	description: "<p>Форма: пионовидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: белый, махровый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 8см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 12см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: до 60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: пионовидная<br />\\r\\nОкрас цветка: белый, махровый<br />\\r\\nВысота бокала: до 8см<br />\\r\\nДиаметр бокала: до 12см<br />\\r\\nВысота: до 60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	45	Product	\N	\N	2014-11-04 20:22:09.812142	2014-11-04 20:22:09.812142
143	new	\N	46	Product	\N	\N	2014-11-04 20:27:19.028491	2014-11-04 20:27:19.028491
144	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: светло-желтый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: светло-желтый<br />\\r\\nВысота: 40-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	46	Product	\N	\N	2014-11-04 20:28:22.899638	2014-11-04 20:28:22.899638
145	new	\N	47	Product	\N	\N	2014-11-04 20:33:19.50676	2014-11-04 20:33:19.50676
146	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: желтый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота бокала: до 7см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Диаметр бокала: до 5см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 40-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: желтый<br />\\r\\nВысота бокала: до 7см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nВысота: 40-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	47	Product	\N	\N	2014-11-04 20:34:06.652474	2014-11-04 20:34:06.652474
147	new	\N	48	Product	\N	\N	2014-11-04 20:36:46.72022	2014-11-04 20:36:46.72022
148	description: "<p>Форма: бокаловидная<br />\\r\\n<span style=\\"line-height:1.6em\\">Окрас цветка: розовый</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 45см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Форма: бокаловидная<br />\\r\\nОкрас цветка: розовый<br />\\r\\nВысота: 45см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	48	Product	\N	\N	2014-11-04 20:37:31.8088	2014-11-04 20:37:31.8088
149	new	\N	49	Product	\N	\N	2014-11-04 20:40:06.184029	2014-11-04 20:40:06.184029
150	description: "<p>Окрас цветка: желтый<br />\\r\\n<span style=\\"line-height:1.6em\\">Высота: 50-60см</span><br />\\r\\n<span style=\\"line-height:1.6em\\">Цветок классический, крупный</span></p>\\r\\n" -> "<p>Окрас цветка: желтый<br />\\r\\nВысота: 50-60см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	49	Product	\N	\N	2014-11-04 20:40:55.739418	2014-11-04 20:40:55.739418
151	published: true -> false	\N	25	Product	\N	\N	2015-01-04 16:00:48.265196	2015-01-04 16:00:48.265196
152	price: #<BigDecimal:4b99200,'0.0',9(18)> -> #<BigDecimal:4b2cc68,'0.4E2',9(18)>, published: false -> true	\N	22	Product	\N	\N	2015-01-04 16:07:04.034889	2015-01-04 16:07:04.034889
153	published: false -> true	\N	43	Product	\N	\N	2015-01-04 16:09:13.905084	2015-01-04 16:09:13.905084
154	price: #<BigDecimal:5617dd0,'0.0',9(18)> -> #<BigDecimal:55bf860,'0.4E2',9(18)>	\N	43	Product	\N	\N	2015-01-04 16:09:38.284096	2015-01-04 16:09:38.284096
155	price: #<BigDecimal:5acf670,'0.0',9(18)> -> #<BigDecimal:58e67c8,'0.4E2',9(18)>, published: false -> true	\N	32	Product	\N	\N	2015-01-04 16:11:29.32924	2015-01-04 16:11:29.32924
156	price: #<BigDecimal:4a60168,'0.0',9(18)> -> #<BigDecimal:5c06480,'0.4E2',9(18)>, published: false -> true	\N	37	Product	\N	\N	2015-01-04 16:12:11.554267	2015-01-04 16:12:11.554267
157	price: #<BigDecimal:527a218,'0.0',9(18)> -> #<BigDecimal:5245d60,'0.4E2',9(18)>, published: false -> true	\N	38	Product	\N	\N	2015-01-04 16:12:53.975832	2015-01-04 16:12:53.975832
158	price: #<BigDecimal:21a15d8,'0.0',9(18)> -> #<BigDecimal:20517f0,'0.4E2',9(18)>, published: false -> true	\N	39	Product	\N	\N	2015-01-04 16:13:42.521355	2015-01-04 16:13:42.521355
159	price: #<BigDecimal:51f0d38,'0.0',9(18)> -> #<BigDecimal:5187068,'0.5E2',9(18)>, published: false -> true	\N	26	Product	\N	\N	2015-01-04 16:14:49.923454	2015-01-04 16:14:49.923454
160	price: #<BigDecimal:5bd36c0,'0.0',9(18)> -> #<BigDecimal:5b76dd0,'0.4E2',9(18)>, published: false -> true	\N	44	Product	\N	\N	2015-01-04 16:15:21.123171	2015-01-04 16:15:21.123171
161	price: #<BigDecimal:348ddb8,'0.0',9(18)> -> #<BigDecimal:33cd748,'0.4E2',9(18)>, published: false -> true	\N	45	Product	\N	\N	2015-01-04 16:15:50.151162	2015-01-04 16:15:50.151162
162	price: #<BigDecimal:4b320f0,'0.0',9(18)> -> #<BigDecimal:4ad6408,'0.4E2',9(18)>, published: false -> true	\N	46	Product	\N	\N	2015-01-04 16:16:25.680214	2015-01-04 16:16:25.680214
163	price: #<BigDecimal:386ec70,'0.0',9(18)> -> #<BigDecimal:36c2020,'0.4E2',9(18)>, published: false -> true	\N	24	Product	\N	\N	2015-01-04 16:16:52.192038	2015-01-04 16:16:52.192038
164	price: #<BigDecimal:3525848,'0.0',9(18)> -> #<BigDecimal:3466178,'0.4E2',9(18)>, published: false -> true	\N	34	Product	\N	\N	2015-01-04 16:17:31.888839	2015-01-04 16:17:31.888839
165	price: #<BigDecimal:34c2860,'0.0',9(18)> -> #<BigDecimal:341f6b0,'0.4E2',9(18)>, published: false -> true	\N	48	Product	\N	\N	2015-01-04 16:18:00.004154	2015-01-04 16:18:00.004154
166	new	\N	50	Product	\N	\N	2015-01-04 16:20:14.307806	2015-01-04 16:20:14.307806
167	description: "<p>Форма: чашевидная<br />\\r\\nОкрас цветка: ярко-красный<br />\\r\\nВысота бокала: до 6см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nЦветок классический, крупный</p>\\r\\n\\r\\n" -> "<p>Форма: чашевидная<br />\\r\\nОкрас цветка: ярко-красный<br />\\r\\nВысота бокала: до 6см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	50	Product	\N	\N	2015-01-04 16:20:29.429953	2015-01-04 16:20:29.429953
168	new	\N	51	Product	\N	\N	2015-01-04 16:22:39.092307	2015-01-04 16:22:39.092307
169	description: "<p>Форма: чашевидная<br />\\r\\nОкрас цветка: ярко-красный<br />\\r\\nВысота бокала: до 6см<br />\\r\\nДиаметр бокала: до 5см<br />\\r\\nЦветок классический, крупный</p>\\r\\n" -> "<p>Форма: чашевидная<br />\\r\\nОкрас цветка: красный с белым краем<br />\\r\\nВысота бокала: до 9см<br />\\r\\nДиаметр бокала: до 6см<br />\\r\\nВысота: до 40см<br />\\r\\nЦветок классический, крупный</p>\\r\\n\\r\\n"	\N	51	Product	\N	\N	2015-01-04 16:24:06.011872	2015-01-04 16:24:06.011872
170		\N	50	Product	\N	\N	2015-01-04 16:24:18.22039	2015-01-04 16:24:18.22039
171	description: "<p>Форма: чашевидная<br />\\r\\nОкрас цветка: красный с белым краем<br />\\r\\nВысота бокала: до 9см<br />\\r\\nДиаметр бокала: до 6см<br />\\r\\nВысота: до 40см<br />\\r\\nЦветок классический, крупный</p>\\r\\n\\r\\n" -> "<p>Форма: чашевидная<br />\\r\\nОкрас цветка: красный с белым краем<br />\\r\\nВысота бокала: до 9см<br />\\r\\nДиаметр бокала: до 6см<br />\\r\\nВысота: до 40см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	51	Product	\N	\N	2015-01-04 16:24:37.378894	2015-01-04 16:24:37.378894
172	new	\N	52	Product	\N	\N	2015-01-04 16:26:34.714747	2015-01-04 16:26:34.714747
173		\N	52	Product	\N	\N	2015-01-04 16:26:47.293677	2015-01-04 16:26:47.293677
174	new	\N	53	Product	\N	\N	2015-01-04 16:28:43.027482	2015-01-04 16:28:43.027482
175		\N	53	Product	\N	\N	2015-01-04 16:28:57.83481	2015-01-04 16:28:57.83481
176	new	\N	54	Product	\N	\N	2015-01-04 16:30:19.103329	2015-01-04 16:30:19.103329
177		\N	54	Product	\N	\N	2015-01-04 16:30:28.732766	2015-01-04 16:30:28.732766
178	new	\N	55	Product	\N	\N	2015-01-04 16:32:09.565255	2015-01-04 16:32:09.565255
179	description: "<p>\\r\\nОкрас цветка: розовый бахромчатый<br />\\r\\nВысота бокала: 6-8см<br />\\r\\nВысота: 35-40см<br />\\r\\nЦветок классический, крупный</p>\\r\\n" -> "<p>Окрас цветка: розовый бахромчатый<br />\\r\\nВысота бокала: 6-8см<br />\\r\\nВысота: 35-40см<br />\\r\\nЦветок классический, крупный</p>\\r\\n"	\N	55	Product	\N	\N	2015-01-04 16:32:19.924119	2015-01-04 16:32:19.924119
180	delete	\N	2	Category	\N	\N	2015-01-04 16:32:43.443897	2015-01-04 16:32:43.443897
181	new	\N	3	Category	\N	\N	2015-01-04 17:09:38.185255	2015-01-04 17:09:38.185255
182	new	\N	56	Product	\N	\N	2015-01-04 17:10:28.42715	2015-01-04 17:10:28.42715
185	description: "<p>\\r\\nМноголетнее травянистое растение</p><p>\\r\\nЛистья: блестящие, крупные</p><p>\\r\\nЦветение: обильное, длительное.</p><p> \\r\\nЦветки белые, розовые, желтые, красные</p><p>\\r\\nРазмещение: предпочитают полутень, желательна температура не ниже 18˚</p><p>\\r\\nПолив: регулярный, хорошо переносит опрыскивание</p><p>\\r\\nУход: подкармливать жидкими удобрениями раз в 10-15 дней</p><p>\\r\\nРазмножение: верхушечными и листовыми черенками и семенами</p>" -> "<p>Многолетнее травянистое растение</p>\\r\\n\\r\\n<p>Листья: блестящие, крупные</p>\\r\\n\\r\\n<p>Цветение: обильное, длительное.</p>\\r\\n\\r\\n<p>Цветки белые, розовые, желтые, красные</p>\\r\\n\\r\\n<p>Размещение: предпочитают полутень, желательна температура не ниже 18˚</p>\\r\\n\\r\\n<p>Полив: регулярный, хорошо переносит опрыскивание</p>\\r\\n\\r\\n<p>Уход: подкармливать жидкими удобрениями раз в 10-15 дней</p>\\r\\n\\r\\n<p>Размножение: верхушечными и листовыми черенками и семенами</p>\\r\\n"	\N	57	Product	\N	\N	2015-01-04 17:13:50.519355	2015-01-04 17:13:50.519355
186	new	\N	58	Product	\N	\N	2015-01-04 17:16:30.564882	2015-01-04 17:16:30.564882
187	description: "<p>\\r\\nДекоративнолиственное травянистое растение</p><p>\\r\\nЛистья: пестроокрашенные</p><p>\\r\\nРазмещение: светлое или слегка затененное местоположение, боится сухости воздуха</p><p>\\r\\nПолив: умеренный</p><p>\\r\\nУход: в период роста не менее двух раз в месяц подкармливать комплексными удобрениями</p><p>\\r\\nРазмножение: черенкованием верхушечной части стебля</p><p>\\r\\nВнимание! Сок растений ядовит!\\r\\n</p>" -> "<p>Декоративнолиственное травянистое растение</p>\\r\\n\\r\\n<p>Листья: пестроокрашенные</p>\\r\\n\\r\\n<p>Размещение: светлое или слегка затененное местоположение, боится сухости воздуха</p>\\r\\n\\r\\n<p>Полив: умеренный</p>\\r\\n\\r\\n<p>Уход: в период роста не менее двух раз в месяц подкармливать комплексными удобрениями</p>\\r\\n\\r\\n<p>Размножение: черенкованием верхушечной части стебля</p>\\r\\n\\r\\n<p>Внимание! Сок растений ядовит!</p>\\r\\n"	\N	58	Product	\N	\N	2015-01-04 17:16:42.336631	2015-01-04 17:16:42.336631
188	new	\N	59	Product	\N	\N	2015-01-04 17:19:24.611983	2015-01-04 17:19:24.611983
189	description: "<p>\\r\\nНебольшое луковичное растение</p><p>\\r\\nЛистья: темно-зеленые, линейные или ремневидные, длиной 15-20см</p><p>\\r\\nЦветение: цветки звездчатые, воронковидные, широко раскрытые. Окраска белая</p><p>\\r\\nРазмещение: светолюбивое растение, зимой горшок с луковицей хранят в темноте до появления листьев</p><p>\\r\\nПолив: обильный, зимой редкий</p><p>\\r\\nУход: в период роста и цветения подкормка полными минеральными удобрениями 2-3 раза в месяц</p><p> \\r\\nРазмножение: дочерними луковицами\\r\\n</p>" -> "<p>Небольшое луковичное растение</p>\\r\\n\\r\\n<p>Листья: темно-зеленые, линейные или ремневидные, длиной 15-20см</p>\\r\\n\\r\\n<p>Цветение: цветки звездчатые, воронковидные, широко раскрытые. Окраска белая</p>\\r\\n\\r\\n<p>Размещение: светолюбивое растение, зимой горшок с луковицей хранят в темноте до появления листьев</p>\\r\\n\\r\\n<p>Полив: обильный, зимой редкий</p>\\r\\n\\r\\n<p>Уход: в период роста и цветения подкормка полными минеральными удобрениями 2-3 раза в месяц</p>\\r\\n\\r\\n<p>Размножение: дочерними луковицами</p>\\r\\n"	\N	59	Product	\N	\N	2015-01-04 17:19:37.132351	2015-01-04 17:19:37.132351
190	new	\N	60	Product	\N	\N	2015-01-04 17:22:13.479673	2015-01-04 17:22:13.479673
191	description: "<p>Многолетнее растение</p><p>\\r\\nЛистья: сердцевидной формы, от зеленого и желтоватого до темно-пурпурного и красноватого цвета</p><p>\\r\\nРазмещение: светолюбивое растение, не требует притенения</p><p>\\r\\nПолив: умеренный</p><p>\\r\\nУход: подкормка с апреля по сентябрь 2 раза в месяц цветочными удобрениями</p><p>\\r\\nРазмножение: черенкование\\r\\n</p>" -> "<p>Многолетнее растение</p>\\r\\n\\r\\n<p>Листья: сердцевидной формы, от зеленого и желтоватого до темно-пурпурного и красноватого цвета</p>\\r\\n\\r\\n<p>Размещение: светолюбивое растение, не требует притенения</p>\\r\\n\\r\\n<p>Полив: умеренный</p>\\r\\n\\r\\n<p>Уход: подкормка с апреля по сентябрь 2 раза в месяц цветочными удобрениями</p>\\r\\n\\r\\n<p>Размножение: черенкование</p>\\r\\n", show_on_main_page: false -> true	\N	60	Product	\N	\N	2015-01-04 17:22:28.860829	2015-01-04 17:22:28.860829
192	new	\N	61	Product	\N	\N	2015-01-04 17:26:11.235977	2015-01-04 17:26:11.235977
211	description: "<p>\\r\\nМноголетнее растение</p><p>\\r\\nЛистья: непарноперистые зеленые, длиной до 30 см. На нижней стороне расположены спорангии со спорами</p><p>\\r\\nРазмещение: светолюбивое растение, хорошо растет и в полутени</p><p>\\r\\nПолив: регулярный, зимой поддерживать земляной ком чуть влажным</p><p>\\r\\nУход: пересадка ежегодно весной</p><p>\\r\\nРазмножение: делением корневищ или семенами\\r\\n</p>" -> "<p>Многолетнее растение</p>\\r\\n\\r\\n<p>Листья: непарноперистые зеленые, длиной до 30 см. На нижней стороне расположены спорангии со спорами</p>\\r\\n\\r\\n<p>Размещение: светолюбивое растение, хорошо растет и в полутени</p>\\r\\n\\r\\n<p>Полив: регулярный, зимой поддерживать земляной ком чуть влажным</p>\\r\\n\\r\\n<p>Уход: пересадка ежегодно весной</p>\\r\\n\\r\\n<p>Размножение: делением корневищ или семенами</p>\\r\\n"	\N	70	Product	\N	\N	2015-01-04 17:43:21.018939	2015-01-04 17:43:21.018939
193	description: "<p>\\r\\nМноголетнее вечнозеленое растение</p><p>\\r\\nЛистья: зеленые</p><p>\\r\\nЦветение: бутоны и цветки собраны в гроздь, при хорошем уходе цветет и плодоносит, плоды созревают осенью</p><p>\\r\\nРазмещение: светлые, солнечные помещения, зимой предпочтительно прохладное помещение</p><p>\\r\\nПолив: летом обильный, зимой умеренный </p><p>\\r\\nУход: в период роста 1 раз в 2 недели проводить подкормку, пересадка до 5-6 лет ежегодно</p><p>\\r\\nРазмножение: черенкованием в начале весны\\r\\n</p>" -> "<p>Многолетнее вечнозеленое растение</p>\\r\\n\\r\\n<p>Листья: зеленые</p>\\r\\n\\r\\n<p>Цветение: бутоны и цветки собраны в гроздь, при хорошем уходе цветет и плодоносит, плоды созревают осенью</p>\\r\\n\\r\\n<p>Размещение: светлые, солнечные помещения, зимой предпочтительно прохладное помещение</p>\\r\\n\\r\\n<p>Полив: летом обильный, зимой умеренный</p>\\r\\n\\r\\n<p>Уход: в период роста 1 раз в 2 недели проводить подкормку, пересадка до 5-6 лет ежегодно</p>\\r\\n\\r\\n<p>Размножение: черенкованием в начале весны</p>\\r\\n"	\N	61	Product	\N	\N	2015-01-04 17:26:21.137712	2015-01-04 17:26:21.137712
194	new	\N	62	Product	\N	\N	2015-01-04 17:27:50.832445	2015-01-04 17:27:50.832445
195	description: "<p>\\r\\nМноголетнее растение\\r\\nЛистья: дважды и трижды перистыми красивыми листьями</p><p>\\r\\nРазмещение: полутень, не переносит прямых солнечных лучей, влажность воздуха высокая</p><p>\\r\\nПолив: обильный, зимой умеренный</p><p>\\r\\nУход: пересадка ежегодно весной</p><p>\\r\\nРазмножение: спорами и живородящими почками\\r\\n</p>" -> "<p>Многолетнее растение Листья: дважды и трижды перистыми красивыми листьями</p>\\r\\n\\r\\n<p>Размещение: полутень, не переносит прямых солнечных лучей, влажность воздуха высокая</p>\\r\\n\\r\\n<p>Полив: обильный, зимой умеренный</p>\\r\\n\\r\\n<p>Уход: пересадка ежегодно весной</p>\\r\\n\\r\\n<p>Размножение: спорами и живородящими почками</p>\\r\\n"	\N	62	Product	\N	\N	2015-01-04 17:28:01.220305	2015-01-04 17:28:01.220305
196	new	\N	63	Product	\N	\N	2015-01-04 17:30:10.423797	2015-01-04 17:30:10.423797
197	description: "<p>\\r\\nМноголетнее травянистое растение</p><p>\\r\\nЛистья: ярко-зеленые, перисто-рассеченные</p><p>\\r\\nРазмещение: предпочитает светлые, хорошо проветриваемые помещения </p><p>\\r\\nПолив: регулярный в течении всего года</p><p>\\r\\nУход: пересадка ежегодно</p><p>\\r\\nРазмножение: делением куста весной\\r\\n</p>" -> "<p>Многолетнее травянистое растение</p>\\r\\n\\r\\n<p>Листья: ярко-зеленые, перисто-рассеченные</p>\\r\\n\\r\\n<p>Размещение: предпочитает светлые, хорошо проветриваемые помещения</p>\\r\\n\\r\\n<p>Полив: регулярный в течении всего года</p>\\r\\n\\r\\n<p>Уход: пересадка ежегодно</p>\\r\\n\\r\\n<p>Размножение: делением куста весной</p>\\r\\n"	\N	63	Product	\N	\N	2015-01-04 17:30:20.957133	2015-01-04 17:30:20.957133
198	new	\N	64	Product	\N	\N	2015-01-04 17:31:57.200642	2015-01-04 17:31:57.200642
199	description: "<p>\\r\\nТравянистое растение с ветвящимися темно-зелеными стеблями, которые образуют ломаную линию в виде зигзага</p><p>\\r\\nЛистья: небольшие, длиной до 6см</p><p>\\r\\nЦветение: цветки мелкие, находятся в зонтико-видных соцветиях</p><p> \\r\\nРазмещение: растение очень светолюбиво, температура не ниже 15-16° </p><p>\\r\\nПолив: умеренный</p><p>\\r\\nУход: подкормка минеральными удобрениями ежемесячно</p><p>\\r\\nРазмножение: черенками\\r\\n</p>" -> "<p>Травянистое растение с ветвящимися темно-зелеными стеблями, которые образуют ломаную линию в виде зигзага</p>\\r\\n\\r\\n<p>Листья: небольшие, длиной до 6см</p>\\r\\n\\r\\n<p>Цветение: цветки мелкие, находятся в зонтико-видных соцветиях</p>\\r\\n\\r\\n<p>Размещение: растение очень светолюбиво, температура не ниже 15-16&deg;</p>\\r\\n\\r\\n<p>Полив: умеренный</p>\\r\\n\\r\\n<p>Уход: подкормка минеральными удобрениями ежемесячно</p>\\r\\n\\r\\n<p>Размножение: черенками</p>\\r\\n"	\N	64	Product	\N	\N	2015-01-04 17:32:07.112102	2015-01-04 17:32:07.112102
200	new	\N	65	Product	\N	\N	2015-01-04 17:34:34.073894	2015-01-04 17:34:34.073894
201	description: "<p>\\r\\nМноголетнее растение</p><p>\\r\\nЛистья: широкие, округлые, в разной степени рассеченные</p><p>\\r\\nЦветение: цветки простые, полумахровые или махровые, собраны в соцветие зонтик, самой разнообразной окраски</p><p>\\r\\nРазмещение: светолюбивое растение, зимой содержат при температуре 6-8°</p><p>\\r\\nПолив: летом обильный, зимой резко прекращают</p><p>\\r\\nУход: подкармливают минеральными удобрениями, обрезают в начале весны для мощного роста</p><p>\\r\\nРазмножение: черенками\\r\\n</p>" -> "<p>Многолетнее растение</p>\\r\\n\\r\\n<p>Листья: широкие, округлые, в разной степени рассеченные</p>\\r\\n\\r\\n<p>Цветение: цветки простые, полумахровые или махровые, собраны в соцветие зонтик, самой разнообразной окраски</p>\\r\\n\\r\\n<p>Размещение: светолюбивое растение, зимой содержат при температуре 6-8&deg;</p>\\r\\n\\r\\n<p>Полив: летом обильный, зимой резко прекращают</p>\\r\\n\\r\\n<p>Уход: подкармливают минеральными удобрениями, обрезают в начале весны для мощного роста</p>\\r\\n\\r\\n<p>Размножение: черенками</p>\\r\\n"	\N	65	Product	\N	\N	2015-01-04 17:34:44.281077	2015-01-04 17:34:44.281077
202	new	\N	66	Product	\N	\N	2015-01-04 17:36:16.009935	2015-01-04 17:36:16.009935
203	description: "<p>\\r\\nДекоративнолистное травянистое растение с коротким стеблем</p><p>\\r\\nЛистья: двухцветные, сидячие, зеленые и пурпурные, линейно-ланцетные, длиной до 30 см</p><p>\\r\\nЦветение: из пазух листьев периодически появляются «лодочки» с мелкими белыми цветками</p><p>\\r\\nРазмещение: светлое помещение</p><p>\\r\\nПолив: летом обильный, зимой уверенный</p><p>\\r\\nУход: пересадка ежегодно весной</p><p>\\r\\nРазмножение: верхушечными черенками, боковыми побегами, можно и семенами\\r\\n</p>" -> "<p>Декоративнолистное травянистое растение с коротким стеблем</p>\\r\\n\\r\\n<p>Листья: двухцветные, сидячие, зеленые и пурпурные, линейно-ланцетные, длиной до 30 см</p>\\r\\n\\r\\n<p>Цветение: из пазух листьев периодически появляются &laquo;лодочки&raquo; с мелкими белыми цветками</p>\\r\\n\\r\\n<p>Размещение: светлое помещение</p>\\r\\n\\r\\n<p>Полив: летом обильный, зимой уверенный</p>\\r\\n\\r\\n<p>Уход: пересадка ежегодно весной</p>\\r\\n\\r\\n<p>Размножение: верхушечными черенками, боковыми побегами, можно и семенами</p>\\r\\n"	\N	66	Product	\N	\N	2015-01-04 17:36:25.317632	2015-01-04 17:36:25.317632
204	new	\N	67	Product	\N	\N	2015-01-04 17:38:11.244919	2015-01-04 17:38:11.244919
205	description: "<p>\\r\\nМноголетнее корневищное вечнозеленое растение</p><p>\\r\\nЛистья: удлиненно-ланцетные, мечевидные, полосатые</p><p>\\r\\nЦветение: весной и осенью, при хорошем уходе, цветки бело-зеленоватые, душистые</p><p>\\r\\nРазмещение: светолюбива, но хорошо растет и в полутени, мирится с сухостью воздуха и перепадами температур</p><p>\\r\\nПолив: умеренный, зимой сократить до 1 раза в месяц</p><p>\\r\\nУход: пересадку растений до 5 лет проводить ежегодно, в дальнейшем – 1 раз в 2-3 года</p><p>\\r\\nРазмножение: черенками весной или делением корневища\\r\\n</p>" -> "<p>Многолетнее корневищное вечнозеленое растение</p>\\r\\n\\r\\n<p>Листья: удлиненно-ланцетные, мечевидные, полосатые</p>\\r\\n\\r\\n<p>Цветение: весной и осенью, при хорошем уходе, цветки бело-зеленоватые, душистые</p>\\r\\n\\r\\n<p>Размещение: светолюбива, но хорошо растет и в полутени, мирится с сухостью воздуха и перепадами температур</p>\\r\\n\\r\\n<p>Полив: умеренный, зимой сократить до 1 раза в месяц</p>\\r\\n\\r\\n<p>Уход: пересадку растений до 5 лет проводить ежегодно, в дальнейшем &ndash; 1 раз в 2-3 года</p>\\r\\n\\r\\n<p>Размножение: черенками весной или делением корневища</p>\\r\\n"	\N	67	Product	\N	\N	2015-01-04 17:38:22.76434	2015-01-04 17:38:22.76434
206	new	\N	68	Product	\N	\N	2015-01-04 17:39:55.371282	2015-01-04 17:39:55.371282
207	description: "<p>\\r\\nМноголетнее суккулентное травянистое растение</p><p>\\r\\nЛистья: фиолетовые, удлиненно-ланцетные длиной до 10-18см</p><p>\\r\\nЦветение: цветки бело-пурпурные, розовые, плод - коробочка</p><p>\\r\\nРазмещение: теплолюбивое и светолюбивое растение, чем ярче свет, тем красивее листья.  </p><p>\\r\\nПолив: летом обильный, зимой равномерный </p><p>\\r\\nУход: подкормка с апреля по август 2 раза в месяц полным минеральным удобрением</p><p>\\r\\nРазмножение: черенками\\r\\n</p>" -> "<p>Многолетнее суккулентное травянистое растение</p>\\r\\n\\r\\n<p>Листья: фиолетовые, удлиненно-ланцетные длиной до 10-18см</p>\\r\\n\\r\\n<p>Цветение: цветки бело-пурпурные, розовые, плод - коробочка</p>\\r\\n\\r\\n<p>Размещение: теплолюбивое и светолюбивое растение, чем ярче свет, тем красивее листья.</p>\\r\\n\\r\\n<p>Полив: летом обильный, зимой равномерный</p>\\r\\n\\r\\n<p>Уход: подкормка с апреля по август 2 раза в месяц полным минеральным удобрением</p>\\r\\n\\r\\n<p>Размножение: черенками</p>\\r\\n"	\N	68	Product	\N	\N	2015-01-04 17:40:09.729476	2015-01-04 17:40:09.729476
208	new	\N	69	Product	\N	\N	2015-01-04 17:41:44.304805	2015-01-04 17:41:44.304805
209	description: "<p>\\r\\nВечнозеленый кустарник</p><p>\\r\\nЛистья: мелкие листья</p><p>\\r\\nРазмещение: яркий рассеянный свет, повышенная влажность воздуха, летом необходимо опрыскивание</p><p>\\r\\nПолив: обильный, зимой ограниченный</p><p>\\r\\nУход: 2 раза в месяц, пересадка до 4-5 лет каждую весну</p><p>\\r\\nРазмножение: семенами, воздушными отводками и черенками\\r\\n</p>" -> "<p>Вечнозеленый кустарник</p>\\r\\n\\r\\n<p>Листья: мелкие листья</p>\\r\\n\\r\\n<p>Размещение: яркий рассеянный свет, повышенная влажность воздуха, летом необходимо опрыскивание</p>\\r\\n\\r\\n<p>Полив: обильный, зимой ограниченный</p>\\r\\n\\r\\n<p>Уход: 2 раза в месяц, пересадка до 4-5 лет каждую весну</p>\\r\\n\\r\\n<p>Размножение: семенами, воздушными отводками и черенками</p>\\r\\n"	\N	69	Product	\N	\N	2015-01-04 17:41:54.612094	2015-01-04 17:41:54.612094
210	new	\N	70	Product	\N	\N	2015-01-04 17:43:10.934544	2015-01-04 17:43:10.934544
\.


--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rails_admin_histories_id_seq', 211, true);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id, name, created_at, updated_at) FROM stdin;
1	admin	2014-02-19 12:03:19.644922	2014-02-19 12:03:19.644922
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 1, true);


--
-- Data for Name: roles_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles_users (id, role_id, user_id) FROM stdin;
1	1	1
\.


--
-- Name: roles_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_users_id_seq', 1, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20140201075246
20140201080251
20140201090808
20140201112005
20140201184337
20140201191817
20140201191923
20140201192012
20140202064829
20140202095637
20140211122745
20150104155302
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	admin@example.com	$2a$10$VNeDQSN6evRUxgTS/L.GPOP9AwUwiC5xA4WNbm0TlOwQsPqiy3K4u	\N	\N	\N	0	\N	\N	\N	\N	2014-02-19 12:03:19.623924	2014-02-19 12:03:19.623924
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY versions (id, item_type, item_id, event, whodunnit, object, created_at) FROM stdin;
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('versions_id_seq', 1, false);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: photos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: rails_admin_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rails_admin_histories
    ADD CONSTRAINT rails_admin_histories_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: roles_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles_users
    ADD CONSTRAINT roles_users_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: idx_ckeditor_assetable; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable ON ckeditor_assets USING btree (assetable_type, assetable_id);


--
-- Name: idx_ckeditor_assetable_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable_type ON ckeditor_assets USING btree (assetable_type, type, assetable_id);


--
-- Name: index_categories_on_ancestry; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_categories_on_ancestry ON categories USING btree (ancestry);


--
-- Name: index_categories_on_position; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_categories_on_position ON categories USING btree ("position");


--
-- Name: index_categories_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_categories_on_slug ON categories USING btree (slug);


--
-- Name: index_order_items_on_order_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_order_items_on_order_id ON order_items USING btree (order_id);


--
-- Name: index_order_items_on_product_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_order_items_on_product_id ON order_items USING btree (product_id);


--
-- Name: index_order_items_on_product_id_and_order_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_order_items_on_product_id_and_order_id ON order_items USING btree (product_id, order_id);


--
-- Name: index_photos_on_ancestry; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_photos_on_ancestry ON photos USING btree (ancestry);


--
-- Name: index_photos_on_position; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_photos_on_position ON photos USING btree ("position");


--
-- Name: index_photos_on_product_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_photos_on_product_id ON photos USING btree (product_id);


--
-- Name: index_products_on_ancestry; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_products_on_ancestry ON products USING btree (ancestry);


--
-- Name: index_products_on_category_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_products_on_category_id ON products USING btree (category_id);


--
-- Name: index_products_on_position; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_products_on_position ON products USING btree ("position");


--
-- Name: index_products_on_show_on_main_page; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_products_on_show_on_main_page ON products USING btree (show_on_main_page);


--
-- Name: index_products_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_products_on_slug ON products USING btree (slug);


--
-- Name: index_rails_admin_histories; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_rails_admin_histories ON rails_admin_histories USING btree (item, "table", month, year);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_versions_on_item_type_and_item_id ON versions USING btree (item_type, item_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

