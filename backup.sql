--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-04-13 13:19:15

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
-- TOC entry 214 (class 1259 OID 16497)
-- Name: ciyuan_clothingitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_clothingitem (
    part character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.ciyuan_clothingitem OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24817)
-- Name: ciyuan_clothingiteminstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_clothingiteminstance (
    id bigint NOT NULL,
    equippeduser_id uuid
);


ALTER TABLE public.ciyuan_clothingiteminstance OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16502)
-- Name: ciyuan_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_item (
    itemtype character varying(31) NOT NULL,
    id bigint NOT NULL,
    guid uuid,
    name character varying(255)
);


ALTER TABLE public.ciyuan_item OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24822)
-- Name: ciyuan_iteminstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_iteminstance (
    iteminstancetype character varying(31) NOT NULL,
    id bigint NOT NULL,
    inuse boolean NOT NULL,
    item_id bigint,
    owner_id uuid
);


ALTER TABLE public.ciyuan_iteminstance OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16507)
-- Name: ciyuan_placementitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_placementitem (
    id bigint NOT NULL,
    scalex real NOT NULL,
    scaley real NOT NULL,
    scalez real NOT NULL
);


ALTER TABLE public.ciyuan_placementitem OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24827)
-- Name: ciyuan_placementiteminstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_placementiteminstance (
    positionx real NOT NULL,
    positiony real NOT NULL,
    positionz real NOT NULL,
    rotationw real NOT NULL,
    rotationx real NOT NULL,
    rotationy real NOT NULL,
    rotationz real NOT NULL,
    id bigint NOT NULL,
    placedroom_id bigint
);


ALTER TABLE public.ciyuan_placementiteminstance OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16512)
-- Name: ciyuan_room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_room (
    id bigint NOT NULL,
    birthpositionx real NOT NULL,
    birthpositiony real NOT NULL,
    birthpositionz real NOT NULL,
    birthrange real NOT NULL,
    navmeshpath character varying(255),
    roompublishtype smallint,
    scenepath character varying(255),
    title character varying(255),
    owner_id uuid NOT NULL,
    CONSTRAINT ciyuan_room_roompublishtype_check CHECK (((roompublishtype >= 0) AND (roompublishtype <= 2)))
);


ALTER TABLE public.ciyuan_room OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16520)
-- Name: ciyuan_room_ciyuan_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_room_ciyuan_user (
    subscribedrooms_id bigint NOT NULL,
    subscribers_id uuid NOT NULL,
    permittedrooms_id bigint NOT NULL,
    permittedusers_id uuid NOT NULL,
    permittedplacementrooms_id bigint NOT NULL,
    permittedplacementusers_id uuid NOT NULL,
    permittedbroadcastrooms_id bigint NOT NULL,
    permittedbroadcastusers_id uuid NOT NULL,
    permittedpublishrooms_id bigint NOT NULL,
    permittedpublishusers_id uuid NOT NULL
);


ALTER TABLE public.ciyuan_room_ciyuan_user OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16525)
-- Name: ciyuan_roomsignup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_roomsignup (
    id bigint NOT NULL,
    declined boolean NOT NULL,
    roompublishtype smallint,
    title character varying(255),
    owner_id uuid NOT NULL,
    CONSTRAINT ciyuan_roomsignup_roompublishtype_check CHECK (((roompublishtype >= 0) AND (roompublishtype <= 2)))
);


ALTER TABLE public.ciyuan_roomsignup OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16531)
-- Name: ciyuan_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciyuan_user (
    id uuid NOT NULL,
    name character varying(255),
    streamcode uuid
);


