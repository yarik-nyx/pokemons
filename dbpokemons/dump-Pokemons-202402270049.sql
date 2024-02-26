PGDMP      1                 |            Pokemons    16.1    16.1 n    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    74633    Pokemons    DATABASE     ~   CREATE DATABASE "Pokemons" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Pokemons";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            ;           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    74668 	   abilities    TABLE     �   CREATE TABLE public.abilities (
    ability_id integer NOT NULL,
    ability_name character varying(50) NOT NULL,
    ability_desc text
);
    DROP TABLE public.abilities;
       public         heap    postgres    false    4            �            1259    74667    abilities_ability_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abilities_ability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.abilities_ability_id_seq;
       public          postgres    false    222    4            <           0    0    abilities_ability_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.abilities_ability_id_seq OWNED BY public.abilities.ability_id;
          public          postgres    false    221            �            1259    74675 
   categories    TABLE     w   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(30) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false    4            �            1259    74674    categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_category_id_seq;
       public          postgres    false    4    224            =           0    0    categories_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;
          public          postgres    false    223            �            1259    74682 
   evolutions    TABLE     b   CREATE TABLE public.evolutions (
    evolution_id integer NOT NULL,
    stage integer NOT NULL
);
    DROP TABLE public.evolutions;
       public         heap    postgres    false    4            �            1259    74681    evolutions_evolution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.evolutions_evolution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.evolutions_evolution_id_seq;
       public          postgres    false    4    226            >           0    0    evolutions_evolution_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.evolutions_evolution_id_seq OWNED BY public.evolutions.evolution_id;
          public          postgres    false    225            �            1259    74689    genders    TABLE     o   CREATE TABLE public.genders (
    gender_id integer NOT NULL,
    gender_name character varying(1) NOT NULL
);
    DROP TABLE public.genders;
       public         heap    postgres    false    4            �            1259    74688    genders_gender_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genders_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.genders_gender_id_seq;
       public          postgres    false    228    4            ?           0    0    genders_gender_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.genders_gender_id_seq OWNED BY public.genders.gender_id;
          public          postgres    false    227            �            1259    74703    pokemons    TABLE     (  CREATE TABLE public.pokemons (
    pokemon_id integer NOT NULL,
    pokemon_name character varying(50) NOT NULL,
    pokemon_height real,
    pokemon_weight real,
    pokemon_logo character varying(100) NOT NULL,
    evolution_id integer,
    category_id integer,
    stat_id integer NOT NULL
);
    DROP TABLE public.pokemons;
       public         heap    postgres    false    4            �            1259    74734    pokemons_abilities    TABLE     �   CREATE TABLE public.pokemons_abilities (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    ability_id integer NOT NULL
);
 &   DROP TABLE public.pokemons_abilities;
       public         heap    postgres    false    4            �            1259    74733    pokemons_abilities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemons_abilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pokemons_abilities_id_seq;
       public          postgres    false    236    4            @           0    0    pokemons_abilities_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pokemons_abilities_id_seq OWNED BY public.pokemons_abilities.id;
          public          postgres    false    235            �            1259    74770    pokemons_genders    TABLE     �   CREATE TABLE public.pokemons_genders (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    gender_id integer NOT NULL,
    percent real NOT NULL
);
 $   DROP TABLE public.pokemons_genders;
       public         heap    postgres    false    4            �            1259    74769    pokemons_genders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemons_genders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pokemons_genders_id_seq;
       public          postgres    false    238    4            A           0    0    pokemons_genders_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pokemons_genders_id_seq OWNED BY public.pokemons_genders.id;
          public          postgres    false    237            �            1259    74702    pokemons_pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemons_pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pokemons_pokemon_id_seq;
       public          postgres    false    232    4            B           0    0    pokemons_pokemon_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pokemons_pokemon_id_seq OWNED BY public.pokemons.pokemon_id;
          public          postgres    false    231            �            1259    74715    pokemons_types    TABLE        CREATE TABLE public.pokemons_types (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    type_id integer NOT NULL
);
 "   DROP TABLE public.pokemons_types;
       public         heap    postgres    false    4            �            1259    74714    pokemons_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemons_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pokemons_types_id_seq;
       public          postgres    false    234    4            C           0    0    pokemons_types_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pokemons_types_id_seq OWNED BY public.pokemons_types.id;
          public          postgres    false    233            �            1259    75366    rating    TABLE     �   CREATE TABLE public.rating (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    user_id integer NOT NULL,
    stars numeric,
    CONSTRAINT rating_stars_check CHECK (((stars >= (0)::numeric) AND (stars <= 5.0)))
);
    DROP TABLE public.rating;
       public         heap    postgres    false    4            �            1259    75365    rating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          postgres    false    4    240            D           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          postgres    false    239            �            1259    74696    stats    TABLE       CREATE TABLE public.stats (
    stat_id integer NOT NULL,
    stat_hp smallint NOT NULL,
    stat_attack smallint NOT NULL,
    stat_defense smallint NOT NULL,
    stat_sp_attack smallint NOT NULL,
    stat_sp_defense smallint NOT NULL,
    stat_speed smallint NOT NULL
);
    DROP TABLE public.stats;
       public         heap    postgres    false    4            �            1259    74695    stats_stat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_stat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.stats_stat_id_seq;
       public          postgres    false    4    230            E           0    0    stats_stat_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.stats_stat_id_seq OWNED BY public.stats.stat_id;
          public          postgres    false    229            �            1259    74642    tokens    TABLE     �   CREATE TABLE public.tokens (
    token_id integer NOT NULL,
    refresh_token character varying(300) NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.tokens;
       public         heap    postgres    false    4            �            1259    74641    tokens_token_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tokens_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tokens_token_id_seq;
       public          postgres    false    218    4            F           0    0    tokens_token_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tokens_token_id_seq OWNED BY public.tokens.token_id;
          public          postgres    false    217            �            1259    74654    type    TABLE     i   CREATE TABLE public.type (
    type_id integer NOT NULL,
    type_name character varying(30) NOT NULL
);
    DROP TABLE public.type;
       public         heap    postgres    false    4            �            1259    74653    type_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.type_type_id_seq;
       public          postgres    false    4    220            G           0    0    type_type_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.type_type_id_seq OWNED BY public.type.type_id;
          public          postgres    false    219            �            1259    74635    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    nickname character varying(20) NOT NULL,
    password character varying(100) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    74634    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    216    4            H           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    215            Y           2604    74671    abilities ability_id    DEFAULT     |   ALTER TABLE ONLY public.abilities ALTER COLUMN ability_id SET DEFAULT nextval('public.abilities_ability_id_seq'::regclass);
 C   ALTER TABLE public.abilities ALTER COLUMN ability_id DROP DEFAULT;
       public          postgres    false    222    221    222            Z           2604    74678    categories category_id    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    223    224    224            [           2604    74685    evolutions evolution_id    DEFAULT     �   ALTER TABLE ONLY public.evolutions ALTER COLUMN evolution_id SET DEFAULT nextval('public.evolutions_evolution_id_seq'::regclass);
 F   ALTER TABLE public.evolutions ALTER COLUMN evolution_id DROP DEFAULT;
       public          postgres    false    226    225    226            \           2604    74692    genders gender_id    DEFAULT     v   ALTER TABLE ONLY public.genders ALTER COLUMN gender_id SET DEFAULT nextval('public.genders_gender_id_seq'::regclass);
 @   ALTER TABLE public.genders ALTER COLUMN gender_id DROP DEFAULT;
       public          postgres    false    228    227    228            ^           2604    74706    pokemons pokemon_id    DEFAULT     z   ALTER TABLE ONLY public.pokemons ALTER COLUMN pokemon_id SET DEFAULT nextval('public.pokemons_pokemon_id_seq'::regclass);
 B   ALTER TABLE public.pokemons ALTER COLUMN pokemon_id DROP DEFAULT;
       public          postgres    false    231    232    232            `           2604    74737    pokemons_abilities id    DEFAULT     ~   ALTER TABLE ONLY public.pokemons_abilities ALTER COLUMN id SET DEFAULT nextval('public.pokemons_abilities_id_seq'::regclass);
 D   ALTER TABLE public.pokemons_abilities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            a           2604    74773    pokemons_genders id    DEFAULT     z   ALTER TABLE ONLY public.pokemons_genders ALTER COLUMN id SET DEFAULT nextval('public.pokemons_genders_id_seq'::regclass);
 B   ALTER TABLE public.pokemons_genders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            _           2604    74718    pokemons_types id    DEFAULT     v   ALTER TABLE ONLY public.pokemons_types ALTER COLUMN id SET DEFAULT nextval('public.pokemons_types_id_seq'::regclass);
 @   ALTER TABLE public.pokemons_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            b           2604    75369 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ]           2604    74699    stats stat_id    DEFAULT     n   ALTER TABLE ONLY public.stats ALTER COLUMN stat_id SET DEFAULT nextval('public.stats_stat_id_seq'::regclass);
 <   ALTER TABLE public.stats ALTER COLUMN stat_id DROP DEFAULT;
       public          postgres    false    230    229    230            W           2604    74645    tokens token_id    DEFAULT     r   ALTER TABLE ONLY public.tokens ALTER COLUMN token_id SET DEFAULT nextval('public.tokens_token_id_seq'::regclass);
 >   ALTER TABLE public.tokens ALTER COLUMN token_id DROP DEFAULT;
       public          postgres    false    217    218    218            X           2604    74657    type type_id    DEFAULT     l   ALTER TABLE ONLY public.type ALTER COLUMN type_id SET DEFAULT nextval('public.type_type_id_seq'::regclass);
 ;   ALTER TABLE public.type ALTER COLUMN type_id DROP DEFAULT;
       public          postgres    false    219    220    220            V           2604    74638    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    215    216    216            "          0    74668 	   abilities 
   TABLE DATA           K   COPY public.abilities (ability_id, ability_name, ability_desc) FROM stdin;
    public          postgres    false    222   �~       $          0    74675 
   categories 
   TABLE DATA           @   COPY public.categories (category_id, category_name) FROM stdin;
    public          postgres    false    224   ��       &          0    74682 
   evolutions 
   TABLE DATA           9   COPY public.evolutions (evolution_id, stage) FROM stdin;
    public          postgres    false    226   !�       (          0    74689    genders 
   TABLE DATA           9   COPY public.genders (gender_id, gender_name) FROM stdin;
    public          postgres    false    228   J�       ,          0    74703    pokemons 
   TABLE DATA           �   COPY public.pokemons (pokemon_id, pokemon_name, pokemon_height, pokemon_weight, pokemon_logo, evolution_id, category_id, stat_id) FROM stdin;
    public          postgres    false    232   q�       0          0    74734    pokemons_abilities 
   TABLE DATA           H   COPY public.pokemons_abilities (id, pokemon_id, ability_id) FROM stdin;
    public          postgres    false    236   �      2          0    74770    pokemons_genders 
   TABLE DATA           N   COPY public.pokemons_genders (id, pokemon_id, gender_id, percent) FROM stdin;
    public          postgres    false    238   h;      .          0    74715    pokemons_types 
   TABLE DATA           A   COPY public.pokemons_types (id, pokemon_id, type_id) FROM stdin;
    public          postgres    false    234   sa      4          0    75366    rating 
   TABLE DATA           @   COPY public.rating (id, pokemon_id, user_id, stars) FROM stdin;
    public          postgres    false    240   F�      *          0    74696    stats 
   TABLE DATA           y   COPY public.stats (stat_id, stat_hp, stat_attack, stat_defense, stat_sp_attack, stat_sp_defense, stat_speed) FROM stdin;
    public          postgres    false    230   c�                0    74642    tokens 
   TABLE DATA           B   COPY public.tokens (token_id, refresh_token, user_id) FROM stdin;
    public          postgres    false    218   �                 0    74654    type 
   TABLE DATA           2   COPY public.type (type_id, type_name) FROM stdin;
    public          postgres    false    220   &�                0    74635    users 
   TABLE DATA           <   COPY public.users (user_id, nickname, password) FROM stdin;
    public          postgres    false    216   Ĭ      I           0    0    abilities_ability_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.abilities_ability_id_seq', 306, true);
          public          postgres    false    221            J           0    0    categories_category_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categories_category_id_seq', 704, true);
          public          postgres    false    223            K           0    0    evolutions_evolution_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.evolutions_evolution_id_seq', 3, true);
          public          postgres    false    225            L           0    0    genders_gender_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.genders_gender_id_seq', 1, false);
          public          postgres    false    227            M           0    0    pokemons_abilities_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.pokemons_abilities_id_seq', 2707, true);
          public          postgres    false    235            N           0    0    pokemons_genders_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pokemons_genders_id_seq', 2020, true);
          public          postgres    false    237            O           0    0    pokemons_pokemon_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pokemons_pokemon_id_seq', 1206, true);
          public          postgres    false    231            P           0    0    pokemons_types_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pokemons_types_id_seq', 1871, true);
          public          postgres    false    233            Q           0    0    rating_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rating_id_seq', 1, false);
          public          postgres    false    239            R           0    0    stats_stat_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.stats_stat_id_seq', 1206, true);
          public          postgres    false    229            S           0    0    tokens_token_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tokens_token_id_seq', 7, true);
          public          postgres    false    217            T           0    0    type_type_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.type_type_id_seq', 18, true);
          public          postgres    false    219            U           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);
          public          postgres    false    215            k           2606    74732    abilities abilities_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.abilities
    ADD CONSTRAINT abilities_pk PRIMARY KEY (ability_id);
 @   ALTER TABLE ONLY public.abilities DROP CONSTRAINT abilities_pk;
       public            postgres    false    222            m           2606    74680    categories categories_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pk PRIMARY KEY (category_id);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pk;
       public            postgres    false    224            o           2606    74687    evolutions evolutions_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.evolutions
    ADD CONSTRAINT evolutions_pk PRIMARY KEY (evolution_id);
 B   ALTER TABLE ONLY public.evolutions DROP CONSTRAINT evolutions_pk;
       public            postgres    false    226            q           2606    74694    genders genders_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_pk PRIMARY KEY (gender_id);
 <   ALTER TABLE ONLY public.genders DROP CONSTRAINT genders_pk;
       public            postgres    false    228            {           2606    74739 (   pokemons_abilities pokemons_abilities_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.pokemons_abilities
    ADD CONSTRAINT pokemons_abilities_pk PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pokemons_abilities DROP CONSTRAINT pokemons_abilities_pk;
       public            postgres    false    236            }           2606    74775 $   pokemons_genders pokemons_genders_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.pokemons_genders
    ADD CONSTRAINT pokemons_genders_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.pokemons_genders DROP CONSTRAINT pokemons_genders_pk;
       public            postgres    false    238            u           2606    74708    pokemons pokemons_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_pk PRIMARY KEY (pokemon_id);
 >   ALTER TABLE ONLY public.pokemons DROP CONSTRAINT pokemons_pk;
       public            postgres    false    232            y           2606    74720     pokemons_types pokemons_types_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.pokemons_types DROP CONSTRAINT pokemons_types_pk;
       public            postgres    false    234            w           2606    74978    pokemons pokemons_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_unique UNIQUE (stat_id);
 B   ALTER TABLE ONLY public.pokemons DROP CONSTRAINT pokemons_unique;
       public            postgres    false    232                       2606    75374    rating rating_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pk;
       public            postgres    false    240            s           2606    74701    stats stats_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pk PRIMARY KEY (stat_id);
 8   ALTER TABLE ONLY public.stats DROP CONSTRAINT stats_pk;
       public            postgres    false    230            g           2606    74647    tokens tokens_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pk PRIMARY KEY (token_id);
 :   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pk;
       public            postgres    false    218            i           2606    74659    type type_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pk PRIMARY KEY (type_id);
 6   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pk;
       public            postgres    false    220            e           2606    74640    users users_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public            postgres    false    216            �           2606    74745 2   pokemons_abilities pokemons_abilities_abilities_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons_abilities
    ADD CONSTRAINT pokemons_abilities_abilities_fk FOREIGN KEY (ability_id) REFERENCES public.abilities(ability_id);
 \   ALTER TABLE ONLY public.pokemons_abilities DROP CONSTRAINT pokemons_abilities_abilities_fk;
       public          postgres    false    4715    236    222            �           2606    74740 1   pokemons_abilities pokemons_abilities_pokemons_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons_abilities
    ADD CONSTRAINT pokemons_abilities_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);
 [   ALTER TABLE ONLY public.pokemons_abilities DROP CONSTRAINT pokemons_abilities_pokemons_fk;
       public          postgres    false    4725    236    232            �           2606    74786    pokemons pokemons_categories_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_categories_fk FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 I   ALTER TABLE ONLY public.pokemons DROP CONSTRAINT pokemons_categories_fk;
       public          postgres    false    224    4717    232            �           2606    74709    pokemons pokemons_evolutions_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_evolutions_fk FOREIGN KEY (evolution_id) REFERENCES public.evolutions(evolution_id);
 I   ALTER TABLE ONLY public.pokemons DROP CONSTRAINT pokemons_evolutions_fk;
       public          postgres    false    4719    226    232            �           2606    74781 ,   pokemons_genders pokemons_genders_genders_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons_genders
    ADD CONSTRAINT pokemons_genders_genders_fk FOREIGN KEY (gender_id) REFERENCES public.genders(gender_id);
 V   ALTER TABLE ONLY public.pokemons_genders DROP CONSTRAINT pokemons_genders_genders_fk;
       public          postgres    false    228    4721    238            �           2606    74776 -   pokemons_genders pokemons_genders_pokemons_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons_genders
    ADD CONSTRAINT pokemons_genders_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);
 W   ALTER TABLE ONLY public.pokemons_genders DROP CONSTRAINT pokemons_genders_pokemons_fk;
       public          postgres    false    4725    238    232            �           2606    74972    pokemons pokemons_stats_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_stats_fk FOREIGN KEY (stat_id) REFERENCES public.stats(stat_id);
 D   ALTER TABLE ONLY public.pokemons DROP CONSTRAINT pokemons_stats_fk;
       public          postgres    false    230    4723    232            �           2606    74726 )   pokemons_types pokemons_types_pokemons_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);
 S   ALTER TABLE ONLY public.pokemons_types DROP CONSTRAINT pokemons_types_pokemons_fk;
       public          postgres    false    4725    232    234            �           2606    74721 %   pokemons_types pokemons_types_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_type_fk FOREIGN KEY (type_id) REFERENCES public.type(type_id);
 O   ALTER TABLE ONLY public.pokemons_types DROP CONSTRAINT pokemons_types_type_fk;
       public          postgres    false    4713    220    234            �           2606    75380    rating rating_pokemons_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);
 C   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pokemons_fk;
       public          postgres    false    4725    232    240            �           2606    75375    rating rating_users_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_users_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_users_fk;
       public          postgres    false    4709    240    216            �           2606    74648    tokens tokens_users_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_users_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_users_fk;
       public          postgres    false    218    216    4709            "      x��\�v�H�]���>�XN���-ٮ򠶜�s��&�H� 2 ��W�!����R_�����D�Rfo,��Ë7�7�Bq�Ȣ�+��� n�2eP�.Pe���j��R�TP
��E$.�ѩ���V��>�f'����ʃ����M���/��r])��������첪d|�L��,�֙.�����^���Km��y|/�S��6`��z�⊷�W�Z��/��2��ұ�������N�*c�����g�gn۩,������q�I��7���@��J�Ӯd�dj78wtw[�����[�VY�~�+^�����fN�沢�J%vk�o���E�T�Lׯ_,0=VӅ�t��;���&ֹzY������^�K�2|3��F=����A�6�.X�J� �_�#��&�&u�΋"��[P�t���>��T�N�)��+�����Ҳ�
��*���/#��:� Re�%S�M�[��f�2C�z�՘;���f��;�w��!�62�2Jދ�*�1��dH�[i�/x��͡'��D\�$x�]ِʠS
Z����-�N14M�U�[��V<��'�/�y�58�k��&߃r�
2s_��7{���D�e���5���l�D�
�Rķ��jLa9�U�FꬬzrH,�Wy�H@V���V-/���;���~�N�cio��p�A2u�WJ&�\_k�y��{v�M_�}��*� �Q$�ш��VY�GZY�Ԭ���!紏���(o�J��@|*�+�~L��C�oJe�=����>�WQ$��&�U����u�u'�H���V�1�X\�����mT� b��x�ᐼ:MU����sK���$�+���h*�l���ؚű�rCҘ$�,Όs�y�ʘ	M�ge�S	�g��P�@�l�eb��9��l�`�mw�/��O��32��5�M���$���!s=8v�a	:��y��1�s�xc�}�z�i���N�� ��0����!�"Y�:R@���?�T+0(�8j�鶘����~��SF��YJ�(^h�nYe2ҚC�z�������F�9�R��xL���?(q��� �y\��d.�(�\�����k���A��c�D�1Lk���*�D�<���E�$��2w+�d�!)u�ot��|���'���u�_�*������r5@䰾4�Q�o!��,M6'��ܬ���2�W�z���e���n�{�!`5��o�'�Q|�U{�+ HV__�I%�THh�������8ޗ��IHӔ�k�'y]�̶����/��]��U��h��ېq�5$�i0!v�S��UͰ�cB^HP[N��"�A1u\ц�əL@�Ū��V[��f�T���'9<��c��.��_�d�������-1�[�p�����'Y�s�t[w11�����%' VY��%�h	t8��?����I+	�'"��ߊU��`�^gI��� :�6��a��9A��$W�x�Ŷ�R���&�)�[-����[]nj�E\>�:!\I(�/�,S�02�Js� x���{���������+� HFn�!���0��=�6�4�{X��`0=���X��y��B� ���Sl0��-G�@���wp�J�T�RcQ��m^��K�ƻb�Ӆ��l��&�@�ql�Z������dK"�._Ӕ�w�.�*X�҂w�,w�0�-#q���4�i C�,ln�I(�AtT��1~�Y�
r���6��c'���Ͱo��g/a�9s �b�_Btj�.�2䴙�=U��Y�^gcq�[�n���U}�� �r�U�
e�K�]�1�s)�7������հ��VY������ہ��?@7V�6w��gڻ�L���^�1�w,u�̅u��A��s67)�'� �]�
:Ћ�A� r�(o��t�o�����lITP¸�Ce�|���@�����#�3���uwQ�$�Q�g/RQ(mv e�)]��Xmr�jȲ��`�a�z�>��2}p:�*C���.q��68'&��\�࡬8ڪ|�U�W�����)��d���wO��e[O�)������]-aMB��e�]��3^�-5!|g��p�`���!I�I h*��_��s�S����#`(9J�L[�wh�;�)�;M�n�����bD$2ӈ���N+�Іc3R2������]��]ZH<��,Ρ�>LPl�6��]�A�����]pbw�w�:s�'��٘ŘƫsJ�ZM�hSi2L2�$Q���׎�G�/C�������=�g����f�'YL��������ţ��p&�G�Ȁ�qﱘ�6���1�v�W�:�`3t�:e��J^��^�W��LL�\'��sBp�>��)���ߩ���H����zv�6�ά�����%$���㭑�q$(�(&�%��.C�.�R8�lC�Ǜ�\� y�
����j�@��`�K�p���BP[�`�"{8�R���x��ۆ���|I��j�H؄%+'4�%D�+�H�Zw:4��)�<��j@�@�$9���L������!���d�.Lɞ.�sP���B�"����i�מ��S�\����Vޓ����q��6����d1�[��1���h��%���kg2�͜��=�A���Ie��r oe�uI�\�r�ˀ��)��Lg�;[8���.����Ԏ���d�M鬭�)q|G�&���Q�B����� �	GS&�� U�BÜ�h&>�im�NݫK��J����t��{�&+��L��k+V((�瀋}	OHi�.Hd= pD�,��d�|��U�6,�'�GKP����8�9Z��Me/}-c{��H|�ր��W�<� ��XI�b�� ��X�:�%.�/u�C��8�YN8��"�)n�.�$�]��2�As3-��<�p]�����<@{����SlT��%�ݡ�n�}Bn�R_I�*����;����%-@ ҹ%���DG��X���mAf!���Z%^F�)�&x��H'tå���z�.wLH4��y�7_V5dvh�&�{B�QɵC��z��aG꬐M"c�:�Q�Xc\�1�qЫ�Dc�Q��ɟJ��f�ܛcN45%��q��OFS;�,e�5O(㱷  �S��"��u@ކ���VCOu,�M ODs��`[K��nƝcw���aJ�n����!�_r�m_����3t���ǖ��7*�Kʋr�b%=c��ɓ~mn<�����YP��׊h�|;[������t-�Xd`t�}���)'
��]Xu�i9
/��f5���ċUk�[Z-�n�_2|4G�6��]��y8�X:�Ќ;銂g���ѫ����O�6S�+�ZZN��e;�*cYX�:��0��R�Ztr�gaj8��Op��GI�
�|ʈI��2��Ӳ#КXS��2��N~z�O�'w�0�/�'���Z;@�?JU>�	'#�d	V%��a�1��R��A��A�K�]��S[}&{�ĲMQ<g��nKL��BZ
��X��8m7W�R���(�)�ª��'V>�&���i떮ZFD�R8�'�5;��`-�@Bs
��OП��+W� 8gN����Ѷ	�	:�EP��Lb���42�WC*��_*:�;��ckK����VϨ{f�.��@&��%+� ��ӄ���d4|i���}y���8Hl��-��� �V�vGy�ښ�T��O�'R��!�w�2J{�uR�&g�f� J���8������ґk�N�Ϙ~h�8c>8��QvҧD?�Umr�����5���YΠ�r�7S����,��ߢ�MJ��V��T|Ν���ڨ�9��6�~:�G�3�g���|��{�����]�T8��/�T?P�����Q�R�
[��B|�=�
����f�9Vb�E4K�r��i��%S�D��\J�d* ��ė�d��q����p2���݂O'I{�"�"�e��� dy����_��C8S��df	]��|5Ԕ.��tU�p6�����맗{d�$=hr������M�-xNsl������Bo�X98���x�^ܞz8R�h[�lT�flZAp��H9e��ĭ�� �
  9E����,��Z�N�h�L[�ٓ�ӥz�?[`����e͖���_��p����U�.�A����'�]�k)��֯��󨙣.
le�*�\iZ�ri�v>��߸��Sg�2�o��A�xq>��`��K�)h��#%���v�)�������AkµsŨ�|�|�&�+�Q�\���E�=d�����%�M����iIF��_�&hl{b��f��԰wJ�N_Q�/{���l�<\�h�r���?Q�!�B��r=�X�Ŋֹ��@��'����F|�WB�Ř��򐁌��DQ��*�&�o=�w �H�a�ѭ2���3�w��d�<��'Jȁ�4�\@4���t|��q(I�g���m�O��3��bNz}�ܽL;����0���^��M�b!�������]A~�����V)*�|��c�N�Е~�zy�#А�l���g|�On��:�����}ˈ��o����u��rB��D\՛W�e\+��nm@�9��@!c��!�N�e7)z��^�؟2�Dw�1�I���m�׹N[|��Q�e�F�'�݇�_��so>ڤj��`�����Dd��P�˅����* ���W��啖� S�6�
��:�Ȏg�V0��+!��F���mw&v�T��Q(Hg��M���"�C�%�a��}�c_4��p���sI�6詛^�F�:.��
��ya&� w+�ó�T~4��;�9�qz+SIo�_��#�c]�"�,�׺�>�9;��[ʻBWm���X�L4Z8B�b��E!�d�ՙ�9E���e<|z���6��o8���4��D��F�^ @�����y�}^ؾ�[���?t��{�^,��E��d�YmR,�<Q�����Ԙ��S��v�ԯ�*py.]"�5���7wtyw�[��kcҬ��*�CXz�C��m�h��W��ןd�`~������xQ8�f����S>���¹��&7�<!i�Q��ݐY�z�)u�6Y�(�Pm�K��G���Z��l�d�V�sa�p�y�ީ	�d5\:�5-Q(�q�_}XE4�^𶦢L���-j��	��b6��ii���\?�lE+�+R�X�a�1���Sl�Qg���������6*PRF��;� ��B�Jp�m 7�3�8Ƨ�����"H������C�^�6� .�.8F�{Z�.'ӻDʰ�7p�k���.3��ߥ��c�!��1�%O�qp�C���U�6��Y�;T��4CD3����?%DcHL^�p���3�Z�Bch����Xq�Ii�����f�?T�{,; �i���3�6ޫ�-���v<q�uNMش�Ή4M��*6�8H�'Lr�\0���g�h�$b��{������t�ɈFR���)	G�=�cW�!}4	9��g5�w
y�$��L��~�^v�}�R\�sM�L��A��%�O�H�����_CP{P��'�E����ԵS>�\�L��!(ng4�kNP��R٨��_;,��u�Z�S� iB���\���\�xM�oB�C7��\q�J;,I�(�F n��"�S����>���$G�I�ˌ�+e+�УvB�~�M!A��S���X���ݨ����{4�qJ�c���Ӿ���ԋ-'=���f�cKZ������=�+_'S�4ф&����S����^+����ԯ��>hva�H���O�$�2�_1��ҵ~׼�a(�: !�nOOiZQE����)����D���!��D����+j��=	��8�Bި�d��/0g��n����3��vO��h0s)�h!<��u�������\��S훂�=�G�a������'7>�ن��r*b���m^5�M,1������Հͦ@G�6���V`�zA� ڨ�l�T���Gܽ�A�*E�'�F���0�r[P��;�ӡ-���ﳅ'�F�o��/�D諒J$7C�3[2{�P�L�%]��kK[��5�h>�	��3E�h�\r����Ŷg���=���7�M�o�9�o�I,YqE�P��zs*?�ף�3�RFa��^���������������P�Cu�QzFe��4ƛ^�3�=M U���Y��7�6��덶���8����+��q6��/���je`4�b~��'AYPo_�J��(��r���^�9�r+[�:�8 �/Id�a�= �}y�H-FV�uɽ�7N�[�hH��X�D����JV�f<��Ԓo������&�J�L��8"S`��^��UXLį��[j{N|#G�˥�/C��T��DeGM��o��iG��pi�A|tO��Wҍ�s*�z{�3��b����-Tw$�=��0ӷ�:d��w��b!~��U��_x��X,�o:ƭ8���O�9_w���kɗ#��)�������2������ܬ���(�2���8����"E���BB���~
s9�����O`���Q^�+����A����%Tc��l	���S���-Ho�el��I��l/�:������uA[�B�s~\�[膆�>.��h�RK��X.@��W�޿��f�֕t�E�M�\��m̼\��[z$����v�yo5��w�+������l�x��_��; �YO1���o��(���0���_5�̓olN��'S���T�I+��Rp<�x��{�U�8_�����?�3M<g�?RP��O[ ��)��.��S��S�����ǣ� �D��'�4[tk�[<� \���/^�T���      $      x�=��v�ʲ���S�Y��\f���N؆��Ǻ�@O����y����"W�/K���꯫[��>��j[Tţϛ���d��,�K��{>Q6�|Z��!�G��}�h�э��f�\�qqnfU��f��|.���n\4���tEM�A��jM��o_�_���4��b���\7�����-*��y�4�|��&��4���z_�ф8�����eJ�5E9���^��X���x�E1�t]�9(��8����T��,��]}*���b|�����6�q����g�������b}��~�us��	&�$���_k�$��CQ�(IMռ>�0+����C�+JrdS�5��xz8�a���_�nW�u��m���u��Q��r2��c�&���T��)ş���ʹ�C��S���O��S<�=}׶Qv�غ(���-��'3���%B��x�?�f?)���luX���Zo�Q65�g���l&���M�Q&��q.ߝ�r�}/JB�qY��x�(OF!�<Ɛy&I��y0ƫ����|*�cf�R �Y�O�h����tq:�]��K�9��Tn��MqZ��x�5��_p]Wn�͹��H�Ͼ�z��4�nM�]��qәYۂ���e��;&��_�>�{���ᷩ+"�%�5�!���;r}�1�f8��k�⡩y��*����m4�ioø9h
�H�z3i3�y_��y�����s4�w��ڑ/�tt[l:f�<�*O�<���M󩬊�ϰ�kW�fw�g��)����?���"c�`1��l�c�'7�������]�������ƭ����;�
�$38L�F��I�+��7�",�a�����C78t[�sx�TB7�d��E���K^�w��0t[�����m��@�mM�X��7u��,�M�M��m��y���}5&f�
�����)pt�/�	<IH��Pt�I�m�5���w$rr[��P�3M�N�n\�2'����Q_�1E��ʙR gR~���$Q��B������֌���zAYC��za��ɠ?��HU�ҁ����֝0�q��H,�$�a�M��AƖ�Qz��Xv�7�-����)�����N�!�	�d�R�� b2*�ncwE_�(�؝�8�n���<6D!�A.a��ݹR��d�v�Z�t��ޠc�s��.��5=C�\�mw�ݖ�	`����~nw~��( ۝o!�� n�͡h�4�I�s��R(���^�.�����w���p���ǵ��Ӻ::fd���Ągw�ٮ�)v�xoo�K�<L��G�FN$?*ҳ�5��a	� ��Ʀ!|�cuo-6w�����B�:��(���}��?�v�2r��x���� ��KRu��&��^���A$W���X�Z ���M �lqu갗g�UT�N��ރ2U#s�U�=��m��OEU؈�`�����a5��0�w��;���0׺� �-E�k�����}ӟ����^����}qk�!1�{��C���7��b��/e&��~�� <۳�/\��52=8g]ÿ߸P	PF�@��^� ��J`0H%wM�����P��������xS���E]��CE��Qe����n��c�� űBywa5�cE�k�xp�P>�"ND ��,0|(k��P�� �tx ��и��`�?ຼl��4���O�ć�Y��֡�!J,�!�i
J�m��k � �=� U�����=���[j�5rj��2��T�˪�b��T̶��|�	C@K��aЯ/uG��� m�ęb�)�c(�X4�&��ӫfHF�=:�{t�k���&�:�^�ݥU���ǃ	:1�j#��H�Ux
ץa�L~�ZZ�����.|X���J���9��=������=6,}!�A����k�d��K�_ÅPfƐ1�a��G�%�j*�2�o�7b������> �cS�k_�X��^&������&��'M_6�	>��>���q �&:���3���,>1F�u�l��AuT)��c�y�X*$7p�~�|8+Hc���4ʀ���*b��ֲBz*]c��5��뱹l�ܱ]·���C�x����% ���Q�%@�b��j��u�-{6[�����/�'����@|�.�c�DϥO� $>]�U��1}���F�o�n}%����4J>xٙl����ؗ0����$6_h$�QZ�x���/�U��	h�R��5���N���[{0r����DB�����K�c���|�]N ��aC:��8���g�#�h"dqM�yۻE�NtC�x ȯ$�ŦO��H #��ol�ꘉX��WjS6� �k�f���9����_�|�������ut���oEh)��.�W�@�͇ZC� �o�O@�7o��dt�)���1���\(���3SD�Aq��� C�`�g� �>�{��a�����ﹰkS3��I��P�i1�{vŎ=�����"�E��u�	 |�6	>�o~�6��gV�������=+�n�5�^�S=�oo'	�	�{֊h���=���}L��tYx�{��x:�=eg'��
g)	�3e��L|w�d	��nu�1jŊ%��50H@�s�o�OUh2S��ӓ��La\��jH �s_�@����B� �^��ߨ]��l�jh�����.����Խ�@�%�cX�RT�ܗ�ܽh�!� �L�ֽ�Cz����]A~n:�J짺�
q�b���I���ض#�~:^JA��	r�pS=���^�[�d&��)���>�/�������IW񬭀w�(�|/�3������L
�^X1<�^jm�RX'���L���)����ti6
�\
�^V��R��җ��t{)Q����EC��������!���)lC�١vA����5�Ja�$U@
߾�5o��a�C��w���uOi������[����J)h��B�TJڏ=����	H3��$N�ۏR�ht*���������bͰte>��jOA���z����B�tl[h?��ۂT��jt[@�-�D
�d�6��lMa܂� س�"���1�V��-\��5�`N��7~�UL
����)h[�l��pO�)l`S(���d��lOt%�[�lI��e��0@'�R�-X�C��¹E��刐@�U:�5�ʐ;`o�*$S�7Ȑ{�o���-��(��oQ�G�S��o��7�oQ��� �*���+6G����W[M��㍑�heDS3}��Ӡ�p���>tOG��E��-耣"x��	�n�#�t��E����LF���)�{-�>D��{
�^I��f:�{eM�FQ
�^�w��ƽ����X���~��ސ�I$p��-��u��]�zR �*B��@
�^un���	n
�d�U9F\3���� ��2�fj����[P��f ��2�f�5S3�Z��O��aha��ϾA�N28���vZ28������ePnY�u��b�+�E�Q�`�iZtF�A�B�%+�=7�::y��a5n�0.���aŲtz����	.!2h�5�C��	כF;Jۚd���F��rN���-]��jճ�N�	g��3�oz;o�`�.�5~����:�@_
�I���}��e��#�{[�3�o�h)���"څ�C�ZD��J2K-ՈY�8hk�^,�R���TA�:ږ*��׺E1|�����@?AUq��
X�չ8d��{a���=�!���b�S�D~hࡩ�.YIK������6|\ oE����t;�� �p!|��ˣ�AB�G� ����e��"5��<)�K!ٞ!*i;��@!��]c�'}gz���� yK��!���9<	��g?)���	���T��-��z׍Wԗ���pY��W��^�2�o:�Ϡ �;؉g	�gU�,�R��M�c�Igta���C�t'<Ĭl��@��e��dp1h�,3��J�^=E{6�oV�뷵l~cv^�犡���K�s���|du�kU2 �ȥ�[ؤ��Z:�Me$%�4)����%�S e�ur�o�L�>bWJ �C������ֹ!�E�ڙ#ӫ��nъ����u��'��I}��L�v� zXp�s�2.?
+8s w  ȸ��Nms ��C��>*�*Ҩ����������Ӻ.1�{��������z��5t�n=�+zE�w��H;|�d��ȕ)"��+�S'p9|\4kr�h�uu�ad���	BeɁ�m|x��j���#�+��zVH	��xՐ�#WJ.&9��>GBHS���A��P��0�$��J�L�~-6�Q'��B���� �Hz.\�U�˕�	,B�Q�\�׾ ��L?4�i-W 'v��4�s�i�����E&�M}e�<��fP���s��+�J9�D�[~� ��{��8�xÞ/�����U�2�sE�]�5�� >�O:���Mɥj2�����Es���(Y���7�nulk����O���l�ӯ�p���Ο~��3�����;�?-���OOѮ���?�rST5�dt=���Jˡ	�s�����p�j�|���	<��%�,o!(+i���~���������?%��� Ԛ<�@�T��$_�@O��!�)�r��OS���&��EM_��(h@}S����7��頝fC%�� ��
�� �+3�.�<��|���G@NM�m3 BP$�P�%ԞS ��4���7��}� ���JF�˂����t����ӂ����(��1�"      &      x�3�4�2�4�2�4����� A      (      x�3估�ˈ���=... '�D      ,      x���Ys�F�.|M�
�|q�� v��no3^_����q"	Q�$Z����y2+�����a[�T�PYKfVVV���nlV��z�׹@��>�V�*+�U�@��~_'�( ���U\��4�V_o6m�FTS���:u�p&�<�VYT��nwݩoNW7]�o���}���U����%U�HW��^Ўöٜ�٤j����+��UU��w�q8���x�� ��ҤXUJw�a/�c~?��i���(F��yl>7�9���P;*^Gq�fl�]��R��;"�C���(N@��p�m����� �m@��t'�ke��y��)WEq]x1Ň��bigV�O�n7�!�����|.�4kg��Y�V��v�N[~W�J�q�`�[Sk�bť��m��'��k/��R�*���Ku�v��˒���r����ڊ�Ҍ�S�H���\��2� ����h���|Pv���X��d%����ܓ��%q��`������L̩eM�uJ(�d��$J\����kR0��Xz+I���Gs�6͹�^�4­|Xp�FI�(xn΍����Z#�� JQ₽i����>��\��_,���(�9.J�_$~��*J\�N�����+V��Tl�1��:J�5{��7�+i�#]Q�x�׫t����F:<Y� BSR�<i�����F��b�ï9���o?��t:IkcYe�q�Y��r|�@�8�V�,AcU���<JѬá{����j�-1�UX��(����� �TIX�"L0�鴌R�x�j3d*p�	���UZEi-�� +�|���6����2t�x7<b��|E�L#�g`��c#�U�3ƾ��%���Ms�t+VX��0���b��N�a 9�4I�g�(��M?m�%�����VYa�&�=�gʞ(�2L������sw�|��#];l����(��0|�0��e>���*��\�>����%fɜ�����5��
i� �ؾ�8�r5�~;��Uh��c�}4��?Ӯ�*��Xa��i��Ǉ=��ө��S���ږ��,�:¤��M��y��#֩�0�2�_g��?�2Bc�>=|���b$���=y}��^�UDa�vR5~1�W[c*��5�ÈQ�p	�Ҫp���ba�}��f'��:7ȥ�.��}�IVG, ����D�*��@gn���)��TTPv҈s��4v}/�.1��pQ���(V�4;�^N|���'��"���Mӟ�g�	;Ma���K�2B��4؟έ�[��	�>�������M�ʊX��z���ʵ��f�.��!�[���\Ge�i3�P����-�iQR{Xn�`�/��$�h_��킿\K#�J�W��S����c��';�r��+���u�"*������������W%4]
�t�.W��8�E�5~��J��i����4�ȇ����e����m�e#�ܭaRƤ)�B��m8Q'���a��ժZGUL�t���g������u��⨂��v+c��I�Y��Q%Qq�m���E�F�mp���iT����W݀��¾Ĕ�*�*���\\��t�X��UU�P��IL�l%d���;hUD�pI9�L�UZ l� /,�{��	�i@[a���:����GƖ=��LUЖ�lU��]�m��^'�:@�4ī:���}�d��+��Ũ^�I�|����+�J��
Zð��iT���f�B=�ePV�(_R�x�Y�*�y�N�T\q�p�v��"�KR>w��A�l[F,au�X���w�N$�I[S��&ѳ��ue_U�jZwkΟ{��0"+C�҈�X�}�ͱU{y�l��:�(P�Dm�"	��2�"k�t��7����m$64���8��4�p�5���a��o����O���q^�-�)����Զ��'3Ɔ'D Έ3꛱��a�|��d�(�e��Dȝ�?��>�ȋ��ӯk� ��a��༤)MR��^5���V�B��iKsB���Z�I�Ȁ�Y�{�Ȕ2�t(���m���0|c�s{��p��'�Hb��*εK�ǘVo�/�>Q�Sw��>-�i��h!��'5��i��	�D��f1u�
Ԥ��R`�N)b���ӡe��Z�l��>p�3&���w��A��%�Q[�f��W�sP]���lmʕ���ŷA���Z�F���ea�(	,W�G���*��,Cl	���x?�����3�D�76}��4`�'�=�=�\���}�]�A�j�q�)��<ુ�������.�əQ �hw ]�c�^��m�Q�R�k�[�ykn�h�LW7���u���bI���F'�k��8ϲ�&���ѯaF�tC񫏧���z⠍ˊ�B�X��A���K?</kn0����(nF�X �"e��g<t�&��_���,�,�|l�����a��1�
s(��N�A��R]�፠u�e����*�*�#|�����iW4��YU���ng�eN��U���/U1�.��̲tQf��p�et#R��F����>e�Й%�R��}���]'��^%�,X"�BI9�۶oV\�뚮�������� �q�MN��#u��� ��gm���VT �� ۆ#�NH5ʰ���\�oPض�Dr�B�X��~�& �i�����E�w�ݏDUE��0�k��8�q.���f+�u�9�v��6dU���s3n�l��]P����s:s�wa���]�>��^o�a�������� գ�a��xβ�rQ��IN ��qNJ;��>xXR��UK�2��A�$	�s`��X���-")(��th��CP���i�	��H�x��%Q�+z6z\�>�{��]'�
�z\�ҵ��c3\�__���o�\'J���Z��ЋPA���G���D���f�+�5��g/��7�j3�+����xF�JH��a�q�̓���� ʤrL�y F�\a=o��Ōq��.����8�`*���]���s7�Ð�7�c;����	aky��ФA�оV{��Ng�1�9u7О�܋��I�+����[�M����lK�؛v�(d[=����o��`���0�c��$�7�{
`�fKѻ+���^�l���㰽c췠mOW#ntI��p�����߂��U�l�ҹ�rs���wCC����W�e�1\�4ٞa�ǰ��wM߅3���j@�[>�!���7���M'Y���z��}�M�40)��0j۠M��{<���}K7^}��Ra�CQx7�+G��f��#�C$\Q�#�`��[O�/�ڴ�rne�jA��>0�a��0�A:�"�
�4��3��((��C�u��J�/Q�fn(0����~h��aU����������8�6�~��f'��á�c������;��wcs7�C�<�[_ }���3�Z�c�ԇm�\ �H��8O��v�Z�׋����3�58�\[űb�Yk %`NIz�b93⺚Q6��<M��mO����9g�j��ɟ���<4�ITcw��6�y��=Y�̡�L�2�)��a�S9~�y9�5t=öM�d-���N�>h�҃�j,�6&�y��F��8�f�}u,�F\��Mw�(����n$� 8R0^�@@����[�|��^���)�ӂg��~�r�&�>�T ��Xa�'0��=oz*G�#p{�/1�D������?S�����9���PC�B#���<��&=5�3pf��cDI|�fl:+9�7#��2�|+�u֫��璇���i�2lÄ�<3ݾb2���UΨ�e�7��ڢ��8��{�6H��@D����z]͋�H�B0�G9���[�%�IӾy�E2-�g�[ dƬIX����T��կ�f>�9�O��n/i���U��o�M���gu^��p��}�
��ݶӉ����iUC�	����ZS�A7��}!�Ђ�S4��������TݱM�3[�m�i��g[�
��2�QU3[�wt0���pا4o���i�Oϧ����f��)�$%�.�^'1L{z�C߶�-��/TrA��M��ׁg�_�dI��MK���ض�/T��]� )�    �zک�1L<�mGH��sJ1?ك!���	�b =LQ�I�NM2l���� e�o�~Ogzz-��#ܔ��#�!��w͊'�49��ʕA��g@9l:���
/�4`�x��m�۵���Y��lF�w��q��m�~������v[�`���Pg�*�����a�Ŀ�{22��};l����i���5�"� L��#��M6���Q4�u��}�}4-���+���$g���y��DZ g3��q��B�O���������0���V�&d�k����EwÖ
Q�����qt���9�N���0��c.���0�A�a ��Qq�2�uD��`�
�8�n�*̠��5;2(�u�W4UC���m��#���L�����BN�0�uP��F�< ��ʃL�/vP�]8_-�G;�md0S�V���C'�OOD�M�V2���h���I4�\���+0BEж�p  [�9�`�'{����}8�u��fp��K�e����|^N8�IɎ�>��vvv�j�U F0�e���V<]2���b�%�v���?�حg�/�ܡa�'؎������a����������N�ǰ��b�H��a�;m���،�������M�۷��:<�ש>sݾ�r?+�J�`q���_�Z���b�W��lF\ԋ���i8u!p�2�+E�¼O`�;�!n���[�!�R�BXU"�C8�K�+9t(����Ӧ�'Um� ������	�ǫ_�C;kR��8}A�� ](R0�N@p�n�(^�k�2�����R�$!/��wm�@0󓊲>��Os���fs
U=D�>�ww���2�ӷh�T6\��k���<���0*�gZ�j0G��k?C�֏>5�5��!���u����!����ꀾ5��m*�	�P�ס{��L�,ѡ��{l'�g�[�;.��5��/��߶�A��Y�3�V��������vs�>��	��}F�+/a�����8v��n�ܐ����_����7;�,z��\���P�u*-o�(�U���~��s �k��\h��n�!tS�|	� ��@�J�P�]�њ�l��=Ȯ�q�4�9ϺoAר�o_�g? �^�u�hź{���e=ED��w�s�i�	�C�u���%�@8m��M/a	\Hf����c��w~��ؚ�w�}�Cq� ����&�o�%�0�$�+�y }`(DE�s˞c��zUSh�p-� 7����O�f���|�@y#
�nF䓰��tq�����5C��]�� �D������^��ӱ��:�2m�U�W!X�ߣ��'�T��� ���p��p�T/%�V0����ж��=o��֖�c�*n�F43�oۻF�%zBAw��4E�G,�G;V���s|w��[�aݮ9���V4=f���l�=hX�a���JeW�5Y�����v~�C�|0#LҨ��fM��ö;v�N�?H�C=��)���}n��H#' \%D�0�zʡ��A��[5F3,������V�P���*��U({hV���\���
R�ҭ��A>&�y�Ja��頹S.���I�`�b	�(���-E��������6��ې�Y3{����/�l��Y-�0�$�$NU���`����lN3~�@D,ǚ1�Ɍ��+y2!dJ��ō�����z ٱ�;�%����Y0�����ox>�jF�N�Y	�9���^О2�=�1��{��؞�^V� a|⌴}K�����c�)Vؗ�Ga8�P��]h�1�î�c^�tN!��G�]!�4(�A�KDE�]#�m�4��Q����	�$^9�n��1��<�è�3!�1��|H���m��7,r!�_��Ľ�>N!��v3l���Uۘł.p�ۧ�~&����`&t�il�ܖS7�MX�i��j��^�ĳ��t�28��y��x%��/�(S/��|	�P6��.��r��˾�sEAN��/��l����}�8�@�`q;�\6���,��h-�%���@�	��Q-66J�s�߇��9�
esQE[c�<a�{�?�c��+M%O���l���,ȫ�~x��x���@�]�c1���e��Nܑժ�_�~��3I�E#Fw\?��k��ea|++�rs���)�`]�<�f�X�1R.�ȇ��̦�txyр5Ց�[��Q�����7򳹬�^T�66*�$��w���nq|1���;��W�d���2�����-1"J��O�����A3ζܚc��ݰ塝��¯(�Wb)!vW��a�U��v�#���+�xܶir��p��(��`��5�u ڮa`��e��)bk��+6�t��T�����^Ab��?����M�\.y��MU	���t�vM��^+�έ����i\�E]���
&0B,ك(I�:µ�
Q������0������(����Ӿ;�\���H�M�`|�����=S����agqw�v��o�t�tl\��~�C76���7-(k$7X�)�~��ݡ����5�G���|{A�U\V��S�sE�Q0��΄bYϒzYD�u�^�Y'��kC���l`-I��)�	U��)㔋��.�������I��zF���PN�k��T��3�W(Ν��2!v:y]��wJ�:�-��V/}T�8�|))�����L���^�`��$���D���h��8����n�x�r�mL!wr�����C�a�a S6XY���m��s�@�X�5`c%�i�h�:�!l*���m	
���s`X8j�]�]�f���yv��W����1������zؒ�.��a;6�O���i������aA�?� �J!���6�2w��t���V�陌������tO����Bv#����������,[`|m�hp�B��@��&厡˵p�v���AG�)�y��9�¥��:�*��X�۫�!�c���4kؑP<�a2Wq���U����x3��%ɖuL�v�fp\Vᴋ* 3���$vM��xI��M#^�M0?�9�t���9�C.�3�V���0�����tz��@��n���TH"U��fTgE�;l㡐�`�Ib��F��e��$�DH�5�w^߸�
���V�C����e���-��thFq����P+�W�������q�\^wNѵ);r��
�@���
�M�ɀ5��Ͻ^�J�V�{<Ȋ��A0O�ié�akn�&���k���őr�}G�pt����n'-(egU�rz��:�f�#�@a�V�4�sBOc*LDN
ڈ�Ux�H��[�����a�c��:K@���f����k��Q.|s_d`�!|����ҏ0����p�|�*�ng���1[�@U��9Ⳟխ���fh=o�c���3�n�s�6�p�	���͹=�̝���&0&$�Z���T)�5��,GG�����x�j�T���N����Ǟ�icwA(g�XW����1����\�C�u~�[�Y1����2\:�z�[ s����4��q�b�!F�(ej�G�T	1�C�w�@�91���X!���Fη$�,�VqN�#�HH�Li�� 
,g?v�#6����\�g�M��\�E�L�O����9��J^ȣ`E�I="!#�$*C߾��`*�b..�K�c��l/��?�E�\�Ջ@�ҋ��r([{��-X�V���M�`D��*��iv=�Pn�9�0u�گ��%cԮ�F�\6s�P��m��zj�z�3s+�$owƘjO���<u���>�rn��`ÁE1J���M��FN��?l���D�E`��9ɍɚwü���{�n�
:�����C���J����i����IZ�C�ϡ?�z%�#nڝ̪��Q����a��Q�?s���AI	ahT�e�)��u�,7�m���E�q�E�Ѩ����d�s]��(FBeľJ�vH@Y��W�|��y8ujF�B�媂�+4���8��FAq�4�5�M��YR�݅�l�yi$�
ӱ@��pl���{��p�+�[C�r�f�� v\-������څ|�:    �XW\J��WI��������6ɝ��Ф6l�G���,Mq��/������VpZ\C45�
m&w�W�1f�75��Δtbt�n�3�����=��W�Fi���ld���g,?r���m2D�#��\`ғԆ��J�K�����������!8CC/���k�w"f4��n�?�M���T����R3�HP������ц�!�������ɨA �.����9{������Z�͕��YJx\��-�xm�K��V�_^��"����ជۖ�i��ƥ�f��\���<]+W�}d�
p����~���ø�ʈ���1��o0~���VQK3���H�w��!&����E��)��>��zPRqzIA^���D��s�M�x�)[��D�Z
���UE�׌���.�@fXg��/z�$�r���Μ�������<n�+��[�]���"����+*��j�]��b홫?��ӭ��´H�]��������$'_j���LUE���vbB�_�����<s;�l�A1��0����*���v9���w� vh���8��:�5�oF�vv�J@���Ѕ3��`��q�&t�����{>�"�����6_�?�Q��u�RJP���nrR kߚi� ��?5w�Y/�Hx���M��`c�S�6���3D��q:4a����y����'H�9=r�W��3�)z3M@��.������=��$,%���`���.Y19���Om�m��?���O!��.y��^Pg'kAoB����'��[#Qg�����������w�9�8l����`���Z6a��CpEy�����h�i,9KH ��O�ȫ`!�@`�\�3t=V֟�&\�c�t���F���?�ˏ�-���� ��Ǻ5�m�6�}H4����p��I�A����va�g�qy۪xFx_�}�kt�O����g1ȝl#:
�O�C�n$!���ɨ�G9��,=����>@[@�N�=��s����Ĩ�遮6��Rȼx5yȅB�OA�%���2���m���OV��dv:�uG���]ґ��a��2�#����N�a�gp]@�3.|_�H����"?Mw��vu�@ho�&$�C"��n��a(�&aoA$�O�-��+�A4�?7�"�8��U��
�=>�g���L�-t��@��@]}+�1�0���H&�<l��y���.�^P��^���`%�86'�|A�.(��(
PFl���Af�1u1c ��Rwn�-��a[�ג����5��ohV�؅HQe8�=���)Ai�{Q�t0�|���)cR>6�ó��Zy�>c��@*l>��:W��p��ń���s��)�ROWؖ�k`�x��3�I�m��Y�L���b��P"��N���e�vH ���]{������l	$���3�S{�S�k�LP����z��|0'��K��}�ќ��;z�5ר��p��8v�����Ы��N��Q����w>��6��ݘ|�[�� <�oB�ll��S�f"^��yx�>�y ��cA����y�ߍ!D>D`QʟE��`�y87�,^(ds�$�;���#���D�	�u�Ё0�~�6�^ע�i��4O�������f�5�)�X��8��
�\���]�{ot�
�<���eX�?O����휃64S2�=K,hI����M(�����������_0�^i:�����mw��{��W+�I1xk��n�9R�'�#Z�D< ~l�u�I�N+6�yNїϛ�0��_����l@<�w��fS�R.��-������/+���$�����ӹ�����x��+��h��f׋��/,�!�rK�l�5�* �	G��Qvj�t�0C�iv�+��'S�f/�d���"Cx��v��a��=UĚAj��
M�����bv�nߨ�eʺ�đ�G`c"�a<��jFX7����w�vߝ�����bZX���	�,{N�v�>J��q���2[h�U�c�4��''97gܨ��¶�U�������}��!m�f��٭�������`�R6ݚ�i�mw7}��
i�e��+�7fyщ7W6���(��*^������7�d�e��sH!��<�=ǹ�m:/�2���|�����B�;��	$��效XW!�|��`�+�D��n1~:T��;��+T�>�70���%���ի����
���I���TJ��u����+L��Axe� E��9M`�2�/�i��/�/���%�2�/�3�����o�]�|5�c�
�'���^�mg�TC-�)���ck��ҷ���� ��~�ܻ&}��ͮ5��W���_�rq��5A���FNMfH�0Ig��Rq�?�9br����`��S"q'��o�v*$�������ڊ�x2��h����(�Л�z�T�-9��A�|(��i����V���u�z�c�C,�)����_z�dA4C�:y�KC���<�s� �}̙�K��s�v��1"�sN�������<^t{G�������c󟉙n�=���K6%��.�u��(^�q�U�bE��9�a�N�Fg���	��Y1e�ޖ>�p��(��!��d��f�c���G��e��,e>'������T�/�n��!���y��6�I׹�ƈ�	����ś�+3���l��+�9��L�{8��	0��@f�Ӎ���	k��S+W�$ӵ����0�fJX&���2R�:�2!_�a�٩�k��+/�\/0&����:b��w�$ƃ�%oy��=a�U�ʔ��L�vrB�Ќ�0�&s0��v�z9��$��2a#sjB�7��9�3 
�W|��y&��'&���)�L���ֱ��K�=����|n���*��00�,����fr���O��Ɠ�	�JII6���,�`r�m�k�Q�u���N���1��P,Q���͋i�b���2�7�+rG�2Yq1�#�>f�AR�Zn�}$�3!0������i�#܍ǌQr�j�jq�2�З���LH��0�����ԝ�$���f�0+�4n���20�\UL7!�7��5�	skd�o�B���z�b�
�~�CN
.ɵ!;f�%g��L���%fW՘	:J��2[5��|�h�̹��W������_ە��18�f�������J$�	Z�$S�1�.7P"�����pd����0&&^	Z�
m:_ǽҿ��'��a8��I���;��S�b*96�����ǎYnt	_�IV߷�;U���=��W�w�a�=�� ���j"��:b���؅����j��%��#��a��nb��+4�W���;��QJ��n�N-E�xy�ot���!=�
*��)����2'��̵���Q*b����H�o�^d�?���K�?>�V��_e�"T{�il��W�x.:�lĥ�f�3-m9�d�ۆ��l�(�_]��k��^]��g\B��K9�ȫ�9ա��B/��X�WwtP�����R�nʀ=��ZDoT�#x��e^^�(�N}i�TZ�U�i�q� �ed!�Qkޛ��)��5|E4�Z�`@�DS�O�� xq��eEʽ}�Y�A�"�w�W>�_�����\��yjG�����	B�=��.�G�rp|v��]z*^�2o:�OQ[1�c͂ʼ2����WoY�,��	YB�el���.dG���
����	A�eb%��O&�<l��VL���/�|"$�b�R�^����[���A�4� �y�6Q�@�̭��$�\��s�(�5W7��a���6��"�s��t�GL�
��a��������P)P**�I|u�i�g=(���dC����m��*�b�琓"���ayl^����v;���[��
�P�bZ9ȷ
�{�zܮ%^]`w�dtZ�9�y.!:xf���kf�����z�<�J9�Y^X�om��߂���J��&1���ؐ0�/��,ԕ���M�n��(�jy
��fQ����:J�*Y��_�)#�/{��T���U�~�O(�v���̚	��빊߻q��$    |����{M��̐Ͻ�
��_��R�)������OR�"9��:���L��ncQn�qް˷��QQ+}�2�+���x/��t��G�x^�S^���}/o��򪛧�dm��	f8`~�5��}ީd�� [��'��c������ �wQ��ʳh��^��%�ׇ�(���f���Q��+4:z��,�t��%o�frAw�w�$���<e?���0/}.��^1/�y~,"_^Y�i�K��J�U-�9��R�-:r;2��k>�L.�t��#��b���=�t�N���ޓ�y�+^\%��#����,o�-�n��B���a�c?l���A
s���LRF<-\>v��Wo�r��	#Ϳ��2@�N��S^������a�|�<9��ƾ��5&�o��L;��!�^`\�����X��M�����Y�{��_���+)�;/�qb�s� ����M��vCx��ZD��{����o�._P�$�S��8��g-V�G</]h���
���#�}?I2��J+�+c��kpW!��~k��E���WE/W�r(w7���4�¶7FG%iĐ����ޅ�e��s@�M�c^ؤL1�S��C�Gb�+��I3�Y|��o#,O�����"�w�+4�K�2B��cXRj�P�9z$3Ɩ	�b�N2���Ό�_D }!3��D�x�|�ȔcT�@�<	Ca�ZC8��1�*�#?��[�~����H�ǀ���1<��$�o���AE��>��M���%�⛇�N�uE���ڨ�v�|�O�s�?*&+Ϭ���IsIg�3_��3b�+��A�i�}C��=y����&,��d�ќQn��h�ZB|]=�y�;��"�9W�;̹��Nt^>ƌ(���'k�׏(�H�G\_��R�����_���A�������z���j(�G�������PM렿z��ifP�r�$O���\�k�zr��xC�TT��Y��k	/���SU�J�]�����2u�FY���*W����8Hz�C;�]hV�G;C����%�{^j��Q	��7�,⫛�p�`<�&s1��8�V<�H�J��0�Z�þ�3|��J����xF��.�v�����(�R��i߅�-W�V��\��&����Ag?p!3�UE��V�RJ'�X�U�}~�t�CAb�|�e:�<��W�>��yhC4����q�\eYTa<�>�����8��mX�������ݡ1��#L��(cTAo������K���2��Z��E�BQ�����S��Y�\�5�}:�
s���?�Bo��I1�3��fp���:��;��b	q�����$Q+���g��d����-�������]�2�]V|D@��2\�=����1����y>�
�++Fq�Q-�O%6��%HB"g��
|�*C�B����^�Nf�bȂ1����ӝ���S�R�b��/��`�W7l�lA�!�Or��Q����i�`��oc��rT�hV��l�}���>Y�Mi�h��ĤL��A����*���ݮ럏�!`6xv������џʸ�>}0E5���#��c��n��n��0����Zn�ǳ/�[��`+z��ƣ�8����\Q�]�怟;����]���`�j�n7G=��.5Ȧ3v��b��9v0����J3�:�c���q��ؠ�0i�3=_1?���w���Nj�T�,�,K,k�;���3XZ{t 1��^��S�kh�7�vx��`�:�0� ���/�B�����3Q!�U�/��˛kl7��ǠF�m@��'�k>$��F���(n	y����
z����F��f��qų�����UY���%ͭ��'�|�o������jr<3|IO.y�ŧ�ְ���/y�ޚ�'�Ϸ��Ё�4�Cx�S�a���2�{]��O�Nw�ghFOW?�nj0)Ђ|�$��$�3f{��E�Rsڽ��M/v,�3$�_�{&j����f�',5&".W�O���9��n$u�9T�ʍ��5Kh1oZ�2([t�G\3-�Wo��krWB���ZOH��f�Wķ�H`z$͢�i4Xs���i|R���lÏ�1���˥T���,?问=�eL��a��me�A�������s�����,2f�ῢg0Lvmڬy�NV�oZ	�Hԟ�����3gA���\ȁpb�U�PD����ћ��i�-���[Ce�.����)�~i�k%�Z��G4��/�����4׺C7�T��峫i �:an
à+���!����U{��\��L�&�I ��,`cS¥)��������L����f4���;"z5fH;��]��4"��dc��"7$�x�9{�z�"i'�0�����s��ö������&F������6���?�2rxw�x�ROa@ج+�+��0����{�t�M˝Q�_�U�@�}A�u��>��T*��ʛ�,(�@����yK�O
q\	��o&A�4���j�y���`�����&�� �%���y�4mCr��F���jB	d��mz�M���ֻX��^�w
�$�\-�8H�A�|᳗\Ņ�چ�!V�a���cy��G�i`��3ZA)?wWl�3�9C_�� �i	,r1:l��_�N�VF	���2�}76}0�x����[�M ���` S&����w���pC<)iL久:��w�Z�5��R��YW�D�\�����\� T��D�[/����W��<u �2���LI�!�-#�[(�"[�SB��3��x}F,�3�	vï"�]�ux���,1�0G��r���k���m�,*ǉ��WLjB`��_�;4!TVy��N+
-�x-}P����2H���&�p�.	���!�as�����; �]6���1o��� 74��,`�V�ڥ�n���`N�Q�zSg4��	�UQ�r�uڷ�.�lẟ3�_8}���^� ����C<P���l�D���Ōc�{9������F�*�(;�v(L:��5m��؈O�)h������G�`�{���I����I���ff��o���8�<��9b�?`+�))�o��᢮����[wx�aw�'��ٌ�t02f�P6Y���͒��,���7.�;}}G /��s��o���^�`w�0{)_�$��xP ������$��1J����F��e�[41�oV8�>ݘ��_0��V�C�t.�\i\
Ƚ�g��7V�/9G��h�c�{%�7��֙v�_���xQŰ�
�~��%��" ���a�?Q��p@�h@8s�9TB�%��>QԴ�poz��4������?O�`�6k�	�{��)��ĩ�?Ї6���a�3�n/I�Ā*!o,n�3��؝�'+�V�̎Dh3%]��}s�q-��1��H�N�U�%��x���^O�X�_��|Y�ɳm�p}���V���Tp+����.��*u�>�Q/�����ѩ�J{3[���>%_?l�D%_�wp�e��ٱ;Mx�������0.*���o��>�fB�!Q����sj����5�:`�Tr2ߗ8o������JH����@k�	!��ޱ�7Br��Ld~]p�+V�dTgG��+�R�~���� �s�>D(yT�O'���kr]��=�b��l�y�B̭Va��!��[�rd2�,ц@?���+ş�R���)�躊[�{!��2��F���쨧�;�Ӿ
otl�������8���Q�I�̆��E�bv��x�<����@̬S��O[��i�O8tS�ۿs9
/B��7
�p��	&0�~?��<&�g����7�ᡳ׶�'@A��)?���.��y���9���ެ�
��V�6�eX%���<صGؤ&/:>N�dWv� .���/%a�hGq ���j��X+~�v��%�y m,%���.��8���~91ت��8��]��9y.����b������fyO@�^ �g����]h7C�c��
���va�R�$�T�>�ر�,�]@[&���| ���t�k�."0    �?t��+?]a�8�%	��Cq軧&���֥�	O,�`���u�;Ɋ�OJ�am��lF�SX�����CƂ 1^r��["^M𣌜��[/�H�,p�\D���Yߋё�|$���� &t����WG�
LNtp��9)	�ER�m����(W���__�-k�L�]�.*��W����?�\0CH��y��_YR��B��}�FnoBA�
Ɉhe�$�^�$B����$���h�Ł)�2��Fy�Hz�ݨE����d�5C�Jေ���L�I��7O���A�	Q��@��R�9��u/��ۥ����E�|;�4��e�|}�p��E�|�B����cΞ��[Tq�=ߪ��2�k:v�7"�<hv����P��5�c?̙�c�XA�#�k��]//���:�6���e'U��x3��v��\�#~�yz���w^�3��`�4��35���XJ3�a����҄��&>t)K\�!G�w�0g�B&	�no�NP�	�]�*�g�@�}tA�P�f+=[�,�n���)���U���ɕ��z���n8l�H� �uN��G�����@�1���7|<<�ֈY��~�x>\�`�WX3�Z;Q]�����$<�[j�x���N2���m�4O!:��4���eNƇ0"d�DW��^��%+6l�
��͹�4���@%+f����l��ܜ�}&�{��	�����
a}�ƨ�x`X��)� �fǈ���R�����C��3��6X��G�,����z��8��˘$�Cx�^Cx��]�����Y�>x���x��@"�N���i���i�f�ssb��`p��cLS��0�H���K�?|1�&gl�
6��	�F����T>M>�(X�w;�M�U��9��04.0������Qc�+qo9�G��
���ې}WX�-Ib��������K"����o��}����֞ǜ��+�@\b���D�u���m
K��Ї��Y@S{��,Hv�+����En����8Xj�j�q=�O^�1������[!q��]�6pU�4<v�֞��4,jt0�?�S�9;i�ȕ>�<��A��l�m�t�\��:`W\e.�^��l��`�@��gx���O0ݻݤ�����(�����zuq=-^�q1\Q�-�岚���������p��:a�

|�M���s߆���3�:W�0�����u&�x���`� �.��&��� �9XK���e�Wǉ#k:�\	����#V�{k��*n���ej��,�n���La�cTǤ==�m!������8��5C�6r{C�`��8G����9�ŋˁ%�����l���j��> x��_��ul�!�\B���k�A�w8��̔[1>��1CK�>r��B��|�qu���%�X����yGL��Ai���{Md�;m��}o��Mx��k,7���C�֑���'�0���6�(X�S����,`���2�=��� 3R��_T��\a�$7�����C+�-�A��>����W��D�%�Y���ћvl��4"�A�x��Əa��ix����j��M������L��Za�P�oڏ�Q����¤�`����A��*��x��&*������W�?�"���v&��A�@aT�{7��^^=(V�)��!F>�[y�Kz@J)c0s�^����.�ir����␆I\3��^3P�t�
!.�5Ru$�`w70���Z@�>^H�Di�qBc8���y��9�ူQ�l`��u�AB�bM_�Ԙ�`3��;|

B���j�}�uF<4�mo�L��k�����P�^M�L�������XL���J���KD�V@ 0��nx�������Vf�B�v�F��H�� �*�PaX�5W~��x㋫�L���q���ar�Z�\�ו8��YF�r��Pf9��v�,�`c�1�ͮ��u�W}��D���;@��7�i�cL�5[��e����5M)d[���y}@7�(��ì�=��ylF��zQn��u��97�Ƕ�C�4)�ߐ>/��ú�1�n�!nC�U�ܞCŰhk����1<�ɬ���9*a��\1��ق��&:�(ب���w����|�)<�U��$����
C��!{��4|lϳ����G�Z�NT�놕�}��`��s��XH�r�<�@_4�����F^��>���ܧw���}�i]��x
��v�L  6��+�:���]�[6�f���\��5��*1���>��d����5�o�m3�J������0I�4�KWv�HA�*�cأ5t��ô�t�8!'z���7���뷭��X)�\� [w�NX�5�ЛC��9Di�
�����+V��T� X��:x2����<n��h`��Mt6�3(岴Na��G�2�l���tw�ᛚ���˩���@���}�, �ؔ�at5lӛ�߉ޕ� 6C؆ |Q]i8u�p� �A�Fi]%8J��q�}D+����Qr�����Q�p�?	�fsħ�Z�����&���u�J�<��M&���R�[5o��鱕���J��>�f]�����t�
ºt�_G��r}���< �"�~�{��8�]⒛M`FrsMNt�fms���ʮ�Ψ�mLf�H�|���x�f6g2�;����M?���F˒c��r�%e��e�������E�����\�*��"�����yQ)o��fj�s��_;�ڔt�u�>7����Ii[�+�xib-�I>�u�a����Q��O��%�X*��y�L��(�.�K�A���ԏ]xG.��͈Z�qD���c�`�P>��� �C��jm�;��*�L��������?O^����|e�mjyv�z�؆l�P�����mj^�\��q���e(���a:�3C�oF�R�=1%ë{���~���`W��5����t��N:O����)c�	��(�Q�P�w"v�@.\Q 4��n3�Ct\�r;�C#a?S��/�����现�j��"aW'B|d0�E���P®���i<iHr.
d�m�(�&�\<+yw����ښ�
'��]��ن��A}w�f��u*w��F��uի7ns���1���&�H2m�a�@#קR�0�T>����k@���f�����:������r���]���>��5� [Wd�KaPmz �5:* ���$�4`�o���43�xk��1T]�oz�ۈ|�r���5h�p��Z[[��&H�r��fN�o��#�x�9D3J_��m�h�h �-z�2����t����V�KS��-Q����&�^g����ʜ_ %�zQ���i�W?��%kVJ����%.���moi��uKԋr��S�kF�J���Q^��|�v��]����η��ۙ4�J�ydV/*�����,h/��p����:�6_��zYUN��q��);\U]�UO_�'E�'v�kl��@�v	t���@Vsl��*�E�����c)_��vX㚠�W3ƌY�Oy��}{r3j`�h5�H9,r��J��7 �� �E�����s��(�mC	ײ���I�*�����BMoKd�r���]�Q�Xx犰�}3Z-Cl-��5�=/�zM��t�%)��.�/�����(�]8�K���q?ƚke��P`,<t��I}�r3$ ܞ������|�*%"$��Z��Bn�[Ɨ�q��7��|�K�s �ȇ�f�^0]�æH	/� V����nG���n:�)���6�+����'��D��Lq=I����/�d�ΪvG&אc?���2L
������Pa�H*ʅ���e�z��ܑ��2�h
]��0����2���#�PIQ��ǡݞ|Fb*9]�fK�$�j��5��cj��{���>7N��O(�ҵ��9g@���ܚl�T�S֥��Vg@��D{a��uŋ��܈�dP(�V,y+J��I{Uh+Q�sG��W�Q����~�&}��/&�u�� �����u�E]o?_�5Q��4zl6MxE:w �  ��M,��)�J�g.�S)^;"t;c��Hn��<l�-�F���ZQF��c�)L]aDh��J��<�Z}&����J�YW˥�n3|F�,�f�{8�j
���I���/9�J!0ma��t�����.8��n��0sp�@��z���p���$���Ij�ͣ>����'�hۃ�$�]�a��Z����i�� �)��f�ȩ�L��8���GA����S�m�����m�5Q��&4����C~�������c�[�ASq�~�w�ƕ�`3#|��Û�&�"�I��LS#��<�H�@@���l��1N��7�5/L�����������䌜˜;V2k��4�|d.�xF��7�Øi��PAv�``�	�͵DZ\��&m
/8$E��q-�	������\��[���R��[�nY�E�տ�x��6)��#����8��i�{�B�;�������b�Ǉ%��f�f�e�=�N��:۽�E�����n�tY�$�(�m�CtQ1��P�T�霘9b�`y=n�M������Pg��A9��ק����@iS)�d����R��fFXK�'�/��g;Z.g�����1�&Lء�链�"��e�l����71L�?��`����\T
5�@�85Z����mطt�0i��m?}n���:@�.��D�
ӿ������:�]����%��^�S�U4��TYAy��"���Y$���r�'{�gYP���L6�J=�c���=��B҈��V����0)����P^9��/T�m.��ޘ8��͙V�fg	м:���a�9�Xl�Dk+չ9�lN�)�^������B
(�w:a�)���Ȑݐ��`떚�B�Ո?�'�i��8�#�JY�Y�z��I�3��X)KIB7��c�Oxz3.����NW�l=������
�U�qӋ��eA�`v��A\�3�H�z�q��8Ⱦ'W��t5�t��YB*v��UHܖ�"�T&����(���=@6d���C�h��S��� �j����M���숣7@n����g�4�e\y��Y*3������4ad}h[�S�yK�|� ��3Vُm�� �9[0f��$��9z���fGXO��A��T|��k��D��WBn�A?o���*�U��A�C�?���գY�,�s�l�|�B�f̻ �jsY��m�߇���v<�V�YI�/

�;Ip��[#3�E$�Fy�ɟ��:��|�}�d��%×><t�S�ћӥ\9�Qnr��O&������t��Cm���L�ɥW(μ&��iD��3�c|�v��	�{�_�Ф���8T�gaܦ��;k���&��בּ K���ݮK�q���#@wJ3Ծ=k�0*6a���7�wY>t{�ŕk�{��ż�R)�
0���EJ
۶Ju�|l1���'�Wwu�q:_��\pg���X!�N��E]C?̮2�6�������a������W���0<t�0�^�.�-1}5q�Q1�ݡ���*���g��U�P�aJ�vZ�I����Y�T1�2|��~��E ܒ�P�;&.�P�殿���^��D?L\�_�8�6���{(�W��!�vRN���k���C�y%6��JċJ8lʙ�
�'V�/T� ^T����ô;�K�\P��D48�x�0���/T��f���G�o�|�E5����(�����~x�m�a�5��/��Ա.�/��ڗ��64�	t�Ĩ�ۑ!+�5Ȧ�+�70�w����񱣲����~Ǹ� #�.ޓ���k�\���;���ƒ���̩�*U�E�Y���%���þ	���ۋ~J�����u�����e�����N� `\P�l~�rϜrB���ȧ;z�G��/�'�0
��W7��ލ������u�:S�MJ�� ��*/L����H����k<_}�����F+6���e���3�7��gs�$�늯1��3�^2���c��\��YKj����-�6S�q�i�q�fv�?�R����w����l�t7Qo�����+�������n�k��ޝh˪
+�p���������.A}�����NLa�w;6��G&5��C+横1���gͻ$nڪ�r��N��x��Q^Q�
���՚�B��Ӝꣀ��$���O��T�2h��$�2q����B%��,������l�n&>h��󎏳]����ݽ�fi�['�v��C�kp���kзլx���9�^�����ؔ	����K򋪊��^GQ�� .kj      0      x�=�m��
F�=�[��9�w�㸬��:���1�����_�_�����^�������[�}�o��m�߉�}�߅o�מ�5�i����_{��A���8���_<h<�6�f�o�u�w<����k7���ן��EED��č;Q�������UƯ� �ڿ���C(���:�@�B�J�+�T=�f����^�/��~�������z�����O����'���/�������	�vm�ľ�/j��¹�F1+�&E�(��j���ں�AA��QF4�}~���f��7��7_�>�oF	�7�	u�/���Q�͛�����z��-��%��V|`)��P���R�����w��]P7z��o��@Ż����oG	���&�w���(#�$�kGq�jJE��+��s��`��2�D����y����Nq}�ӡ��z����w�_L�h������&�d�΁j-~{����>����A���M���=����N��i7���r�T��=P��o<~���<�->NtƿY���=z`�I|��o�Qʥ��L(zT{�d�����I+�S=���\H�kc\��d��v�NIUc{1�����)2�2�o1ْ�s�C:���	z������=��qË-�ŀ�u@zz��Q�JD�a�{Ƹ���DY�O���6Q������KQ�)��7�6����Kǌ&�g�^�f�������[~�1A��bx췮vH��4K����������v����G2�+���1:|��ABt	oG9����� ��ގrv~��L�/W��>-����Ӣ�l�!�F_�쐁�Ov���'�K���;�w:9v�!��qN��G�F_� �:Ҵ�f܏f��j�����;�0A��AFI���������#��#��E�O���d�m�Eł�sEeb�;��So����Z</?2�rj`�㛝;�.�U�K�'������nK� 
H^��QPMhI?��~�q����@��d�Cȸ􊠢,�:��@�K_���a���1id\>|P3)��U��tv�V=0#ȗ�]/2dD�L�= #���WV(��TT�11����wS�Q�(�j��It�v�~�-��E���y��Q�ZAvɀ��߼�p�RG>�Ϥ�)�4ã�3�@�j�/]�a:0�����w� ���ά�,����d{2�٨%3y��Ku�� )�|m�׏t^�o�
z���������T�K�N���b��q./�ZAoiԒ΀k=�}"���Ъ(5A��}*Ȟd�r:��ĐVb&�e{�*L\�C=\��K23���1���JL=ЁB��v_*bK_#�ú�D�SgNj�w���I=�i��C#�[t����Bڝ�d����o�A}�o�8��)�pt�����:���~��:�N�qD�W�r�
EC�_�7i�� w��L�딚��}��yP͓d���G�W8:'�p����,u�(A9���d��CҊ,��M��u)�E�JG���vg� )q�_���>��eȾ9��R]_�#�j���P�@zS��}G̵�D�Ϋ��1-I0�'��e�7��/}���ZOo~�L��B��|�/}�r���<�җ�9Y$З�+c�x�)�c���x8=�Uf&�jH�O�0Z>�$�S�$(����<&���z�U_-u�<��� G1d;�H�>�^3����MH쿀�:H�Ŕ�Q+2~8(p��H.S��^[�)��tT(Bˈ���C�~Ñ�h~"���RSմ.wi/3�^����;"3i:P^ E�>Nh�\�ě4?�V��� �X�Q��.�#^ćt�AϺ�o�[�Y���<����Ϡr^DQ� ����	(�?O��&�(��ҔZm��Z*H˘���B�x�"�Nq$B�h�rI�7%�dJLi%X�$����o�Ш:H�.H�A�������t�,:��/`�8��3��,:ٻ���4�:����P�X�?��uM�~��T|Xu�����@Oi� �T�ܒ����MPts��/�1��H-0�q=(zh�E7�h+iF��.}�� F���(hf�q=>� �h�4BITf$��:�`< #���H0��N�tC�E&�vh$9�z�4��Q$�$(ʼ%1�VbJ#��t�7b���p=*�?�:&�	ih�|>�!��3��p=(�q10�W�G��Z�z��|�-h���e���Xj(2;�擃h ��Q�,�������t��V '4_�l�XD5��`�[4f�G�q?���l�� P�-�X�4E��oV���*�+��c�
��߰M-J����,9��4mF���w�(�$�)4ۃ�hs��2�����n��(�Y3H�>ݾ�1���kȪ9�ߺ��m}�]��-/Oɼ�!`�냱�9�� �&��X�j�ݖ��)u�sQ}�s.J����/y�E=rKj�c�$M�
�����I�a�kEϠ5Z�I7~�6��4ͬ��Fo��=P�
�T�OOҡ�M��]��%^���1/Qcҥ�҈΢)v��-����,-�]4Ϥ��P���ov��^6ŉ�]V�I/`����=�B�f �"sv5˺�����w(����KQ�0�m?�G:>��d;4!M�ˑ�~��F]E5���
����xp��FS���r�t��u�'��128�VT?'�Zc��ˡ#͡1�DԎS��eE����)fbs��*��4�G������T��^�����8\�OP	�1�9y��P�f� ��O��sQ7WO:ԡ��U�&���E�T�%��S-a�]4�<IE���(�\&O�m��o�I�d�&����l@��$����1Q��� �_�1y���~�?���̛P��r��B��6���f�I+��	(	��K�jJeG��$mI7i>**��$�"��ek=��Ԑb�e2��E^�T
i���aG�3�&�,��#ZzC�IG�֣�V|Y�F�?EV]�Ak�p���pT�m��AZ
�>�^t��?�!ݑ�y9 hF�.Qw���G�ysiX)A#��tF;�0
j�U~�,�%�x�ΫP�bn��ŀD�ˡ�.������Nn6-�M��bet���>��@E*C��N"��z\?�H��$t��v�	��EӒ��W�˪��"�9A{�B�Z�r� ������k;<�ִ��4~*�<E3�Z6��@���R��}� E�ܑ�J@�MC�ZO�lE���d��E�s�b�28b-���]���C�<eK�u������\���u�㉖����J�gg'k}3i%�4Ѱ�SWOҔ�16!x���9M:jrP�\<��Jb�\�}�7x��/w4���kX�e��䕌e�B=B��P��T��I3�/���xݑ4}����-�bM�[�ޅQY����ڽ����r^�(�-�t/�	�Mz���ؖ�æ�`E �~V�3����t�+�y%cݍR�*حIz�%��ڎ����n3��u�crK���b��Mw�[tH��vm��UK�{Ҋ�Kr�!ɫcJ���H�w<<������;��d�+�6��'��][�$�2�BS�l�¡�7���^��`?�t�R���M:�]�_�}�{'۝�G�d�7�{h��q56虴2Q��[T�MrT\���0w�`쓻�o�N9o�a�܅g<���Ce��k��ڠ��r�e��*e.l�]s6�DP1�+�U�b-���fuI��^w�%�H�[���8rI�4X�ư�d?��EbڌˁB��r�
i�;��B�a��F�����2�Bן�\�@��R��H7e(�����!h�8�l�i �����n�@�L�EA�A"H�����f�*P4s�b�E��u��y$����'E3-�(bY����z�A�������� �'����D�/y "杇˽�7h��v��Hm�=��4�j��< �-䑤�@�FH��0�[��qN��x5D�(�T4��:;乐9����� G��S�yzh��E�����&t�� I�"H��͡ �t�9 �42+i� "�Y���.>�ak    ^{G�<:�t@��}� I'7D��l��Ĳ\,F�%��$�G�N}$����G�OT<����覩�G���xT�����s?]����n.�pts�t�#��8�LU�nzP���\z $h���GTm�Y�^H���<z���ї����<�(~G��M�nҶ��G�q�Q��/?}�5 ����cR��7���o^�� 8��eْ�3��S;�?,q�z�Ges;�Ges;�GO�
���4Vkԏ�o)/�����#��ϓۅ����?e�;g�u�1dC^%�Ȱ��Fܦ�&sعOұ*>�,�,A���)Ύ��:�GҊǋ��?wI��9wK|��lzJ�&0~�]%������O��)�y��ЙJ�xm��2t���{��lN��M7�w�|D�y8�����D�'%^I%�dJP�M�%�ĖL	� '���m�=ًn4��-/Ǌ�i�V�Vd�eEPd{�,iEv^V�BG�\iD�'/#��m�r�o��:q߷���K��E�}g�7�Ǽ�K��R�v���H�ݗb���'i��F��7h�Z���V@��ʼ�vxýO�qA����[�w\�P}�oά7�Hc} �4b�>�����G���9�m
ԊdO$}�b��F�b� z���!./�hY��{��)q��)m���A'"�qyr�w<%}��l��.��P�x�C^���v+�!�Ȕ�� CC�W�Ѱz�F[C#� ٴ��ApH`4 8�"�8�����Z/>K|�(s��޳%��/8��g܀Cng�.04�C�=�q�Mk���O9�|��4J��Fnw]`h�=���C��j�#s�0�j�;�x����!H4u�{@�Y��P��R�%�̖,�(87����� F��� G��
�����"��H~��Y�q�4g��=�Ҝߝ-�G�2�t{@��&GL|�t��`�<u�'��%��Ji�t03k<�J�-]R'����W��=`T0�:�e���ֱrK9\��]"�!â8��W�G0���.�P��ݹ�p�:�$�C�M:it&j�_��t�4̔���[Ց7��9���s�('X��rs�����]��`޼c�a��Gb'}����c����v��M����Z�:-ݤu�|�����z�� i7M��L����w����	T��:�`�����TC�n��`��`(|�Gڮ�֠){V� ��!�җ[��ld�M�w����ú<m����ߺ���J�������/AЁ�O��>�\k�V���u���O��lݙ{�X2�<izHg���`��3�3�������(�M���짼Qu��_ �flp��Awi�N�l����t��QПO;�>���}�N����Է@��o1�~���cK&*�z�LT��5h�c����0�����}N�9�6������:0Z��)��}2]�������Ց|�������ףt�;�-�z�H�-�ss����x�kA�i2-�(��o��YsQ��w$3e(|�{�<���4��d�,/ŧ�g���O4i�J��I���O?޼qe(�|RS&�V�H)J���Ƒ���9&�°��fW���M�����t���[(����eIg}��倍�L>lˈ��h�9JS0���#�����r��� <��-M����2�z0����;�eQ�҆��۪�6^GF�ǣj�ͬ�R%� �M�n���+K҆����~�=�����V��'�W�u��	�c��b��IƮ��~.���;]2K�U��J������R�I2��7rI�p8���@>�9���Q���4؟ԛLJ�����bk8���� ��0H��1�CG�����$��4�:�8l?G_���Q��<��-���������mx��<>�`�j3|edPp���fӒaF���_�{s}B#��2
Qz]�+luO��5�NT��첍MaR_n���)�V)t�Ҹ��[�12�[:�5\N�,��.M�����gw�q��� �Uj n�3�p���	����w�$��&��L�O��Y�{��V��sڇQ����׆{�(��m��lݸ��1�?���UiI8[��O�`�.�O	o\��c@����M�Hw����Q�m`��CSک�Rjˤԑ6n����T �*��	W]
h	��=�z�I�!�R�&��6��h�l��]qHl�눀��F�̠f ߾�, ߾U$���tײ���4{����T�r{��G>O[��q|����lq�πl��zeRj䍔��?�ֲL�l({�
���[��[�w�w�c܃�jͣƎ
��
���o����G�N�4�yelK���3�ط�6ȇ��d��s��`�U7��+�Of_u~El���t��*��
��2G��[�&>?�x�oM����f�/@�[Q|�u�1"v��)3d�|��d��I�*G�LP0�|e�n�=�`bob�q��s�X���'�}ڲ���}��F��ӲwCgd�ǔ���(�ݴ4�����26�Y��퓱1���ؔ����w |}�]g��~e^�cX�#��������X3�,B]�Q�~�,�)]RK��(~�ԑ.�+�R��>h��^�O&��<�`0)5��.q�_�ŷ��c�k���mk��+��,�C{�`�j_K.D_퓍Mk=v�w��ףt�)�dJh�x���'teRh?2\�6�=m�����o�p�n���#��Q�-ؚ�I��:���찥��J�Ջ�t �F�vrbO��6ट�?�2lU4��d�a��(8�~�� CW �DIfoj�o�b#pćc�߿q{)~|b3�[�(F����d�>ٺ]�J�����d�A6�dxe�}�.�D�>CFe��t��0K����7�l��2���+c���"C)�A��L7�Oe�~K�7c:\�rsK�M���-{ �b=27�9��-4`�!���/�-�R�T6
z$m�D+�ВN��t
Q�JmK����V��j���-䡢Z �ݹp���cRݡ��1K�Ģ'���r�.�s`��7L��?[ö�7P1�Z�a|��z��;E�C6L���:�W�@�R���-1`�=}��Q���0���5�aNe�M��O
��'��z��ی�Q�Ȉ��ee|�w�%�5�\Ga<]���L��n�{Po1��tI���������e(�[k���2Y>��6�������*����l8��8�,��3�~�Ol%�b�Ũ��^G\�Sj>�2(g�uq�"(�a�ݚ����ҽ�a���j�Z�e���'��%���b����ŉ�F�ƥ�4b*��oy{2����`	J��iȬL�j��r;m�D�DFH�S�-����xt�e�1�\#M��� �)�0���p��k�a�f�0W`��ƵJ�9����*m���d��N�5t�<�O�(��9�/���&��|EO/��N�N_�^��}ײ�=�8���={�}���{�� [�=����=̧�Xͧv�����Q�0q튚hӝ˚4�d����¯.f���+sLi�F�d��ws�ab��Z��;>��Ҟ3����(��0cN_�e��L�@>�
h��Ԗ)���R�V^ê��]�Hr���߁����p�c�ǰ�_c�76u^g�7���]��+�c�|�L$}xK'�������o_��dRlʔ�����dR�$�(5p���$��n�(��y�&Y��,�� |��X�o'�%�a��S�si��zh�q�k,��(�<��m�<�荌�o�Mar��z#S�����|�_2�c��Q����2)�Ͳ&����R3po��Rc����ѱ��Y�%X��Y�@�f{�I��؞��Ēk�J+1݀)�	�!�m��9Q�f�AGe1�bʒgMBbp�.HbpO�?��L���D����?J���5`���;�,:���%,-p�l>L��4�R�:XlMk�[:��t	�E���x�|KߓR��.$#�gK���kKϑ���dRl%�b�_kP|��5g�a�� �U�I�U�ji2��[���^��T8��~Bذ�&�K+:��B����6�����! ���]��    |G�'���>c�e�L6ȷ�XK���ЌF� �XO��w����ӔI� ]P���R�!���؈!اw�L݉]�av2���n�Ok��Je���w�`ߩ=6_el)��	�È�b3�[2%Fқ���>��b�׫7@�S�n蕸��.���"�;�=��@@h�PW�V2[:e�t�D��`��<2�B`����݌�i��Т�^�R4B`pi��� ���>0�w�'v�Q�CuVػ�Ā��)n,pе��ޭ}2V 2v��מA�0�J�����w}��
9n��
~�J��:-3dHv����<嬀6,s��d�cqS��'���ؓ��Z�F��ax���H�PAe������|�k�N�z,�ж^b����c�9�%Ǚ+��ڧV�[�,���iu�F���,tw��PO�h4t�c����'���I]��
̓AJ���螴���2�[�}cz��V�ҿP���2	ު�Mz�r����X�����[����u�XΠ�=����HӶ���pԀ�k���^f���)�2M�o ���_0%���xO�J�W�����ϥ���4
cF�y��v�����X+ '�^X���'5dRj捔���Im��:y#�(��1�1	I�$����ޘ�`2�ΰ�+��㛓��Ěs�Oh���sd(�`o+!������l����7֫�I�fn���p��!����OVҐ�%��MPgN��4y�(y�Sz{g�ܞ4$Ş��2Y�K�7M��,��{�K����W��">���e���Ȑh����"���g�|H@?y�(�2�h��������Qn[�3�'�ʤ��)E��Z2)��FJQ�N[��T$v;��%�1{��%�|n��3j���c�t�9t�c��O�yg�����zL+we��Fo���v錋��ɤT��.3d��`�ߝ%Sw������C~ithF�̲�QaL^�UTv��Ϭ.>�w�b$�z?�-Sb'�ŧ�BSR�D����{24&P��~�
���j��Y�u�:�t��z+�,X���Ey�4d1��i'i �n�*�[����2�!rV-U�zV5 pW���D��QBGF�!*�z�vFqjo��hW��f̔�nR����$:�W�ש��+�|�q�uYŹұ@�Ď�7t�2��T�3�%�c��D��f�(�o!F��l ���X�{x�K�̗�k!HBE�(����)��F����(�������{�(x�1�"�G�б��8�ݮ�|���8�݈�8�}bK�\� ީ�H��u&l�|��NC�d�L��y��Ĩ��ĆL�6���0aK#�������Ao!�"�X(���0�d�Z#���H�y����8fp��茟,�0N>�S���XԕŐ��S�V��
�ԫ��FT}��N��
�kN�!�0#��Β�y�K,�2��o0en2@�2]��G�z�Bx�QQ'��|���X��1�6|>�m�rDߏ��Y^�[�w�{�{�ңm��[&%".��l����<2��#�F|�3����nY���X���P��X�W�񚬈�`Mȃ�n�~5�/�Ճ	������O�n `5S]A������,�a��u#㚉����.��;2T��Dc�X�ḋJ����)�;L橹�!͏I�������~1����2����^rv2��(�}]�<a����!��rM��M�,��ݮy`[n��q]��)���%m^X���"�W�B��Tm�X�s�����N�(��.w�4Veo�j�;f�$P��=`%c�XRĚ�H�dx��u�5nKj'XCf�sr�&va^>q'XC�Q3����ĖL��dR,*Pad�h��[ՙ��^iO	א����+���1\o��w"6�4�ad����N�ƭ��N���o54���N��5�, �����Kf��ۥ}��Jc��lܚ�;��Z��L��j��Y:�K"J����/t6`����]�a'^��J�J�����I�yc�����2�ȘƖh�[���1���SiTC{2KL'XC�'㾂�B�X�5�	�`J0�0�L	o>�
d(qL�����ʹ�h�d�w�eJ���	fC����7Q���� �ٸ��|ZԠ�Z��s(���� ={ �7z� ��E�#3e|.�1� 3���d��\~r(=#;�w|�,��N��͔ �x�-3���$X:!7�_u"6rB���S� �ɜ�M�މ�`�40�w��{'`���l0�f/ 3��N&#囚���  sk�nҦ=&`�y�������\�)����k�j��Q���Հ�4OSg��fpX'T��F��~`����{�PNR'RC��}F�A���|�UFm���������͔�+]@;��2_u5��$�7��҉qK��߇H��9�:���^uB5ne���j�-��j$c6�$�/w�;�0��|�gN0�%�� �LxEu�<�[�D��K,�U~�N���x�N�Ff)T�M�F!DM�49�s	ډ�@Q��ԐY	�����Dj��gڛ�t��%�o��_�~������~?��L�ER��K�$�R4@M3�j�(��Qb�$�-[�ϻ�'5�I)ʟ�?�X{+��g�IoW
tb5d�{ ��<<����	��ΐ���G��J����[��G���S�����suG#Dm�#Dm��5W-�q
E�1u�5��j�%�wZ�d0��B
@h����������.SؓO|�l������`��S�Y��`��<��j2P�M%��  ��sE7H���8�{�ٕ��;i[�k�0�=�]��5��q3�8�N�*��D�@_��zP�T�*�3*M�Jݾ���o9�yIo5 �2��S~Z�:0x.t6��0z̔�i�Ff愡��	ظ7Tw6��`��@�(u<*d<�C��*���=�&��d��ç��O��镭������cJ�����'��<D ��{�"P��=�p���{79UW�U��s�J0]+�Ѱ�l�uW'�#���ɕ��Ս�NN�$�]�ۥ�5)5������=` &�\0j�=��[�G3�ʧ���,.���D�����*=���r����|tR|�(9S¶�ɽ�)g=�Ԟ�3�&=������87���A�:C�S���9M�z��	T��o%d�D�n%�(����P��j��̳�̓h����Ԝ��y	��@3z�8S��2Ft����+G��z���z�1�v��Z �c.jgE��3��2׊�;�{���T�=Svvz��Ŕ�eRn&�r�#��<O�3Qz����'z��F����q�䏧%Ga�����f:�k·�aO����<�w¸r˝�n
=��9)��I�&�{�jTs����&����q$�}��n����v���\x���fά�!r[I�1���N��O��cJj��r)/�`���7�a�߳�y�2�Ts%\ڀ���\��l��=�:�[ܴq,k���<�l^��uڇiទ>��s��"�A�03����(��Yk��
����8EVl��%��8��x���¼��=+Bp�L�nY�e|y7�\ݳ&5�e~5�xpO`�ɋ
�#�ǺiӞY��	p�h$-di�|���Vr������=���nr���&�������:{��I��U���DTSs�2"������}��s��'���*Ę�%�R��zq)h=N��#��SCB8e�e�O��xᨈ�U�_@u1���A�����P:�8����r&7�ڳ�-�{؂��!Te�"�2{�5Yz�t]xVn�u�]��g
��ƕ��N}tu�M7��㒊�R+p7���-=2�.;����)y�K��q�(��1g���o=��)�Jo�[�r�,���Ԏc7a��ҧ�Y��q�%3Wv�h�caiꮧ����%�N�{7����=�syhuZkégB�}>�U\JZ��I��J����zr}o��dY=B����PrMV�-�ɴT��pn�UF*rjA�Q�[L07�)�����:<���f�zN,f(9��[Ͽ��fr��F �  }�?I�r�*��m�C1-���]O�N��ZzNz-uS,=u[7k�&�(��O\�+��s�W�Z���T9���c	����	�7�	����q{���<��LD2~S����R7�ГZ
�J�;;�l��~_@|�e�"l9�uS���+��G��w�G���{�p��ᛚΔ���=W,9v���D��u�C��u�鳼:g��Q�~ ���Fr*C����ѧ���̙O���O���}�S.����}���f�c�`�d�����C�)m#���.%ٝ�����w�J�4QWƟ2>�b�v�f-�^42�鸃�GD��!�8��n�l�t;���|
�.s}�UZ�.g�s��J�C�́�r�1��[&�i�1�g��RЊ���N���5�?�"��8�ͅ\�gEnU��Z�por����iL��S�Rτ[ɕ�..%M5�?ɛ�V��)�{I�X���>�ث7�\����g��z����$�g�x�	�uYi�4ǋG�Mw�{==ϺdN�^yZ2����N��4������]����ť�U����hy�H����F�4����˄)p��<a�-C�O<2�a;ә+���鍕���\#��L��=C=uկN26��o���3O<� y�`�t�:h�>�8�<m�O�T3��ͺ��W�?������5���K���V����9�#}�z�� ',46��ɤԐQH�I�S;��q���ܲ�eԯ���2LD}�*_�۬���ԑY�z&�e3a��5=��'��+�]\JZ����h5J�5#D�����|��:�^)n*ԙ��ّҵe�ZĚf��E�Ԅ�cΈә�y}
�3����&7�C=4�A�t�}
�sԈXgL\�j;����9�	
䦿:�9��N�bd��U�dX�e����3=��2�f�T<oY�Sg[��3C8�Vg�	�F�cͷ�����c>u��[��ʔ<}	�+�\�a�����j�d^��d��L7�38~��NrZ��w� Eve2�
�ƴ�J'ӗ�
G�X�gNyϊ���&��gU2)l_�_>���Pwmx���Qu�ѻ}	�N�H�t��o�X�푂}��;w��p���g��U�3穯�瓻�(&��ݒv�/��e�7�cfޙI�����uPI���W}�t�l��Ҋ��ˡ�O5�X�O5�`��(��I�筙�F�%������
7UKO����f��ؤ���#DR�bʱ�4�e�+�ue�3��=�]�\M�xz�U3��<��g��>�[Ӥ��-�2��,��4�%��2�dh5�m5H�	cw��Y��q.v8�F��V����#Ο}��V#3gf&˾DS4f�ع�_b���t}���֭K,���\t��`�����5ɸ��|�OS7��x�׭�"�2)6�FJQ�\���|?�].��H�Yr۵A��wcߓ���Dٵ�a���0����=��[���eڞ%���~���n�H]      2      x�U][���>��������#,@�JU��<ݦd�IPS��_���_˃����z|��ә���=��?�e���_�����&��(�g����7�-����,��<��l����ʣ�����3�Փ�d�1�U�i�����w����N��v?<�>�w�m�ݡ�<K��9܆3���^x��{����5��J��~��~S;����p�}�����������MC���M#̱�;�9�~�?#��g�'������:�OqN}|x�}��f~?���0���s�ɞ����9����%���<�����7�7\3�r�������.��k��5�ǋ���y�;�u�4�[�.0�Xv�ӣ��<y�;�=p�_ڹ^o�{���t�M_�}`�W�o�)8�ߟ��{�N���i��7�3p�}�g�W�,~���l����S����Qx�ݤ�o�ƍ/��㉁���1�������\A�
����)�*�Y�m\򬄐�uK��%�8�s
��ӏ�2������s��-ǡq=y�;��<�@)�g��߮�|��~>�6���@�q�p�H�x�W Q�7zM$ڂ�ġ-�Jچ����y�W#N$�q"�~P�h��%"m�FB��l$&��wev�;�.G�N�8w��Ѹ#�Ɲ�p�>_8��c�urΞ������󼇏f$�ܣ�������yf]�\�GW4/�щ�G�M�:��	RGW:��Ј��8�Ј��
�8�Ј�^
�8q*4��и��
#G��&5�5ޥ�������ySĻ�y+�Y�sѴ7c��M��\��j��ո�����U�i�h���K�h"��fK�h*����hycm�o,��ˏUTt��@���>��7j,���_45XE��UP4��EK׻h-�"�!��ǥ�sǉ�k�3h}���j�pm�f���+�B5�W�~��a��]�S\�<����\T��]Q�tU���I�^I�Ҋ�wh���5q9������}w�I]Ϡq=E�,׃�<��� �q5��4s�F�z�]��]�5�O[4�'V���D�Z�a�i ]�;\KĦ��6_~䦁6=z��"8��&��B����4��4�Q�v39H�P�8j �"B��1�E�z2��Tql�=%�DOɆI�7P�yh��x�>���15�D��k�PY}��B���l`S��^!�@D�Z�d%�����w%���yM{�)�_��C�^D�u BՀ�Ӡހ�Өހ����|k�95��ͩ�n��5����E,�%psi.���� 9�{�v�7z��z�~.�)�siN��������������"a*��H�j1h\OF"�Հ��[J��w�C��?��ց��c���}�ց����CE�:0T�CE�:T��?I����$��+�8��$˂�I�EO�q=�HV~�eu�hV~�guৈV~�iu�U~�Qu�(U~�Su�����@�����g?�i/"ш��G#��b� ��c�π�"Y8*�Ձ��Y(*�Ձ�$Z��E�;Obh_U�C�z�"a�)����,]u`hly��AG�E�z�O"�94�'?-�e X��:POl��Ħ:P���@+o5�Ĩ:�G��gȨp|x|S	@1����ܕ%O�q=��]y��=F��*FFu�����Ds ���Ő:ns1��;�jU�f�Zոw�F�۵jĸC�W�D��x�q�V�7eՈq�ku�z�Zw[}#�-V߈q_�o�3h���yĎ:n%���;G��F;�7��:n���;@,�cы�u���[�n~��@1�2Īz�Q|qh\���k�G.ȱ��6��"�;�N�l`�5����Zȓ�RRk`�(�5�Z���hw����j�X �wk���=����W_�k���w\��{����q��K$�5pU���w��X���K�T��EP� OŎY��F񫁙��,���������Y����Ep٩ @_�" c��(�����N��R,h�R�pR1�J)&30cb2�$&30~1�J)&30~%���T��(����<01����`"VJi 1���@�A�K�A�J+���@\KW�,]9�]lg��b;�-��0&���H��lb;����h��x��[� ��@K����@K����@K����-�rk�@K���Ry��T�i )�m 
$C�'��8�5?�I��?�I��?�I��?�H��?x�<�ŏ0RI�	�T�i�魴��[y�	lT�i�y��F��&�Q��	l/��F�	l��	t����d��m4��H���@H�&�Q�hŏ&�Q�hŏ&�1�,M`c�Y��F��6�����6�S�3h\"�,�E��Z>�J�w�����bM3ѱ�5�D��X�L|�5MVS4Z�S4ZTT�x�[4�=D2ɩ&�%�8�Dm��&J+�EM�V�m���(�4Q_/����M�X���D���+�D�.�4)�X�D���Z��Ru�Pq����MT\Ā&j.b@p�C�@���Z��иT��jW��y'��x&Nv��̃.�3'��L��bR3q��I�����k��� �w�v���K��dE��hڋH4{��~u#�x/׃Hpuy������܈DW��w�m.\5ד��7+�Jz3����Ĝ.�3f��W3��+{5L�
x3񣫄7�y�FS��B������<Ģq=�B��ҥ�@wV)4�gd�V8n<��UPy4ƭ2h��V�u}����c}/�Pk�}֕�Zyku��^�.�UD��i4�Qly��AG�E�z�F[�����V�]|m����m��>�hsi���Z����S��jl��-߹ j��-��x�j��n��rN��95j��X�j��-��X�f��- �Vv|3���`�=ғ�~�>��a��)ƀy3@Y������P��b(�-9QkZ*s����P#��H/��l4��i�Y�V)5j�	���M��|E��C�z�b^�M,�<ר�x����x)��@W��AP��bh)����bX)�����8)>����l����n���ʙ, �r&k�:(�}h\��y����7ZyA��O+gz���rr���+�s�ɿ)��O+�s�����94�'���O+�`���hR�ѸD�k���r%�9@��h�ơq=����.�F�dM�@�T����v�;�v�8D�wF5Ĭw2�~���C��@5qg`�B��@m�e�!�Ѻ�(�:h\"�Y�]^ѝ|��<��� ��ݭ��<���5�y�x�Nd�;qq�;��!��*Q;qq���r&;Qq(g�;"X7��h|�uD���A�~H����A�X���y�_�`' 񂝈8�v"�/�
�'��"��S�d'*Ώ����!ΰ�8���JA�ei
"���h�&"0��s�T��L4Ȼhڋ8����b>n�xC��o�xC�÷az���h�����(_���QElC֣�؆�G�e�*b���6�=��mh{�4�=d� ��u���Nl\�p��ƥ�ވ@Kb׃�����l�`��� g��<�wrf���cy�mj�sx,OF���6*3���bx�bب��6*3���z�n`���ب'�6ꉷ��$-IbN���h\��U�A�zp�Y4�'#P6� �M:@G�����^�Q٤tT6� �.0��Hz��r�ϳh}���t{�ϓ(#q���H��8�:�C�������:���z����.訪�:*wp������yK�Y�7��X�:�E���
訬��@#��� ��)�Q�� �:�QY�tTV�Dp�7g,���7S;����f��s�c����^Ӊ5��h^$;y�0�s�7h}�K�.?	������(���Cӿ�H,�+4�q-��Y��M}/.�8���B������P!jŬC�z2�vs�'1r���?�����s%J���I��z��ɩ���R��%��ÇZ�/�r(�T��@�jz�W�8�D�7j    �"�5���"�:�]$=�G�|����@#�?$=Iv!�Nr�+
����[i����3��zS?y'L���@Zٱh\"�ʎC�z��W1J�Q?#���c���z:F����c��z:F.��g`�*�zF.����H��zێ�˩��H��zێ��<��� E]������r��9/����x���p��Z�ku��<��Z�x9�Ԋ���n��� iVۢq=���.ڡyWV�B�z>E����S�z���:���&fΥ�C�B��{:D�Z�۳h}��BO��u0���4�Qh|��4��h\"��׃>6��Kl$���˃BQ3Y��1�ӞF��d�����Ɋ����@SZ� f�@L�Ax�:H /U	�� �T$�����Ru� N���IU;8�
I 'U!	��6�r�X�?f (��>y��:i�p '���r�Tf# ��l޵�R����X	F��|�#��<���X���_]4�"�!�R�%'�xK$PN� N*��Ie8�r�Yhʽf����pR5� N�pR,(���PO*[�1j�����9�� 4-.@M�~`Ӳ���I�В1�7�Z �q_��ʿ�x� <-�-@O�N���K�k�nI ]��D�e�nI]���X�[�c�oiP�{|�ђ/�R��FiZ�J�˴oђ�,�-�˖�2e��i=o���t� x}В/c�տ�h�73���;���X��D�:�Dե����{��X����X��9�X4��<MtF��]��� ��o�B��������|maW��K�]��o"7]�EK>�2�;���X��u��j^��g6�����k���C,^�i6�k܋���=IwF���՝RO;�鞙D��=3�j��=hɗ�t����#D~�#	N����x^�I�u}���%%!w�����9��|�h�A��h{�y�^%8�C���ߢw�Z@U�{)I#c�~W#zz�{5��+  ^��C�y$T�oZ�!��jSh�k�ۦ��h����1��&��~tl7�`�*n����[!��z����o�Xկ�g���g�{��1�����r�4+[��}լ����ǇN��1��z�RV��Hi�ʎ��\��
zҵ�� �;��C��bk��A��k��A�����Ew�6FAt��Q������	»������X�6�@6�_��B*�_��B ��7�o����x��6�P1�:��ݳќwƱh������7�D��=;�Ļ{v�w�)�w�9����m,��|� $��"�w��%���3�
��[��W5Z�!�7�5h~���u�jm��{�\[!�ޣ�whؗ��w�������i�v�ucI�C-~�b�&?j��]�ڃH<�}h����)��� ��i��C$Ƨ3hɗ�2}����UO��W=�wO_��.?_�(��/0_�h���X�g,�wO�X cB,Z�!�KZ�!���M�n��y�"_�ab9��!�-ߢa_��7�
�𾯸���JB��^^Io��V(��}��e�G��w/?*�{�������m��a���i�}�B���B\!���_��n���L�~co�p��;�ڷhɗ��|�CK��ek�C0���>D�[��ح��
)��?��?�~m����x
�?Px{��`U�+ı[%�����L����41x��J���n�MV�g�^'+���͠hR�n�4v�!r��PH`�[��u��%�]�9?�A��S����ϸ�,
��v�($���n�'Bʺ�c��
46ӂLu�iA���	9��;$$�;|� ���4�;$����n�0HH�yd����CBz�� �<�h�s4H?�95�v!�a�A��(p��A$��3h�{�ĳr-��Gw-����-R��D�+�k�~�ׁ�g�JZ�e,fv@3;�O���
��byw*Ď��;�c�Q�1�q;� ��v�Zţj}�>�\_��t��
���[+D��l2�c����+Z������t�!D<f�.���h1�i��-M��w7t5��B`x�V��1��\�MB"x��
Q��+D��L��c&	��1����IB�w�� �;�|��u?5 ��~j@�w�!�;��WѯߝWү�ܝW3�ڝW4��]��&��5A'�x/(��x/t<���S?���}������u����u����yG��O���5-������C,�۹hɇX�^�%b��Og艌ާC&w�b5�Us�h|��6=fsx�=fsh:fs���u�V4@��JZ�u�����|�������7�Ϗ�֏�~~Ķ����#>�zz��>0���n�Q@,w��f����]pz�� N/�����N/���^x${E ���j�ہ�O���;�J�~��1�C��1�C�T7������A�v�]�~w1��ޗ�RoL��/B�v��T�y�
<�mz�+	A���JBFv�� ;�a��s-�Ls-Î��@������o����zo�q��&t��Y0�g�����MS��ҭ�G�%b�?0���(��� �:?ҫ�< �:��c�7{�ɛ=������c�a�1w��阻A�t��dM�[~����IQ��2�c���1�(��l
)�����m��w�	�Vs;Ȏ��E��*�cn��z�
9䷮��熻�xn�C~k9��JyOq4ZEyOq�~���o���p ����(1�_���h?��� �	���{f�h�
�Gt_��#گ���뿒��W�l��s5Z���.t�؃8|=��%_���AVh�t`�'Z���0ㄦ(�8�#��3�g���!����DD�g��d�s�h�
�"!+Z_�H~������|��g�Ǡ�s&.�Y)�>aV
�O��B�f��Y)�;aV
�N8��N8��M�YB�f��ބ_V �	��@^~d�Y+��B�V�!�f��S�Z�GZ���tj�Z��+�Z�e�f��B�V�w!���#=���'�c�)Z����p�r�p��p���p�B�u�oZ�!��Z�����-���q���X�o Z��;B>���B4���B*f��ǄY.$1a��V�0˅(&�d!�	3Y�_��\a�^�0˅&�r!�	�\�^�,�\a��K��B��WB��WB��WB��WB�f�h�
3\tv����%~X,�+��b�Y��J��XT��B�f����Y(�'1=���x�o��Y�ؼj��g�����cJt�P�>�,R�`���W��M��0��#�C��׹ �׹ �sP�+�b�0τ|"�3!��I�$�l҈p���p�B�peʆpeJ��7p4���C���Tޞ�@���-�P�s,��9`��$�#�I��q��qBUξ@Gξ��[�̛�A� ��,��sA( �\5�0B?X��!,�w�W�S!x* ��#j���#��Ƌ���ظ��}7Q������yYT���u�0?G�=��������c����0GG=�cE�<�cE�<��+h�#�
:��'���y��WQspT���ba��N�0�F�X�K�Y,̥�-Ο�],�?E�X8���p�c��)Z���S���@����&�c�m,̱�yT1�F�My�_�]f�Z���l@+N���8��V�b�˾�b�K�{q����,,��Ŵ�½b�KE^1a�ު�1SU~6ڣ���l�GD1ѥ����.�.������μ�o�A� ����ˠ���>��|�)&�|1)f�`����c����ֻ� ѭTo,ȿ+&�����.�;hZ���y)���tq�A3�Ž�0]�}�S��uc2tݘLqF1������R�Q����Ly��+z�h�˘4��K�Y��I1��0���R�QLa)�(气\�X�,�Y,�ŲJ)�u?TO��~5~�U�����p�T��C�ec���*S�s��(&��_�)/���&��|���M�I�Dq]����=���{>�z/D�B��.U�~(�˔;�e*�	3�Ō�B�b�LqB1g��8�K �  	Bq�bZL�A1/F�Ej�ϔQ��RlP�U)/(&���U���*u�|�o��ej
)+-D5��Ͼ^D5��Ͼ^D5]�fM��[�f�����}q�����R;��ŵvV���\��(?�c��2�s���b2�j|1f���^�wY,/Nɲ<^��e5�,�k"��&ү7����$�[�]Y�.W�]Y�.$���>�z�{��,]~t��D�Ms}槸d-��+Q`��lkX�.�

67��Vlb�va����3+�e�����~o=��g�w��Ϭ�v�I(���,���b��rq1�c������]\��ά���V���g���:,������� )��� )� &��O �Pր�[�*��6�UVz���*���6�UVm�H�T[~P��)p��_�����!&˶�'g�zl�n�,�oͪk��,�oͺjqB����2+�Ŕ�E�b��:hq☥���1�Ŕ��bN{�p�%���1��Ŕ���b���$e��>�g��0�e�����YL~Yx,f����������s���9`���Zo[]eŲ����F���fQ�m(�*d}�u�����*�oki���Ҭ8�l/�G��Ӄ����8��������,�ퟌ�s:�g��G���S��-�O���[U��}�~���E�|�wM�ۻ�Yd�������P�/����̝�4�j�L�U���/�fչ_V�j5��U�E~�Voe]�X��uE`����C��׎X�#X돔}���hY�+X��ue��[XW�Ǽ�ueI��XW�Vod]Y�V֕u���+�_�50VV���ue���ZWֵ��ue!�[[W֭��3Zi���|F����^���,:y��:S�I��Tr��9��d�3�;yם�����S�;��3�A�ܙ5o�]Y��vڕU�jv̲L5;f%��mW_��veU�[nW�Vo�]Y=��ڕ�o�]Y#�O�ʺH���uo�]Y��vٕ��o�mZ볪~	Q���he��6{��i�q�4y�
���,4Tg�Y[�N��P�f��nW��ve�����,ԟ<�� o�]���Fە��j1S��jf���vE{b�����Z���Z�Oef��fW&�qve���73e_͛�{����g%��S3�^ͩ�k��ڕ�uo�]�Q��ڕIto�]�7��ڕ�ro�]��6���%�/�1��&ڕ�po�]���N"Q�Y� �;��Txu����d1����b淫��LiW癙��Vە�ko�]���vە�io�]���N�2	]�qe޹:E�Tsu����9P䓷s��[r���;������eLS��Y�2&������d/ӧ��^�K�ӽL�V�{���2	Z�|e޳����x��N?1�魹k0���L����<��Ly����ػ2�Y��eڲ:w�LeOnLMV���L���nL<z��\b�lL<V1�V�"�]�)/�{_=��˿��2�15��ivC6p�����x�7��ߣxy�V�oR��j+܋������ڔwmL�5�]�w�~�1]��������73�g      .      x�=�Y��C���#�����#��^~�Q*��Q$\�W�~�������y����W������k4�?�~�o���U���������_���W�WC�ϯ�n-,#��7��=otJz����ש�{�W����Я��O_�_�_����}����c�K���1� j�n�0��ߠ��?����S_�e�k����ߟ��s�#������~����P��J�e���N�����|���t����k����OO��7��s���S�]�d�o깮伀�[z,u[����c/uZ��J�i��'c�O��S-귶���7ݣ��v��Tv�5L[������t�0X���.�m=u���*�c=�����s=Ni�Q7�����x���3��C7,���44.��Y�*^M�AE.����<1q?�
�`ͪ��sUSM�e�o4Ɏ��e�m��z=�[3��n��[P7*!�R�L��� �����o.� �Ο:�E�o���%�W�,d�iс��Xwp��<¥��=Kkﴔ���b�y5j�Ʋ�� C��9.�A~�XZ��{/�iD�,�lJ�PÀQ-D��5ҷZ�'�c�z�K���Po�#�N�Q��2->O�Ҫ��/-�?��� U����
��Ժ��7-��I_ZHL.� �J��yO�6�L�w?讛ڲ4ˤX-��b�`S�Zh�!�a�ʱ 4쾐��y}���Їkìo&�bn7&[1�[ruC
!��ӹX6��;2Sk-C
�Õۏ!d��U:�S4���23�2����03k�Y�OA��YY�a&#�K���gV& �PS�k���f1�\ c=�bj���sQ#��b3�E�Sj]#=���I�2�O���Y�S%fKOG�a��\�\מ�S9M�KO �2�[Sk�W��jI
u#��ޠ�r�0r!����$�<=zۆ<K3��P�{�=e:��a̎���tv!L�B�w���燲�+�0�);C�f#����=P��a7�3�t:c0�ǝ�g��q�1R7ѱ�s�;�қ�F:.=FM.�f��9���L�Y����J�P�A����������u�p��c�4S��YZ�R�
d�3EK�3�^�����E��Z�X�a���˖}9��4�X��Y�	�f��iA�{;~���N��{�gg��<;�J���t��,x�,�^-�'jY�0u�x d��<�	���D��e�����X��vU?�!K�f�w!�ű�\��Fz$�p�9|s����k	/xk�����w3������/�K5|��f��60C6�3\�9��fe@7�1\��1\z�p��ި��Ps����3����r��Q���sk��B���{��D��j��3rfE@�T�Z)��܎%��+,�<K��W7H��LC�$b0e��v���g7�DА\f�iHh�v"	g��/��rE>1�߇�K��p��J����/���Rfz�&f r�����_C��sM�]?���s��P�p|�j��a���i��:��6R=v�-|��ql���@�Z�`���;������
T��!CA2�	�җ�9����!�2������M�l�l�AB>�|b�Rm9�2U��������djd�E@
eixC��݇�o����iH!��}{����
d�0��jCC��u�����;4)���'z0;S�)���։ ���D�l�9���� �_<�s��D@·�Z��PLm�ɽF:6ٹ�)Ď��牯7���\&+����Δ���8nX�w���Qw@�qP��iw@ވ̰��Ɗ�=`��԰\]�a���s�`].��1,�^X�e��Ѐr��vpa��u���bȆ4`�=�(b��t-K{ʔ�LA����/4��}s�,�n`�m����cЀ�gڀG��5н��,#5�8 ��s�;ǅ+H}5��5�f$39�N�ʎ�TA��*(K77\�`r�\�P��6��{��d�� � � +�	&��1������	gV�a��374�p��|h#��=��js��ޘY.�F�a�+�=�(Č����m+�$JP=ѓf��cu
�!���,"�/Ǚq���
�S�VJO �x�����Ћ��ċ%���ϐS��@�P�T�ײ����8��(vN�^��`�7��Qa�B2�g
��z�6�@��aͶ)Ŗ	f�c8�0��6յ_�i���U�l}�e'��1����d�����&�7a3!��	e�7�{A�H7w̸�f/C
�b_vv�x7�D���(��l<��V��3X�SMQ&;�c<�S��rP������3���'�A����1t��QBy3�E�OP�i��8v���}pz�N*4]g"u��@!Y��cby��0��ǜXrMf�P�7��ԣ���;S8)�!Rh���3ۇ�ɓYC���⳹�0޴��F.���i;�C,v.�k�d��A����s���sBv�+Pχp慾 u	�`������m,n#b)O��8l7M�.t�i<�pL4v8~�p��p�I'���n5閯��ۍt��;u��98�4���7��aD��:� ��H�2����) 7�Dha��QZ" �]-�ġD��9��V������m�4-���9����*l��vC�U�rb�N �|TX�e�\)dG$�,~�5�[�
�P9�,~0�#�#N�? �RvL�K�0|D܆�I��ձ3�Ǝ�`}��]p]�@,�@Y�Di�pnd]�0��$����Q(~��Q���B�Å����3����0�n<"ՃL���r����r��nqJw�ρ���=v��d:'L�m''�3k�~��ߔ�Տ53���x����y�.�'�����i	#U�@��C 2A��0⥹p�x��;>a-Q��j�.�ψƊ��*K�0����y.j�?���� �����~K�0�8Y"<5�+j�c-R��pr���YFz"i��:����Oo�kY�z3�3 A�3�\5o�#�~I��xwo-���
��9D���&��-L�چp����궡�Ph��3l9�����Z�ʎe���R6�ำ �(CǗB	�i�d�^��3�#ZFGH��h&t�(��cgf������R7�+'��P��O�������Xʆns�%��!�uBe$�ZLm�>#�d�y�\g� 3�����⹾a���!�BeDٷ�2HnaC�lrp��M΋ӡ�6�[-Q��[3�o5�f�>�i�|�ښgx�.�)%Ӈ���4"=���'m#߃!s����g����7�����T��7���ܚ�ۉ�b>:����[,<�Mr�̣��b��cy�c,�Q�4cv�M��[�&�X��M��2��`�&�Y,�M��7��c�m���
�R7lMf��[SxƗߚ�@=S��C�����/��	S��IR�&!n.�o7���;��@�2���K�{)Ŕ7��H�2��4e+��L$Jp4_p��T���8��>��fN�/�����h���w
S��C���$��!��-�X��0�g�:�����!�_�Ih�h8fH�h� �M@�t��'��t�⨗g�PG};�1?l��.!YJ
�p2�!�p4J��|�JZfW\��9�2F|�'����w�������Qsq�x�x�e�a^3L��1'�QkN�>�&�\p �8�g8��ЄzYq����#�L�\��W�"^B�p����M����ׁ"K�@��>�Eɬg@C�,D�� �$4�dzX��~H��@#��s@���B�Bb�G �����n;��5S(K��±��X�P)�����ۃAl�~�N�a��A۾ہ�:�qM!��v������m?��4lv�C���8Y��O�o�+��8l	�8�=��ʁ�Ձ�_��G�;x?���3)�_`T������b��e���sr�	�.,y�\�݅Pi��b��.��\(Sٝ/�p="~���?\&��Ke�z\�����7�?$Ss�l���^N�p�����]�.    ���.�tR5W���t��\��Q�P/�Cs�|Up�.\��Ch�1عn=�K�MHf��wI^���B2��%�q7^.���4r�y_���5S(;����]H-G���Sw�@͒�%���=%�+4�(���ׄ�"ݙ�S��V�ZW� �N��P�2��Y�Ż0�s�%��31�sxvB2�]q|�B9�\9g���&6}YW�'"��х��d&�ʽ���%��.(t��5�W�%��E?��yG���� BL��^$K���YFt;����!ZJ&�Z�D��2�H������и�ނC�tn����j.:�,C"�r�~{�u;j&�L�|4-�������Xs��j�(*���O*T����`�Ӿz�7�r$�7����Y��"�g��b�X�w+b���2F����_�5�w{Śx?h�t�'�D��o �tk=&w�L<6��F��jk�]��^�5�H�"��R�y�#�i�m>@e�kZ�3�q�e�ITA�(�Ŷ)��0�t�M��Z)X����2�k�4� ���]?bLC��P�詡�x����+^�RJ6#R����QmA��#Z84����q���e�G&����A�y4O�yb1���Z0U�kyj����˭b��e$�]|o������
nHt8�j�7�ӏ1F�x�������Ä'�7�I~>M\#���rm���w�4f -��W_���ʃ�jUR�X}M=-���p�Lyv��:^��'&"�Ǝ�Xю���X�̂'�����!%ꬔ`�-��a�U�H<����[,w�{'p��ݔ^C�Z�{f�XLi)PYM�TYOi�x#n�Pk��,��#�۰�l����)erF�gq��VS�W�'�d��Χ,�LX�����Oc�Ț���`��$�R�87C>+À�m;]TH�89G��c�������Z�$_[܌��g�g�O������ڎ[]��1Ł�!�����eh;�Q([T�>�X#aEs�
ڑ�5����ж��b������!���a�<��1��U6�6*de`��ANDj2��":�*Qr�,��=�In��mha-���o&@D'��{����.<���}q��4�vX뾜�-�_��O�hV�{m����k[bT�{]�8z/�{��J_���#q��J��i`�4��ܩ���Q!�ꖵ��:��."�>u/��M��\QqF�ː�,�A=��n�'oE�u�]"�Z�-e<���"�zK
mV=e�,�[u��S���k�=�.Ƥ�����GU����1�cP��:ـ�X��(��*bm�߉��5�kO$UD�ː�Qߞ�ASE���l��Sj�ʸЅ��}Չ�\ȨNBFխ�v�w�3qH�/�7ɷ%ш���ȥN�Uv��B��:y��B��ǅ���A.dO'z�B��P6?k�9�D}
i�y/��m2�2l��Y%��p�n�Az1����dp�e"���n�b���c3� )�06�7�9:���FQ�[_�Q!+:����Ws���D���ʧ1F'��7��+�v.�B�Y�B!tގ�F��׻h��S�����E	L1F�V(��P�Ƽ�Q�}����cH��V���_A��r���N������s�ǐ򜕶��x{Q�[!�������to�v��U��:�g��^!��\��9�غ�[+��Х���7R�J\!�!�D�?�7�a�����%OQ�罭�H��רG�I��y�JbM�� �l�
���R��9Q-�U8Q��s2���9�	���s�mNԶ���}��1���A��ơ+ V���+l%�+�9Shf�c�q��a�L&����2���)1ĵl���(a�r�|�\V�Y̹y��\)=����~��,w��^-A%2�T"s��d"uS<}1��/��Е�~�� ��\M3�{��S�ܓ·�)%��~�~�RN�;��Х��|D@�r-($*+���K�ݙ����1�!�=@�B�N%������4D)`�Ƀ4���(N�\B���W��/���4� "�Dsr�w�2����% ��XL��f�b-P�~1H�|~ ���^{A|J��W�B�<b<�)�h�
T����7�Z�9�H�/�.�f.fŇE�rsBG�rߛ0���0�H�VV2�
����	�R�'D6��Ф�eB���<���M�{A������{S#���{~⒛�[!)��o@Ir�߀~Ęw�VC��E�{O�1�`��2�P�\�
���/᝭T���;���<{�`�h�g���~��D>�Kh;��b��!o&I�ڎ��$�{�!갚���x.�e��pc�����ԊS�s9�i\k�
q�X�+52',��ܹ�`��g ��V�2��\��/�Z
B�:b��C3b
ⶾQ��1��f
��}�:�;_�V�����}�`�`l�>����p> 1C�f��9�T�,�ʋt��)���[2e��z�	9�Tnґw�h���1P&��M���4v9�(���<��9	(���	��x8W�R�2�$Q�q2:P�{mU�}�G�nο�/��xЉ�����H�7B�����u�w���`7+م����j����Cd�����<�,TYV�_��D݃o0��E�a?���M�f������褛 �章� 0n������`�l��޴�f6e��9"�]���Qb4�M�M���2�z%Tt�+��� \0�.��P)ܸ(���_��]OH���:BE������;���QL�׭,Ȯ��������X���Ѳ�,% �/ �������C�U��-h��T�u�klU@���,h�^O5M[�]�DR����B��vY �^�t���p���c���N�ם�o���~ˁݩ}�6�3�{I�I}� ���p����@���:���S�y�M����u�����z���mٹ|y���j���O0�V|�mg�[B�����{Iد��-j�r~�������w\�Moo�v�<���W�z~����n�N�����~�t�[����?��J��ɕ�����-9�"���<�{CjW�ːB �9�p��Y&�����3����t��*Ij�L�Yj� ���wr�m߼c݂)w n�Y�4�xk�Ǒ��;���F�Lr�N�T�x]���F���n�%�"�l�k�~�o$��r����-^ Ye�Wx���^[�&L�W{���_v��_��|����T�(7kk�7N���r�2`lϞ��'���9ߓ�"�z���a������|�m�nĲz6��Z&�w����f���ʲHVx�f&�e�q��VZ�	�������in�l�oKrl��V�sgy���+gw��`�$�r�p���cf������%�/n��0�m���=6𯞴���wN��&��յLr;�_�h{�o���ol?M7�f�r~�����l����o��5<�؛� N:��|z��������������	�z��Λ=&��K�b>��Nˢ���w�E�ߨ�e~;�]������|w9�L���=8a��|1��֣�e��i�����1���Fܵ���a{��g�}�����7"�`�h�{?3��o7�@OU^
.��+'y'�������WN��;�;�O���i20��T����)�++X���ʏ��m7ۦ3�|��6��D����\��/��{�v4���N�W�'�����䭮r���ů�-�)x�7�����s��~N��w&;�����v?��s敷�����v�`?�II�;u�P蟪��4�KF=G���_��9q��oP�l�N�W�0���|�o��ܷE,y������c�v���Iw��U��^�ٰ2���rbۿ��v2�4����z~Iu��3������r¹�"A%��r�o�~��8�\�1�r&���Emk�W�a���Ef��·�/���z< ��;�l�����!�sT.�����,���J�N���.YL� J��I3"yܞÕS��1_c��}��7���-#�;P~���{��l�n�s��η�;�JΓ���[����-��5y]��5V����ƾ�a�0���b3q�a�m�θ�yV�ƶ�p �  y��b��m	(8�Z/iᜪm�����[9�Z�Cp�^j�o��C��w7j��Cpr�^F}��^���?[@�F��w��)Tұ\����;�;]�~���%�dȓ%�os�s���N��;5�u/�7sn0�&9KR�)Oc���K-g7�����1ǽ����IU&3q�q;�'++oQ�ӕ�bNM��Os�IMq~E���$;L;Lp�Ó���Ր�:�H1����XNN����H�	��|�o�����	g+�	g�\��k��Zj2��'�=cj��4��t�\������I=So3�"�H<����Х��?��~�S�������E���J�?9�$��3��2�)�/* �a�	���r�Z�.?�����~ˤ�).�˹�����/c���=�-����H9���6;�w�G��B��_�`�[sB�������~��� �;�!      4      x������ � �      *      x�u]Y�ۺ����+�'�r�?��ՀrNv�9�d���)?��9�g\���ϧ���S��2~�3~F�z>�g�?��a^?�g�����ᇷJ���<?�~E���Ǎ�.���L��w|6-%�l��_~�7��y��S��h������ϧ���NB�����8��Α�������?������4�+|�ր?x�$	������g}���ӂ�����45�����ߢ��'~槣�1t߄����X�X��.���|j�\x�؛O�|�=cZ�\ŋ��]�:1�1щʮ����s�Ĝb6���h*�V5�u~���ţ1�,���|W��'��#���z����秵|�$o�k=�:�8��5�4vty��ǈg���/���E�����Z�[��a���M��G�{��LN�<��u0�C۠`+��u>��P�����.&��ϧ{)$�E��'x�����O�K(��9� }sf�k���Gs;�����[��޴r�*�4q�h�8��l��A>�L���,��z>�5�1�����v)���X��v�☉��`��V(�>���_��Q��!M�V�N�z��ܟY$���������A���^�yӬ�l9��ܯ���-�?�nd�����YȌ�U�������h��?�oh�h��$�)�
C~��1���,鞐IHg0Tq\ǜ7fg~��JN���|FM�'�ٗ���"B�q�F��9��.%�<ZB�b��f��t�U��Yԙ1��Ǧ��l-y{l�4���Ǔ�ӳ����G췹l�`�UV[F�ʎ��ْט�S�C�������)"�Bj��� �|���8���а�/�Ι�| T�#�*�xq�o�����
j���Lx��n��9�g`-� ����ܔ�\�N��9��h��C�sV�@�n���l{24���
�Dӱd�����������.x��)�֛��5�����S�@c� wK�:��a��h���ё�	�y�yE�A���p�uK�s��|!���},!��c������i������-��TZypI�Z�EO��E��R�+��\�
Ǽ���p��@�g^��@�IӴT�|x۫Iާ�U�y�y��*��T�܇g�k�4NM&�*��ς�d;������F��R�����ąς�*����}>E~˖g�	�=NY�b�I������>�_�Z+Rͥ����x�wj/3�^)��*��W>Mn�������/�_�NXv�]ə0GA^"�*7�&�_,1�1j�J���iҪ�̓��?/{�'��Wj���~���I;�u�'��?qo����6�lsu��������������3�LЏ�ZibY�!)�R���*�\�q�#$&����3?.�hv���7l���A�IЩ�uB,W�@}�fC��ă�F~0~�Rpj��!�bFBG]�+��-��DP������[���݈X	OL�h\S��*v%{B����6���6d�0@w�s{Yp?�Ӛc�+��
c�W,��2^��Ņk3���j��x�g��bTqdHSƃ\pM�ECG,F�SAG�Y�Ʃ��9c���Ä����[��.�ݠ�ȱ�,-���yV1G�(6��L�N+P�ۜA3�B�R��a#wu����a��z;��K�@�'�P�X��D}`���/n���1��%@P���B���)�j�O��)��mO���^Ta����`o����8�t�mO^I�Yސ ��<����y0��Σ-H��T~hq5Ч�"'�v���Q�ȣ�۠��N:`P!ar;�<�8&�#�����F,|�B� ���8���A��"�]}���ZLv}����qCL�X|:"��ϯ��>���D�u�g+��9�K�)M@0JB�C�ʠ�9�����J�6<�~$�]��ѳ����pV�>���i��*�pX,W�y��k+�����<A>n�Ԝb�O��ea�K�à��_t��Z�?~�,Z����C���D��5�_�8�,ei�50p{���%�.NC$nH4�BN{bv�y������-ի,APɶrG�U�n�Vt����*����t��2�۟yI��2��m��u��N}X���Bc9 ��N�9�NeXc��\Oo*~z��RQ��ĭ��2y��Vϐ�|}c �|vm)p��u¬i��7}��U$�ݥ���'�G01��S�L�aJ��Ѵt�ऀ7B��=�[��QT��+O��n��V�h���O�L�x)��V����y}ANZ@���~�\�i�Ѳ���E���:�����7�	jaߌ�&�7*�����҈����q8ouv�$F%�+�m��ϩ'B��\����_,	�^�m<p�����GK�ɥ>읣�����X�����et1ʔ�'���~9�W�X�y�L�Rܬ+�V�A	8��X�fk��������IN�*�EN�
5Q���E��oԆ��Q'�@!��@���^�;��M�
E*)!��a�V]�F����@]orad|R����S�0���+{���22a"\��be;���dfB9x����{��wHa}����p��u��4�8V&`ΏLJ%4q�y��x���N��Vt��i�ҙ��S�����y�i��H�&�"\r����ڂC�����o���uyfܘy��1["�H�x-2� O�=;aFK�Tq�d���Ŝ�V���s���^(LK1e�vP+=���c.�/�!�jI�^�����{ym%1e��\��N����$���ћ�p��9�Ne[9~��t}����'�X��)�e^��Dg1A�1˱�JN��R����h���dP���eX�V��TFH��/	i�qG�L._����o5��s�|��'�;���X.���hP0��A�:�9�]��6�G��LJ���8XaK�����}b��q�ܔڂ���kX��n#1-�Q����Y�'ب"06�|�x���s���O��!vNoB�`` !h��BM�џ�ѿ2^;�_AOw�}E}-��y�]�����8�,F�V�p9�`21��F+������SC��p�b�X���n��V*&����vG{��}��m��a�$-�4�/2C`��:�s5P�.8�I��A@�{J�9�� i\�N4��+�J�=�.+U%��^�5�F-_B"ͼ���Y㹢;s��Z�|MNо��J���`�z��k<�K�I�������=N��^R�d_�:<c�n	��b�V�YV�m�ٶ���j�+���`!]�Ƣld��&>�?%�Β��Ŭ154�4rӏa���)��q�r;[�o뻾����P��^U����V��f�HE��m�_��#���H}۲a��ꉶ�s��h41PV���?�i�\��Jo��j�����o�O55+88���y�F�j���;�Fm߷yk^L�ZqH�Y�
����H�`m�c�Y�m�Jƃ��dpr�I�p":}�^�٘xZ
H<���@����,�!8�	��UZ�w�!7��_M������y$���i
�x���ą�?2���*�^�#����Rn�@�H�1����Q��Ҿ�Ō(Q`Q2�j���Y�.][hhj4����+�"�za�~o��3�,oW)OO�
��#bH�0�d����'�Ir�k��y�ܬo^��g��Kh���U��[Pt2S���K1�j��#A�Jݿ�1u@��8Ḻ���ߋ#X��J���&;P��T桢�GE5^�ZB�_UR�ѹW�~~��a��,DǞ׆���m�pK�hx�e<�"����;ӊI�B���[�^Tڒ+ZĂJ�uN���*i �`�\��������.�%g�,�����r�N�V}y�O�8����V�m�c�se��������˅l�L ���!�E��ݖ6��<;�-NנhR�S���;���z7��Tg�/�QZ9h����(��4F(-ek�ō#�%&��:���ֹ�yj����0�g֬���`�IӸ��V8}:�
׷l?ѣ'�
�N��^M��3a�%fRmC���s��j&�ܙ_쾮�p')�Vq�lA:uկd�p�z    ���70jה��>R�1	��B5'���b6M��r$��oTz�9�S���زL�����,�Ѐ�&D��GJ�*jI�&�-A�qG3�r��yd�֯6��+b���+��T5@|A^��Jj~�fј��)�}�V���'�D{�9R�DgU��r_�fN�e�M�]0��J�D� l���5�=�~�ɩIg����·�s|АB��(���s��)�È�3�T��VS�ԒV�ڂZS���>��l���d���h\� K!=�v)�vܠ>,�BP=Y��,�R���_�g���Q�\�7�p�:}:��3�s���I�� vl�KԔ�xC�D@3�!Z��]oP���ĻK�oO[BEGq#��~��q�p�JS;���4�<T�pC	���<����#墰a��U	�����*Փ�+��O��p��uˍ��*|���X��@���q�|S�d#�D�����/��k��S�������>(}͡8�O�j��̷��2T'��RiP�'��3ӰfC��[�[��p��P����d��"��W��4+:�/���&87�]���du�=�L�*�8�
�҆Je�^ҝKHuM��HG>�=����r8}{h�Q�4��n�!�^�5e	�ѷ}��5X �ENy��$�#C܋��^坬2����F�D�I�X�P*�Eyj��^��a ��1f)���NH�X?�plаA�Ǿ�s^�3 ��Ju��13�^y�CO Rec:\��^*q���[���
z���?�mZ��9w��tƜo^����R����s�E�f�������&\77֠�`���5��ca�WMd4��`�����v�۰�uL���)S�ius�]�C�Gi$]���N�1م:бnM�Ȣ��Na�:�:C
�o o tR��&�,��[f�3�XxV�|��!�m�衟<�c�vni 0��<�"kJw��[����y�Ͻ��C���U��c����d�� ]���ﴵ`�O�wsF�?X����̌-b�q��z�l�G}��>��}�O�D�����5�EY�<�����v�ԙ�6�Ů�7��fBqe8�An��yMq��u"Ǧ�纴c8��D�!SPѢ�+K�[P�����\��$�)���>�<o�GI�0�S���pO4^Dq���;�0s�q���!aP]�,Y$�=�#9QPT�/K�+Yd�
yT����U"��b��?}�Y����.<b��K_f9�b��z�@�7k���J�9k�?5����%��3����J;�W]/�?S�M�R�嚶a�_���t�fA�lY����l�n]@�C5����c�C�+�	�n 8k;����<�k�-_��]�˖w*��Ia�����.�����3}k������~��A�c�pn��ϛ&2$���~�m��=�T���0�]��ޛ���Ӧxk�aľ���A0S"^�hÈ���Y�3��e^��T����wu���������o�
�#������睃����̢P'���T�BmX2��`6���:�����
�Q�q���~`=�p�dm�V3�d��?L�̸��&6�*
�ڹsuļ�RNg��1��w��᭩��D�h�
ѝK|7�)�"�B�]Q��+�'�zl�3�����k��*��YƻVK��dp�(sX �\tz�6nu�J�w�jL�
�9��͐F���Ӗߘ�	�R�FQ�������*�s�w���X8�ko:��QR�׷~��xvy���wa�:Q�=Aq�E�f�S鬴f1+{��҄*�~
�rV0�v��%�`�U׭�Wd-�m�	�j�$��y?n�$3���v F�3X3��D��#�ﯩ<�����4H슇;���ay��s�r�0u�\.8��j���,��`S�����i\v"�>ŝ��LB빛�n��XOV��dXh�"�i��\�̲{����X�7㱏ۙ������d�	�]���WŮ��3����f:�`�|m|���R9�L@A��*�~�bܘ_��؃��~)��sP����죍c����gU�7g8������_�*�P-��Gl�m��+V�c���j7ge(|��=l���.3���N���ٸ�ӛ�	|�q��.fG2��0qi�������AG�5�w�d�]�Q�=�xV�0���Z�≖���	����z��y�7�ԥ�^��U��q�\�k�a�x�HT�$K�#;
|�W]5�ڟaw�
QZ�c�JPU��D��@�������v"w���Q*���0���T'	9-A^?o�+B����㦬���U�ⷔ�Y�[�T*�������������Am�}	"���lg���q�"�b@�	��9��Lv���&����A?����zI���@Uk�=F�mm!�{������z���N���AH��,-Ŝ^�2s��n3S�/̄��~�>2�⺒�]l�!tdD��`��Z~��_�-A�����v�	�����Z��9Y��YyDO�#QEҕTA�k��f���t����������y��n�v��un��p�zľo��f��Zp���f�A����#(�c���k�y�>�ˡ/�qy��$��E=�Q��[o��*��a ;���]l7:堂ڜ;7�ǨO���Ii#�|Oc�'�Ԡ�l�p	F�K�e�-4�ʟ��;�c�e�2�@�25�o{�$��$��#����՞��<��(�µ w�u�@�܅�['��TH����=����t���_�č����v���An�}�[���%���w).w7�j}�]�?��^��q�d��.�O{�O�\�Mr\���Ӊ��Z���s�/���'� �[�}SƠ*H�r5�����^�+_�Z��=����C\��]"�n��B_,w=�]3@��k�5�MNnwcwk!� A=_䳀�*�SL����F#6�A��6��A�<Gi}U����:���0ٹe+v�o�鄿j��WU�y���b��spp�'���
�y���O����v{����r�������Y��������\j���I��ԡ?[�hA����ʳ�Fn������;9ܴ��r�TGóWXo��*�U�a�����ˎ�N`�5�W���bO)GAͬ��(C�Pw��n�=�p^�'�
���\f��J���_����a'�y�LQ!R�&59àW��n(�h�����6C}=��7�堲�����	��ŭ#z���
~�Jk���9a{��)3�(�a�Aj��(fǲ��av�}g/=����o_��.BV�7��y���y�����j��#.�Ya,C�k��נ�k��}HsV��DuX:tAcE��:wQ��p�Zp�7ڛm�}��;���%�Ï�/6Sqt{{�!�w�g�N[V��4�{�3��r����U�7c��\�}���W�n����A��s��*]�&��zm���VX�,,Į�P_$���_��*vy;�/�����aE�s��ws��ߣ�lm�[�e�VP��t���'��[�Y`p��y:�k�V�-�G� �zsk����jɬrP߭�%!>M�[g��oF�'UTb�f'�H�C
����&��ʎ�T�rJ{��=V1zXz��/�:Q�Y9r�iN�8��9�S��,���Zhe'��"�|A���yj}2Szn��CGI7/�H4-��M���" �)�h��B�?��K�.�y��7�
�Jg�P�=N�dO֋�P*����䵔�9��7�*7��	�a�}�}��J�otuml�s#�߀������6C��'2,rA����f<���Ro3�"����kC�`Uv�i�
i����<�|�z��<-&���rf����T���rZ�^D(�*�syz���a���0�����tJc�v�@���6ɀʃ��(CpB[&�Ǘ~=ް��
�`��Q��Z�3�1����J%�Mz���������uJ�H}��?�_E�������ZV?���oF3n�z�o`|�����);:�(�-hN��-t�k���3�>X�d�QP����`3���y�M����_���j�1��@uj��-��a��6�u�a��u�D�}l��^x�d��� �  ��vֻϢ���
}�=S�Ĭ.a�yTW[/z��0ɣ}��c9.���9;W�z�<-EC�Xг��"&3T�v��c/�u���קr�=��^_��NW
��ۄ�?|`�W<����eM'�|\������a���P;��O3Ԛʀ�$�j,��3�7T��� ���;��\`x��@�g@�&P׫��1*���'�4��E��j<������ �qB�~�930h��3�#|�o�^��qŹ�v��F����d� v�Y9_�#�x�S!�Aϕw�����S�˓�-l�Ǎb����&���fHnic_������j��k���d�Xc;�g�(-@��z3D-��[��ֻ\a���c�#�[HEyh�rë6����*|���ν��o��e�r�����tf�'FV���q�?��kʮ���(�QuV�NL��:��ySæ�dC�*bi��B_yw�r�t���	Ӻ�ruJ��(R
z��:���A�K�
A����lږ�T	��l���JS� �д��H큼��j�`�@B|
wT����^�֎���#�d�[�WY}Y�Ł�
�����F7W9�P�Sr]���:��Ѳ��_0�j���W��32�Lu�C]������^ҙ87�s`�kSs�$^>үw�?�נ܄n�ssi	EPZ�![����v�w����d�Lr]�����u���b�W~�]����TBJ��?��Ǎ�D����[ �lh��v���a���Dީcj}b�5�q'7̬D'����,�Pi��Jz\g�8��^���:�����&nU=O����� ��y������s����?�MGr�G��@��
�[����qc۹�7T!�8���7p��5�i�8	;�&}L̲�`x�/��=�6�Ux��N�Row"�AvP�����-�������T��	ۑp��ifqv,�xk��c8#�Ô]�43�Y9�!	�j��:�:��@���+��P+|��,	�L명��AL��� �u`���m%pO��K��).�.��|�:�A�\f�����ƶ�EŃ
����e�tš���nf)M)���jұR��238�|���۳X�M����z�> �8��+�y��k�����
� ";�,���y��7�h]N�.L���^�mM��3��;E��Q^�]�&�˸<;].�����_ '��N"1yk�p����<�,S ���yd(��fy:oq �X|����)�����H����V����t�5>�'=t,O�f�N��L�����{v'�A>.$�<�����W���v�ޒ���}��p �����o6WꝝmiΓ0����L��Y�����]q��EɸQ@9b	��[��r�Z)��E�Ћ�~�b�����jwr�L�}�+7iSp�m�?��J�Z�n�||�z9���tj���,��pc'�y�PR/8>�(�_4��2�*ߊO���q1n��W�Ú��J��q�rU�ύJʞ�)�w�씮3g��:f��������pS�bB�;������N�ʵ������3FV����\]
��p�f��-��K{��:�xO�#��P�n��e @vӡڙ�ѷ¬�#�j�7�MKQ���1�7K���{����`J���glÂ�X��}����=Y��G���d�� zr��R��t��ƷxN�i_ZfBDfb��F�do_�	��֐�w��V&͸((�C�������!,�H�m��0J��x��mW���q��k����j�)�z����s��h�"hrk�~�%�!��4���R��5uu.o�{�߭D�����_�jwSLTȧ{����Oj�ܪ��rVn^������N�Ԟ�]���'_t��oez�����8�R3�uVY�T�Q�a��K֧�>b�Y.`�r-)H���Ƒ��Gi+��E��\`΍ӫ�α����}>��VG�	           x����n�0 ���]F������@�P��%;�BQ�2�O?���.��9�I��r���es%4�Ox�l��%l�,q��6C3�)N���vG�WOSC��ΙU4C�/RO��I����a�؁���~�����	�ւ���`�i��w?��o2G\�P�������l��rC]�۶/R�8��+����Yy6'��VT_36��f�〜��Y5�Y�#"L"��A#�$Wzk�������]_�S獭Y����K}��ꧦ���pV          �   x���
�0E�{F���*��ED�CZHҡoo�΁Gp�,�*�,�e��
����f�A�������j�f��e��	��c�1#E2�m�P
\������U��ݻ�R�w=�4xx=SZ<�1���R��$�s-q         �   x�3�,NIL,N�T1JR14P	q.,��M6�v+�2��,
�ҳH-�4�ˈ�HL3�)ʩv�p7�*�*�2�,,O"�)�ƕQE^A�)i�����!�~����AA��޹.��Ea��e���y&i�.~^NQF\1z\\\ )-�     