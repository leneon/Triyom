PGDMP     1        
        
    |            site2    12.17    12.17 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    260213    site2    DATABASE     �   CREATE DATABASE site2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE site2;
                postgres    false            �            1259    260216    appui_techniques    TABLE     �  CREATE TABLE public.appui_techniques (
    id bigint NOT NULL,
    adresse character varying(255),
    date_creation timestamp(6) without time zone,
    date_lancement timestamp(6) without time zone,
    email character varying(255),
    financment_anterieur boolean,
    fonction_responsable character varying(255),
    impact character varying(255),
    montant_anterieur double precision,
    montant_financement double precision,
    nbre_employe character varying(255),
    niveau_projet character varying(255),
    nom_entreprise character varying(255),
    nom_responsable character varying(255),
    nrc character varying(255),
    objectif text,
    pays character varying(255),
    principaux_defis text,
    resume text,
    secteur_activite character varying(255),
    site character varying(255),
    source_anterieur character varying(255),
    statut_juridique character varying(255),
    support_technique character varying(255),
    support_technique_autre character varying(255),
    telephone character varying(255),
    type_appui character varying(255),
    type_financement character varying(255),
    type_financement_autre character varying(255),
    utilisation character varying(255)
);
 $   DROP TABLE public.appui_techniques;
       public         heap    postgres    false            �            1259    260214    appui_techniques_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appui_techniques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.appui_techniques_id_seq;
       public          postgres    false    203            �           0    0    appui_techniques_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.appui_techniques_id_seq OWNED BY public.appui_techniques.id;
          public          postgres    false    202            �            1259    260227    articles    TABLE     ,  CREATE TABLE public.articles (
    id bigint NOT NULL,
    contenue text,
    couverture character varying(255),
    created_at timestamp(6) without time zone NOT NULL,
    dislikes integer,
    likes integer,
    statut boolean,
    titre character varying(255),
    categorie_id bigint NOT NULL
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    260225    articles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    205            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    204            �            1259    260238 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    nom character varying(255),
    statut boolean DEFAULT true NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    260236    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    207            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    206            �            1259    260247    commentaires    TABLE       CREATE TABLE public.commentaires (
    id bigint NOT NULL,
    contenue text,
    created_at timestamp(6) without time zone NOT NULL,
    statut boolean DEFAULT true,
    useremail character varying(255),
    username character varying(255),
    article_id bigint
);
     DROP TABLE public.commentaires;
       public         heap    postgres    false            �            1259    260245    commentaires_id_seq    SEQUENCE     |   CREATE SEQUENCE public.commentaires_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.commentaires_id_seq;
       public          postgres    false    209            �           0    0    commentaires_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.commentaires_id_seq OWNED BY public.commentaires.id;
          public          postgres    false    208            �            1259    260259    contacts    TABLE       CREATE TABLE public.contacts (
    id bigint NOT NULL,
    message character varying(255),
    status character varying(255),
    useremail character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    userphone character varying(255),
    service_id bigint
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            �            1259    260257    contacts_id_seq    SEQUENCE     x   CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public          postgres    false    211            �           0    0    contacts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;
          public          postgres    false    210            �            1259    260270    espaces    TABLE     �   CREATE TABLE public.espaces (
    id bigint NOT NULL,
    description character varying(255),
    img character varying(255),
    nom character varying(255),
    statut boolean DEFAULT true,
    tarif double precision,
    type character varying(255)
);
    DROP TABLE public.espaces;
       public         heap    postgres    false            �            1259    260268    espaces_id_seq    SEQUENCE     w   CREATE SEQUENCE public.espaces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.espaces_id_seq;
       public          postgres    false    213            �           0    0    espaces_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.espaces_id_seq OWNED BY public.espaces.id;
          public          postgres    false    212            �            1259    260282    newsletters    TABLE     b   CREATE TABLE public.newsletters (
    id bigint NOT NULL,
    useremail character varying(255)
);
    DROP TABLE public.newsletters;
       public         heap    postgres    false            �            1259    260280    newsletters_id_seq    SEQUENCE     {   CREATE SEQUENCE public.newsletters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.newsletters_id_seq;
       public          postgres    false    215            �           0    0    newsletters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.newsletters_id_seq OWNED BY public.newsletters.id;
          public          postgres    false    214            �            1259    260290    profiles    TABLE     �  CREATE TABLE public.profiles (
    id bigint NOT NULL,
    avatar character varying(255),
    bio character varying(255),
    date_naiss timestamp(6) without time zone,
    fonction character varying(255),
    localisation character varying(255),
    nom character varying(255),
    pays character varying(255),
    prenoms character varying(255),
    telephone character varying(255),
    ville character varying(255),
    user_id bigint NOT NULL
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    260288    profiles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public          postgres    false    217            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    216            �            1259    260301    reservations    TABLE     �   CREATE TABLE public.reservations (
    id bigint NOT NULL,
    date_debut timestamp(6) without time zone,
    date_fin timestamp(6) without time zone,
    statut boolean,
    espace_id bigint NOT NULL,
    user_id bigint
);
     DROP TABLE public.reservations;
       public         heap    postgres    false            �            1259    260299    reservations_id_seq    SEQUENCE     |   CREATE SEQUENCE public.reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.reservations_id_seq;
       public          postgres    false    219            �           0    0    reservations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.reservations_id_seq OWNED BY public.reservations.id;
          public          postgres    false    218            �            1259    260309    roles    TABLE     4  CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20),
    CONSTRAINT roles_name_check CHECK (((name)::text = ANY ((ARRAY['ROLE_USER'::character varying, 'ROLE_MODERATOR'::character varying, 'ROLE_ADMIN'::character varying, 'ROLE_SUPER_ADMIN'::character varying])::text[])))
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    260307    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    221            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    220            �            1259    260318    services    TABLE     �   CREATE TABLE public.services (
    id bigint NOT NULL,
    description text,
    nom character varying(255),
    type character varying(255)
);
    DROP TABLE public.services;
       public         heap    postgres    false            �            1259    260316    services_id_seq    SEQUENCE     x   CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.services_id_seq;
       public          postgres    false    223            �           0    0    services_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;
          public          postgres    false    222            �            1259    260327 
   structures    TABLE     �  CREATE TABLE public.structures (
    id bigint NOT NULL,
    bio text,
    date_creation timestamp(6) without time zone,
    description text,
    email character varying(255),
    facebook character varying(255),
    gps character varying(255),
    img character varying(255),
    img1 character varying(255),
    img2 character varying(255),
    instagram character varying(255),
    localisation character varying(255),
    logo character varying(255),
    nom character varying(255),
    pays character varying(255),
    telephone character varying(255),
    twitter character varying(255),
    ville character varying(255),
    youtube character varying(255)
);
    DROP TABLE public.structures;
       public         heap    postgres    false            �            1259    260368    structures_seq    SEQUENCE     x   CREATE SEQUENCE public.structures_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.structures_seq;
       public          postgres    false            �            1259    260337    uploads    TABLE     �   CREATE TABLE public.uploads (
    id bigint NOT NULL,
    doc character varying(255),
    path character varying(255),
    uppui_technique_id bigint NOT NULL,
    espace_id bigint NOT NULL
);
    DROP TABLE public.uploads;
       public         heap    postgres    false            �            1259    260335    uploads_id_seq    SEQUENCE     w   CREATE SEQUENCE public.uploads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.uploads_id_seq;
       public          postgres    false    226            �           0    0    uploads_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.uploads_id_seq OWNED BY public.uploads.id;
          public          postgres    false    225            �            1259    260346 
   user_roles    TABLE     ^   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    260353    users    TABLE     *  CREATE TABLE public.users (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    email character varying(50),
    password character varying(120),
    reset_token character varying(255),
    status boolean DEFAULT true NOT NULL,
    username character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    260351    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    229            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    228            �
           2604    260219    appui_techniques id    DEFAULT     z   ALTER TABLE ONLY public.appui_techniques ALTER COLUMN id SET DEFAULT nextval('public.appui_techniques_id_seq'::regclass);
 B   ALTER TABLE public.appui_techniques ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    260230    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    260241    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    260250    commentaires id    DEFAULT     r   ALTER TABLE ONLY public.commentaires ALTER COLUMN id SET DEFAULT nextval('public.commentaires_id_seq'::regclass);
 >   ALTER TABLE public.commentaires ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    260262    contacts id    DEFAULT     j   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    260273 
   espaces id    DEFAULT     h   ALTER TABLE ONLY public.espaces ALTER COLUMN id SET DEFAULT nextval('public.espaces_id_seq'::regclass);
 9   ALTER TABLE public.espaces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    260285    newsletters id    DEFAULT     p   ALTER TABLE ONLY public.newsletters ALTER COLUMN id SET DEFAULT nextval('public.newsletters_id_seq'::regclass);
 =   ALTER TABLE public.newsletters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    260293    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    260304    reservations id    DEFAULT     r   ALTER TABLE ONLY public.reservations ALTER COLUMN id SET DEFAULT nextval('public.reservations_id_seq'::regclass);
 >   ALTER TABLE public.reservations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    260312    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    260321    services id    DEFAULT     j   ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);
 :   ALTER TABLE public.services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    260340 
   uploads id    DEFAULT     h   ALTER TABLE ONLY public.uploads ALTER COLUMN id SET DEFAULT nextval('public.uploads_id_seq'::regclass);
 9   ALTER TABLE public.uploads ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �
           2604    260356    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �          0    260216    appui_techniques 
   TABLE DATA           �  COPY public.appui_techniques (id, adresse, date_creation, date_lancement, email, financment_anterieur, fonction_responsable, impact, montant_anterieur, montant_financement, nbre_employe, niveau_projet, nom_entreprise, nom_responsable, nrc, objectif, pays, principaux_defis, resume, secteur_activite, site, source_anterieur, statut_juridique, support_technique, support_technique_autre, telephone, type_appui, type_financement, type_financement_autre, utilisation) FROM stdin;
    public          postgres    false    203   R�       �          0    260227    articles 
   TABLE DATA           v   COPY public.articles (id, contenue, couverture, created_at, dislikes, likes, statut, titre, categorie_id) FROM stdin;
    public          postgres    false    205   o�       �          0    260238 
   categories 
   TABLE DATA           5   COPY public.categories (id, nom, statut) FROM stdin;
    public          postgres    false    207   ��       �          0    260247    commentaires 
   TABLE DATA           i   COPY public.commentaires (id, contenue, created_at, statut, useremail, username, article_id) FROM stdin;
    public          postgres    false    209   ��       �          0    260259    contacts 
   TABLE DATA           c   COPY public.contacts (id, message, status, useremail, username, userphone, service_id) FROM stdin;
    public          postgres    false    211   Ə       �          0    260270    espaces 
   TABLE DATA           Q   COPY public.espaces (id, description, img, nom, statut, tarif, type) FROM stdin;
    public          postgres    false    213   �       �          0    260282    newsletters 
   TABLE DATA           4   COPY public.newsletters (id, useremail) FROM stdin;
    public          postgres    false    215    �       �          0    260290    profiles 
   TABLE DATA           �   COPY public.profiles (id, avatar, bio, date_naiss, fonction, localisation, nom, pays, prenoms, telephone, ville, user_id) FROM stdin;
    public          postgres    false    217   �       �          0    260301    reservations 
   TABLE DATA           \   COPY public.reservations (id, date_debut, date_fin, statut, espace_id, user_id) FROM stdin;
    public          postgres    false    219   Q�       �          0    260309    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    221   n�       �          0    260318    services 
   TABLE DATA           >   COPY public.services (id, description, nom, type) FROM stdin;
    public          postgres    false    223   ��       �          0    260327 
   structures 
   TABLE DATA           �   COPY public.structures (id, bio, date_creation, description, email, facebook, gps, img, img1, img2, instagram, localisation, logo, nom, pays, telephone, twitter, ville, youtube) FROM stdin;
    public          postgres    false    224   Ӑ       �          0    260337    uploads 
   TABLE DATA           O   COPY public.uploads (id, doc, path, uppui_technique_id, espace_id) FROM stdin;
    public          postgres    false    226   ,�       �          0    260346 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    227   I�       �          0    260353    users 
   TABLE DATA           _   COPY public.users (id, created_at, email, password, reset_token, status, username) FROM stdin;
    public          postgres    false    229   v�       �           0    0    appui_techniques_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.appui_techniques_id_seq', 1, false);
          public          postgres    false    202            �           0    0    articles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articles_id_seq', 1, false);
          public          postgres    false    204            �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    206            �           0    0    commentaires_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.commentaires_id_seq', 1, false);
          public          postgres    false    208            �           0    0    contacts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);
          public          postgres    false    210            �           0    0    espaces_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.espaces_id_seq', 1, false);
          public          postgres    false    212            �           0    0    newsletters_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.newsletters_id_seq', 1, false);
          public          postgres    false    214            �           0    0    profiles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.profiles_id_seq', 4, true);
          public          postgres    false    216            �           0    0    reservations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.reservations_id_seq', 1, false);
          public          postgres    false    218            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
          public          postgres    false    220            �           0    0    services_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.services_id_seq', 1, false);
          public          postgres    false    222            �           0    0    structures_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.structures_seq', 1, true);
          public          postgres    false    230            �           0    0    uploads_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.uploads_id_seq', 1, false);
          public          postgres    false    225            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    228            �
           2606    260224 &   appui_techniques appui_techniques_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.appui_techniques
    ADD CONSTRAINT appui_techniques_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.appui_techniques DROP CONSTRAINT appui_techniques_pkey;
       public            postgres    false    203            �
           2606    260235    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    205            �
           2606    260244    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    207            �
           2606    260256    commentaires commentaires_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.commentaires
    ADD CONSTRAINT commentaires_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.commentaires DROP CONSTRAINT commentaires_pkey;
       public            postgres    false    209            �
           2606    260267    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    211            �
           2606    260279    espaces espaces_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.espaces
    ADD CONSTRAINT espaces_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.espaces DROP CONSTRAINT espaces_pkey;
       public            postgres    false    213            �
           2606    260287    newsletters newsletters_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT newsletters_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.newsletters DROP CONSTRAINT newsletters_pkey;
       public            postgres    false    215            �
           2606    260298    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    217                       2606    260306    reservations reservations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_pkey;
       public            postgres    false    219                       2606    260315    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    221                       2606    260326    services services_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public            postgres    false    223                       2606    260334    structures structures_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.structures
    ADD CONSTRAINT structures_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.structures DROP CONSTRAINT structures_pkey;
       public            postgres    false    224                       2606    260367 !   users uk6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    229            �
           2606    260363 '   newsletters ukex2scxa9gl5utk4q3cd1jq5lw 
   CONSTRAINT     g   ALTER TABLE ONLY public.newsletters
    ADD CONSTRAINT ukex2scxa9gl5utk4q3cd1jq5lw UNIQUE (useremail);
 Q   ALTER TABLE ONLY public.newsletters DROP CONSTRAINT ukex2scxa9gl5utk4q3cd1jq5lw;
       public            postgres    false    215            �
           2606    260361 &   categories ukl15ogrfsiv1ijo5bi874gbgr5 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT ukl15ogrfsiv1ijo5bi874gbgr5 UNIQUE (nom);
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT ukl15ogrfsiv1ijo5bi874gbgr5;
       public            postgres    false    207                       2606    260365 !   users ukr43af9ap4edm43mmtq01oddj6 
   CONSTRAINT     `   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukr43af9ap4edm43mmtq01oddj6 UNIQUE (username);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukr43af9ap4edm43mmtq01oddj6;
       public            postgres    false    229            	           2606    260345    uploads uploads_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.uploads
    ADD CONSTRAINT uploads_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.uploads DROP CONSTRAINT uploads_pkey;
       public            postgres    false    226                       2606    260350    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    227    227                       2606    260359    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229                       2606    260370 $   articles fk2ml6tluped3m24b9289na6ege    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk2ml6tluped3m24b9289na6ege FOREIGN KEY (categorie_id) REFERENCES public.categories(id);
 N   ALTER TABLE ONLY public.articles DROP CONSTRAINT fk2ml6tluped3m24b9289na6ege;
       public          postgres    false    2801    205    207                       2606    260385 $   profiles fk410q61iev7klncmpqfuo85ivh    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk410q61iev7klncmpqfuo85ivh FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.profiles DROP CONSTRAINT fk410q61iev7klncmpqfuo85ivh;
       public          postgres    false    229    2833    217                       2606    260395 (   reservations fkb5g9io5h54iwl2inkno50ppln    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT fkb5g9io5h54iwl2inkno50ppln FOREIGN KEY (user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.reservations DROP CONSTRAINT fkb5g9io5h54iwl2inkno50ppln;
       public          postgres    false    219    229    2833                       2606    260390 (   reservations fkepma9s93l00p5j19ggxil3xm9    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT fkepma9s93l00p5j19ggxil3xm9 FOREIGN KEY (espace_id) REFERENCES public.espaces(id);
 R   ALTER TABLE ONLY public.reservations DROP CONSTRAINT fkepma9s93l00p5j19ggxil3xm9;
       public          postgres    false    2809    213    219                       2606    260380 $   contacts fkgqejl6ob9ude5qcnmil7nllnu    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT fkgqejl6ob9ude5qcnmil7nllnu FOREIGN KEY (service_id) REFERENCES public.services(id);
 N   ALTER TABLE ONLY public.contacts DROP CONSTRAINT fkgqejl6ob9ude5qcnmil7nllnu;
       public          postgres    false    2821    211    223                       2606    260410 &   user_roles fkh8ciramu9cc9q3qcqiv4ue8a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6;
       public          postgres    false    221    2819    227                       2606    260415 &   user_roles fkhfh9dx7w3ubf1co1vdev94g3f    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f;
       public          postgres    false    2833    227    229                       2606    260375 (   commentaires fkj1jy041e3qu2sas505gailad0    FK CONSTRAINT     �   ALTER TABLE ONLY public.commentaires
    ADD CONSTRAINT fkj1jy041e3qu2sas505gailad0 FOREIGN KEY (article_id) REFERENCES public.articles(id);
 R   ALTER TABLE ONLY public.commentaires DROP CONSTRAINT fkj1jy041e3qu2sas505gailad0;
       public          postgres    false    209    2799    205                       2606    260400 #   uploads fkoxbmqh30al5rh7xcbjy2xq603    FK CONSTRAINT     �   ALTER TABLE ONLY public.uploads
    ADD CONSTRAINT fkoxbmqh30al5rh7xcbjy2xq603 FOREIGN KEY (uppui_technique_id) REFERENCES public.appui_techniques(id);
 M   ALTER TABLE ONLY public.uploads DROP CONSTRAINT fkoxbmqh30al5rh7xcbjy2xq603;
       public          postgres    false    203    2797    226                       2606    260405 #   uploads fkteu9m4ef7d5cbdhmm42mqcwgg    FK CONSTRAINT     �   ALTER TABLE ONLY public.uploads
    ADD CONSTRAINT fkteu9m4ef7d5cbdhmm42mqcwgg FOREIGN KEY (espace_id) REFERENCES public.espaces(id);
 M   ALTER TABLE ONLY public.uploads DROP CONSTRAINT fkteu9m4ef7d5cbdhmm42mqcwgg;
       public          postgres    false    226    2809    213            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   $   x�3��Ç���0�2&�˄�
�=... �Q�      �      x������ � �      �   8   x�3���q�v�2��}�]\�C����!�.��~\&Nph�kT(F��� >:�      �      x������ � �      �   I  x����N�0��٧�S{Yv�@EA!�e9���ś8�ȱ��^q쵏�[��k�M�$�'Y��B�Q�8��o��Ev֟o|b�A9n|�c�y&S��fҎ�a7Nw�E�n:��j>[��Y�Gy���8�s�\3M�a6ޑ�H��o?|��F]�6E#�8�4��z�u������뒞�[c�c"��7z*�%��aprIѧ(���(���4U��3��~d�^U����&��d;�@h��B�N`՚�84�����v�C�=�d:0��5qx)[(9�%����<�?��t�< It�[/y5� �0q�hA.��FY�S�]���`x��$&�*�`ܝ�,�i^Twz)ǂi�M���g�5� Hw��j�n�5�3��5��Qo�-�$Cm2�p�MD�GQFS,� ���J
<W������b�~��~�qsf^��m;ۆ��6V�T�C�)cW0>{������V���*�+���:;,�òXʫ(���>^O�����d��^ռnXǇe�����ѻ��@�V�}�m�>^�\�������3���ۛ�/��ˋ���M&~gy^"�Nr����O��~fq�Z, ��m�      �      x������ � �      �      x�3�4�2�4�2�4�2�4����� ��      �   =  x�m��n�P @�5|En}�������L�hLd��"_�T��i��{�1D j���L;%H�R<!��a�z�|�6B���;kt\��Iy�H�"7TD�[��9�~@fW��ƒ��Ql�GG� �!�f����k�꼩c�I&�%V�_V�L�eg�Q��\�zҭ�͐������S�i�� M� Y�c^���_�*��
�3� uJ^$����m����WZs����O"�,��w�S#{��N���{���Aةe�G�Š������㶩nj:S��{��y���m���t�'��� ��_�/�     