ALTER TABLE public.ciyuan_user OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 16497)
-- Dependencies: 214
-- Data for Name: ciyuan_clothingitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_clothingitem (part, id) FROM stdin;
Body	30783470544355328
Hair	30783470842150912
Body	30783471110586368
Hair	30783471383216128
Body	30783471664234496
Hair	30783471924281344
Body	30783472201105408
Hair	30783472461152256
Body	30783472737976320
Hair	30783473027383296
Body	30783473304207360
Hair	30783473597808640
Body	30783473891409920
Hair	30783474159845376
Body	30783474419892224
Hair	30783474721882112
Body	30783474994511872
Body	30783475539771392
Hair	30783475808206848
Body	30783476089225216
Hair	30783476361854976
Body	30783476647067648
Hair	30783476944863232
Body	30783477230075904
Hair	30783477511094272
Body	30783477783724032
Hair	30783478052159488
Body	30783478324789248
Hair	30783478597419008
Body	30783478903603200
Hair	30783479188815872
Body	30783479478222848
Hair	30783479734075392
Body	30783480002510848
Hair	30783480270946304
Body	30783480551964672
Hair	30783480807817216
Body	30783481084641280
Hair	30783481361465344
Body	30783481634095104
Hair	30783481894141952
Body	30783482154188800
Hair	30783482443595776
Body	30783482707836928
Hair	30783482980466688
Body	30783483248902144
Hair	30783483534114816
Body	30783483802550272
Hair	30783484075180032
Body	30783484356198400
Hair	30783484813377536
Body	30783485081812992
Hair	30783485572546560
Body	30783485849370624
Hair	30783486117806080
Body	30783486394630144
Hair	30783486654676992
Body	30783486914723840
Hair	30783487174770688
Body	30783487468371968
Hair	30783487753584640
Body	30783488034603008
Hair	30783488315621376
Body	30783488579862528
Hair	30783488848297984
Body	30783489116733440
Hair	30783489406140416
Body	30783489691353088
Hair	30783489955594240
Body	30783490232418304
Hair	30783490618294272
Body	30783490882535424
Hair	30783491142582272
Body	30783491419406336
Hair	30783491696230400
Body	30783491973054464
Hair	30783492241489920
Body	30783492526702592
Hair	30783492799332352
Body	30783493050990592
Hair	30783493336203264
Body	30783493621415936
Hair	30783493894045696
Body	30783494166675456
Hair	30783494439305216
Body	30783494737100800
Hair	30783495022313472
Body	30783495307526144
Hair	30783495592738816
Body	30783495907311616
Hair	30783496200912896
Wing	30783496465154048
Body	30783496737783808
Hair	30783497031385088
Wing	30783497299820544
Body	30783497576644608
Hair	30783497853468672
Body	30783498142875648
Hair	30783498419699712
Body	30783498688135168
Hair	30783498964959232
Body	30783499237588992
Hair	30783499518607360
Body	30783499782848512
Hair	30783500055478272
Body	30783500332302336
Hair	30783500592349184
Body	30783500860784640
Hair	30783501120831488
Body	30783501418627072
Hair	30783501708034048
Body	30783502001635328
Hair	30783502282653696
Body	30783502551089152
Hair	30783502823718912
Body	30783503104737280
Hair	30783503373172736
Body	30783503645802496
Hair	30783475258753024
Hair	30783503918432256
\.


--
-- TOC entry 3401 (class 0 OID 24817)
-- Dependencies: 221
-- Data for Name: ciyuan_clothingiteminstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_clothingiteminstance (id, equippeduser_id) FROM stdin;
37031330835333120	\N
37031330839527424	\N
37031330839527425	\N
37031330839527426	\N
37031330839527427	\N
37031330839527428	\N
37031330843721728	\N
37031330843721729	\N
37031330843721730	\N
37031330843721731	\N
37031330843721732	\N
37031330843721733	\N
37031330843721734	\N
37031330843721735	\N
37031330843721736	\N
37031330847916032	\N
37031330847916033	\N
37031330847916034	\N
37031330847916035	\N
37031330847916036	\N
37031330847916037	\N
37031330852110336	\N
37031330852110337	\N
37031330852110338	\N
37031330852110339	\N
37031330852110340	\N
37031330852110341	\N
37031330852110342	\N
37031330856304640	\N
37031330856304641	\N
37031330856304642	\N
37031330856304643	\N
37031330856304644	\N
37031330856304645	\N
37031330860498944	\N
37031330860498945	\N
37031330860498946	\N
37031330860498947	\N
37031330860498948	\N
37031330860498949	\N
37031330860498950	\N
37031330864693248	\N
37031330864693249	\N
37031330864693250	\N
37031330864693251	\N
37031330864693252	\N
37031330864693253	\N
37031330864693254	\N
37031330864693255	\N
37031330868887552	\N
37031330868887553	\N
37031330868887554	\N
37031330868887555	\N
37031330868887556	\N
37031330868887557	\N
37031330868887558	\N
37031330868887559	\N
37031330873081856	\N
37031330873081857	\N
37031330873081858	\N
37031330873081859	\N
37031330873081860	\N
37031330873081861	\N
37031330873081862	\N
37031330873081863	\N
37031330877276160	\N
37031330877276161	\N
37031330877276162	\N
37031330877276163	\N
37031330877276164	\N
37031330877276165	\N
37031330877276166	\N
37031330877276167	\N
37031330877276168	\N
37031330881470464	\N
37031330881470465	\N
37031330881470466	\N
37031330881470467	\N
37031330881470468	\N
37031330881470469	\N
37031330881470470	\N
37031330881470471	\N
37031330881470472	\N
37031330881470473	\N
37031330885664768	\N
37031330885664769	\N
37031330885664770	\N
37031330885664771	\N
37031330885664772	\N
37031330885664773	\N
37031330885664774	\N
37031330885664775	\N
37031330889859072	\N
37031330889859073	\N
37031330889859074	\N
37031330889859075	\N
37031330889859076	\N
37031330889859077	\N
37031330889859078	\N
37031330889859079	\N
37031330894053376	\N
37031330894053377	\N
37031330894053378	\N
37031330894053379	\N
37031330894053380	\N
37031330894053381	\N
37031330894053382	\N
37031330898247680	\N
37031330898247681	\N
37031330898247682	\N
37031330898247683	\N
37031330898247684	\N
37031330898247685	\N
37031330898247686	\N
37031330898247687	\N
37031330902441984	\N
37031330902441985	\N
37031330902441986	\N
37031330902441987	\N
37031330902441988	\N
\.


