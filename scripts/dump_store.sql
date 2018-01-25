--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

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
-- Name: cart; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE cart (
    id integer NOT NULL,
    item character varying[]
);


ALTER TABLE cart OWNER TO manager;

--
-- Name: cart_id_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cart_id_seq OWNER TO manager;

--
-- Name: cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE cart_id_seq OWNED BY cart.id;


--
-- Name: cartentry; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE cartentry (
    id integer NOT NULL,
    cart integer,
    item character varying,
    quantity integer,
    cost numeric
);


ALTER TABLE cartentry OWNER TO manager;

--
-- Name: cartentry_id_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE cartentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cartentry_id_seq OWNER TO manager;

--
-- Name: cartentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE cartentry_id_seq OWNED BY cartentry.id;


--
-- Name: carts; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE carts (
    id integer NOT NULL,
    uid character varying,
    createstamp date
);


ALTER TABLE carts OWNER TO manager;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE carts_id_seq OWNER TO manager;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE carts_id_seq OWNED BY carts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    parent character varying
);


ALTER TABLE categories OWNER TO manager;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO manager;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: itemmap; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE itemmap (
    item character varying,
    category character varying NOT NULL
);


ALTER TABLE itemmap OWNER TO manager;

--
-- Name: items; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE items (
    sku integer NOT NULL,
    name character varying(50) NOT NULL,
    price numeric,
    description character varying(120) NOT NULL,
    quantityinstock numeric
);


ALTER TABLE items OWNER TO manager;

--
-- Name: items_sku_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE items_sku_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE items_sku_seq OWNER TO manager;

--
-- Name: items_sku_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE items_sku_seq OWNED BY items.sku;


--
-- Name: map; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE map (
    item character varying[],
    category integer
);


ALTER TABLE map OWNER TO manager;

--
-- Name: users; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    address character varying(120),
    email character varying(120) NOT NULL,
    phone character varying(25),
    createstamp date
);


ALTER TABLE users OWNER TO manager;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO manager;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: cart id; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY cart ALTER COLUMN id SET DEFAULT nextval('cart_id_seq'::regclass);


--
-- Name: cartentry id; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY cartentry ALTER COLUMN id SET DEFAULT nextval('cartentry_id_seq'::regclass);


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY carts ALTER COLUMN id SET DEFAULT nextval('carts_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: items sku; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY items ALTER COLUMN sku SET DEFAULT nextval('items_sku_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY cart (id, item) FROM stdin;
\.


--
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('cart_id_seq', 1, false);


--
-- Data for Name: cartentry; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY cartentry (id, cart, item, quantity, cost) FROM stdin;
\.


--
-- Name: cartentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('cartentry_id_seq', 1, false);


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY carts (id, uid, createstamp) FROM stdin;
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('carts_id_seq', 1, false);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY categories (id, name, parent) FROM stdin;
1	Category 1	\N
2	Category 2	Category 1
3	Category 3	Category 1
4	Category 4	\N
5	Category 5	Category 4
6	Category 6	Category 4
7	Category 7	\N
8	Category 8	Category 3
9	Assemblies	\N
10	Packages	\N
11	Utility	\N
12	CAT0	Packages
13	CAT1	Packages
14	CAT2	Packages
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('categories_id_seq', 14, true);


--
-- Data for Name: itemmap; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY itemmap (item, category) FROM stdin;
Alpha widget	Assemblies
Alpha widget	CAT0
Alpha widget	CAT1
Alpha widget	CAT2
Beta widget	Assemblies
Beta widget	Utility
Kappa widget	Assemblies
Kappa widget	CAT0
Gamma widget	CAT1
Gamma widget	Utility
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY items (sku, name, price, description, quantityinstock) FROM stdin;
1	Alpha widget	4.99	Part used for assembly.	22
2	Beta widget	4.53	Part used for assembly.	32
3	Kappa widget	11.87	Part used for assembly.	1
4	Gamma widget	5.99	Part used for assembly.	100
\.


--
-- Name: items_sku_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('items_sku_seq', 4, true);


--
-- Data for Name: map; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY map (item, category) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY users (id, name, address, email, phone, createstamp) FROM stdin;
1	Blake Edwards	\N	blakey@neolation.com	\N	\N
2	Samantha Smith	\N	ssmith@neolation.com	\N	\N
3	Edgar Williams	\N	edwill@neolation.com	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: cartentry cartentry_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY cartentry
    ADD CONSTRAINT cartentry_pkey PRIMARY KEY (id);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: categories categories_name_key; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: items items_name_key; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY items
    ADD CONSTRAINT items_name_key UNIQUE (name);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY items
    ADD CONSTRAINT items_pkey PRIMARY KEY (sku);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: cat_idx; Type: INDEX; Schema: public; Owner: manager
--

CREATE INDEX cat_idx ON categories USING btree (name);


--
-- Name: email_idx; Type: INDEX; Schema: public; Owner: manager
--

CREATE INDEX email_idx ON users USING btree (email);


--
-- Name: item_idx; Type: INDEX; Schema: public; Owner: manager
--

CREATE INDEX item_idx ON items USING btree (name);


--
-- Name: uid_idx; Type: INDEX; Schema: public; Owner: manager
--

CREATE INDEX uid_idx ON users USING btree (name);


--
-- Name: cartentry cartentry_cart_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY cartentry
    ADD CONSTRAINT cartentry_cart_fkey FOREIGN KEY (cart) REFERENCES carts(id);


--
-- Name: cartentry cartentry_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY cartentry
    ADD CONSTRAINT cartentry_item_fkey FOREIGN KEY (item) REFERENCES items(name);


--
-- Name: carts carts_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY carts
    ADD CONSTRAINT carts_uid_fkey FOREIGN KEY (uid) REFERENCES users(name);


--
-- Name: categories categories_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_parent_fkey FOREIGN KEY (parent) REFERENCES categories(name);


--
-- Name: itemmap itemmap_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY itemmap
    ADD CONSTRAINT itemmap_category_fkey FOREIGN KEY (category) REFERENCES categories(name);


--
-- Name: itemmap itemmap_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY itemmap
    ADD CONSTRAINT itemmap_item_fkey FOREIGN KEY (item) REFERENCES items(name);


--
-- PostgreSQL database dump complete
--