--
-- TOC entry 3395 (class 0 OID 16502)
-- Dependencies: 215
-- Data for Name: ciyuan_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_item (itemtype, id, guid, name) FROM stdin;
ClothingItem	30783490882535424	378dbbc2-3562-3de4-4976-3fbf698f34aa	\N
ClothingItem	30783491142582272	fed454e5-4b71-a8f4-4931-0a30094ce15b	\N
ClothingItem	30783491419406336	01c6fdfc-eb72-e234-2989-932f0405fabb	\N
ClothingItem	30783491696230400	47574fc4-4718-af14-09f1-3a5b863ad18d	\N
ClothingItem	30783491973054464	ae23547d-440c-ab94-f8ac-49899ab6acdc	\N
ClothingItem	30783492241489920	c268c486-6408-fee4-1a36-581373494d19	\N
ClothingItem	30783492526702592	b032fe93-8371-4a74-29da-5d9da2bff100	\N
ClothingItem	30783492799332352	b21ba875-15fa-d2f4-7b6b-379f7983bee6	\N
ClothingItem	30783493050990592	0d7d8544-65c6-1594-69fe-89a907f9aad2	\N
ClothingItem	30783493336203264	d8fc6360-10ef-d644-48ea-7e56f3792c60	\N
ClothingItem	30783493621415936	e52bd67d-12ba-18c4-8a37-ee0e79f0c6b1	\N
ClothingItem	30783493894045696	b0adcc8f-e5de-d274-f9c0-296533d93631	\N
ClothingItem	30783494166675456	543356b4-573a-a3d4-0b7e-5c9a40fbf761	\N
ClothingItem	30783494439305216	843cc89f-fa21-e144-8a98-1a219bc0fa50	\N
ClothingItem	30783494737100800	474b0cc6-1730-86c4-69a4-dfdf9c2f4564	\N
ClothingItem	30783495022313472	9de55dd3-c434-8914-3b0f-4b1217773402	\N
ClothingItem	30783495307526144	d5fb3d4a-f4d4-9204-b945-770c5af883f7	\N
ClothingItem	30783495592738816	dafe548c-53ec-7bd4-7882-9afa26c93ba0	\N
ClothingItem	30783495907311616	da22bf8b-b288-e824-4894-56d62aa0fbdd	\N
ClothingItem	30783496200912896	487f153a-83a6-1404-f8f6-3b76f80b0205	\N
ClothingItem	30783496465154048	6449d7c1-44bf-4aa4-b925-84f9684613ab	\N
ClothingItem	30783496737783808	f83f6972-5fd5-4094-fa2a-e69ab43421e5	\N
ClothingItem	30783497031385088	a453c4eb-e93c-1094-d82b-6908e856ca28	\N
ClothingItem	30783497299820544	eb0f301e-19d0-1b94-1ad4-e683c8f16209	\N
ClothingItem	30783497576644608	4d85b0b3-1297-df84-48b3-967bf618faf0	\N
ClothingItem	30783497853468672	6992325a-bb47-9624-1921-7f5e70628257	\N
ClothingItem	30783498142875648	91ddf5e5-8cb2-0254-b836-9606d6bb9248	\N
ClothingItem	30783498419699712	48801125-5433-7074-ebd3-716b28ac4a81	\N
ClothingItem	30783498688135168	2a386a05-8b69-9f44-89c9-e302b68ac1df	\N
ClothingItem	30783498964959232	46c8cf4b-7518-1584-595e-2f7d6247ab5d	\N
ClothingItem	30783499237588992	f782c22f-42f7-8a64-89a4-81790c2bf87a	\N
ClothingItem	30783499518607360	784472e4-0dab-c2a4-5b96-a8c4ad0cc171	\N
ClothingItem	30783499782848512	11cdae66-7793-c214-8b52-7acca96a7ebd	\N
ClothingItem	30783500055478272	42661a01-eafb-bb34-e90b-4c1b18cf80e4	\N
ClothingItem	30783500332302336	f57ddc41-6134-ff24-2ab5-70be8f07dbac	\N
ClothingItem	30783500592349184	e00a84be-3299-1524-d81d-dfc0f29277c6	\N
ClothingItem	30783500860784640	a6440b85-3478-83b4-a8b7-e0bef0d251fa	\N
ClothingItem	30783501120831488	589cda6d-d50b-9834-9972-1828e76298d5	\N
ClothingItem	30783501418627072	f3d79af2-6406-60c4-4814-2f906519cc30	\N
ClothingItem	30783501708034048	2bf99089-f09e-5ed4-08dd-c950cc1df4a4	\N
ClothingItem	30783502001635328	8d19d80c-ed70-ff04-1a92-3d60e59efca3	\N
ClothingItem	30783502282653696	000838f1-3394-bea4-1901-881fc3ae88bd	\N
ClothingItem	30783502551089152	e30dc7cd-6ce4-aef4-8982-e99a140fa4d2	\N
ClothingItem	30783502823718912	c7e84c46-2ea8-a3f4-ea9c-8f8142013b41	\N
ClothingItem	30783503104737280	1d7d8a36-ab72-5e44-8bc5-b625e20a0c70	\N
ClothingItem	30783503373172736	34fffcb9-9316-8574-8912-4c1eee1b5b82	\N
ClothingItem	30783503645802496	144a77cf-1138-f464-4adc-d90f623af5a6	\N
ClothingItem	30783503918432256	d7f4dc79-94a9-6b44-ebd3-51b6665f7422	\N
ClothingItem	30783471110586368	9e266ee4-46cd-ff34-cbda-3ace21dc0658	初音套02-衣服
ClothingItem	30783471383216128	5304b7ef-7198-aa94-8818-0a176b60d010	初音套02-头发
ClothingItem	30783471924281344	94ed840c-4bec-e544-1ba2-1daef667a695	初音套03-衣服
ClothingItem	30783472201105408	a1e1433d-e26d-17d4-fa28-e2ae757af0e6	初音套04-衣服
ClothingItem	30783473304207360	0c728354-1586-a314-992a-ae227ec7d903	初音套06-衣服
ClothingItem	30783472737976320	f4fd118e-4033-f3e4-8a68-aab0af230fc6	初音套05-衣服
ClothingItem	30783473027383296	cf9bb078-c758-7b54-8b0f-6fbf9d72829a	初音套05-头发
ClothingItem	30783473891409920	17530149-ced5-c124-399e-147817ea5896	初音套07-衣服
ClothingItem	30783474159845376	16d3b2c8-f17c-3d54-abd5-878a0c8282e6	初音套07-头发
ClothingItem	30783474721882112	681cf3db-1903-2894-db2d-f7435fcd5c1b	初音套08-头发
ClothingItem	30783474994511872	e33d359f-1bce-0334-c945-69ad69d14a47	刺客套01-衣服
ClothingItem	30783475539771392	c21efe3d-03f3-0e94-d93a-4c83f767916c	刺客套02-衣服
ClothingItem	30783475808206848	7fae2f54-73e8-6a84-7838-813aae749c70	刺客套02-头发
ClothingItem	30783476089225216	5ea0111c-8b4e-ac24-d800-679f021f98ad	刺客套03-衣服
ClothingItem	30783477230075904	ba639418-41ea-b044-5bbc-01b619c59a93	刺客套05-衣服
ClothingItem	30783476647067648	ba0d7bc6-e6b2-63e4-d8db-d32de72c9b60	刺客套04-头发
ClothingItem	30783477511094272	acdedc0c-43a5-f1c4-982b-96b59b2dccd1	刺客套05-头发
ClothingItem	30783477783724032	c1ef739e-3d8b-39f4-48ae-b7c18c656dc8	刺客套06-衣服
ClothingItem	30783478324789248	509bea4d-1d84-2274-a9f3-020eb69e6aa7	大蝴蝶结套01-衣服
ClothingItem	30783478597419008	a720aea3-566a-7674-0b8f-07e7b2aca766	大蝴蝶结套01-头发
ClothingItem	30783478903603200	443dad69-3f2c-9a74-ba57-d3d483c864aa	大蝴蝶结套02-衣服
ClothingItem	30783479188815872	b5bc4a63-10dc-8304-4873-a0cb7467d54e	大蝴蝶结套02-头发
ClothingItem	30783479734075392	06310577-a8e9-7c44-593d-f1601c9c6f43	大蝴蝶结套03-头发
ClothingItem	30783482707836928	317058ab-3e0e-9c04-9853-91e74a066207	海底套02-衣服
ClothingItem	30783483534114816	755d1c30-160d-4f34-5846-8ae0bb632959	海底套03-头发
ClothingItem	30783483248902144	48e3a3f1-e27e-5e04-ab54-0af407f9ab21	海底套03-衣服
ClothingItem	30783482980466688	802df52c-368c-3a04-aa34-a4f06b72c21c	海底套02-头发
ClothingItem	30783483802550272	99464eb3-a4c8-6774-e831-73210cd90242	海底套04-衣服
ClothingItem	30783482443595776	1dd6b60b-07a5-5484-3bc6-304d112a056d	海底套01-头发
ClothingItem	30783480270946304	55758e78-7751-8fa4-3b4c-3af882fddfd3	公主裙套01-头发
ClothingItem	30783484075180032	d4d3d2e1-7645-81a4-b928-50ed83bbb9ab	海底套04-头发
ClothingItem	30783484356198400	56ba3e76-3190-2294-4825-9270225ff978	和服套01-衣服
ClothingItem	30783484813377536	1443f49d-2ce6-e164-2ad6-fc7881aeb027	和服套01-头发
ClothingItem	30783485081812992	a5efad31-001e-1f24-d97b-a1209ea02603	和服套02-衣服
ClothingItem	30783485572546560	580a1c10-0278-da24-a8db-de011c242385	和服套02-头发
ClothingItem	30783485849370624	a5f3c0b6-0992-cc74-ebf7-3969a765a685	华服套01-衣服
ClothingItem	30783486117806080	b8420b13-9b43-0cc4-5aca-a0774eb95145	华服套01-头发
ClothingItem	30783486394630144	da4b60a9-4adc-7204-297a-3b23248486a2	华服套02-衣服
ClothingItem	30783486654676992	476c0c4d-cb1b-dcc4-7833-154ed49661d8	华服套02-头发
ClothingItem	30783487174770688	9a345223-51e3-1414-5b79-428e3c8765fc	蓝色套01-头发
ClothingItem	30783487468371968	aaa2839d-1fe6-1604-2bda-6c006c253d1b	蓝色套02-衣服
ClothingItem	30783487753584640	a04db315-0596-23c4-f913-4f2523f4b6c9	蓝色套02-头发
ClothingItem	30783488315621376	008aea0f-c43c-5a04-89f2-6b81e4b79b57	蓝色套03-头发
ClothingItem	30783488579862528	ee406bcd-c26d-2e64-6a10-e8c281b32129	猫耳套01-衣服
ClothingItem	30783489116733440	9d1decc5-cabb-9964-5bdd-6234f5fad997	猫耳套02-衣服
ClothingItem	30783489406140416	7d7d4f67-e43a-3c64-d8aa-149b7537c4b7	猫耳套02-头发
ClothingItem	30783489955594240	a8cd53b9-608b-8e74-9bba-cbba5abc80bd	猫耳套03-头发
ClothingItem	30783490232418304	a67556d9-7ff1-e754-db82-3399eb8e8909	猫耳套04-衣服
ClothingItem	30783490618294272	c58c8617-d36b-1f64-1930-ea7eb20a3c73	猫耳套04-头发
ClothingItem	30783470544355328	7951d240-0b68-8f64-08d2-c38f1b635641	初音套01-衣服
ClothingItem	30783470842150912	89413f91-209e-16b4-0b05-58be03e5aec0	初音套01-头发
ClothingItem	30783471664234496	4d0c3a49-c662-e9e4-7bdb-e8bf344377ff	初音套03-衣服
ClothingItem	30783472461152256	b68dc2a4-ed8f-2854-c984-b26a3a360d57	初音套04-头发
ClothingItem	30783473597808640	d94eced3-b439-0924-78ac-214d4525b93f	初音套06-头发
ClothingItem	30783474419892224	c6bb6df3-bd0c-6ea4-6902-8de320bfb14d	初音套08-衣服
ClothingItem	30783475258753024	af5465f7-27a5-8474-28ff-34ef52d2fa21	刺客套01-头发
ClothingItem	30783476361854976	bf60fa71-36a2-1364-eb9f-238936baeb89	刺客套03-头发
ClothingItem	30783476944863232	6c8832a6-660f-a364-cb09-e66b612d6375	刺客套04-头发
ClothingItem	30783478052159488	7a91ac54-6004-dc24-0948-40f9e94baffd	刺客套06-头发
ClothingItem	30783479478222848	2f0bbf0b-57d8-ee94-e939-88f15e0f1174	大蝴蝶结套03-衣服
ClothingItem	30783482154188800	49c114ba-3501-5814-8a16-3cddfc441bd6	海底套01-衣服
ClothingItem	30783480002510848	5c6aba1e-ee3f-6e54-e8e4-6fbb78bfcdd1	公主裙套01-衣服
ClothingItem	30783480551964672	4a797392-150b-3754-b9e0-2992ed7e0672	公主裙套02-衣服
ClothingItem	30783480807817216	6f51db1c-d75b-62c4-a812-25b8c8755b48	公主裙套02-头发
ClothingItem	30783481084641280	fdb55bcc-3fc4-fc44-69ca-749e106ad4f0	公主裙套03-衣服
ClothingItem	30783481361465344	de773d36-2952-57c4-a9a2-17b618f0641e	公主裙套03-头发
ClothingItem	30783481634095104	bccb2969-91ca-ea74-c945-5d8f0b8cca10	公主裙套04-衣服
ClothingItem	30783481894141952	93b63e3f-ffe4-fef4-1908-bb076860d391	公主裙套04-头发
ClothingItem	30783486914723840	11f6c328-2554-8d04-2be1-c43852d4c228	蓝色套01-衣服
ClothingItem	30783488034603008	c862de53-c461-6bb4-8bf6-97f17f6d90b3	蓝色套03-衣服
ClothingItem	30783488848297984	c3789541-e357-5314-f8f0-d7063f531b4d	猫耳套01-头发
ClothingItem	30783489691353088	9f9ead67-65fa-c8e4-cb68-29438d2c6ce7	猫耳套03-衣服
PlacementItem	35501715541196800	a5ea51ea-39f4-d6e4-887e-07ea319b6e00	啊啊啊
\.


--
-- TOC entry 3402 (class 0 OID 24822)
-- Dependencies: 222
-- Data for Name: ciyuan_iteminstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_iteminstance (iteminstancetype, id, inuse, item_id, owner_id) FROM stdin;
PlacementItemInstance	37031330793390080	f	35501715541196800	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330835333120	f	30783476944863232	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330839527424	f	30783471110586368	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330839527425	f	30783490882535424	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330839527426	f	30783474721882112	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330839527427	f	30783483248902144	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330839527428	f	30783501418627072	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721728	f	30783497299820544	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721729	f	30783480551964672	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721730	f	30783476089225216	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721731	f	30783502823718912	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721732	f	30783501708034048	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721733	f	30783482443595776	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721734	f	30783488579862528	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721735	f	30783491419406336	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330843721736	f	30783487468371968	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330847916032	f	30783497576644608	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330847916033	f	30783476361854976	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330847916034	f	30783503104737280	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330847916035	f	30783499518607360	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330847916036	f	30783500332302336	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330847916037	f	30783488848297984	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110336	f	30783499782848512	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110337	f	30783478597419008	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110338	f	30783502551089152	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110339	f	30783487174770688	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110340	f	30783493336203264	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110341	f	30783480807817216	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330852110342	f	30783486654676992	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330856304640	f	30783470842150912	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330856304641	f	30783495307526144	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330856304642	f	30783479188815872	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330856304643	f	30783478052159488	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330856304644	f	30783479478222848	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330856304645	f	30783503373172736	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498944	f	30783495022313472	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498945	f	30783474419892224	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498946	f	30783500860784640	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498947	f	30783471924281344	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498948	f	30783477783724032	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498949	f	30783478903603200	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330860498950	f	30783481361465344	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693248	f	30783480270946304	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693249	f	30783473891409920	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693250	f	30783496737783808	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693251	f	30783472201105408	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693252	f	30783479734075392	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693253	f	30783482154188800	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693254	f	30783481894141952	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330864693255	f	30783483534114816	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887552	f	30783503645802496	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887553	f	30783489955594240	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887554	f	30783501120831488	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887555	f	30783498419699712	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887556	f	30783478324789248	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887557	f	30783488034603008	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887558	f	30783493894045696	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330868887559	f	30783471383216128	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081856	f	30783489406140416	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081857	f	30783474159845376	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081858	f	30783492241489920	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081859	f	30783491696230400	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081860	f	30783470544355328	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081861	f	30783474994511872	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081862	f	30783485572546560	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330873081863	f	30783498964959232	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276160	f	30783473597808640	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276161	f	30783475808206848	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276162	f	30783481084641280	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276163	f	30783500055478272	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276164	f	30783497853468672	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276165	f	30783485081812992	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276166	f	30783477230075904	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276167	f	30783480002510848	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330877276168	f	30783490232418304	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470464	f	30783493621415936	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470465	f	30783475539771392	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470466	f	30783483802550272	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470467	f	30783493050990592	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470468	f	30783471664234496	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470469	f	30783500592349184	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470470	f	30783491973054464	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470471	f	30783492799332352	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470472	f	30783490618294272	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330881470473	f	30783496465154048	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664768	f	30783494737100800	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664769	f	30783498688135168	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664770	f	30783472737976320	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664771	f	30783477511094272	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664772	f	30783492526702592	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664773	f	30783502282653696	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664774	f	30783476647067648	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330885664775	f	30783489691353088	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859072	f	30783473027383296	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859073	f	30783489116733440	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859074	f	30783484813377536	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859075	f	30783487753584640	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859076	f	30783496200912896	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859077	f	30783488315621376	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859078	f	30783486914723840	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330889859079	f	30783482707836928	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053376	f	30783503918432256	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053377	f	30783484075180032	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053378	f	30783502001635328	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053379	f	30783486394630144	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053380	f	30783485849370624	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053381	f	30783472461152256	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330894053382	f	30783495592738816	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247680	f	30783494439305216	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247681	f	30783473304207360	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247682	f	30783491142582272	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247683	f	30783486117806080	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247684	f	30783495907311616	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247685	f	30783475258753024	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247686	f	30783481634095104	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330898247687	f	30783494166675456	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330902441984	f	30783482980466688	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330902441985	f	30783499237588992	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330902441986	f	30783498142875648	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330902441987	f	30783484356198400	656ada25-c197-4eff-b528-f73528058da5
ClothingItemInstance	37031330902441988	f	30783497031385088	656ada25-c197-4eff-b528-f73528058da5
\.


--
-- TOC entry 3396 (class 0 OID 16507)
-- Dependencies: 216
-- Data for Name: ciyuan_placementitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_placementitem (id, scalex, scaley, scalez) FROM stdin;
35501715541196800	0.54	0.54	0.54
\.


--
-- TOC entry 3403 (class 0 OID 24827)
-- Dependencies: 223
-- Data for Name: ciyuan_placementiteminstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_placementiteminstance (positionx, positiony, positionz, rotationw, rotationx, rotationy, rotationz, id, placedroom_id) FROM stdin;
0	0	0	0	0	0	0	37031330793390080	\N
\.


--
-- TOC entry 3397 (class 0 OID 16512)
-- Dependencies: 217
-- Data for Name: ciyuan_room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_room (id, birthpositionx, birthpositiony, birthpositionz, birthrange, navmeshpath, roompublishtype, scenepath, title, owner_id) FROM stdin;
30747869312974848	34	21	102	5	graph.bytes	0	Island-White	test	656ada25-c197-4eff-b528-f73528058da5
35494700580339712	34	21	102	5	graph.bytes	2	Island-White	test3	656ada25-c197-4eff-b528-f73528058da5
30879026176327680	34	21	102	5	graph.bytes	0	Island-White	test1	656ada25-c197-4eff-b528-f73528058da5
33109376029949952	34	21	102	5	graph.bytes	0	Island-White	test2	656ada25-c197-4eff-b528-f73528058da5
\.


--
-- TOC entry 3398 (class 0 OID 16520)
-- Dependencies: 218
-- Data for Name: ciyuan_room_ciyuan_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_room_ciyuan_user (subscribedrooms_id, subscribers_id, permittedrooms_id, permittedusers_id, permittedplacementrooms_id, permittedplacementusers_id, permittedbroadcastrooms_id, permittedbroadcastusers_id, permittedpublishrooms_id, permittedpublishusers_id) FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 16525)
-- Dependencies: 219
-- Data for Name: ciyuan_roomsignup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_roomsignup (id, declined, roompublishtype, title, owner_id) FROM stdin;
\.


--
-- TOC entry 3400 (class 0 OID 16531)
-- Dependencies: 220
-- Data for Name: ciyuan_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciyuan_user (id, name, streamcode) FROM stdin;
77c8a926-f85f-45f0-934a-5011da3c1e61	test2	bfce3aa3-1591-4dcc-9fe1-dcd79f721746
656ada25-c197-4eff-b528-f73528058da5	test	94a0ca7f-285f-472b-a768-8cc648ca5cc1
e05377e6-c9a3-4ab4-8fd8-1949e4a2c49f	test1	88290132-7936-409e-af04-e41ba220a826
\.


--
-- TOC entry 3211 (class 2606 OID 16501)
-- Name: ciyuan_clothingitem ciyuan_clothingitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_clothingitem
    ADD CONSTRAINT ciyuan_clothingitem_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 24821)
-- Name: ciyuan_clothingiteminstance ciyuan_clothingiteminstance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_clothingiteminstance
    ADD CONSTRAINT ciyuan_clothingiteminstance_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 16506)
-- Name: ciyuan_item ciyuan_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_item
    ADD CONSTRAINT ciyuan_item_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 24826)
-- Name: ciyuan_iteminstance ciyuan_iteminstance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_iteminstance
    ADD CONSTRAINT ciyuan_iteminstance_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 16511)
-- Name: ciyuan_placementitem ciyuan_placementitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_placementitem
    ADD CONSTRAINT ciyuan_placementitem_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 24831)
-- Name: ciyuan_placementiteminstance ciyuan_placementiteminstance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_placementiteminstance
    ADD CONSTRAINT ciyuan_placementiteminstance_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 16524)
-- Name: ciyuan_room_ciyuan_user ciyuan_room_ciyuan_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT ciyuan_room_ciyuan_user_pkey PRIMARY KEY (subscribedrooms_id, subscribers_id, permittedrooms_id, permittedusers_id);


--
-- TOC entry 3217 (class 2606 OID 16519)
-- Name: ciyuan_room ciyuan_room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room
    ADD CONSTRAINT ciyuan_room_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 16530)
-- Name: ciyuan_roomsignup ciyuan_roomsignup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_roomsignup
    ADD CONSTRAINT ciyuan_roomsignup_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 16535)
-- Name: ciyuan_user ciyuan_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_user
    ADD CONSTRAINT ciyuan_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 16537)
-- Name: ciyuan_user uk_iutw3im5wnf61id5rln0ssnea; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_user
    ADD CONSTRAINT uk_iutw3im5wnf61id5rln0ssnea UNIQUE (name);


--
-- TOC entry 3234 (class 2606 OID 16548)
-- Name: ciyuan_room fk22261nbtgsa5jq6d9nrdy7tf6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room
    ADD CONSTRAINT fk22261nbtgsa5jq6d9nrdy7tf6 FOREIGN KEY (owner_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3235 (class 2606 OID 16558)
-- Name: ciyuan_room_ciyuan_user fk3gfbdyoa0cs5w87l666ll4l4q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fk3gfbdyoa0cs5w87l666ll4l4q FOREIGN KEY (subscribedrooms_id) REFERENCES public.ciyuan_room(id);


--
-- TOC entry 3233 (class 2606 OID 16543)
-- Name: ciyuan_placementitem fk5iva9nd0hhn7cp2pp4o4132vk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_placementitem
    ADD CONSTRAINT fk5iva9nd0hhn7cp2pp4o4132vk FOREIGN KEY (id) REFERENCES public.ciyuan_item(id);


--
-- TOC entry 3246 (class 2606 OID 24837)
-- Name: ciyuan_clothingiteminstance fk5u64xox7go9me33b62kq74ds0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_clothingiteminstance
    ADD CONSTRAINT fk5u64xox7go9me33b62kq74ds0 FOREIGN KEY (id) REFERENCES public.ciyuan_iteminstance(id);


--
-- TOC entry 3236 (class 2606 OID 16644)
-- Name: ciyuan_room_ciyuan_user fk68fdfd6s2edfprkigwieu0jd8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fk68fdfd6s2edfprkigwieu0jd8 FOREIGN KEY (permittedplacementrooms_id) REFERENCES public.ciyuan_room(id);


--
-- TOC entry 3248 (class 2606 OID 24847)
-- Name: ciyuan_iteminstance fk6tmgg702m7tnt7iuysioa3wk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_iteminstance
    ADD CONSTRAINT fk6tmgg702m7tnt7iuysioa3wk FOREIGN KEY (owner_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3250 (class 2606 OID 24857)
-- Name: ciyuan_placementiteminstance fk8wj0nh9nsj3dd3drssnjj587q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_placementiteminstance
    ADD CONSTRAINT fk8wj0nh9nsj3dd3drssnjj587q FOREIGN KEY (id) REFERENCES public.ciyuan_iteminstance(id);


--
-- TOC entry 3237 (class 2606 OID 16639)
-- Name: ciyuan_room_ciyuan_user fkcin635gakvifg4go0mp0a4s6i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkcin635gakvifg4go0mp0a4s6i FOREIGN KEY (permittedplacementusers_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3238 (class 2606 OID 19777)
-- Name: ciyuan_room_ciyuan_user fkdrti630j887bg9xjr383frkyx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkdrti630j887bg9xjr383frkyx FOREIGN KEY (permittedpublishusers_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3239 (class 2606 OID 19782)
-- Name: ciyuan_room_ciyuan_user fkfqu52o7rh9uhcuot0c87w5lem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkfqu52o7rh9uhcuot0c87w5lem FOREIGN KEY (permittedpublishrooms_id) REFERENCES public.ciyuan_room(id);


--
-- TOC entry 3247 (class 2606 OID 24832)
-- Name: ciyuan_clothingiteminstance fkgapbn5x6yr1e3pbbemtsewdo9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_clothingiteminstance
    ADD CONSTRAINT fkgapbn5x6yr1e3pbbemtsewdo9 FOREIGN KEY (equippeduser_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3232 (class 2606 OID 16538)
-- Name: ciyuan_clothingitem fkiumw23rx0tnel43tec7r4yuuj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_clothingitem
    ADD CONSTRAINT fkiumw23rx0tnel43tec7r4yuuj FOREIGN KEY (id) REFERENCES public.ciyuan_item(id);


--
-- TOC entry 3240 (class 2606 OID 16563)
-- Name: ciyuan_room_ciyuan_user fkjguh0dq246dkhk3vyvk27ee2n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkjguh0dq246dkhk3vyvk27ee2n FOREIGN KEY (permittedusers_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3241 (class 2606 OID 16654)
-- Name: ciyuan_room_ciyuan_user fkl62xffs0obpgyk6m2bxexdaff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkl62xffs0obpgyk6m2bxexdaff FOREIGN KEY (permittedbroadcastrooms_id) REFERENCES public.ciyuan_room(id);


--
-- TOC entry 3242 (class 2606 OID 16568)
-- Name: ciyuan_room_ciyuan_user fklun0leylby5scegni17lv354; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fklun0leylby5scegni17lv354 FOREIGN KEY (permittedrooms_id) REFERENCES public.ciyuan_room(id);


--
-- TOC entry 3243 (class 2606 OID 16649)
-- Name: ciyuan_room_ciyuan_user fkolyne4xxis1nilf581jtlqmjw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkolyne4xxis1nilf581jtlqmjw FOREIGN KEY (permittedbroadcastusers_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3245 (class 2606 OID 16573)
-- Name: ciyuan_roomsignup fkom3cae0r6kmg1svjiqbxdyqh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_roomsignup
    ADD CONSTRAINT fkom3cae0r6kmg1svjiqbxdyqh FOREIGN KEY (owner_id) REFERENCES public.ciyuan_user(id);


--
-- TOC entry 3249 (class 2606 OID 24842)
-- Name: ciyuan_iteminstance fkr0mvspg7d7feprj7of9o57x97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_iteminstance
    ADD CONSTRAINT fkr0mvspg7d7feprj7of9o57x97 FOREIGN KEY (item_id) REFERENCES public.ciyuan_item(id);


--
-- TOC entry 3251 (class 2606 OID 24852)
-- Name: ciyuan_placementiteminstance fkrqp2ya8a6ifuv3vedovgelj20; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_placementiteminstance
    ADD CONSTRAINT fkrqp2ya8a6ifuv3vedovgelj20 FOREIGN KEY (placedroom_id) REFERENCES public.ciyuan_room(id);


--
-- TOC entry 3244 (class 2606 OID 16553)
-- Name: ciyuan_room_ciyuan_user fkthfpyr8sa6snmsmg4gxadol4k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciyuan_room_ciyuan_user
    ADD CONSTRAINT fkthfpyr8sa6snmsmg4gxadol4k FOREIGN KEY (subscribers_id) REFERENCES public.ciyuan_user(id);


-- Completed on 2023-04-13 13:19:15

--
-- PostgreSQL database dump complete
--

