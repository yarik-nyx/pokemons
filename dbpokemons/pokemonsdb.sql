--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: abilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abilities (
    ability_id integer NOT NULL,
    ability_name character varying(50) NOT NULL,
    ability_desc text
);


ALTER TABLE public.abilities OWNER TO postgres;

--
-- Name: abilities_ability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abilities_ability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abilities_ability_id_seq OWNER TO postgres;

--
-- Name: abilities_ability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.abilities_ability_id_seq OWNED BY public.abilities.ability_id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(30) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_category_id_seq OWNER TO postgres;

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- Name: evolutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evolutions (
    evolution_id integer NOT NULL,
    stage integer NOT NULL
);


ALTER TABLE public.evolutions OWNER TO postgres;

--
-- Name: evolutions_evolution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evolutions_evolution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evolutions_evolution_id_seq OWNER TO postgres;

--
-- Name: evolutions_evolution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evolutions_evolution_id_seq OWNED BY public.evolutions.evolution_id;


--
-- Name: genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genders (
    gender_id integer NOT NULL,
    gender_name character varying(1) NOT NULL
);


ALTER TABLE public.genders OWNER TO postgres;

--
-- Name: genders_gender_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genders_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genders_gender_id_seq OWNER TO postgres;

--
-- Name: genders_gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genders_gender_id_seq OWNED BY public.genders.gender_id;


--
-- Name: pokemons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemons (
    pokemon_id integer NOT NULL,
    pokemon_name character varying(50) NOT NULL,
    pokemon_height real,
    pokemon_weight real,
    pokemon_logo character varying(100) NOT NULL,
    evolution_id integer,
    category_id integer,
    stat_id integer NOT NULL
);


ALTER TABLE public.pokemons OWNER TO postgres;

--
-- Name: pokemons_abilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemons_abilities (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    ability_id integer NOT NULL
);


ALTER TABLE public.pokemons_abilities OWNER TO postgres;

--
-- Name: pokemons_abilities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemons_abilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemons_abilities_id_seq OWNER TO postgres;

--
-- Name: pokemons_abilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemons_abilities_id_seq OWNED BY public.pokemons_abilities.id;


--
-- Name: pokemons_genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemons_genders (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    gender_id integer NOT NULL,
    percent real NOT NULL
);


ALTER TABLE public.pokemons_genders OWNER TO postgres;

--
-- Name: pokemons_genders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemons_genders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemons_genders_id_seq OWNER TO postgres;

--
-- Name: pokemons_genders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemons_genders_id_seq OWNED BY public.pokemons_genders.id;


--
-- Name: pokemons_pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemons_pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemons_pokemon_id_seq OWNER TO postgres;

--
-- Name: pokemons_pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemons_pokemon_id_seq OWNED BY public.pokemons.pokemon_id;


--
-- Name: pokemons_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemons_types (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.pokemons_types OWNER TO postgres;

--
-- Name: pokemons_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemons_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemons_types_id_seq OWNER TO postgres;

--
-- Name: pokemons_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemons_types_id_seq OWNED BY public.pokemons_types.id;


--
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    user_id integer NOT NULL,
    stars double precision NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.rating OWNER TO postgres;

--
-- Name: rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rating_id_seq OWNER TO postgres;

--
-- Name: rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats (
    stat_id integer NOT NULL,
    stat_hp smallint NOT NULL,
    stat_attack smallint NOT NULL,
    stat_defense smallint NOT NULL,
    stat_sp_attack smallint NOT NULL,
    stat_sp_defense smallint NOT NULL,
    stat_speed smallint NOT NULL
);


ALTER TABLE public.stats OWNER TO postgres;

--
-- Name: stats_stat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_stat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_stat_id_seq OWNER TO postgres;

--
-- Name: stats_stat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_stat_id_seq OWNED BY public.stats.stat_id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tokens (
    token_id integer NOT NULL,
    refresh_token character varying(300) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tokens OWNER TO postgres;

--
-- Name: tokens_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tokens_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tokens_token_id_seq OWNER TO postgres;

--
-- Name: tokens_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tokens_token_id_seq OWNED BY public.tokens.token_id;


--
-- Name: type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type (
    type_id integer NOT NULL,
    type_name character varying(30) NOT NULL
);


ALTER TABLE public.type OWNER TO postgres;

--
-- Name: type_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_type_id_seq OWNER TO postgres;

--
-- Name: type_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_type_id_seq OWNED BY public.type.type_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    nickname character varying(20) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: abilities ability_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abilities ALTER COLUMN ability_id SET DEFAULT nextval('public.abilities_ability_id_seq'::regclass);


--
-- Name: categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: evolutions evolution_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evolutions ALTER COLUMN evolution_id SET DEFAULT nextval('public.evolutions_evolution_id_seq'::regclass);


--
-- Name: genders gender_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders ALTER COLUMN gender_id SET DEFAULT nextval('public.genders_gender_id_seq'::regclass);


--
-- Name: pokemons pokemon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons ALTER COLUMN pokemon_id SET DEFAULT nextval('public.pokemons_pokemon_id_seq'::regclass);


--
-- Name: pokemons_abilities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_abilities ALTER COLUMN id SET DEFAULT nextval('public.pokemons_abilities_id_seq'::regclass);


--
-- Name: pokemons_genders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_genders ALTER COLUMN id SET DEFAULT nextval('public.pokemons_genders_id_seq'::regclass);


--
-- Name: pokemons_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_types ALTER COLUMN id SET DEFAULT nextval('public.pokemons_types_id_seq'::regclass);


--
-- Name: rating id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);


--
-- Name: stats stat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats ALTER COLUMN stat_id SET DEFAULT nextval('public.stats_stat_id_seq'::regclass);


--
-- Name: tokens token_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens ALTER COLUMN token_id SET DEFAULT nextval('public.tokens_token_id_seq'::regclass);


--
-- Name: type type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type ALTER COLUMN type_id SET DEFAULT nextval('public.type_type_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abilities (ability_id, ability_name, ability_desc) FROM stdin;
1	Adaptability	Powers up moves of the same type.
2	Aerilate	Turns Normal-type moves into Flying-type moves.
3	Aftermath	Damages the attacker landing the finishing hit.
4	Air Lock	Eliminates the effects of weather.
5	Analytic	Boosts move power when the Pokémon moves last.
6	Anger Point	Maxes Attack after taking a critical hit.
7	Anger Shell	Lowers Defense/Sp. Def and raises Attack/Sp. Atk/Speed when HP drops below half.
8	Anticipation	Senses a foe's dangerous moves.
9	Arena Trap	Prevents the foe from fleeing.
10	Armor Tail	Prevents opponent using priority moves.
11	Aroma Veil	Protects allies from attacks that limit their move choices.
12	As One	Combines Unnerve and Chilling Neigh/Grim Neigh
13	Aura Break	Reduces power of Dark- and Fairy-type moves.
14	Bad Dreams	Reduces a sleeping foe's HP.
15	Ball Fetch	Retrieves a Poké Ball from a failed throw.
16	Battery	Raises power of teammates' Special moves.
17	Battle Armor	The Pokémon is protected against critical hits.
18	Battle Bond	Transform into Ash-Greninja after causing opponent to faint.
19	Beads of Ruin	Lowers Special Defense of all Pokémon except itself.
20	Beast Boost	The Pokémon boosts its most proficient stat each time it knocks out a Pokémon.
21	Berserk	Raises Special Attack when HP drops below half.
22	Big Pecks	Protects the Pokémon from Defense-lowering attacks.
23	Blaze	Powers up Fire-type moves in a pinch.
24	Bulletproof	Protects the Pokémon from ball and bomb moves.
25	Cheek Pouch	Restores additional HP when a Berry is consumed.
26	Chilling Neigh	Boosts Attack after knocking out a Pokémon.
27	Chlorophyll	Boosts the Pokémon's Speed in sunshine.
28	Clear Body	Prevents other Pokémon from lowering its stats.
29	Cloud Nine	Eliminates the effects of weather.
30	Color Change	Changes the Pokémon's type to the foe's move.
31	Comatose	The Pokémon is always asleep but can still attack.
32	Commander	Goes inside the mouth of an ally Dondozo if one is on the field.
33	Competitive	Sharply raises Special Attack when the Pokémon's stats are lowered.
34	Compound Eyes	The Pokémon's accuracy is boosted.
35	Contrary	Makes stat changes have an opposite effect.
36	Corrosion	The Pokémon can poison Steel and Poison types.
37	Costar	Copies ally's stat changes on entering battle.
38	Cotton Down	Lowers foe's Speed when hit.
39	Cud Chew	Can eat the same Berry twice.
40	Curious Medicine	Resets all stat changes upon entering battlefield.
41	Cursed Body	May disable a move used on the Pokémon.
42	Cute Charm	Contact with the Pokémon may cause infatuation.
43	Damp	Prevents the use of self-destructing moves.
44	Dancer	Copies the foe's Dance moves.
45	Dark Aura	Raises power of Dark type moves for all Pokémon in battle.
46	Dauntless Shield	Boosts Defense in battle.
47	Dazzling	Protects the Pokémon from high-priority moves.
48	Defeatist	Lowers stats when HP drops below half.
49	Defiant	Sharply raises Attack when the Pokémon's stats are lowered.
50	Delta Stream	Creates strong winds when the ability activates.
51	Desolate Land	Turns the sunlight extremely harsh when the ability activates.
52	Disguise	Avoids damage for one turn.
53	Download	Adjusts power according to a foe's defenses.
54	Dragon's Maw	Powers up Dragon-type moves.
55	Drizzle	The Pokémon makes it rain when it enters a battle.
56	Drought	Turns the sunlight harsh when the Pokémon enters a battle.
57	Dry Skin	Reduces HP if it is hot. Water restores HP.
58	Early Bird	The Pokémon awakens quickly from sleep.
59	Earth Eater	Restores HP when hit by a Ground-type move.
60	Effect Spore	Contact may poison or cause paralysis or sleep.
61	Electric Surge	The Pokémon creates an Electric Terrain when it enters a battle.
62	Electromorphosis	Doubles power of the next Electric-type move when hit by an attack.
63	Embody Aspect	Boosts Attack/Defense/Sp. Def/Speed depending on the form.
64	Emergency Exit	Switches out when HP falls below 50%.
65	Fairy Aura	Raises power of Fairy type moves for all Pokémon in battle.
66	Filter	Reduces damage from super-effective attacks.
67	Flame Body	Contact with the Pokémon may burn the attacker.
68	Flare Boost	Powers up special attacks when burned.
69	Flash Fire	It powers up Fire-type moves if it's hit by one.
70	Flower Gift	Powers up party Pokémon when it is sunny.
71	Flower Veil	Prevents lowering of ally Grass-type Pokémon's stats.
72	Fluffy	Halves damage from contact moves, but doubles damage from Fire-type moves.
73	Forecast	Castform transforms with the weather.
74	Forewarn	Determines what moves a foe has.
75	Friend Guard	Reduces damage done to allies.
76	Frisk	The Pokémon can check a foe's held item.
77	Full Metal Body	Prevents other Pokémon from lowering its stats.
78	Fur Coat	Reduces damage from physical moves.
79	Gale Wings	Gives priority to Flying-type moves.
80	Galvanize	Normal-type moves become Electric-type moves and their power boosted.
81	Gluttony	Encourages the early use of a held Berry.
82	Good as Gold	Gives immunity to status moves.
83	Gooey	Contact with the Pokémon lowers the attacker's Speed stat.
84	Gorilla Tactics	Boosts the Pokémon's Attack stat but only allows the use of the first selected move.
85	Grass Pelt	Boosts the Defense stat in Grassy Terrain.
86	Grassy Surge	The Pokémon creates a Grassy Terrain when it enters a battle.
87	Grim Neigh	Boosts Special Attack after knocking out a Pokémon.
88	Guard Dog	Boosts Attack if intimidated, and prevents being forced to switch out.
89	Gulp Missile	Returns with a catch in its mouth after using Surf or Dive.
90	Guts	Boosts Attack if there is a status problem.
91	Hadron Engine	Creates an Electric Terrain when entering battle, and boosts Special Attack while active.
92	Harvest	May create another Berry after one is used.
93	Healer	May heal an ally's status conditions.
94	Heatproof	Weakens the power of Fire-type moves.
95	Heavy Metal	Doubles the Pokémon's weight.
96	Honey Gather	The Pokémon may gather Honey from somewhere.
97	Hospitality	Partially restores an ally's HP when it enters a battle.
98	Huge Power	Raises the Pokémon's Attack stat.
99	Hunger Switch	Changes forms each turn.
100	Hustle	Boosts the Attack stat, but lowers accuracy.
101	Hydration	Heals status problems if it is raining.
102	Hyper Cutter	Prevents other Pokémon from lowering Attack stat.
103	Ice Body	The Pokémon gradually regains HP in a hailstorm.
104	Ice Face	Avoids damage from Physical moves for one turn.
105	Ice Scales	Halves damage from Special moves.
106	Illuminate	Raises the likelihood of meeting wild Pokémon.
107	Illusion	Enters battle disguised as the last Pokémon in the party.
108	Immunity	Prevents the Pokémon from getting poisoned.
109	Imposter	It transforms itself into the Pokémon it is facing.
110	Infiltrator	Passes through the foe's barrier and strikes.
111	Innards Out	Deals damage upon fainting.
112	Inner Focus	The Pokémon is protected from flinching.
113	Insomnia	Prevents the Pokémon from falling asleep.
114	Intimidate	Lowers the foe's Attack stat.
115	Intrepid Sword	Boosts Attack in battle.
116	Iron Barbs	Inflicts damage to the Pokémon on contact.
117	Iron Fist	Boosts the power of punching moves.
118	Justified	Raises Attack when hit by a Dark-type move.
119	Keen Eye	Prevents other Pokémon from lowering accuracy.
120	Klutz	The Pokémon can't use any held items.
121	Leaf Guard	Prevents problems with status in sunny weather.
122	Levitate	Gives immunity to Ground type moves.
123	Libero	Changes the Pokémon's type to its last used move.
124	Light Metal	Halves the Pokémon's weight.
125	Lightning Rod	Draws in all Electric-type moves to up Sp. Attack.
126	Limber	The Pokémon is protected from paralysis.
127	Lingering Aroma	Contact changes the attacker's Ability to Lingering Aroma.
128	Liquid Ooze	Damages attackers using any draining move.
129	Liquid Voice	All sound-based moves become Water-type moves.
130	Long Reach	The Pokémon uses its moves without making contact with the target.
131	Magic Bounce	Reflects status- changing moves.
132	Magic Guard	Protects the Pokémon from indirect damage.
133	Magician	The Pokémon steals the held item of a Pokémon it hits with a move.
134	Magma Armor	Prevents the Pokémon from becoming frozen.
135	Magnet Pull	Prevents Steel-type Pokémon from escaping.
136	Marvel Scale	Ups Defense if there is a status problem.
137	Mega Launcher	Boosts the power of aura and pulse moves.
138	Merciless	The Pokémon's attacks become critical hits if the target is poisoned.
139	Mimicry	Changes type depending on the terrain.
140	Mind's Eye	Ignores opponent's Evasiveness, and allows Normal- and Fighting-type attacks to hit Ghosts.
141	Minus	Ups Sp. Atk if another Pokémon has Plus or Minus.
142	Mirror Armor	Reflects any stat-lowering effects.
143	Misty Surge	The Pokémon creates a Misty Terrain when it enters a battle.
144	Mold Breaker	Moves can be used regardless of Abilities.
145	Moody	Raises one stat and lowers another.
146	Motor Drive	Raises Speed if hit by an Electric-type move.
147	Moxie	Boosts Attack after knocking out any Pokémon.
148	Multiscale	Reduces damage when HP is full.
149	Multitype	Changes type to match the held Plate.
150	Mummy	Contact with this Pokémon spreads this Ability.
151	Mycelium Might	Status moves go last, but are not affected by the opponent's ability.
152	Natural Cure	All status problems heal when it switches out.
153	Neuroforce	Powers up moves that are super effective.
154	Neutralizing Gas	Neutralizes abilities of all Pokémon in battle.
155	No Guard	Ensures attacks by or against the Pokémon land.
156	Normalize	All the Pokémon's moves become the Normal type.
157	Oblivious	Prevents it from becoming infatuated.
158	Opportunist	Copies stat boosts by the opponent.
159	Orichalcum Pulse	Turns the sunlight harsh when entering battle, and boosts Attack while active.
160	Overcoat	Protects the Pokémon from weather damage.
161	Overgrow	Powers up Grass-type moves in a pinch.
162	Own Tempo	Prevents the Pokémon from becoming confused.
163	Parental Bond	Allows the Pokémon to attack twice.
164	Pastel Veil	Prevents the Pokémon and its allies from being poisoned.
165	Perish Body	When hit by a move that makes direct contact, the Pokémon and the attacker will faint after three turns unless they switch out of battle.
166	Pickpocket	Steals an item when hit by another Pokémon.
167	Pickup	The Pokémon may pick up items.
168	Pixilate	Turns Normal-type moves into Fairy-type moves.
169	Plus	Ups Sp. Atk if another Pokémon has Plus or Minus.
170	Poison Heal	Restores HP if the Pokémon is poisoned.
171	Poison Point	Contact with the Pokémon may poison the attacker.
172	Poison Puppeteer	Poisoned Pokémon also become confused.
173	Poison Touch	May poison targets when a Pokémon makes contact.
174	Power Construct	Changes form when HP drops below half.
175	Power of Alchemy	The Pokémon copies the Ability of a defeated ally.
176	Power Spot	Just being next to the Pokémon powers up moves.
177	Prankster	Gives priority to a status move.
178	Pressure	The Pokémon raises the foe's PP usage.
179	Primordial Sea	Makes it rain heavily when the ability activates.
180	Prism Armor	Reduces damage from super-effective attacks.
181	Propeller Tail	Ignores moves and abilities that draw in moves.
182	Protean	Changes the Pokémon's type to its last used move.
183	Protosynthesis	Raises highest stat in harsh sunlight, or if holding Booster Energy.
184	Psychic Surge	The Pokémon creates a Psychic Terrain when it enters a battle.
185	Punk Rock	Boosts sound-based moves and halves damage from the same moves.
186	Pure Power	Raises the Pokémon's Attack stat.
187	Purifying Salt	Protects from status conditions and halves damage from Ghost-type moves.
188	Quark Drive	Raises highest stat on Electric Terrain, or if holding Booster Energy.
189	Queenly Majesty	Prevents use of priority moves.
190	Quick Draw	\N
191	Quick Feet	Boosts Speed if there is a status problem.
192	Rain Dish	The Pokémon gradually regains HP in rain.
193	Rattled	Bug, Ghost or Dark type moves scare it and boost its Speed.
194	Receiver	Inherits an ally's ability when it faints.
195	Reckless	Powers up moves that have recoil damage.
196	Refrigerate	Turns Normal-type moves into Ice-type moves.
197	Regenerator	Restores a little HP when withdrawn from battle.
198	Ripen	Doubles the effect of berries.
199	Rivalry	Deals more damage to a Pokémon of same gender.
200	RKS System	Changes type depending on held item.
201	Rock Head	Protects the Pokémon from recoil damage.
202	Rocky Payload	Powers up Rock-type moves.
203	Rough Skin	Inflicts damage to the attacker on contact.
204	Run Away	Enables a sure getaway from wild Pokémon.
205	Sand Force	Boosts certain moves' power in a sandstorm.
206	Sand Rush	Boosts the Pokémon's Speed in a sandstorm.
207	Sand Spit	Creates a sandstorm when hit by an attack.
208	Sand Stream	The Pokémon summons a sandstorm in battle.
209	Sand Veil	Boosts the Pokémon's evasion in a sandstorm.
210	Sap Sipper	Boosts Attack when hit by a Grass-type move.
211	Schooling	Changes Wishiwashi to School Form.
212	Scrappy	Enables moves to hit Ghost-type Pokémon.
213	Screen Cleaner	Nullifies effects of Light Screen, Reflect, and Aurora Veil.
214	Seed Sower	Turns the ground into Grassy Terrain when the Pokémon is hit by an attack.
215	Serene Grace	Boosts the likelihood of added effects appearing.
216	Shadow Shield	Reduces damage when HP is full.
217	Shadow Tag	Prevents the foe from escaping.
218	Sharpness	Powers up slicing moves.
219	Shed Skin	The Pokémon may heal its own status problems.
220	Sheer Force	Removes added effects to increase move damage.
221	Shell Armor	The Pokémon is protected against critical hits.
222	Shield Dust	Blocks the added effects of attacks taken.
223	Shields Down	Changes stats when HP drops below half.
224	Simple	Doubles all stat changes.
225	Skill Link	Increases the frequency of multi-strike moves.
226	Slow Start	Temporarily halves Attack and Speed.
227	Slush Rush	Boosts the Pokémon's Speed stat in a hailstorm.
228	Sniper	Powers up moves if they become critical hits.
229	Snow Cloak	Raises evasion in a hailstorm.
230	Snow Warning	The Pokémon summons a hailstorm in battle.
231	Solar Power	In sunshine, Sp. Atk is boosted but HP decreases.
232	Solid Rock	Reduces damage from super-effective attacks.
233	Soul-Heart	Raises Special Attack when another Pokémon faints.
234	Soundproof	Gives immunity to sound-based moves.
235	Speed Boost	Its Speed stat is gradually boosted.
236	Stakeout	Deals double damage to Pokémon switching in.
237	Stall	The Pokémon moves after all other Pokémon do.
238	Stalwart	Ignores moves and abilities that draw in moves.
239	Stamina	Raises Defense when attacked.
240	Stance Change	Changes form depending on moves used.
241	Static	Contact with the Pokémon may cause paralysis.
242	Steadfast	Raises Speed each time the Pokémon flinches.
243	Steam Engine	Drastically raises Speed when hit by a Fire- or Water-type move.
244	Steelworker	Powers up Steel-type moves.
245	Steely Spirit	Powers up ally Pokémon's Steel-type moves.
246	Stench	The stench may cause the target to flinch.
247	Sticky Hold	Protects the Pokémon from item theft.
248	Storm Drain	Draws in all Water-type moves to up Sp. Attack.
249	Strong Jaw	Boosts the power of biting moves.
250	Sturdy	It cannot be knocked out with one hit.
251	Suction Cups	Negates all moves that force switching out.
252	Super Luck	Heightens the critical-hit ratios of moves.
253	Supersweet Syrup	Lowers opponent's Evasiveness when entering battle.
254	Supreme Overlord	Attack and Special Attack are boosted for each party Pokémon that has been defeated.
255	Surge Surfer	Doubles Speed during Electric Terrain. 
256	Swarm	Powers up Bug-type moves in a pinch.
257	Sweet Veil	Prevents the Pokémon and allies from falling asleep.
258	Swift Swim	Boosts the Pokémon's Speed in rain.
259	Sword of Ruin	Lowers Defense of all Pokémon except itself.
260	Symbiosis	The Pokémon can pass an item to an ally.
261	Synchronize	Passes a burn, poison, or paralysis to the foe.
262	Tablets of Ruin	Lowers Attack of all Pokémon except itself.
263	Tangled Feet	Raises evasion if the Pokémon is confused.
264	Tangling Hair	Contact with the Pokémon lowers the attacker's Speed stat.
265	Technician	Powers up the Pokémon's weaker moves.
266	Telepathy	Anticipates an ally's attack and dodges it.
267	Tera Shell	Moves are not very effective when HP is full.
268	Tera Shift	Transforms into Terastal Form in battle.
269	Teraform Zero	Eliminates all effects of weather and terrain.
270	Teravolt	Moves can be used regardless of Abilities.
271	Thermal Exchange	Raises Attack when hit by a Fire-type move. Cannot be burned.
272	Thick Fat	Ups resistance to Fire- and Ice-type moves.
273	Tinted Lens	Powers up “not very effective” moves.
274	Torrent	Powers up Water-type moves in a pinch.
275	Tough Claws	Boosts the power of contact moves.
276	Toxic Boost	Powers up physical attacks when poisoned.
277	Toxic Chain	May cause bad poisoning.
278	Toxic Debris	Scatters poison spikes at the feet of the opposing team when the Pokémon takes damage from physical moves.
279	Trace	The Pokémon copies a foe's Ability.
280	Transistor	Powers up Electric-type moves.
281	Triage	Gives priority to restorative moves.
282	Truant	Pokémon can't attack on consecutive turns.
283	Turboblaze	Moves can be used regardless of Abilities.
284	Unaware	Ignores any stat changes in the Pokémon.
285	Unburden	Raises Speed if a held item is used.
286	Unnerve	Makes the foe nervous and unable to eat Berries.
287	Unseen Fist	Contact moves can strike through Protect/Detect.
288	Vessel of Ruin	Lowers Special Attack of all Pokémon except itself.
289	Victory Star	Boosts the accuracy of its allies and itself.
290	Vital Spirit	Prevents the Pokémon from falling asleep.
291	Volt Absorb	Restores HP if hit by an Electric-type move.
292	Wandering Spirit	Swaps abilities with opponents on contact.
293	Water Absorb	Restores HP if hit by a Water-type move.
294	Water Bubble	Halves damage from Fire-type moves, doubles power of Water-type moves used, and prevents burns.
295	Water Compaction	Sharply raises Defense when hit by a Water-type move.
296	Water Veil	Prevents the Pokémon from getting a burn.
297	Weak Armor	Physical attacks lower Defense and raise Speed.
298	Well-Baked Body	Immune to Fire-type moves, and Defense is sharply boosted.
299	White Smoke	Prevents other Pokémon from lowering its stats.
300	Wimp Out	Switches out when HP drops below half.
301	Wind Power	Doubles power of the next Electric-type move used, when hit by a wind move.
302	Wind Rider	Takes no damage from wind moves, and boosts Attack if hit by one.
303	Wonder Guard	Only supereffective moves will hit.
304	Wonder Skin	Makes status-changing moves more likely to miss.
305	Zen Mode	Changes form when HP drops below half.
306	Zero to Hero	Transforms into its Hero Form when switching out.
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (category_id, category_name) FROM stdin;
1	Abundance
2	Acorn
3	Alloy
4	Alpha
5	Ambush
6	Angler
7	Ant Pit
8	Anteater
9	Antenna
10	Apple Core
11	Apple Nectar
12	Apple Wing
13	Aqua Mouse
14	Aqua Rabbit
15	Arm Thrust
16	Armor
17	Armor Bird
18	Arrow Quill
19	Artificial
20	Astral Body
21	Atrocious
22	Attaching
23	Aura
24	Aurora
25	Automaton
26	Avianoid
27	Axe
28	Axe Jaw
29	Baby
30	Bagworm
31	Ball
32	Ball Roll
33	Ball Whale
34	Balloon
35	Baneful Fox
36	Barnacle
37	Barrier
38	Bash Buffalo
39	Bat
40	Battle Cry
41	Battery
42	Beak
43	Beat
44	Beaver
45	Beckon
46	Bee Fly
47	Beehive
48	Bell
49	Big Boss
50	Big Blade
51	Big Catfish
52	Big Eater
53	Big Fish
54	Big Horn
55	Big Jaw
56	Big Rock
57	Big Voice
58	Big-Hearted
59	Bird
60	Bite
61	Bivalve
62	Black Tea
63	Blade
64	Blade Quill
65	Blast
66	Blast Turtle
67	Blaze
68	Blazing
69	Blimp
70	Blocking
71	Bloom Sickle
72	Blossom
73	Bolt Strike
74	Bone Keeper
75	Bone Vulture
76	Bonsai
77	Bounce
78	Boundary
79	Bouquet
80	Boxing
81	Bright
82	Bronze
83	Bronze Bell
84	Brutal
85	Brutal Star
86	Bubble Frog
87	Bubble Jet
88	Bud
89	Bug Catcher
90	Bugle Beak
91	Bulb
92	Bulk Up
93	Butterfly
94	Cactus
95	Calm
96	Candle
97	Cannon
98	Carefree
99	Caretaker
100	Caring
101	Cat Ferret
102	Catty
103	Cavalry
104	Cave
105	Cavern
106	Cell
107	Centipede
108	Cerebral
109	Cheeky
110	Cheering
111	Cherry
112	Chick
113	Chill
114	Chimp
115	Chinchilla
116	Clamping
117	Clap
118	Classy Cat
119	Clay Doll
120	Clear Wing
121	Coal
122	Cobra
123	Coconut
124	Cocoon
125	Coffin
126	Coin Chest
127	Coin Entity
128	Collective
129	Color Swap
130	Colossal
131	Colt
132	Comedian
133	Compass
134	Compressed
135	Constraint
136	Continent
137	Copperderm
138	Coral
139	Cotton Bird
140	Cotton Bloom
141	Cotton Candy
142	Cotton Puff
143	Cottonweed
144	Couple
145	Courting
146	Cream
147	Cricket
148	Cruel
149	Crystallizing
150	Curlipede
151	Cyclone
152	Dancer
153	Dancing
154	Dark
155	Darkness
156	Daunting
157	Deceiver
158	Deep Black
159	Deep Sea
160	Delivery
161	Desert Croc
162	Despot
163	Destruction
164	Devious
165	Diapered
166	Digging
167	Disaster
168	Discharge
169	Discipline
170	Disguise
171	Diving
172	Djinn
173	DNA
174	Dog
175	Donkey
176	Dolphin
177	Dopey
178	Draft Horse
179	Dragon
180	Dragon Orb
181	Drawn Sword
182	Dream Eater
183	Drill
184	Drowsing
185	Drummer
186	Duck
187	Duckling
188	Eaglet
189	Earthworm
190	Egg
191	Elder Tree
192	Electric
193	Electrified
194	Electron
195	EleFish
196	EleFrog
197	EleSpider
198	EleSquirrel
199	EleTadpole
200	Emanation
201	Ember
202	Embrace
203	Emotion
204	Emperor
205	Endurance
206	Eon
207	Eruption
208	Evolution
209	Eyeball
210	Face
211	Fairy
212	Family
213	Fang Scorpion
214	Fang Snake
215	Feeling
216	Fire Blades
217	Fire Cat
218	Fire Child
219	Fire Croc
220	Fire Horse
221	Fire Mouse
222	Fire Pig
223	Fire Warrior
224	Firefly
225	Fireworks
226	First Bird
227	Fish
228	Five Star
229	Fixation
230	Flailing
231	Flame
232	Flash
233	Float Whale
234	Floating
235	Flower
236	Flowering
237	Flycatcher
238	Flyscorpion
239	Forbidden
240	Forest
241	Formation
242	Formidable
243	Fossil
244	Fox
245	Fragance
246	Free Climb
247	Freeze
248	Freezing
249	Fresh Snow
250	Frigatebird
251	Frill
252	Frog
253	Frost Moth
254	Frost Tree
255	Fruit
256	Garden
257	Garden Eel
258	Gas
259	Gear
260	Generator
261	Genetic
262	Geyser
263	Ghost Dog
264	Ghost Flame
265	Gigantic
266	Gleam Eyes
267	Gloomdweller
268	Glowing
269	Gnash Teeth
270	Goldfish
271	Grass Cat
272	Grasshopper
273	Grass Monkey
274	Grass Quill
275	Grass Snake
276	Grassland
277	Gratitude
278	Greedy
279	Gripper
280	Grove
281	Grudge
282	Gulp
283	Guts
284	Hairy Bug
285	Hammer
286	Hands-On
287	Handstand
288	Happiness
289	Hard Scale
290	Hard Shell
291	Head Butt
292	Hearing
293	Heavyweight
294	Heel
295	Herb
296	Hermit Crab
297	Hero
298	Hex Nut
299	Hexpert
300	Hibernator
301	High King
302	High Temp
303	Hippo
304	Hog
305	Hoodlum
306	Hostile
307	Howitzer
308	Human Shape
309	Humming
310	Hypnosis
311	Ice Break
312	Ice Chunk
313	Ice Dragon
314	Ice Fin
315	Iceberg
316	Icy Snow
317	Illuminating
318	Illusion Fox
319	Imitation
320	Insect
321	Intertwining
322	Intimidation
323	Irate
324	Iron
325	Iron Ant
326	Iron Armor
327	Iron Ball
328	Iron Claw
329	Iron Leg
330	Iron Snake
331	Iron Will
332	Item Drop
333	Jellyfish
334	Jet
335	Jettison
336	Jewel
337	Jolly
338	Jubilee
339	Judo
340	Jujitsu
341	Junkivore
342	Karate
343	Key Ring
344	Kicking
345	King
346	Kiss
347	Kite
348	Kitten
349	Knowlege
350	Lamp
351	Land Shark
352	Land Snake
353	Land Spirit
354	Larva
355	Launch
356	Lava
357	Lava Dome
358	Lazy
359	Leaf
360	Leaf-Wrapped
361	Legendary
362	Licking
363	Life
364	Light
365	Lightning
366	Lingering
367	Lion Cub
368	Lissome
369	Little Bear
370	Live Coal
371	Lizard
372	Loitering
373	Lonely
374	Longevity
375	Long Body
376	Long Leg
377	Long Neck
378	Long Nose
379	Long Tail
380	Lookout
381	Loud Noise
382	Love-Hate
383	Loyal Dog
384	Lunar
385	Luring
386	Mach
387	Magical
388	Magician
389	Magnet
390	Magnet Area
391	Malevolent
392	Manipulate
393	Mantis
394	Mantle
395	Marionette
396	Martial Arts
397	Meditate
398	Mega Fire Pig
399	Megapede
400	Megaton
401	Mellow
402	Melody
403	Meringue
404	Metalsmith
405	Meteor
406	Meteorite
407	Milk Cow
408	Mime
409	Mischief
410	Mitosis
411	Mock Kelp
412	Mold
413	Mole
414	Moone
415	Moonlight
416	Moth
417	Mount
418	Mouse
419	Mud Fish
420	Multi-Cyl
421	Multiplying
422	Muscular
423	Mushroom
424	Music Note
425	Mysterious
426	Mystic
427	Nebula
428	Neon
429	New Species
430	Ninja
431	Numb
432	Nurturing
433	Ogre Darner
434	Ogre Scorpion
435	Old Shrimp
436	Olive
437	Order
438	Ore
439	Ostrich
440	Overturning
441	Owl
442	Painter
443	Paleozoic
444	Paradox
445	Parasite
446	Parent
447	Patient
448	Peat
449	Penguin
450	Perfume
451	Pig
452	Pig Monkey
453	Pincer
454	Pin Cluster
455	Pitch-Black
456	Placid
457	Plasma
458	Plate
459	Playful
460	Playhouse
461	Plump Mouse
462	Poison Bag
463	Poison Bee
464	Poison Fish
465	Poison Gas
466	Poison Moth
467	Poison Pin
468	Polka Dot
469	Pond Skater
470	Poodle
471	Pop Star
472	Posy Picker
473	Predator
474	Prim
475	Prism
476	Protostar
477	Prototurtle
478	Proud
479	Psi
480	Pumpkin
481	Punching
482	Punk
483	Puppet
484	Puppy
485	Rabbit
486	Radiator
487	Radome
488	Rainbow
489	Rampart
490	Raven
491	Regal
492	Rendezvous
493	Renegade
494	Requiem
495	Restraint
496	Revolving
497	River Crab
498	Rock
499	Rock Head
500	Rock Inn
501	Rock Peak
502	Rock Skin
503	Rock Snake
504	Rogue
505	Rogue Monkey
506	Roly-Poly
507	Royal
508	Royal Heir
509	Royal Sword
510	Ruffian
511	Rush
512	Rushing
513	Sage
514	Sand Castle
515	Sand Heap
516	Sand Snake
517	Savage
518	Scale
519	Scaly
520	Scarecrow
521	Scarf
522	Scatterdust
523	Scorching
524	Scorpion
525	Scout
526	Scratch Cat
527	Screech
528	Scuffle
529	Sea Basin
530	Sea Creeper
531	Sea Cucumber
532	Sea Drifter
533	Sea Lily
534	Sea Lion
535	Sea Otter
536	Sea Slug
537	Sea Urchin
538	Sea Weasel
539	Seafaring
540	Seagull
541	Season
542	Secret Agent
543	Seed
544	Serene
545	Seven Spot
546	Sewing
547	Shadow
548	Sharp Blade
549	Sharp Claw
550	Shed
551	Shedding
552	Sheep
553	Shell Bunker
554	Shell Out
555	Shellfish
556	Shield
557	Sickle Grass
558	Silent
559	Single Bloom
560	Single Horn
561	Skewer
562	Skunk
563	Sky High
564	Sky Squirrel
565	Slacker
566	Sleeping
567	Sludge
568	Small Fry
569	Snail
570	Snake
571	Snapping
572	Snow Hat
573	Snow Land
574	Snowstorm
575	Soft Tissue
576	Soloist
577	Sound Wave
578	South Sea
579	Spark
580	Spatial
581	Sphere
582	Spike Ball
583	Spikes
584	Spinning
585	Spiny Armor
586	Spiny Nut
587	Spiral
588	Spirit
589	Spiteful Fox
590	Spitfire
591	Spot Panda
592	Spray
593	Stag Beetle
594	Stakeout
595	Star Shape
596	Starling
597	Stealth
598	Steam
599	Stomach
600	Stone Home
601	Striker
602	String Spit
603	Strong Arm
604	Strong Legs
605	Stump
606	Subterrene
607	Sun
608	Sunne
609	Superpower
610	Swallow
611	Swift Horse
612	Swine
613	Swollen
614	Sword
615	Sword Blade
616	Symbol
617	Synthetic
618	Tadpole
619	Tantrum
620	Teamwork
621	Temporal
622	Tender
623	Terra Whale
624	Thorn
625	Thorn Monkey
626	Thorn Pod
627	Thorn Seed
628	Thunder
629	Thunderbolt
630	Tiger Cat
631	Time Travel
632	Tiny Bee
633	Tiny Bird
634	Tiny Leaf
635	Tiny Mouse
636	Tiny Pigeon
637	Tiny Raccoon
638	Tiny Robin
639	Tiny Swallow
640	Tiny Turtle
641	Torch
642	Toxic Lizard
643	Toxic Monkey
644	Toxic Mouth
645	Trainee
646	Transform
647	Transport
648	Trap
649	Trash Bag
650	Trash Heap
651	Tricky Fox
652	Triple Bird
653	Tundra
654	Turn Tail
655	Turtle
656	Tusk
657	Twin Bird
658	Twin Tusk
659	Two-Handed
660	Two-Sided
661	Unique Horn
662	Valiant
663	Vast White
664	Verdant
665	Vibration
666	Victory
667	Viking
668	Vine
669	Virtual
670	Volcano
671	Warrior
672	Water Bird
673	Water Bubble
674	Water Fish
675	Water Gun
676	Water Lizard
677	Water Weed
678	Weather
679	Weed
680	Whiskers
681	Whisper
682	White Bird
683	Wicked
684	Wild Bull
685	Wild Duck
686	Wild Horse
687	Wild Monkey
688	Wild Pigeon
689	Willpower
690	Wily
691	Wind Chime
692	Windveiled
693	Wing Fish
694	Wish
695	Wolf
696	Wood Gecko
697	Woodpecker
698	Wool
699	Woolly Crab
700	Worm
701	Wrestling
702	Wushu
703	Young Fowl
704	Zen Charm
\.


--
-- Data for Name: evolutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evolutions (evolution_id, stage) FROM stdin;
1	1
2	2
3	3
\.


--
-- Data for Name: genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genders (gender_id, gender_name) FROM stdin;
1	ж
2	м
\.


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemons (pokemon_id, pokemon_name, pokemon_height, pokemon_weight, pokemon_logo, evolution_id, category_id, stat_id) FROM stdin;
6	Aegislash_Shield_Forme	1.7	53	Aegislash_Shield_Forme.jpg	3	509	6
12	Alolan_Diglett	0.2	1	Alolan_Diglett.jpg	1	413	12
13	Alolan_Dugtrio	0.7	66.6	Alolan_Dugtrio.jpg	2	413	13
14	Alolan_Exeggutor	10.9	415.6	Alolan_Exeggutor.jpg	2	123	14
15	Alolan_Geodude	0.4	20.3	Alolan_Geodude.jpg	1	498	15
17	Alolan_Graveler	1	110	Alolan_Graveler.jpg	2	498	17
18	Alolan_Grimer	0.7	42	Alolan_Grimer.jpg	1	567	18
19	Alolan_Marowak	1	34	Alolan_Marowak.jpg	2	74	19
20	Alolan_Meowth	0.4	4.2	Alolan_Meowth.jpg	1	526	20
21	Alolan_Muk	1	52	Alolan_Muk.jpg	2	567	21
22	Alolan_Ninetales	1.1	19.9	Alolan_Ninetales.jpg	2	244	22
23	Alolan_Persian	1.1	33	Alolan_Persian.jpg	2	118	23
25	Alolan_Raticate	0.7	25.5	Alolan_Raticate.jpg	2	418	25
26	Alolan_Rattata	0.3	3.8	Alolan_Rattata.jpg	1	418	26
27	Alolan_Sandshrew	0.7	40	Alolan_Sandshrew.jpg	1	418	27
28	Alolan_Sandslash	1.2	55	Alolan_Sandslash.jpg	2	418	28
29	Alolan_Vulpix	0.6	9.9	Alolan_Vulpix.jpg	1	244	29
72	Basculegion_Female	3	110	Basculegion_Female.jpg	2	53	72
73	Basculegion_Male	3	110	Basculegion_Male.jpg	2	53	73
76	Basculin_White_Striped_Form	1	18	Basculin_White_Striped_Form.jpg	1	401	76
58	Ash-Greninja	1.5	40	Ash_Greninja.jpg	3	430	58
74	Basculin_Blue_Striped_Form	1	18	Basculin_Blue_Striped_Form.jpg	1	306	74
2	Abra	0.9	19.5	Abra.jpg	1	479	2
3	Absol	1.2	47	Absol.jpg	\N	167	3
4	Accelgor	0.8	25.3	Accelgor.jpg	2	554	4
7	Aerodactyl	1.8	59	Aerodactyl.jpg	\N	243	7
8	Aggron	2.1	360	Aggron.jpg	3	326	8
9	Aipom	0.8	11.5	Aipom.jpg	1	373	9
10	Alakazam	1.5	48	Alakazam.jpg	3	479	10
11	Alcremie	0.3	0.5	Alcremie.jpg	2	146	11
30	Alomomola	1.2	31.6	Alomomola.jpg	\N	100	30
31	Altaria	1.1	20.6	Altaria.jpg	2	309	31
32	Amaura	1.3	25.2	Amaura.jpg	1	653	32
34	Amoonguss	0.6	10.5	Amoonguss.jpg	2	423	34
35	Ampharos	1.4	61.5	Ampharos.jpg	3	364	35
36	Annihilape	1.2	56	Annihilape.jpg	3	487	36
37	Anorith	0.7	12.5	Anorith.jpg	1	435	37
38	Appletun	0.4	13	Appletun.jpg	2	11	38
39	Applin	0.2	0.5	Applin.jpg	1	10	39
41	Arbok	3.5	65	Arbok.jpg	2	122	41
42	Arboliva	1.4	48.2	Arboliva.jpg	3	436	42
43	Arcanine	1.9	155	Arcanine.jpg	2	361	43
44	Arceus	3.2	320	Arceus.jpg	\N	4	44
45	Archaludon	2	60	Archaludon.jpg	2	3	45
46	Archen	0.5	9.5	Archen.jpg	1	226	46
48	Arctibax	0.8	30	Arctibax.jpg	2	314	48
49	Arctovish	2	175	Arctovish.jpg	\N	243	49
50	Arctozolt	2.3	150	Arctozolt.jpg	\N	243	50
51	Ariados	1.1	33.5	Ariados.jpg	2	373	51
52	Armaldo	1.5	68.2	Armaldo.jpg	2	458	52
53	Armarouge	1.5	85	Armarouge.jpg	2	223	53
54	Aromatisse	0.8	15.5	Aromatisse.jpg	2	245	54
55	Aron	0.4	60	Aron.jpg	1	326	55
57	Articuno	1.7	55.4	Articuno.jpg	\N	247	57
59	Audino	1.1	31	Audino.jpg	\N	292	59
60	Aurorus	2.7	225	Aurorus.jpg	2	653	60
61	Avalugg	2	505	Avalugg.jpg	2	315	61
62	Axew	0.6	18	Axew.jpg	1	656	62
63	Azelf	0.3	0.3	Azelf.jpg	\N	689	63
65	Azurill	0.2	2	Azurill.jpg	1	468	65
66	Bagon	0.6	42.1	Bagon.jpg	1	499	66
67	Baltoy	0.5	21.5	Baltoy.jpg	1	119	67
68	Banette	1.1	12.5	Banette.jpg	2	395	68
69	Barbaracle	1.3	96	Barbaracle.jpg	2	128	69
70	Barboach	0.4	1.9	Barboach.jpg	1	680	70
77	Bastiodon	1.3	149.5	Bastiodon.jpg	2	556	77
78	Baxcalibur	2.1	210	Baxcalibur.jpg	3	313	78
79	Bayleef	1.2	15.8	Bayleef.jpg	2	359	79
80	Beartic	2.6	260	Beartic.jpg	2	248	80
81	Beautifly	1	28.4	Beautifly.jpg	3	93	81
82	Beedrill	1	29.5	Beedrill.jpg	3	463	82
83	Beheeyem	1	34.5	Beheeyem.jpg	2	108	83
84	Beldum	0.6	95.2	Beldum.jpg	1	327	84
85	Bellibolt	1.2	113	Bellibolt.jpg	2	196	85
86	Bellossom	0.4	5.8	Bellossom.jpg	3	235	86
87	Bellsprout	0.7	4	Bellsprout.jpg	1	235	87
89	Bewear	2.1	135	Bewear.jpg	2	603	89
90	Bibarel	1	31.5	Bibarel.jpg	2	44	90
91	Bidoof	0.5	20	Bidoof.jpg	1	461	91
92	Binacle	0.5	31	Binacle.jpg	1	659	92
93	Bisharp	1.6	70	Bisharp.jpg	2	615	93
94	Blacephalon	1.8	13	Blacephalon.jpg	\N	225	94
96	Blastoise	1.6	85.5	Blastoise.jpg	3	555	96
97	Blaziken	1.9	52	Blaziken.jpg	3	67	97
98	Blipbug	0.4	8	Blipbug.jpg	1	354	98
99	Blissey	1.5	46.8	Blissey.jpg	3	288	99
100	Blitzle	0.8	29.8	Blitzle.jpg	1	193	100
101	Boldore	0.9	102	Boldore.jpg	2	438	101
102	Boltund	1	34	Boltund.jpg	2	174	102
103	Bombirdier	1.5	42.9	Bombirdier.jpg	\N	332	103
105	Bouffalant	1.6	94.6	Bouffalant.jpg	\N	38	105
106	Bounsweet	0.3	3.2	Bounsweet.jpg	1	255	106
115	Brute_Bonnet	1.2	21	Brute_Bonnet.jpg	\N	444	115
123	Burmy_Sandy_Cloak	0.2	3.4	Burmy_Sandy_Cloak.jpg	1	30	123
124	Burmy_Trash_Cloak	0.2	3.4	Burmy_Trash_Cloak.jpg	1	30	124
130	Calyrex_Ice_Rider	2.4	809.1	Calyrex_Ice_Rider.jpg	\N	301	130
131	Calyrex_Shadow_Rider	2.4	53.6	Calyrex_Shadow_Rider.jpg	\N	301	131
141	Castform_Rainy_Form	0.3	0.8	Castform_Rainy_Form.jpg	\N	678	141
142	Castform_Snowy_Form	0.3	0.8	Castform_Snowy_Form.jpg	\N	678	142
143	Castform_Sunny_Form	0.3	0.8	Castform_Sunny_Form.jpg	\N	678	143
165	Chien-Pao	1.9	152.2	Chien_Pao.jpg	\N	510	165
108	Brambleghast	1.2	6	Brambleghast.jpg	2	652	108
109	Bramblin	0.6	0.6	Bramblin.jpg	1	652	109
110	Braviary	1.5	41	Braviary.jpg	2	662	110
111	Breloom	1.2	39.2	Breloom.jpg	2	423	111
113	Bronzong	1.3	187	Bronzong.jpg	2	83	113
114	Bronzor	0.5	60.5	Bronzor.jpg	1	82	114
116	Bruxish	0.9	19	Bruxish.jpg	\N	269	116
117	Budew	0.2	1.2	Budew.jpg	1	88	117
118	Buizel	0.7	29.5	Buizel.jpg	1	538	118
120	Buneary	0.4	5.5	Buneary.jpg	1	485	120
121	Bunnelby	0.4	5	Bunnelby.jpg	1	166	121
125	Butterfree	1.1	32	Butterfree.jpg	3	93	125
126	Buzzwole	2.4	333.6	Buzzwole.jpg	\N	613	126
127	Cacnea	0.4	51.3	Cacnea.jpg	1	94	127
129	Calyrex	1.1	7.7	Calyrex.jpg	\N	345	129
132	Camerupt	1.9	220	Camerupt.jpg	2	207	132
133	Capsakid	0.3	3	Capsakid.jpg	1	581	133
134	Carbink	0.3	5.7	Carbink.jpg	\N	336	134
135	Carkol	1.1	78	Carkol.jpg	2	121	135
136	Carnivine	1.4	27	Carnivine.jpg	\N	89	136
138	Carvanha	0.8	20.8	Carvanha.jpg	1	517	138
139	Cascoon	0.7	11.5	Cascoon.jpg	2	124	139
140	Castform	0.3	0.8	Castform.jpg	\N	678	140
144	Caterpie	0.3	2.9	Caterpie.jpg	1	700	144
145	Celebi	0.6	5	Celebi.jpg	\N	631	145
146	Celesteela	9.2	999.9	Celesteela.jpg	\N	355	146
147	Centiskorch	3	120	Centiskorch.jpg	2	486	147
149	Cetitan	4.5	700	Cetitan.jpg	2	623	149
150	Cetoddle	1.2	45	Cetoddle.jpg	1	623	150
151	Chandelure	1	34.3	Chandelure.jpg	3	385	151
152	Chansey	1.1	34.6	Chansey.jpg	2	190	152
153	Charcadet	0.6	10.5	Charcadet.jpg	1	218	153
154	Charizard	1.7	90.5	Charizard.jpg	3	231	154
156	Charmander	0.6	8.5	Charmander.jpg	1	371	156
157	Charmeleon	1.1	19	Charmeleon.jpg	2	231	157
158	Chatot	0.5	1.9	Chatot.jpg	\N	424	158
159	Cherrim	0.5	9.3	Cherrim.jpg	2	72	159
160	Cherubi	0.4	3.3	Cherubi.jpg	1	111	160
161	Chesnaught	1.6	90	Chesnaught.jpg	3	585	161
162	Chespin	0.4	9	Chespin.jpg	1	586	162
163	Chewtle	0.3	8.5	Chewtle.jpg	1	571	163
166	Chikorita	0.9	6.4	Chikorita.jpg	1	359	166
167	Chimchar	0.5	6.2	Chimchar.jpg	1	114	167
168	Chimecho	0.6	1	Chimecho.jpg	2	691	168
169	Chinchou	0.5	12	Chinchou.jpg	1	6	169
170	Chingling	0.2	0.6	Chingling.jpg	1	48	170
172	Cinderace	1.4	33	Cinderace.jpg	3	601	172
173	Clamperl	0.4	52.5	Clamperl.jpg	1	61	173
174	Clauncher	0.5	8.3	Clauncher.jpg	1	675	174
175	Clawitzer	1.3	35.3	Clawitzer.jpg	2	307	175
176	Claydol	1.5	108	Claydol.jpg	2	119	176
177	Clefable	1.3	40	Clefable.jpg	3	211	177
179	Cleffa	0.3	3	Cleffa.jpg	1	595	179
180	Clobbopus	0.6	4	Clobbopus.jpg	1	619	180
181	Clodsire	1.8	223	Clodsire.jpg	2	585	181
182	Cloyster	1.5	132.5	Cloyster.jpg	2	61	182
183	Coalossal	2.8	310.5	Coalossal.jpg	3	121	183
184	Cobalion	2.1	250	Cobalion.jpg	\N	331	184
185	Cofagrigus	1.7	76.5	Cofagrigus.jpg	2	125	185
186	Combee	0.3	5.5	Combee.jpg	1	632	186
188	Comfey	0.1	0.3	Comfey.jpg	\N	472	188
189	Conkeldurr	1.4	87	Conkeldurr.jpg	3	422	189
190	Copperajah	3	650	Copperajah.jpg	2	137	190
191	Corphish	0.6	11.5	Corphish.jpg	1	510	191
192	Corsola	0.6	5	Corsola.jpg	1	138	192
193	Corviknight	2.2	75	Corviknight.jpg	3	490	193
195	Cosmoem	0.1	999.9	Cosmoem.jpg	2	476	195
196	Cosmog	0.2	0.1	Cosmog.jpg	1	427	196
197	Cottonee	0.3	0.6	Cottonee.jpg	1	142	197
198	Crabominable	1.7	180	Crabominable.jpg	2	699	198
199	Crabrawler	0.6	7	Crabrawler.jpg	1	80	199
200	Cradily	1.5	60.4	Cradily.jpg	2	36	200
202	Cranidos	0.9	31.5	Cranidos.jpg	1	291	202
203	Crawdaunt	1.1	32.8	Crawdaunt.jpg	2	504	203
204	Cresselia	1.5	85.6	Cresselia.jpg	\N	384	204
205	Croagunk	0.7	23	Croagunk.jpg	1	644	205
206	Crobat	1.8	75	Crobat.jpg	3	39	206
207	Crocalor	1	30.7	Crocalor.jpg	2	219	207
209	Crustle	1.4	200	Crustle.jpg	2	600	209
210	Cryogonal	1.1	148	Cryogonal.jpg	\N	149	210
211	Cubchoo	0.5	8.5	Cubchoo.jpg	1	113	211
212	Cubone	0.4	6.5	Cubone.jpg	1	373	212
213	Cufant	1.2	100	Cufant.jpg	1	137	213
214	Cursola	1	0.4	Cursola.jpg	2	138	214
222	Darmanitan_Standard_Mode	1.3	92.9	Darmanitan_Standard_Mode.jpg	2	68	222
223	Darmanitan_Zen_Mode	1.3	92.9	Darmanitan_Zen_Mode.jpg	2	68	223
226	Dawn_Wings_Necrozma	4.2	350	Dawn_Wings_Necrozma.jpg	\N	475	226
234	Deoxys_Attack_Forme	1.7	60.8	Deoxys_Attack_Forme.jpg	\N	173	234
235	Deoxys_Defense_Forme	1.7	60.8	Deoxys_Defense_Forme.jpg	\N	173	235
236	Deoxys_Normal_Forme	1.7	60.8	Deoxys_Normal_Forme.jpg	\N	173	236
237	Deoxys_Speed_Forme	1.7	60.8	Deoxys_Speed_Forme.jpg	\N	173	237
284	Dusk_Mane_Necrozma	3.8	460	Dusk_Mane_Necrozma.jpg	\N	475	284
292	Eiscue_Ice_Face	1.4	89	Eiscue_Ice_Face.jpg	\N	449	292
293	Eiscue_Noice_Face	1.4	89	Eiscue_Noice_Face.jpg	\N	449	293
305	Enamorus_Incarnate_Forme	1.6	48	Enamorus_Incarnate_Forme.jpg	\N	382	305
306	Enamorus_Therian_Forme	1.6	48	Enamorus_Therian_Forme.jpg	\N	382	306
319	Fan_Rotom	0.3	0.3	Fan_Rotom.jpg	\N	457	319
277	Dudunsparce_Two_Segment_Form	3.6	39.2	Dudunsparce_Two_Segment_Form.jpg	1	352	277
216	Cyclizar	1.6	63	Cyclizar.jpg	\N	417	216
217	Cyndaquil	0.5	7.9	Cyndaquil.jpg	1	221	217
218	Dachsbun	0.5	14.9	Dachsbun.jpg	2	174	218
219	Darkrai	1.5	50.5	Darkrai.jpg	\N	455	219
224	Dartrix	0.7	16	Dartrix.jpg	2	64	224
225	Darumaka	0.6	37.5	Darumaka.jpg	1	704	225
227	Decidueye	1.6	36.6	Decidueye.jpg	3	18	227
228	Dedenne	0.2	2.2	Dedenne.jpg	\N	9	228
229	Deerling	0.6	19.5	Deerling.jpg	1	541	229
230	Deino	0.8	17.3	Deino.jpg	1	323	230
231	Delcatty	1.1	32.6	Delcatty.jpg	2	474	231
232	Delibird	0.9	16	Delibird.jpg	\N	160	232
238	Dewgong	1.7	120	Dewgong.jpg	2	534	238
239	Dewott	0.8	24.5	Dewott.jpg	2	169	239
240	Dewpider	0.3	4	Dewpider.jpg	1	673	240
241	Dhelmise	3.9	210	Dhelmise.jpg	\N	530	241
242	Dialga	5.4	683	Dialga.jpg	\N	621	242
244	Diancie	0.7	8.8	Diancie.jpg	\N	336	244
245	Diggersby	1	42.4	Diggersby.jpg	2	166	245
246	Diglett	0.2	0.8	Diglett.jpg	1	413	246
247	Dipplin	0.4	4.4	Dipplin.jpg	2	96	247
248	Ditto	0.3	4	Ditto.jpg	\N	646	248
249	Dodrio	1.8	85.2	Dodrio.jpg	2	652	249
250	Doduo	1.4	39.2	Doduo.jpg	1	657	250
251	Dolliv	0.6	11.9	Dolliv.jpg	2	436	251
252	Dondozo	12	220	Dondozo.jpg	\N	51	252
253	Donphan	1.1	120	Donphan.jpg	2	16	253
255	Doublade	0.8	4.5	Doublade.jpg	2	614	255
256	Dracovish	2.3	215	Dracovish.jpg	\N	243	256
257	Dracozolt	1.8	190	Dracozolt.jpg	\N	243	257
258	Dragalge	1.8	81.5	Dragalge.jpg	2	411	258
259	Dragapult	3	50	Dragapult.jpg	3	597	259
260	Dragonair	4	16.5	Dragonair.jpg	2	179	260
262	Drakloak	1.4	11	Drakloak.jpg	2	99	262
263	Drampa	3	185	Drampa.jpg	\N	456	263
264	Drapion	1.3	61.5	Drapion.jpg	2	433	264
265	Dratini	1.8	3.3	Dratini.jpg	1	179	265
266	Drednaw	1	115.5	Drednaw.jpg	2	60	266
267	Dreepy	0.5	2	Dreepy.jpg	1	366	267
268	Drifblim	1.2	15	Drifblim.jpg	2	69	268
270	Drilbur	0.3	8.5	Drilbur.jpg	1	413	270
271	Drizzile	0.7	11.5	Drizzile.jpg	2	676	271
272	Drowzee	1	32.4	Drowzee.jpg	1	310	272
273	Druddigon	1.6	139	Druddigon.jpg	\N	104	273
274	Dubwool	1.3	43	Dubwool.jpg	2	552	274
275	Ducklett	0.5	5.5	Ducklett.jpg	1	672	275
278	Dugtrio	0.7	33.3	Dugtrio.jpg	2	413	278
279	Dunsparce	1.5	14	Dunsparce.jpg	1	352	279
280	Duosion	0.6	8	Duosion.jpg	2	410	280
281	Duraludon	1.8	40	Duraludon.jpg	1	3	281
282	Durant	0.3	33	Durant.jpg	\N	325	282
283	Dusclops	1.6	30.6	Dusclops.jpg	2	45	283
285	Dusknoir	2.2	106.6	Dusknoir.jpg	3	279	285
286	Duskull	0.8	15	Duskull.jpg	1	494	286
287	Dustox	1.2	31.6	Dustox.jpg	3	466	287
288	Dwebble	0.3	14.5	Dwebble.jpg	1	500	288
290	Eelektross	2.1	80.5	Eelektross.jpg	3	195	290
291	Eevee	0.3	6.5	Eevee.jpg	1	208	291
294	Ekans	2	6.9	Ekans.jpg	1	570	294
295	Eldegoss	0.5	2.5	Eldegoss.jpg	2	140	295
297	Electivire	1.8	138.6	Electivire.jpg	3	629	297
298	Electrike	0.6	15.2	Electrike.jpg	1	365	298
299	Electrode	1.2	66.6	Electrode.jpg	2	31	299
300	Elekid	0.6	23.5	Elekid.jpg	1	192	300
301	Elgyem	0.5	9	Elgyem.jpg	1	108	301
302	Emboar	1.6	150	Emboar.jpg	3	398	302
303	Emolga	0.4	5	Emolga.jpg	\N	564	303
307	Entei	2.1	198	Entei.jpg	\N	670	307
308	Escavalier	1	33	Escavalier.jpg	2	103	308
309	Espathra	1.9	90	Espathra.jpg	2	439	309
310	Espeon	0.9	26.5	Espeon.jpg	2	607	310
311	Espurr	0.3	3.5	Espurr.jpg	1	495	311
312	Eternatus	20	950	Eternatus.jpg	\N	265	312
314	Excadrill	0.7	40.4	Excadrill.jpg	2	606	314
315	Exeggcute	0.4	2.5	Exeggcute.jpg	1	190	315
316	Exeggutor	2	120	Exeggutor.jpg	2	123	316
317	Exploud	1.5	84	Exploud.jpg	3	381	317
318	Falinks	3	62	Falinks.jpg	\N	241	318
320	Farfetch'd	0.8	15	Farfetch'd.jpg	1	685	320
122	Burmy_Plant_Cloak	0.2	3.4	Burmy_Plant_Cloak.jpg	1	30	122
360	Galarian_Articuno	1.7	50.9	Galarian_Articuno.jpg	\N	148	360
361	Galarian_Corsola	0.6	0.5	Galarian_Corsola.jpg	1	138	361
362	Galarian_Darumaka	0.7	40	Galarian_Darumaka.jpg	1	704	362
363	Galarian_Farfetch'd	0.8	42	Galarian_Farfetch'd.jpg	1	685	363
365	Galarian_Meowth	0.4	7.5	Galarian_Meowth.jpg	1	526	365
366	Galarian_Moltres	2	66	Galarian_Moltres.jpg	\N	391	366
367	Galarian_Ponyta	0.8	24	Galarian_Ponyta.jpg	1	661	367
368	Galarian_Rapidash	1.7	80	Galarian_Rapidash.jpg	2	661	368
369	Galarian_Slowbro	1.6	70.5	Galarian_Slowbro.jpg	2	296	369
370	Galarian_Slowking	1.8	79.5	Galarian_Slowking.jpg	2	299	370
371	Galarian_Slowpoke	1.2	36	Galarian_Slowpoke.jpg	1	177	371
372	Galarian_Stunfisk	0.7	20.5	Galarian_Stunfisk.jpg	\N	648	372
373	Galarian_Weezing	3	16	Galarian_Weezing.jpg	2	465	373
374	Galarian_Yamask	0.5	1.5	Galarian_Yamask.jpg	1	588	374
376	Galarian_Zigzagoon	0.4	17.5	Galarian_Zigzagoon.jpg	1	637	376
392	Gimmighoul_Roaming_Form	0.1	0.1	Gimmighoul_Roaming_Form.jpg	1	127	392
394	Giratina_Altered_Forme	4.5	750	Giratina_Altered_Forme.jpg	\N	493	394
395	Giratina_Origin_Forme	6.9	650	Giratina_Origin_Forme.jpg	\N	493	395
420	Gouging_Fire	3.5	590	Gouging_Fire.jpg	\N	444	420
422	Gourgeist_Large_Size	1.1	14	Gourgeist_Large_Size.jpg	2	480	422
423	Gourgeist_Small_Size	0.7	9.5	Gourgeist_Small_Size.jpg	2	480	423
424	Gourgeist_Super_Size	1.7	39	Gourgeist_Super_Size.jpg	2	480	424
323	Feebas	0.6	7.4	Feebas.jpg	1	227	323
324	Fennekin	0.4	9.4	Fennekin.jpg	1	244	324
325	Feraligatr	2.3	88.8	Feraligatr.jpg	3	55	325
326	Ferroseed	0.6	18.8	Ferroseed.jpg	1	627	326
327	Ferrothorn	1	110	Ferrothorn.jpg	2	626	327
328	Fezandipiti	1.4	30.1	Fezandipiti.jpg	\N	495	328
330	Finizen	1.3	60.2	Finizen.jpg	1	176	330
331	Finneon	0.4	7	Finneon.jpg	1	693	331
332	Flaaffy	0.8	13.3	Flaaffy.jpg	2	698	332
333	Flamigo	1.6	37	Flamigo.jpg	\N	616	333
334	Flapple	0.3	1	Flapple.jpg	2	12	334
335	Flareon	0.9	25	Flareon.jpg	2	231	335
337	Fletchling	0.3	1.7	Fletchling.jpg	1	638	337
338	Flittle	0.2	1.5	Flittle.jpg	1	251	338
339	Floatzel	1.1	33.5	Floatzel.jpg	2	538	339
340	Floette	0.2	0.9	Floette.jpg	2	559	340
341	Floragato	0.9	12.2	Floragato.jpg	2	271	341
342	Florges	1.1	10	Florges.jpg	3	256	342
344	Flygon	2	82	Flygon.jpg	3	426	344
345	Fomantis	0.3	1.5	Fomantis.jpg	1	557	345
346	Foongus	0.2	1	Foongus.jpg	1	423	346
347	Forretress	1.2	125.8	Forretress.jpg	2	30	347
348	Fraxure	1	36	Fraxure.jpg	2	28	348
349	Frigibax	0.5	17	Frigibax.jpg	1	314	349
351	Froakie	0.3	7	Froakie.jpg	1	86	351
352	Frogadier	0.6	10.9	Frogadier.jpg	2	86	352
353	Froslass	1.3	26.6	Froslass.jpg	2	573	353
354	Frosmoth	1.3	42	Frosmoth.jpg	2	253	354
356	Fuecoco	0.4	9.8	Fuecoco.jpg	1	219	356
357	Furfrou	1.2	28	Furfrou.jpg	\N	470	357
358	Furret	1.8	32.5	Furret.jpg	2	373	358
377	Gallade	1.6	52	Gallade.jpg	3	63	377
378	Galvantula	0.8	14.3	Galvantula.jpg	2	197	378
379	Garbodor	1.9	107.3	Garbodor.jpg	2	650	379
380	Garchomp	1.9	95	Garchomp.jpg	3	386	380
381	Gardevoir	1.6	48.4	Gardevoir.jpg	3	202	381
382	Garganacl	2.3	240	Garganacl.jpg	3	501	382
383	Gastly	1.3	0.1	Gastly.jpg	1	258	383
385	Genesect	1.5	82.5	Genesect.jpg	\N	443	385
386	Gengar	1.5	40.5	Gengar.jpg	3	547	386
387	Geodude	0.4	20	Geodude.jpg	1	498	387
388	Gholdengo	1.2	30	Gholdengo.jpg	2	127	388
389	Gible	0.7	20.5	Gible.jpg	1	351	389
390	Gigalith	1.7	260	Gigalith.jpg	3	134	390
393	Girafarig	1.5	41.5	Girafarig.jpg	1	373	393
396	Glaceon	0.8	25.9	Glaceon.jpg	2	249	396
397	Glalie	1.5	256.5	Glalie.jpg	2	210	397
398	Glameow	0.5	3.9	Glameow.jpg	1	102	398
399	Glastrier	2.2	800	Glastrier.jpg	\N	686	399
400	Gligar	1.1	64.8	Gligar.jpg	1	238	400
401	Glimmet	0.7	8	Glimmet.jpg	1	438	401
403	Gliscor	2	42.5	Gliscor.jpg	2	212	403
404	Gloom	0.8	8.6	Gloom.jpg	2	679	404
405	Gogoat	1.7	91	Gogoat.jpg	2	417	405
406	Golbat	1.6	55	Golbat.jpg	2	39	406
407	Goldeen	0.6	15	Goldeen.jpg	1	270	407
408	Golduck	1.7	76.6	Golduck.jpg	2	186	408
410	Golett	1	92	Golett.jpg	1	25	410
411	Golisopod	2	108	Golisopod.jpg	2	289	411
412	Golurk	2.8	330	Golurk.jpg	2	25	412
413	Goodra	2	150.5	Goodra.jpg	3	179	413
414	Goomy	0.3	2.8	Goomy.jpg	1	575	414
416	Gossifleur	0.4	2.2	Gossifleur.jpg	1	236	416
417	Gothita	0.4	5.8	Gothita.jpg	1	229	417
418	Gothitelle	1.5	44	Gothitelle.jpg	3	20	418
419	Gothorita	0.7	18	Gothorita.jpg	2	392	419
425	Grafaiai	0.7	27.2	Grafaiai.jpg	2	643	425
426	Granbull	1.4	48.7	Granbull.jpg	2	211	426
429	Great_Tusk	2.2	320	Great_Tusk.jpg	\N	444	429
456	Heat_Rotom	0.3	0.3	Heat_Rotom.jpg	\N	457	456
465	Hisuian_Arcanine	2	168	Hisuian_Arcanine.jpg	2	361	465
466	Hisuian_Avalugg	1.4	262.4	Hisuian_Avalugg.jpg	2	315	466
468	Hisuian_Decidueye	1.6	37	Hisuian_Decidueye.jpg	3	18	468
469	Hisuian_Electrode	1.2	71	Hisuian_Electrode.jpg	2	581	469
470	Hisuian_Goodra	1.7	334.1	Hisuian_Goodra.jpg	3	553	470
471	Hisuian_Growlithe	0.8	22.7	Hisuian_Growlithe.jpg	1	525	471
472	Hisuian_Lilligant	1.2	19.2	Hisuian_Lilligant.jpg	2	584	472
473	Hisuian_Qwilfish	0.5	3.9	Hisuian_Qwilfish.jpg	1	34	473
474	Hisuian_Samurott	1.5	58.2	Hisuian_Samurott.jpg	3	242	474
476	Hisuian_Sneasel	0.9	27	Hisuian_Sneasel.jpg	1	549	476
477	Hisuian_Typhlosion	1.6	69.8	Hisuian_Typhlosion.jpg	3	264	477
478	Hisuian_Voltorb	0.5	13	Hisuian_Voltorb.jpg	1	581	478
479	Hisuian_Zoroark	1.6	73	Hisuian_Zoroark.jpg	2	35	479
480	Hisuian_Zorua	0.7	12.5	Hisuian_Zorua.jpg	1	589	480
487	Hoopa_Confined	0.5	9	Hoopa_Confined.jpg	\N	409	487
488	Hoopa_Unbound	6.5	490	Hoopa_Unbound.jpg	\N	172	488
503	Indeedee_Female	0.9	28	Indeedee_Female.jpg	\N	203	503
504	Indeedee_Male	0.9	28	Indeedee_Male.jpg	\N	203	504
509	Iron_Bundle	0.6	11	Iron_Bundle.jpg	\N	444	509
510	Iron_Crown	1.6	156	Iron_Crown.jpg	\N	444	510
511	Iron_Hands	1.8	380.7	Iron_Hands.jpg	\N	444	511
512	Iron_Jugulis	1.3	111	Iron_Jugulis.jpg	\N	444	512
513	Iron_Leaves	1.5	125	Iron_Leaves.jpg	\N	444	513
514	Iron_Moth	1.2	36	Iron_Moth.jpg	\N	444	514
515	Iron_Thorns	1.6	303	Iron_Thorns.jpg	\N	444	515
516	Iron_Treads	0.9	240	Iron_Treads.jpg	\N	444	516
517	Iron_Valiant	1.4	35	Iron_Valiant.jpg	\N	444	517
447	Hakamo-o	1.2	47	Hakamo_o.jpg	2	519	447
519	Jangmo-o	0.6	29.7	Jangmo_o.jpg	1	519	519
430	Greavard	0.6	35	Greavard.jpg	1	263	430
431	Greedent	0.6	6	Greedent.jpg	2	278	431
432	Greninja	1.5	40	Greninja.jpg	3	430	432
433	Grimer	0.9	30	Grimer.jpg	1	567	433
434	Grimmsnarl	1.5	61	Grimmsnarl.jpg	3	92	434
435	Grookey	0.3	5	Grookey.jpg	1	114	435
437	Groudon	3.5	950	Groudon.jpg	\N	136	437
438	Grovyle	0.9	21.6	Grovyle.jpg	2	696	438
439	Growlithe	0.7	19	Growlithe.jpg	1	484	439
440	Grubbin	0.4	4.4	Grubbin.jpg	1	354	440
441	Grumpig	0.9	71.5	Grumpig.jpg	2	392	441
442	Gulpin	0.4	10.3	Gulpin.jpg	1	599	442
444	Gurdurr	1.2	40	Gurdurr.jpg	2	422	444
445	Guzzlord	5.5	888	Guzzlord.jpg	\N	341	445
446	Gyarados	6.5	235	Gyarados.jpg	2	21	446
448	Happiny	0.6	24.4	Happiny.jpg	1	460	448
449	Hariyama	2.3	253.8	Hariyama.jpg	2	15	449
450	Hatenna	0.4	3.4	Hatenna.jpg	1	95	450
452	Hattrem	0.6	4.8	Hattrem.jpg	2	544	452
453	Haunter	1.6	0.1	Haunter.jpg	2	258	453
454	Hawlucha	0.8	21.5	Hawlucha.jpg	\N	701	454
455	Haxorus	1.8	105.5	Haxorus.jpg	3	28	455
457	Heatmor	1.4	58	Heatmor.jpg	\N	8	457
458	Heatran	1.7	430	Heatran.jpg	\N	357	458
459	Heliolisk	1	21	Heliolisk.jpg	2	260	459
461	Heracross	1.5	54	Heracross.jpg	\N	560	461
462	Herdier	0.9	14.7	Herdier.jpg	2	383	462
463	Hippopotas	0.8	49.5	Hippopotas.jpg	1	303	463
464	Hippowdon	2	300	Hippowdon.jpg	2	293	464
481	Hitmonchan	1.4	50.2	Hitmonchan.jpg	2	481	481
482	Hitmonlee	1.5	49.8	Hitmonlee.jpg	2	344	482
483	Hitmontop	1.4	48	Hitmontop.jpg	2	287	483
485	Honchkrow	0.9	27.3	Honchkrow.jpg	2	49	485
486	Honedge	0.8	2	Honedge.jpg	1	614	486
489	Hoothoot	0.7	21.2	Hoothoot.jpg	1	441	489
490	Hoppip	0.4	0.5	Hoppip.jpg	1	143	490
491	Horsea	0.4	8	Horsea.jpg	1	179	491
493	Houndour	0.6	10.8	Houndour.jpg	1	154	493
494	Houndstone	2	15	Houndstone.jpg	2	263	494
495	Huntail	1.7	27	Huntail.jpg	2	159	495
496	Hydrapple	1.8	93	Hydrapple.jpg	3	\N	496
497	Hydreigon	1.8	160	Hydreigon.jpg	3	84	497
498	Hypno	1.6	75.6	Hypno.jpg	2	310	498
499	Igglybuff	0.3	1	Igglybuff.jpg	1	34	499
501	Impidimp	0.4	5.5	Impidimp.jpg	1	690	501
502	Incineroar	1.8	83	Incineroar.jpg	3	294	502
505	Infernape	1.2	55	Infernape.jpg	3	231	505
506	Inkay	0.4	3.5	Inkay.jpg	1	496	506
507	Inteleon	1.9	45.2	Inteleon.jpg	3	542	507
518	Ivysaur	1	13	Ivysaur.jpg	2	543	518
520	Jellicent	2.2	135	Jellicent.jpg	2	234	520
521	Jigglypuff	0.5	5.5	Jigglypuff.jpg	2	34	521
522	Jirachi	0.3	1.1	Jirachi.jpg	\N	694	522
524	Joltik	0.1	0.6	Joltik.jpg	1	22	524
525	Jumpluff	0.8	3	Jumpluff.jpg	3	143	525
526	Jynx	1.4	40.6	Jynx.jpg	2	308	526
527	Kabuto	0.5	11.5	Kabuto.jpg	1	555	527
528	Kabutops	1.3	40.5	Kabutops.jpg	1	555	528
530	Kakuna	0.6	10	Kakuna.jpg	2	124	530
531	Kangaskhan	2.2	80	Kangaskhan.jpg	\N	446	531
532	Karrablast	0.5	5.9	Karrablast.jpg	1	116	532
533	Kartana	0.3	0.1	Kartana.jpg	\N	181	533
221	Darmanitan_Galarian_Zen_Mode	1.7	120	Darmanitan_Galarian_Zen_Mode.jpg	2	704	221
550	Kommo-o	1.6	78.2	Kommo_o.jpg	3	519	550
563	Landorus_Therian_Forme	1.3	68	Landorus_Therian_Forme.jpg	\N	1	563
601	Lycanroc_Midday_Form	0.8	25	Lycanroc_Midday_Form.jpg	2	695	601
602	Lycanroc_Midnight_Form	1.1	25	Lycanroc_Midnight_Form.jpg	2	695	602
634	Maushold_Family_of_Four	0.3	2.8	Maushold_Family_of_Four.jpg	2	212	634
635	Maushold_Family_of_Three	0.3	2.3	Maushold_Family_of_Three.jpg	2	212	635
639	Mega_Abomasnow	2.7	185	Mega_Abomasnow.jpg	2	254	639
640	Mega_Absol	1.2	49	Mega_Absol.jpg	\N	167	640
641	Mega_Aerodactyl	2.1	79	Mega_Aerodactyl.jpg	\N	243	641
643	Mega_Alakazam	1.2	48	Mega_Alakazam.jpg	3	479	643
537	Kilowattrel	1.4	38.6	Kilowattrel.jpg	1	250	537
538	Kingambit	2	120	Kingambit.jpg	3	48	538
539	Kingdra	1.8	152	Kingdra.jpg	3	179	539
540	Kingler	1.3	60	Kingler.jpg	2	453	540
541	Kirlia	0.8	20.2	Kirlia.jpg	2	203	541
542	Klang	0.6	51	Klang.jpg	2	259	542
543	Klawf	1.3	79	Klawf.jpg	\N	5	543
544	Kleavor	1.8	89	Kleavor.jpg	2	27	544
545	Klefki	0.2	3	Klefki.jpg	\N	343	545
547	Klinklang	0.6	81	Klinklang.jpg	1	259	547
548	Koffing	0.6	1	Koffing.jpg	1	465	548
549	Komala	0.4	19.9	Komala.jpg	\N	184	549
551	Koraidon	2.5	303	Koraidon.jpg	\N	444	551
552	Krabby	0.4	6.5	Krabby.jpg	1	497	552
554	Kricketune	1	25.5	Kricketune.jpg	2	147	554
555	Krokorok	1	33.4	Krokorok.jpg	2	161	555
556	Krookodile	1.5	96.3	Krookodile.jpg	3	322	556
557	Kubfu	0.6	12	Kubfu.jpg	1	702	557
558	Kyogre	4.5	352	Kyogre.jpg	\N	529	558
559	Kyurem	3	325	Kyurem.jpg	\N	78	559
560	Lairon	0.9	120	Lairon.jpg	2	326	560
561	Lampent	0.6	13	Lampent.jpg	2	350	561
564	Lanturn	1.2	22.5	Lanturn.jpg	2	364	564
565	Lapras	2.5	220	Lapras.jpg	\N	647	565
566	Larvesta	1.1	28.8	Larvesta.jpg	1	641	566
567	Larvitar	0.6	72	Larvitar.jpg	1	502	567
568	Latias	1.4	40	Latias.jpg	\N	206	568
569	Latios	2	60	Latios.jpg	\N	206	569
570	Leafeon	1	25.5	Leafeon.jpg	2	664	570
571	Leavanny	1.2	20.5	Leavanny.jpg	3	432	571
572	Lechonk	0.5	10.2	Lechonk.jpg	1	304	572
573	Ledian	1.4	35.6	Ledian.jpg	2	228	573
575	Lickilicky	1.7	140	Lickilicky.jpg	2	362	575
576	Lickitung	1.2	65.5	Lickitung.jpg	1	362	576
577	Liepard	1.1	37.5	Liepard.jpg	2	148	577
578	Lileep	1	23.8	Lileep.jpg	1	533	578
579	Lilligant	1.1	16.3	Lilligant.jpg	2	236	579
581	Linoone	0.5	32.5	Linoone.jpg	2	512	581
582	Litleo	0.6	13.5	Litleo.jpg	1	367	582
583	Litten	0.4	4.3	Litten.jpg	1	217	583
584	Litwick	0.3	3.1	Litwick.jpg	1	96	584
585	Lokix	1	17.5	Lokix.jpg	2	275	585
586	Lombre	1.2	32.5	Lombre.jpg	2	337	586
588	Lotad	0.5	2.6	Lotad.jpg	1	677	588
589	Loudred	1	40.5	Loudred.jpg	2	57	589
590	Lucario	1.2	54	Lucario.jpg	2	23	590
591	Ludicolo	1.5	55	Ludicolo.jpg	3	98	591
592	Lugia	5.2	216	Lugia.jpg	\N	171	592
593	Lumineon	1.2	24	Lumineon.jpg	2	428	593
595	Lunatone	1	168	Lunatone.jpg	\N	406	595
596	Lurantis	0.9	18.5	Lurantis.jpg	2	71	596
597	Luvdisc	0.6	8.7	Luvdisc.jpg	\N	492	597
598	Luxio	0.9	30.5	Luxio.jpg	2	579	598
599	Luxray	1.4	42	Luxray.jpg	3	266	599
603	Mabosstiff	1.1	61	Mabosstiff.jpg	2	76	603
604	Machamp	1.6	130	Machamp.jpg	3	609	604
605	Machoke	1.5	70.5	Machoke.jpg	2	609	605
606	Machop	0.8	19.5	Machop.jpg	1	609	606
607	Magby	0.7	21.4	Magby.jpg	1	370	607
608	Magcargo	0.8	55	Magcargo.jpg	2	356	608
609	Magearna	1	80.5	Magearna.jpg	\N	19	609
611	Magmar	1.3	44.5	Magmar.jpg	2	590	611
612	Magmortar	1.6	68	Magmortar.jpg	3	65	612
613	Magnemite	0.3	6	Magnemite.jpg	1	389	613
614	Magneton	1	60	Magneton.jpg	2	389	614
615	Magnezone	1.2	180	Magnezone.jpg	3	390	615
616	Makuhita	1	86.4	Makuhita.jpg	1	283	616
617	Malamar	1.5	47	Malamar.jpg	2	440	617
619	Manaphy	0.3	1.4	Manaphy.jpg	\N	539	619
620	Mandibuzz	1.2	39.5	Mandibuzz.jpg	2	75	620
621	Manectric	1.5	40.2	Manectric.jpg	2	168	621
622	Mankey	0.5	28	Mankey.jpg	1	452	622
623	Mantine	2.1	220	Mantine.jpg	2	347	623
624	Mantyke	1	65	Mantyke.jpg	1	347	624
625	Maractus	1	28	Maractus.jpg	\N	94	625
627	Mareep	0.6	7.8	Mareep.jpg	1	698	627
628	Marill	0.4	8.5	Marill.jpg	2	13	628
629	Marowak	1	45	Marowak.jpg	2	74	629
630	Marshadow	0.7	22.2	Marshadow.jpg	\N	267	630
631	Marshtomp	0.7	28	Marshtomp.jpg	2	419	631
632	Maschiff	0.5	16	Maschiff.jpg	1	489	632
636	Mawile	0.6	11.5	Mawile.jpg	\N	157	636
637	Medicham	1.3	31.5	Medicham.jpg	2	397	637
638	Meditite	0.6	11.2	Meditite.jpg	1	397	638
5	Aegislash_Blade_Forme	1.7	53	Aegislash_Blade_Forme.jpg	3	509	5
16	Alolan_Golem	1.7	316	Alolan_Golem.jpg	3	400	16
24	Alolan_Raichu	0.7	21	Alolan_Raichu.jpg	3	418	24
95	Black_Kyurem	3.3	325	Black_Kyurem.jpg	\N	78	95
276	Dudunsparce_Three_Segment_Form	4.5	47.4	Dudunsparce_Three_Segment_Form.jpg	1	352	276
220	Darmanitan_Galarian_Standard_Mode	1.7	120	Darmanitan_Galarian_Standard_Mode.jpg	2	704	220
243	Dialga_Origin_Forme	7	850	Dialga_Origin_Forme.jpg	\N	621	243
164	Chi-Yu	0.4	4.9	Chi_Yu.jpg	\N	510	164
313	Eternatus_Eternamax	100	\N	Eternatus_Eternamax.jpg	\N	265	313
646	Mega_Audino	1.5	32	Mega_Audino.jpg	\N	292	646
647	Mega_Banette	1.2	13	Mega_Banette.jpg	2	395	647
648	Mega_Beedrill	1.4	40.5	Mega_Beedrill.jpg	3	463	648
649	Mega_Blastoise	1.6	101.1	Mega_Blastoise.jpg	3	555	649
650	Mega_Blaziken	1.9	52	Mega_Blaziken.jpg	3	67	650
651	Mega_Camerupt	2.5	320.5	Mega_Camerupt.jpg	2	207	651
652	Mega_Charizard_X	1.7	110.5	Mega_Charizard_X.jpg	3	231	652
654	Mega_Diancie	1.1	27.8	Mega_Diancie.jpg	\N	336	654
655	Mega_Gallade	1.6	56.4	Mega_Gallade.jpg	3	63	655
656	Mega_Garchomp	1.9	95	Mega_Garchomp.jpg	3	386	656
657	Mega_Gardevoir	1.6	48.4	Mega_Gardevoir.jpg	3	202	657
658	Mega_Gengar	1.4	40.5	Mega_Gengar.jpg	3	547	658
659	Mega_Glalie	2.1	350.2	Mega_Glalie.jpg	2	210	659
660	Mega_Gyarados	6.5	305	Mega_Gyarados.jpg	2	21	660
661	Mega_Heracross	1.7	62.5	Mega_Heracross.jpg	\N	560	661
662	Mega_Houndoom	1.9	49.5	Mega_Houndoom.jpg	2	154	662
663	Mega_Kangaskhan	2.2	100	Mega_Kangaskhan.jpg	\N	446	663
664	Mega_Latias	1.8	52	Mega_Latias.jpg	\N	206	664
665	Mega_Latios	2.3	70	Mega_Latios.jpg	\N	206	665
667	Mega_Lucario	1.3	57.5	Mega_Lucario.jpg	2	23	667
668	Mega_Manectric	1.8	44	Mega_Manectric.jpg	2	168	668
669	Mega_Mawile	1	23.5	Mega_Mawile.jpg	\N	157	669
670	Mega_Medicham	1.3	31.5	Mega_Medicham.jpg	2	397	670
671	Mega_Metagross	2.5	942.9	Mega_Metagross.jpg	3	329	671
672	Mega_Mewtwo_X	2.3	127	Mega_Mewtwo_X.jpg	\N	261	672
673	Mega_Mewtwo_Y	1.5	33	Mega_Mewtwo_Y.jpg	\N	261	673
674	Mega_Pidgeot	2.2	50.5	Mega_Pidgeot.jpg	3	59	674
675	Mega_Pinsir	1.7	59	Mega_Pinsir.jpg	\N	593	675
677	Mega_Sableye	0.5	161	Mega_Sableye.jpg	\N	155	677
678	Mega_Salamence	1.8	112.6	Mega_Salamence.jpg	3	179	678
679	Mega_Sceptile	1.9	55.2	Mega_Sceptile.jpg	3	240	679
680	Mega_Scizor	2	125	Mega_Scizor.jpg	2	453	680
681	Mega_Sharpedo	2.5	130.3	Mega_Sharpedo.jpg	2	84	681
682	Mega_Slowbro	2	120	Mega_Slowbro.jpg	2	296	682
683	Mega_Steelix	10.5	740	Mega_Steelix.jpg	2	330	683
685	Mega_Tyranitar	2.5	255	Mega_Tyranitar.jpg	3	16	685
686	Mega_Venusaur	2.4	155.5	Mega_Venusaur.jpg	3	543	686
689	Meloetta_Aria_Forme	0.6	6.5	Meloetta_Aria_Forme.jpg	\N	402	689
690	Meloetta_Pirouette_Forme	0.6	6.5	Meloetta_Pirouette_Forme.jpg	\N	402	690
694	Meowstic_Male	0.6	8.5	Meowstic_Male.jpg	2	135	694
75	Basculin_Red_Striped_Form	1	18	Basculin_Red_Striped_Form.jpg	1	306	75
1	Abomasnow	2.2	135.5	Abomasnow.jpg	2	254	1
33	Ambipom	1.2	20.3	Ambipom.jpg	2	373	33
40	Araquanid	1.8	82	Araquanid.jpg	2	673	40
47	Archeops	1.4	32	Archeops.jpg	2	226	47
56	Arrokuda	0.5	1	Arrokuda.jpg	1	511	56
64	Azumarill	0.8	28.5	Azumarill.jpg	2	14	64
71	Barraskewda	1.3	30	Barraskewda.jpg	2	561	71
88	Bergmite	1	99.5	Bergmite.jpg	1	312	88
104	Bonsly	0.5	15	Bonsly.jpg	1	76	104
107	Braixen	1	14.5	Braixen.jpg	2	244	107
112	Brionne	0.6	17.5	Brionne.jpg	2	471	112
119	Bulbasaur	0.7	6.9	Bulbasaur.jpg	1	543	119
128	Cacturne	1.3	77.4	Cacturne.jpg	2	520	128
137	Carracosta	1.2	81	Carracosta.jpg	2	477	137
148	Ceruledge	1.6	62	Ceruledge.jpg	2	216	148
155	Charjabug	0.5	10.5	Charjabug.jpg	2	41	155
171	Cinccino	0.5	7.5	Cinccino.jpg	2	521	171
178	Clefairy	0.6	7.5	Clefairy.jpg	2	211	178
187	Combusken	0.9	19.5	Combusken.jpg	2	703	187
194	Corvisquire	0.8	16	Corvisquire.jpg	2	490	194
201	Cramorant	0.8	18	Cramorant.jpg	\N	282	201
208	Croconaw	1.1	25	Croconaw.jpg	2	55	208
215	Cutiefly	0.1	0.2	Cutiefly.jpg	1	46	215
233	Delphox	1.5	39	Delphox.jpg	3	244	233
254	Dottler	0.4	19.5	Dottler.jpg	2	487	254
261	Dragonite	2.2	210	Dragonite.jpg	3	179	261
269	Drifloon	0.4	1.2	Drifloon.jpg	1	34	269
289	Eelektrik	1.2	22	Eelektrik.jpg	2	195	289
296	Electabuzz	1.1	30	Electabuzz.jpg	2	192	296
304	Empoleon	1.7	84.5	Empoleon.jpg	3	204	304
321	Farigiraf	3.2	160	Farigiraf.jpg	2	373	321
322	Fearow	1.2	38	Fearow.jpg	2	42	322
329	Fidough	0.3	10.9	Fidough.jpg	1	484	329
336	Fletchinder	0.7	16	Fletchinder.jpg	2	201	336
687	Meganium	1.8	100.5	Meganium.jpg	3	295	687
688	Melmetal	2.5	800	Melmetal.jpg	2	298	688
691	Meltan	0.2	8	Meltan.jpg	1	298	691
692	Meowscarada	1.5	31.2	Meowscarada.jpg	3	388	692
695	Meowth	0.4	4.2	Meowth.jpg	1	526	695
696	Mesprit	0.3	0.3	Mesprit.jpg	\N	203	696
350	Frillish	1.2	33	Frillish.jpg	1	234	350
359	Gabite	1.4	56	Gabite.jpg	2	104	359
384	Gastrodon	0.9	29.9	Gastrodon.jpg	2	536	384
402	Glimmora	1.5	45	Glimmora.jpg	2	438	402
409	Golem	1.4	300	Golem.jpg	3	400	409
415	Gorebyss	1.8	22.6	Gorebyss.jpg	2	578	415
427	Grapploct	1.6	39	Grapploct.jpg	2	619	427
428	Graveler	1	105	Graveler.jpg	2	498	428
436	Grotle	1.1	97	Grotle.jpg	2	280	436
443	Gumshoos	0.7	14.2	Gumshoos.jpg	2	594	443
451	Hatterene	2.1	5.1	Hatterene.jpg	3	558	451
460	Helioptile	0.5	6	Helioptile.jpg	1	260	460
492	Houndoom	1.4	35	Houndoom.jpg	2	154	492
500	Illumise	0.6	17.7	Illumise.jpg	\N	224	500
523	Jolteon	0.8	24.5	Jolteon.jpg	2	365	523
529	Kadabra	1.3	56.5	Kadabra.jpg	1	479	529
534	Kecleon	1	22	Kecleon.jpg	\N	129	534
546	Klink	0.3	21	Klink.jpg	1	259	546
553	Kricketot	0.3	2.2	Kricketot.jpg	1	147	553
574	Ledyba	1	10.8	Ledyba.jpg	1	228	574
580	Lillipup	0.4	4.1	Lillipup.jpg	1	484	580
587	Lopunny	1.2	33.3	Lopunny.jpg	2	485	587
594	Lunala	4	120	Lunala.jpg	3	414	594
610	Magikarp	0.9	10	Magikarp.jpg	1	227	610
618	Mamoswine	2.5	291	Mamoswine.jpg	3	658	618
626	Mareanie	0.4	8	Mareanie.jpg	1	85	626
633	Masquerain	0.8	3.6	Masquerain.jpg	2	209	633
753	Nymble	0.2	1	Nymble.jpg	1	275	753
786	Pangoro	2.1	136	Pangoro.jpg	2	156	786
796	Pawmi	0.3	2.5	Pawmi.jpg	1	418	796
799	Pawniard	0.5	10.2	Pawniard.jpg	1	548	799
806	Phantump	0.4	7	Phantump.jpg	1	605	806
815	Pikachu	0.4	6	Pikachu.jpg	2	418	815
824	Politoed	1.1	33.9	Politoed.jpg	3	252	824
831	Poochyena	0.5	13.6	Poochyena.jpg	1	60	831
838	Primarina	1.8	44	Primarina.jpg	3	576	838
855	Quaxwell	1.2	21.5	Quaxwell.jpg	2	472	855
864	Ralts	0.4	6.6	Ralts.jpg	1	215	864
872	Regieleki	1.2	145	Regieleki.jpg	\N	194	872
883	Rhyhorn	1	115	Rhyhorn.jpg	1	583	883
897	Rufflet	0.5	10.5	Rufflet.jpg	1	188	897
904	Sandaconda	3.8	65.5	Sandaconda.jpg	2	516	904
906	Sandshrew	0.6	12	Sandshrew.jpg	1	418	906
911	Sawsbuck	1.9	92.5	Sawsbuck.jpg	2	541	911
919	Scraggy	0.6	11.8	Scraggy.jpg	1	551	919
926	Seel	1.1	90	Seel.jpg	1	534	926
932	Sewaddle	0.3	2.5	Sewaddle.jpg	1	546	932
941	Shieldon	0.5	57	Shieldon.jpg	1	556	941
949	Sigilyph	1.4	14	Sigilyph.jpg	\N	26	949
955	Simisear	1	28	Simisear.jpg	2	201	955
964	Skorupi	0.8	12	Skorupi.jpg	1	524	964
970	Sliggoo	0.8	17.5	Sliggoo.jpg	2	575	970
976	Slurpuff	0.8	5	Slurpuff.jpg	2	403	976
985	Snorunt	0.7	16.8	Snorunt.jpg	1	572	985
992	Spearow	0.3	2	Spearow.jpg	1	633	992
999	Spiritomb	1	108	Spiritomb.jpg	\N	239	999
1016	Steenee	0.7	8.2	Steenee.jpg	2	255	1016
1022	Sudowoodo	1.2	38	Sudowoodo.jpg	2	319	1022
1029	Swalot	1.7	80	Swalot.jpg	2	462	1029
1036	Sylveon	1	23.5	Sylveon.jpg	2	321	1036
1042	Tangrowth	2	128.6	Tangrowth.jpg	2	668	1042
1079	Togetic	0.6	3.2	Togetic.jpg	2	288	1079
1087	Toucannon	1.1	26	Toucannon.jpg	3	97	1087
1105	Typhlosion	1.7	79.5	Typhlosion.jpg	3	670	1105
1112	Unfezant	1.2	29	Unfezant.jpg	3	478	1112
364	Galarian_Linoone	0.5	32.5	Galarian_Linoone.jpg	2	512	364
375	Galarian_Zapdos	1.6	58.2	Galarian_Zapdos.jpg	\N	604	375
391	Gimmighoul_Chest_Form	0.3	5	Gimmighoul_Chest_Form.jpg	1	126	391
421	Gourgeist_Average_Size	0.9	12.5	Gourgeist_Average_Size.jpg	2	480	421
467	Hisuian_Braviary	1.7	43.4	Hisuian_Braviary.jpg	2	41	467
475	Hisuian_Sliggoo	0.7	68.5	Hisuian_Sliggoo.jpg	2	569	475
484	Ho-oh	3.8	199	Ho_oh.jpg	\N	488	484
508	Iron_Boulder	1.5	162.5	Iron_Boulder.jpg	\N	444	508
535	Keldeo_Ordinary_Form	1.4	48.5	Keldeo_Ordinary_Form.jpg	\N	131	535
562	Landorus_Incarnate_Forme	1.5	68	Landorus_Incarnate_Forme.jpg	\N	1	562
600	Lycanroc_Dusk_Form	0.8	25	Lycanroc_Dusk_Form.jpg	2	695	600
642	Mega_Aggron	2.2	395	Mega_Aggron.jpg	3	326	642
644	Mega_Altaria	1.5	20.6	Mega_Altaria.jpg	2	309	644
645	Mega_Ampharos	1.4	61.5	Mega_Ampharos.jpg	3	364	645
666	Mega_Lopunny	1.3	28.3	Mega_Lopunny.jpg	2	485	666
676	Mega_Rayquaza	10.8	392	Mega_Rayquaza.jpg	\N	563	676
684	Mega_Swampert	1.9	102	Mega_Swampert.jpg	3	419	684
693	Meowstic_Female	0.6	8.5	Meowstic_Female.jpg	2	135	693
757	Ogerpon_Cornerstone_Mask	1.2	39.8	Ogerpon_Cornerstone_Mask.jpg	\N	396	757
772	Oricorio_Sensu_Style	0.6	3.4	Oricorio_Sensu_Style.jpg	\N	153	772
792	Partner_Eevee	0.3	6.5	Partner_Eevee.jpg	1	208	792
843	Pumpkaboo_Average_Size	0.4	5	Pumpkaboo_Average_Size.jpg	1	480	843
888	Roaring_Moon	2	380	Roaring_Moon.jpg	\N	444	888
1004	Squawkabilly_Green_Plumage	0.6	2.4	Squawkabilly_Green_Plumage.jpg	\N	446	1004
1054	Tauros_Combat_Breed	1.4	115	Tauros_Combat_Breed.jpg	\N	684	1054
1065	Thundurus_Incarnate_Forme	1.5	61	Thundurus_Incarnate_Forme.jpg	\N	73	1065
1092	Toxtricity_Low_Key_Form	1.6	40	Toxtricity_Low_Key_Form.jpg	2	482	1092
1117	Urshifu_Rapid_Strike_Style	1.9	105	Urshifu_Rapid_Strike_Style.jpg	2	702	1117
343	Flutter_Mane	1.4	4	Flutter_Mane.jpg	\N	444	343
355	Frost_Rotom	0.3	0.3	Frost_Rotom.jpg	\N	457	355
536	Keldeo_Resolute_Form	1.4	48.5	Keldeo_Resolute_Form.jpg	\N	131	536
653	Mega_Charizard_Y	1.7	100.5	Mega_Charizard_Y.jpg	3	231	653
1003	Squawkabilly_Blue_Plumage	0.6	2.4	Squawkabilly_Blue_Plumage.jpg	\N	446	1003
697	Metagross	1.6	550	Metagross.jpg	3	329	697
698	Metang	1.2	202.5	Metang.jpg	2	328	698
699	Metapod	0.7	9.9	Metapod.jpg	2	124	699
700	Mew	0.4	4	Mew.jpg	\N	429	700
701	Mewtwo	2	122	Mewtwo.jpg	\N	261	701
702	Mienfoo	0.9	20	Mienfoo.jpg	1	396	702
703	Mienshao	1.4	35.5	Mienshao.jpg	2	396	703
710	Minior_Core_Form	0.3	0.3	Minior_Core_Form.jpg	\N	405	710
711	Minior_Meteor_Form	0.3	40	Minior_Meteor_Form.jpg	\N	405	711
720	Morpeko_Full_Belly_Mode	0.3	3	Morpeko_Full_Belly_Mode.jpg	\N	660	720
721	Morpeko_Hangry_Mode	0.3	3	Morpeko_Hangry_Mode.jpg	\N	660	721
723	Mow_Rotom	0.3	0.3	Mow_Rotom.jpg	\N	457	723
758	Ogerpon_Hearthflame_Mask	1.2	39.8	Ogerpon_Hearthflame_Mask.jpg	\N	396	758
759	Ogerpon_Teal_Mask	1.2	39.8	Ogerpon_Teal_Mask.jpg	\N	396	759
760	Ogerpon_Wellspring_Mask	1.2	39.8	Ogerpon_Wellspring_Mask.jpg	\N	396	760
761	Oinkologne_Female	1	120	Oinkologne_Female.jpg	2	304	761
762	Oinkologne_Male	1	120	Oinkologne_Male.jpg	2	304	762
769	Oricorio_Baile_Style	0.6	3.4	Oricorio_Baile_Style.jpg	\N	153	769
770	Oricorio_Pa'u_Style	0.6	3.4	Oricorio_Pa'u_Style.jpg	\N	153	770
776	Own_Tempo_Rockruff	0.5	9.2	Own_Tempo_Rockruff.jpg	1	484	776
778	Palafin_Hero_Form	1.8	97.4	Palafin_Hero_Form.jpg	2	297	778
779	Palafin_Zero_Form	1.3	60.2	Palafin_Zero_Form.jpg	2	176	779
780	Paldean_Wooper	0.4	11	Paldean_Wooper.jpg	1	464	780
782	Palkia_Origin_Forme	6.3	660	Palkia_Origin_Forme.jpg	\N	580	782
793	Partner_Pikachu	0.4	6	Partner_Pikachu.jpg	2	418	793
771	Oricorio_Pom_Pom_Style	0.6	3.4	Oricorio_Pom_Pom_Style.jpg	\N	153	771
704	Mightyena	1	37	Mightyena.jpg	2	60	704
705	Milcery	0.2	0.3	Milcery.jpg	1	146	705
706	Milotic	6.2	162	Milotic.jpg	2	622	706
707	Miltank	1.2	75.5	Miltank.jpg	\N	407	707
708	Mimikyu	0.2	0.7	Mimikyu.jpg	\N	170	708
709	Minccino	0.4	5.8	Minccino.jpg	1	115	709
712	Minun	0.4	4.2	Minun.jpg	\N	110	712
713	Miraidon	3.5	240	Miraidon.jpg	\N	444	713
714	Misdreavus	0.7	1	Misdreavus.jpg	1	527	714
715	Mismagius	0.9	4.4	Mismagius.jpg	2	387	715
716	Moltres	2	60	Moltres.jpg	\N	231	716
717	Monferno	0.9	22	Monferno.jpg	2	459	717
718	Morelull	0.2	1.5	Morelull.jpg	1	317	718
719	Morgrem	0.8	12.5	Morgrem.jpg	2	164	719
722	Mothim	0.9	23.3	Mothim.jpg	2	416	722
724	Mudbray	1	110	Mudbray.jpg	1	176	724
725	Mudkip	0.4	7.6	Mudkip.jpg	1	419	725
726	Mudsdale	2.5	920	Mudsdale.jpg	2	178	726
727	Muk	1.2	30	Muk.jpg	2	567	727
728	Munchlax	0.6	105	Munchlax.jpg	1	52	728
729	Munkidori	1	12.2	Munkidori.jpg	\N	495	729
730	Munna	0.6	23.3	Munna.jpg	1	182	730
731	Murkrow	0.5	2.1	Murkrow.jpg	1	155	731
732	Musharna	1.1	60.5	Musharna.jpg	2	184	732
733	Nacli	0.4	16	Nacli.jpg	1	501	733
734	Naclstack	0.6	105	Naclstack.jpg	2	501	734
735	Naganadel	3.6	150	Naganadel.jpg	2	467	735
736	Natu	0.2	2	Natu.jpg	1	633	736
737	Necrozma	2.4	230	Necrozma.jpg	\N	475	737
738	Nickit	0.6	8.9	Nickit.jpg	1	244	738
739	Nidoking	1.4	62	Nidoking.jpg	3	183	739
740	Nidoqueen	1.3	60	Nidoqueen.jpg	3	183	740
741	Nidorina	0.8	20	Nidorina.jpg	2	467	741
742	Nidorino	0.9	19.5	Nidorino.jpg	2	467	742
743	Nihilego	1.2	55.5	Nihilego.jpg	\N	445	743
744	Nincada	0.5	5.5	Nincada.jpg	1	645	744
745	Ninetales	1.1	19.9	Ninetales.jpg	2	244	745
746	Ninjask	0.8	12	Ninjask.jpg	2	430	746
747	Noctowl	1.6	40.8	Noctowl.jpg	2	441	747
748	Noibat	0.5	8	Noibat.jpg	1	577	748
749	Noivern	1.5	85	Noivern.jpg	2	577	749
750	Nosepass	1	97	Nosepass.jpg	1	133	750
751	Numel	0.7	24	Numel.jpg	1	431	751
752	Nuzleaf	1	28	Nuzleaf.jpg	2	690	752
754	Obstagoon	1.6	46	Obstagoon.jpg	3	70	754
755	Octillery	0.9	28.5	Octillery.jpg	2	334	755
756	Oddish	0.5	5.4	Oddish.jpg	1	679	756
763	Okidogi	1.8	92	Okidogi.jpg	\N	495	763
764	Omanyte	0.4	7.5	Omanyte.jpg	1	587	764
765	Omastar	1	35	Omastar.jpg	2	587	765
766	Onix	8.8	210	Onix.jpg	1	503	766
767	Oranguru	1.5	76	Oranguru.jpg	\N	513	767
768	Orbeetle	0.4	40.8	Orbeetle.jpg	3	545	768
773	Orthworm	2.5	310	Orthworm.jpg	\N	189	773
774	Oshawott	0.5	5.9	Oshawott.jpg	1	535	774
775	Overqwil	2.5	60.5	Overqwil.jpg	2	452	775
777	Pachirisu	0.4	3.9	Pachirisu.jpg	\N	198	777
781	Palkia	4.2	336	Palkia.jpg	\N	580	781
783	Palossand	1.3	250	Palossand.jpg	2	514	783
784	Palpitoad	0.8	17	Palpitoad.jpg	2	665	784
785	Pancham	0.6	8	Pancham.jpg	1	459	785
787	Panpour	0.6	13.5	Panpour.jpg	1	592	787
788	Pansage	0.6	10.5	Pansage.jpg	1	271	788
789	Pansear	0.6	11	Pansear.jpg	1	302	789
790	Paras	0.3	5.4	Paras.jpg	1	423	790
791	Parasect	1	29.5	Parasect.jpg	1	423	791
794	Passimian	2	82.8	Passimian.jpg	\N	620	794
795	Patrat	0.5	11.6	Patrat.jpg	1	525	795
834	Porygon-Z	0.9	34	Porygon_Z.jpg	1	669	834
836	Primal_Groudon	5	999.7	Primal_Groudon.jpg	\N	136	836
837	Primal_Kyogre	9.8	430	Primal_Kyogre.jpg	\N	529	837
844	Pumpkaboo_Large_Size	0.5	7.5	Pumpkaboo_Large_Size.jpg	1	480	844
845	Pumpkaboo_Small_Size	0.3	3.5	Pumpkaboo_Small_Size.jpg	1	480	845
846	Pumpkaboo_Super_Size	0.8	15	Pumpkaboo_Super_Size.jpg	1	480	846
861	Raging_Bolt	5.2	480	Raging_Bolt.jpg	\N	444	861
797	Pawmo	0.4	6.5	Pawmo.jpg	2	418	797
798	Pawmot	0.9	41	Pawmot.jpg	2	286	798
800	Pecharunt	0.3	0.3	Pecharunt.jpg	\N	605	800
801	Pelipper	1.2	28	Pelipper.jpg	2	672	801
802	Perrserker	0.8	28	Perrserker.jpg	2	667	802
803	Persian	1	32	Persian.jpg	2	118	803
804	Petilil	0.5	6.6	Petilil.jpg	1	91	804
805	Phanpy	0.5	33.5	Phanpy.jpg	1	373	805
807	Pheromosa	1.8	25	Pheromosa.jpg	\N	368	807
808	Phione	0.4	3.1	Phione.jpg	\N	532	808
809	Pichu	0.3	2	Pichu.jpg	1	635	809
810	Pidgeot	1.5	39.5	Pidgeot.jpg	3	59	810
811	Pidgeotto	1.1	30	Pidgeotto.jpg	2	59	811
812	Pidgey	0.3	1.8	Pidgey.jpg	1	633	812
813	Pidove	0.3	2.1	Pidove.jpg	1	636	813
814	Pignite	1	55.5	Pignite.jpg	2	222	814
816	Pikipek	0.3	1.2	Pikipek.jpg	1	697	816
817	Piloswine	1.1	55.8	Piloswine.jpg	2	612	817
818	Pincurchin	0.3	1	Pincurchin.jpg	\N	537	818
819	Pineco	0.6	7.2	Pineco.jpg	1	30	819
820	Pinsir	1.5	55	Pinsir.jpg	\N	593	820
821	Piplup	0.4	5.2	Piplup.jpg	1	449	821
822	Plusle	0.4	4.2	Plusle.jpg	\N	110	822
823	Poipole	0.6	1.8	Poipole.jpg	1	467	823
825	Poliwag	0.6	12.4	Poliwag.jpg	1	618	825
826	Poliwhirl	1	20	Poliwhirl.jpg	2	618	826
827	Poliwrath	1.3	54	Poliwrath.jpg	3	618	827
828	Poltchageist	0.1	1.1	Poltchageist.jpg	1	396	828
829	Polteageist	0.2	0.4	Polteageist.jpg	2	62	829
830	Ponyta	1	30	Ponyta.jpg	1	220	830
832	Popplio	0.4	7.5	Popplio.jpg	1	534	832
833	Porygon	0.8	36.5	Porygon.jpg	1	669	833
835	Porygon2	0.6	32.5	Porygon2.jpg	1	669	835
839	Primeape	1	32	Primeape.jpg	2	452	839
840	Prinplup	0.8	23	Prinplup.jpg	2	449	840
841	Probopass	1.4	340	Probopass.jpg	2	133	841
842	Psyduck	0.8	19.6	Psyduck.jpg	1	186	842
847	Pupitar	1.2	152	Pupitar.jpg	2	290	847
848	Purrloin	0.4	10.1	Purrloin.jpg	1	164	848
849	Purugly	1	43.8	Purugly.jpg	2	630	849
850	Pyroar	1.5	81.5	Pyroar.jpg	2	507	850
851	Pyukumuku	0.3	1.2	Pyukumuku.jpg	\N	531	851
852	Quagsire	1.4	75	Quagsire.jpg	2	674	852
853	Quaquaval	1.8	61.9	Quaquaval.jpg	3	152	853
854	Quaxly	0.5	6.1	Quaxly.jpg	1	187	854
856	Quilava	0.9	19	Quilava.jpg	2	670	856
857	Quilladin	0.7	29	Quilladin.jpg	2	585	857
858	Qwilfish	0.5	3.9	Qwilfish.jpg	1	34	858
859	Raboot	0.6	9	Raboot.jpg	2	485	859
860	Rabsca	0.3	3.5	Rabsca.jpg	2	505	860
862	Raichu	0.8	30	Raichu.jpg	3	418	862
863	Raikou	1.9	178	Raikou.jpg	\N	628	863
865	Rampardos	1.6	102.5	Rampardos.jpg	2	291	865
866	Rapidash	1.7	95	Rapidash.jpg	2	220	866
867	Raticate	0.7	18.5	Raticate.jpg	2	418	867
868	Rattata	0.3	3.5	Rattata.jpg	1	418	868
869	Rayquaza	7	206.5	Rayquaza.jpg	\N	563	869
870	Regice	1.8	175	Regice.jpg	\N	315	870
871	Regidrago	2.1	200	Regidrago.jpg	\N	180	871
873	Regigigas	3.7	420	Regigigas.jpg	\N	130	873
874	Regirock	1.7	230	Regirock.jpg	\N	501	874
875	Registeel	1.9	205	Registeel.jpg	\N	324	875
876	Relicanth	1	23.4	Relicanth.jpg	\N	374	876
877	Rellor	0.2	1	Rellor.jpg	1	505	877
878	Remoraid	0.6	12	Remoraid.jpg	1	334	878
879	Reshiram	3.2	330	Reshiram.jpg	\N	663	879
880	Reuniclus	1	20.1	Reuniclus.jpg	3	421	880
881	Revavroom	1.8	120	Revavroom.jpg	2	420	881
882	Rhydon	1.9	120	Rhydon.jpg	2	183	882
884	Rhyperior	2.4	282.8	Rhyperior.jpg	3	183	884
885	Ribombee	0.2	0.5	Ribombee.jpg	2	46	885
886	Rillaboom	2.1	90	Rillaboom.jpg	3	185	886
887	Riolu	0.7	20.2	Riolu.jpg	1	200	887
889	Rockruff	0.5	9.2	Rockruff.jpg	1	484	889
890	Roggenrola	0.4	18	Roggenrola.jpg	1	394	890
891	Rolycoly	0.3	12	Rolycoly.jpg	1	121	891
892	Rookidee	0.2	1.8	Rookidee.jpg	1	633	892
893	Roselia	0.3	2	Roselia.jpg	2	624	893
894	Roserade	0.9	14.5	Roserade.jpg	3	79	894
895	Rotom	0.3	0.3	Rotom.jpg	\N	457	895
896	Rowlet	0.3	1.5	Rowlet.jpg	1	271	896
898	Runerigus	1.6	66.6	Runerigus.jpg	2	281	898
899	Sableye	0.5	11	Sableye.jpg	\N	155	899
900	Salamence	1.5	102.6	Salamence.jpg	3	179	900
901	Salandit	0.6	4.8	Salandit.jpg	1	642	901
902	Salazzle	1.2	22.2	Salazzle.jpg	2	642	902
903	Samurott	1.5	94.6	Samurott.jpg	3	242	903
905	Sandile	0.7	15.2	Sandile.jpg	1	161	905
908	Sandy_Shocks	2.3	60	Sandy_Shocks.jpg	\N	444	908
920	Scream_Tail	1.2	8	Scream_Tail.jpg	\N	444	920
934	Shaymin_Land_Forme	0.2	2.1	Shaymin_Land_Forme.jpg	\N	277	934
935	Shaymin_Sky_Forme	0.4	5.2	Shaymin_Sky_Forme.jpg	\N	277	935
971	Slither_Wing	3.2	92	Slither_Wing.jpg	\N	444	971
1005	Squawkabilly_White_Plumage	0.6	2.4	Squawkabilly_White_Plumage.jpg	\N	446	1005
1006	Squawkabilly_Yellow_Plumage	0.6	2.4	Squawkabilly_Yellow_Plumage.jpg	\N	446	1006
907	Sandslash	1	29.5	Sandslash.jpg	2	418	907
909	Sandygast	0.5	70	Sandygast.jpg	1	515	909
910	Sawk	1.4	51	Sawk.jpg	\N	342	910
912	Scatterbug	0.3	2.5	Scatterbug.jpg	1	522	912
913	Sceptile	1.7	52.2	Sceptile.jpg	3	240	913
914	Scizor	1.8	118	Scizor.jpg	2	453	914
915	Scolipede	2.5	200.5	Scolipede.jpg	3	399	915
916	Scorbunny	0.3	4.5	Scorbunny.jpg	1	485	916
917	Scovillain	0.9	15	Scovillain.jpg	2	581	917
918	Scrafty	1.1	30	Scrafty.jpg	2	305	918
921	Scyther	1.5	56	Scyther.jpg	1	393	921
922	Seadra	1.2	25	Seadra.jpg	2	179	922
923	Seaking	1.3	39	Seaking.jpg	2	270	923
924	Sealeo	1.1	87.6	Sealeo.jpg	2	32	924
925	Seedot	0.5	4	Seedot.jpg	1	2	925
927	Seismitoad	1.5	62	Seismitoad.jpg	3	665	927
928	Sentret	0.8	6	Sentret.jpg	1	525	928
929	Serperior	3.3	63	Serperior.jpg	3	491	929
930	Servine	0.8	16	Servine.jpg	2	275	930
931	Seviper	2.7	52.5	Seviper.jpg	\N	214	931
933	Sharpedo	1.8	88.8	Sharpedo.jpg	2	84	933
936	Shedinja	0.8	1.2	Shedinja.jpg	3	550	936
937	Shelgon	1.1	110.5	Shelgon.jpg	2	205	937
938	Shellder	0.3	4	Shellder.jpg	1	61	938
939	Shellos	0.3	6.3	Shellos.jpg	1	536	939
940	Shelmet	0.4	7.7	Shelmet.jpg	1	569	940
942	Shiftry	1.3	59.6	Shiftry.jpg	3	683	942
943	Shiinotic	1	11.5	Shiinotic.jpg	2	317	943
944	Shinx	0.5	9.5	Shinx.jpg	1	232	944
945	Shroodle	0.2	0.7	Shroodle.jpg	1	643	945
946	Shroomish	0.4	4.5	Shroomish.jpg	1	423	946
947	Shuckle	0.6	20.5	Shuckle.jpg	\N	412	947
948	Shuppet	0.6	2.3	Shuppet.jpg	1	483	948
950	Silcoon	0.6	10	Silcoon.jpg	2	124	950
951	Silicobra	2.2	7.6	Silicobra.jpg	1	516	951
952	Silvally	2.3	100.5	Silvally.jpg	2	617	952
953	Simipour	1	29	Simipour.jpg	2	262	953
954	Simisage	1.1	30.5	Simisage.jpg	2	625	954
956	Sinistcha	0.2	2.2	Sinistcha.jpg	2	396	956
957	Sinistea	0.1	0.2	Sinistea.jpg	1	62	957
958	Sizzlipede	0.7	1	Sizzlipede.jpg	1	486	958
959	Skarmory	1.7	50.5	Skarmory.jpg	\N	17	959
960	Skeledirge	1.6	326.5	Skeledirge.jpg	3	558	960
961	Skiddo	0.9	31	Skiddo.jpg	1	417	961
962	Skiploom	0.6	1	Skiploom.jpg	2	143	962
963	Skitty	0.6	11	Skitty.jpg	1	348	963
965	Skrelp	0.5	7.3	Skrelp.jpg	1	411	965
966	Skuntank	1	38	Skuntank.jpg	2	562	966
967	Skwovet	0.3	2.5	Skwovet.jpg	1	109	967
968	Slaking	2	130.5	Slaking.jpg	3	358	968
969	Slakoth	0.8	24	Slakoth.jpg	1	565	969
972	Slowbro	1.6	78.5	Slowbro.jpg	2	296	972
973	Slowking	2	79.5	Slowking.jpg	2	507	973
974	Slowpoke	1.2	36	Slowpoke.jpg	1	177	974
975	Slugma	0.7	35	Slugma.jpg	1	356	975
977	Smeargle	1.2	58	Smeargle.jpg	\N	442	977
978	Smoliv	0.3	6.5	Smoliv.jpg	1	436	978
979	Smoochum	0.4	6	Smoochum.jpg	1	346	979
980	Sneasel	0.9	28	Sneasel.jpg	1	549	980
981	Sneasler	1.3	43	Sneasler.jpg	2	246	981
982	Snivy	0.6	8.1	Snivy.jpg	1	275	982
983	Snom	0.3	3.8	Snom.jpg	1	700	983
984	Snorlax	2.1	460	Snorlax.jpg	2	566	984
986	Snover	1	50.5	Snover.jpg	1	254	986
987	Snubbull	0.6	7.8	Snubbull.jpg	1	211	987
988	Sobble	0.3	4	Sobble.jpg	1	676	988
989	Solgaleo	3.4	230	Solgaleo.jpg	3	608	989
990	Solosis	0.3	1	Solosis.jpg	1	106	990
991	Solrock	1.2	154	Solrock.jpg	\N	406	991
993	Spectrier	2	44.5	Spectrier.jpg	\N	611	993
994	Spewpa	0.3	8.4	Spewpa.jpg	2	522	994
995	Spheal	0.8	39.5	Spheal.jpg	1	117	995
996	Spidops	1	16.5	Spidops.jpg	2	648	996
997	Spinarak	0.5	8.5	Spinarak.jpg	1	602	997
998	Spinda	1.1	5	Spinda.jpg	\N	591	998
1000	Spoink	0.7	30.6	Spoink.jpg	1	77	1000
1001	Sprigatito	0.4	4.1	Sprigatito.jpg	1	271	1001
1002	Spritzee	0.2	0.5	Spritzee.jpg	1	450	1002
1007	Squirtle	0.5	9	Squirtle.jpg	1	640	1007
1008	Stakataka	5.5	820	Stakataka.jpg	\N	489	1008
1009	Stantler	1.4	71.2	Stantler.jpg	1	54	1009
1010	Staraptor	1.2	24.9	Staraptor.jpg	3	473	1010
1011	Staravia	0.6	15.5	Staravia.jpg	2	596	1011
1012	Starly	0.3	2	Starly.jpg	1	596	1012
1013	Starmie	1.1	80	Starmie.jpg	2	425	1013
1014	Staryu	0.8	34.5	Staryu.jpg	1	595	1014
1015	Steelix	9.2	400	Steelix.jpg	2	330	1015
1043	Tapu_Bulu	1.9	45.5	Tapu_Bulu.jpg	\N	353	1043
1044	Tapu_Fini	1.3	21.2	Tapu_Fini.jpg	\N	353	1044
1045	Tapu_Koko	1.8	20.5	Tapu_Koko.jpg	\N	353	1045
1046	Tapu_Lele	1.2	18.6	Tapu_Lele.jpg	\N	353	1046
1048	Tatsugiri_Curly_Form	0.3	8	Tatsugiri_Curly_Form.jpg	\N	408	1048
1049	Tatsugiri_Droopy_Form	0.3	8	Tatsugiri_Droopy_Form.jpg	\N	408	1049
1050	Tatsugiri_Stretchy_Form	0.3	8	Tatsugiri_Stretchy_Form.jpg	\N	408	1050
1052	Tauros_Aqua_Breed	1.4	110	Tauros_Aqua_Breed.jpg	\N	684	1052
1053	Tauros_Blaze_Breed	1.4	85	Tauros_Blaze_Breed.jpg	\N	684	1053
1059	Terapagos_Normal_Form	0.2	6.5	Terapagos_Normal_Form.jpg	\N	622	1059
1060	Terapagos_Stellar_Form	1.7	77	Terapagos_Stellar_Form.jpg	\N	622	1060
1061	Terapagos_Terastal_Form	0.3	16	Terapagos_Terastal_Form.jpg	\N	622	1061
1066	Thundurus_Therian_Forme	3	61	Thundurus_Therian_Forme.jpg	\N	73	1066
1069	Ting-Lu	2.7	699.7	Ting_Lu.jpg	\N	510	1069
1082	Tornadus_Incarnate_Forme	1.5	63	Tornadus_Incarnate_Forme.jpg	\N	151	1082
1083	Tornadus_Therian_Forme	1.4	63	Tornadus_Therian_Forme.jpg	\N	151	1083
1091	Toxtricity_Amped_Form	1.6	40	Toxtricity_Amped_Form.jpg	2	482	1091
1110	Ultra_Necrozma	7.5	230	Ultra_Necrozma.jpg	\N	475	1110
1115	Ursaluna_Bloodmoon	2.7	333	Ursaluna_Bloodmoon.jpg	3	448	1115
1118	Urshifu_Single_Strike_Style	1.9	105	Urshifu_Single_Strike_Style.jpg	2	702	1118
1017	Stonjourner	2.5	520	Stonjourner.jpg	\N	56	1017
1018	Stoutland	1.2	61	Stoutland.jpg	3	58	1018
1019	Stufful	0.5	6.8	Stufful.jpg	1	230	1019
1020	Stunfisk	0.7	11	Stunfisk.jpg	\N	648	1020
1021	Stunky	0.4	19.2	Stunky.jpg	1	562	1021
1023	Suicune	2	187	Suicune.jpg	\N	24	1023
1024	Sunflora	0.8	8.5	Sunflora.jpg	2	607	1024
1025	Sunkern	0.3	1.8	Sunkern.jpg	1	543	1025
1026	Surskit	0.5	1.7	Surskit.jpg	1	469	1026
1027	Swablu	0.4	1.2	Swablu.jpg	1	139	1027
1028	Swadloon	0.5	7.3	Swadloon.jpg	2	360	1028
1030	Swampert	1.5	81.9	Swampert.jpg	3	419	1030
1031	Swanna	1.3	24.2	Swanna.jpg	2	682	1031
1032	Swellow	0.7	19.8	Swellow.jpg	2	610	1032
1033	Swinub	0.4	6.5	Swinub.jpg	1	451	1033
1034	Swirlix	0.4	3.5	Swirlix.jpg	1	141	1034
1035	Swoobat	0.9	10.5	Swoobat.jpg	1	145	1035
1037	Tadbulb	0.3	0.4	Tadbulb.jpg	1	199	1037
1038	Taillow	0.3	2.3	Taillow.jpg	1	640	1038
1039	Talonflame	1.2	24.5	Talonflame.jpg	3	523	1039
1040	Tandemaus	0.3	1.8	Tandemaus.jpg	1	144	1040
1041	Tangela	1	35	Tangela.jpg	1	668	1041
1047	Tarountula	0.3	4	Tarountula.jpg	1	601	1047
1051	Tauros	1.4	88.4	Tauros.jpg	\N	684	1051
1055	Teddiursa	0.6	8.8	Teddiursa.jpg	1	369	1055
1056	Tentacool	0.9	45.5	Tentacool.jpg	1	333	1056
1057	Tentacruel	1.6	55	Tentacruel.jpg	2	333	1057
1058	Tepig	0.5	9.9	Tepig.jpg	1	222	1058
1062	Terrakion	1.9	260	Terrakion.jpg	\N	105	1062
1063	Thievul	1.2	19.9	Thievul.jpg	2	244	1063
1064	Throh	1.3	55.5	Throh.jpg	\N	339	1064
1067	Thwackey	0.7	14	Thwackey.jpg	2	43	1067
1068	Timburr	0.6	12.5	Timburr.jpg	1	422	1068
1070	Tinkatink	0.4	8.9	Tinkatink.jpg	1	404	1070
1071	Tinkaton	0.7	112.8	Tinkaton.jpg	3	285	1071
1072	Tinkatuff	0.7	59.1	Tinkatuff.jpg	2	285	1072
1073	Tirtouga	0.7	16.5	Tirtouga.jpg	1	477	1073
1074	Toedscool	0.9	33	Toedscool.jpg	1	696	1074
1075	Toedscruel	1.9	58	Toedscruel.jpg	2	696	1075
1076	Togedemaru	0.3	3.3	Togedemaru.jpg	\N	506	1076
1077	Togekiss	1.5	38	Togekiss.jpg	3	338	1077
1078	Togepi	0.3	1.5	Togepi.jpg	1	582	1078
1080	Torchic	0.4	2.5	Torchic.jpg	1	112	1080
1081	Torkoal	0.5	80.4	Torkoal.jpg	\N	121	1081
1084	Torracat	0.7	25	Torracat.jpg	2	217	1084
1085	Torterra	2.2	310	Torterra.jpg	3	136	1085
1086	Totodile	0.6	9.5	Totodile.jpg	1	55	1086
1088	Toxapex	0.7	14.5	Toxapex.jpg	2	85	1088
1089	Toxel	0.4	11	Toxel.jpg	1	29	1089
1090	Toxicroak	1.3	44.4	Toxicroak.jpg	2	644	1090
1093	Tranquill	0.6	15	Tranquill.jpg	2	688	1093
1094	Trapinch	0.7	15	Trapinch.jpg	1	7	1094
1095	Treecko	0.5	5	Treecko.jpg	1	696	1095
1096	Trevenant	1.5	71	Trevenant.jpg	2	191	1096
1097	Tropius	2	100	Tropius.jpg	\N	255	1097
1098	Trubbish	0.6	31	Trubbish.jpg	1	649	1098
1099	Trumbeak	0.6	14.8	Trumbeak.jpg	2	90	1099
1100	Tsareena	1.2	21.4	Tsareena.jpg	3	255	1100
1101	Turtonator	2	212	Turtonator.jpg	\N	66	1101
1102	Turtwig	0.4	10.2	Turtwig.jpg	1	634	1102
1103	Tympole	0.5	4.5	Tympole.jpg	1	618	1103
1104	Tynamo	0.2	0.3	Tynamo.jpg	1	195	1104
1106	Tyranitar	2	202	Tyranitar.jpg	3	16	1106
1107	Tyrantrum	2.5	270	Tyrantrum.jpg	2	162	1107
1108	Tyrogue	0.7	21	Tyrogue.jpg	1	528	1108
1109	Tyrunt	0.8	26	Tyrunt.jpg	1	508	1109
1111	Umbreon	1	27	Umbreon.jpg	2	415	1111
1113	Unown	0.5	5	Unown.jpg	\N	616	1113
1114	Ursaluna	2.4	290	Ursaluna.jpg	3	448	1114
1116	Ursaring	1.8	125.8	Ursaring.jpg	2	300	1116
1119	Uxie	0.3	0.3	Uxie.jpg	\N	348	1119
1120	Vanillish	1.1	41	Vanillish.jpg	2	316	1120
1147	Walking_Wake	3.5	280	Walking_Wake.jpg	\N	444	1147
1150	Wash_Rotom	0.3	0.3	Wash_Rotom.jpg	\N	457	1150
1161	White_Kyurem	3.6	325	White_Kyurem.jpg	\N	78	1161
1166	Wishiwashi_School_Form	8.2	78.6	Wishiwashi_School_Form.jpg	\N	568	1166
1167	Wishiwashi_Solo_Form	0.2	0.3	Wishiwashi_Solo_Form.jpg	\N	568	1167
1168	Wo-Chien	1.5	74.2	Wo_Chien.jpg	\N	510	1168
1173	Wormadam_Plant_Cloak	0.5	6.5	Wormadam_Plant_Cloak.jpg	2	30	1173
1174	Wormadam_Sandy_Cloak	0.5	6.5	Wormadam_Sandy_Cloak.jpg	2	30	1174
1175	Wormadam_Trash_Cloak	0.5	6.5	Wormadam_Trash_Cloak.jpg	2	30	1175
1189	Zacian_Crowned_Sword	2.8	355	Zacian_Crowned_Sword.jpg	\N	671	1189
1190	Zacian_Hero_of_Many_Battles	2.8	110	Zacian_Hero_of_Many_Battles.jpg	\N	671	1190
1191	Zamazenta_Crowned_Shield	2.9	785	Zamazenta_Crowned_Shield.jpg	\N	671	1191
1192	Zamazenta_Hero_of_Many_Battles	2.9	210	Zamazenta_Hero_of_Many_Battles.jpg	\N	671	1192
1204	Zygarde_10%_Forme	1.2	33.5	Zygarde_10%_Forme.jpg	\N	437	1204
1205	Zygarde_50%_Forme	5	305	Zygarde_50%_Forme.jpg	\N	437	1205
1206	Zygarde_Complete_Forme	4.5	610	Zygarde_Complete_Forme.jpg	\N	437	1206
1121	Vanillite	0.4	5.7	Vanillite.jpg	1	249	1121
1122	Vanilluxe	1.3	57.5	Vanilluxe.jpg	3	574	1122
1123	Vaporeon	1	29	Vaporeon.jpg	2	87	1123
1124	Varoom	1	35	Varoom.jpg	1	560	1124
1125	Veluza	2.5	90	Veluza.jpg	\N	335	1125
1126	Venipede	0.4	5.3	Venipede.jpg	1	107	1126
1127	Venomoth	1.5	12.5	Venomoth.jpg	2	466	1127
1128	Venonat	1	30	Venonat.jpg	1	320	1128
1129	Venusaur	2	100	Venusaur.jpg	3	543	1129
1130	Vespiquen	1.2	38.5	Vespiquen.jpg	2	47	1130
1131	Vibrava	1.1	15.3	Vibrava.jpg	2	665	1131
1132	Victini	0.4	4	Victini.jpg	\N	666	1132
1133	Victreebel	1.7	15.5	Victreebel.jpg	3	237	1133
1134	Vigoroth	1.4	46.5	Vigoroth.jpg	2	687	1134
1135	Vikavolt	1.5	45	Vikavolt.jpg	3	593	1135
1136	Vileplume	1.2	18.6	Vileplume.jpg	3	235	1136
1137	Virizion	2	200	Virizion.jpg	\N	276	1137
1138	Vivillon	1.2	17	Vivillon.jpg	3	518	1138
1139	Volbeat	0.7	17.7	Volbeat.jpg	\N	224	1139
1140	Volcanion	1.7	195	Volcanion.jpg	\N	598	1140
1141	Volcarona	1.6	46	Volcarona.jpg	2	607	1141
1142	Voltorb	0.5	10.4	Voltorb.jpg	1	31	1142
1143	Vullaby	0.5	9	Vullaby.jpg	1	165	1143
1144	Vulpix	0.6	9.9	Vulpix.jpg	1	244	1144
1145	Wailmer	2	130	Wailmer.jpg	1	33	1145
1146	Wailord	14.5	398	Wailord.jpg	2	233	1146
1148	Walrein	1.4	150.6	Walrein.jpg	3	311	1148
1149	Wartortle	1	22.5	Wartortle.jpg	2	655	1149
1151	Watchog	1.1	27	Watchog.jpg	2	380	1151
1152	Wattrel	0.4	3.6	Wattrel.jpg	1	600	1152
1153	Weavile	1.1	34	Weavile.jpg	2	549	1153
1154	Weedle	0.3	3.2	Weedle.jpg	1	284	1154
1155	Weepinbell	1	6.4	Weepinbell.jpg	2	237	1155
1156	Weezing	1.2	9.5	Weezing.jpg	2	465	1156
1157	Whimsicott	0.7	6.6	Whimsicott.jpg	2	692	1157
1158	Whirlipede	1.2	58.5	Whirlipede.jpg	2	150	1158
1159	Whiscash	0.9	23.6	Whiscash.jpg	2	680	1159
1160	Whismur	0.6	16.3	Whismur.jpg	1	681	1160
1162	Wigglytuff	1	12	Wigglytuff.jpg	3	34	1162
1163	Wiglett	1.2	1.8	Wiglett.jpg	1	257	1163
1164	Wimpod	0.5	12	Wimpod.jpg	1	654	1164
1165	Wingull	0.6	9.5	Wingull.jpg	1	540	1165
1169	Wobbuffet	1.3	28.5	Wobbuffet.jpg	2	447	1169
1170	Woobat	0.4	2.1	Woobat.jpg	1	39	1170
1171	Wooloo	0.6	6	Wooloo.jpg	1	552	1171
1172	Wooper	0.4	8.5	Wooper.jpg	1	674	1172
1176	Wugtrio	1.2	5.4	Wugtrio.jpg	2	257	1176
1177	Wurmple	0.3	3.6	Wurmple.jpg	1	700	1177
1178	Wynaut	0.6	14	Wynaut.jpg	1	81	1178
1179	Wyrdeer	1.8	95.1	Wyrdeer.jpg	2	54	1179
1180	Xatu	1.5	15	Xatu.jpg	2	426	1180
1181	Xerneas	3	215	Xerneas.jpg	\N	363	1181
1182	Xurkitree	3.8	100	Xurkitree.jpg	\N	268	1182
1183	Yamask	0.5	1.5	Yamask.jpg	1	588	1183
1184	Yamper	0.3	13.5	Yamper.jpg	1	484	1184
1185	Yanma	1.2	38	Yanma.jpg	1	120	1185
1186	Yanmega	1.9	51.5	Yanmega.jpg	2	433	1186
1187	Yungoos	0.4	6	Yungoos.jpg	1	372	1187
1188	Yveltal	5.8	203	Yveltal.jpg	\N	163	1188
1193	Zangoose	1.3	40.3	Zangoose.jpg	\N	101	1193
1194	Zapdos	1.6	52.6	Zapdos.jpg	\N	192	1194
1195	Zarude	1.8	70	Zarude.jpg	\N	505	1195
1196	Zebstrika	1.6	79.5	Zebstrika.jpg	2	629	1196
1197	Zekrom	2.9	345	Zekrom.jpg	\N	158	1197
1198	Zeraora	1.5	44.5	Zeraora.jpg	\N	629	1198
1199	Zigzagoon	0.4	17.5	Zigzagoon.jpg	1	640	1199
1200	Zoroark	1.6	81.1	Zoroark.jpg	2	318	1200
1201	Zorua	0.7	12.5	Zorua.jpg	1	651	1201
1202	Zubat	0.8	7.5	Zubat.jpg	1	39	1202
1203	Zweilous	1.4	50	Zweilous.jpg	2	306	1203
\.


--
-- Data for Name: pokemons_abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemons_abilities (id, pokemon_id, ability_id) FROM stdin;
1	1	230
2	1	234
3	639	230
4	2	261
5	2	112
6	2	132
7	3	178
8	3	252
9	3	118
10	640	131
11	4	101
12	4	247
13	4	285
14	6	240
15	5	240
16	7	201
17	7	178
18	7	286
19	641	275
20	8	250
21	8	201
22	8	95
23	642	66
24	9	204
25	9	167
26	9	225
27	10	261
28	10	112
29	10	132
30	643	279
31	11	257
32	11	11
33	30	93
34	30	101
35	30	197
36	31	152
37	31	29
38	644	168
39	32	196
40	32	230
41	33	265
42	33	167
43	33	225
44	34	60
45	34	197
46	35	241
47	35	169
48	645	144
49	36	290
50	36	112
51	36	49
52	37	17
53	37	258
54	38	198
55	38	81
56	38	272
57	39	198
58	39	81
59	39	24
60	40	294
61	40	293
62	41	114
63	41	219
64	41	286
65	42	214
66	42	92
67	43	114
68	43	69
69	43	118
70	465	114
71	465	69
72	465	201
73	44	149
74	45	239
75	45	250
76	45	238
77	46	48
78	47	48
79	48	271
80	48	103
81	49	293
82	49	103
83	49	227
84	50	291
85	50	241
86	50	227
87	51	256
88	51	113
89	51	228
90	52	17
91	52	258
92	53	69
93	53	297
94	54	93
95	54	11
96	55	250
97	55	201
98	55	95
99	56	258
100	56	181
101	57	178
102	57	229
103	360	33
104	59	93
105	59	197
106	59	120
107	646	93
108	60	196
109	60	230
110	61	162
111	61	103
112	61	250
113	466	249
114	466	103
115	466	250
116	62	199
117	62	144
118	62	286
119	63	122
120	64	272
121	64	98
122	64	210
123	65	272
124	65	98
125	65	210
126	66	201
127	66	220
128	67	122
129	68	113
130	68	76
131	68	41
132	647	177
133	69	228
134	69	275
135	69	166
136	70	157
137	70	8
138	70	101
139	71	258
140	71	181
141	73	258
142	73	1
143	73	144
144	72	258
145	72	1
146	72	144
147	75	195
148	75	1
149	75	144
150	74	201
151	74	1
152	74	144
153	76	193
154	76	1
155	76	144
156	77	250
157	77	234
158	78	271
159	78	103
160	79	161
161	79	121
162	80	229
163	80	227
164	80	258
165	81	256
166	81	199
167	82	256
168	82	228
169	648	1
170	83	266
171	83	261
172	83	5
173	84	28
174	84	124
175	85	62
176	85	241
177	85	43
178	86	27
179	86	93
180	87	27
181	87	81
182	88	162
183	88	103
184	88	250
185	89	72
186	89	120
187	89	286
188	90	224
189	90	284
190	90	145
191	91	224
192	91	284
193	91	145
194	92	228
195	92	275
196	92	166
197	93	49
198	93	112
199	93	178
200	94	20
201	96	274
202	96	192
203	649	137
204	97	23
205	97	235
206	650	235
207	98	256
208	98	34
209	98	266
210	99	152
211	99	215
212	99	93
213	100	125
214	100	146
215	100	210
216	101	250
217	101	297
218	101	205
219	102	249
220	102	33
221	103	22
222	103	119
223	103	202
224	104	250
225	104	201
226	104	193
227	105	195
228	105	210
229	105	234
230	106	121
231	106	157
232	106	257
233	107	23
234	107	133
235	108	302
236	108	110
237	109	302
238	109	110
239	110	119
240	110	220
241	110	49
242	467	119
243	467	220
244	467	273
245	111	60
246	111	170
247	111	265
248	112	274
249	112	129
250	113	122
251	113	94
252	113	95
253	114	122
254	114	94
255	114	95
256	115	183
257	116	47
258	116	249
259	116	304
260	117	152
261	117	171
262	117	121
263	118	258
264	118	296
265	119	161
266	119	27
267	120	204
268	120	120
269	120	126
270	121	167
271	121	25
272	121	98
273	122	219
274	122	160
275	123	219
276	123	160
277	124	219
278	124	160
279	125	34
280	125	273
281	126	20
282	127	209
283	127	293
284	128	209
285	128	293
286	129	286
287	130	12
288	131	12
289	132	134
290	132	232
291	132	6
292	651	220
293	133	27
294	133	113
295	133	120
296	134	28
297	134	250
298	135	243
299	135	67
300	135	69
301	136	122
302	137	232
303	137	250
304	137	258
305	138	203
306	138	235
307	139	219
308	140	73
309	143	73
310	141	73
311	142	73
312	144	222
313	144	204
314	145	152
315	146	20
316	147	69
317	147	299
318	147	67
319	148	69
320	148	297
321	149	272
322	149	227
323	149	220
324	150	272
325	150	229
326	150	220
327	151	69
328	151	67
329	151	110
330	152	152
331	152	215
332	152	93
333	153	69
334	153	67
335	154	23
336	154	231
337	652	275
338	653	56
339	155	16
340	156	23
341	156	231
342	157	23
343	157	231
344	158	119
345	158	263
346	158	22
347	159	70
348	160	27
349	161	161
350	161	24
351	162	161
352	162	24
353	163	249
354	163	221
355	163	258
356	164	19
357	165	259
358	166	161
359	166	121
360	167	23
361	167	117
362	168	122
363	169	291
364	169	106
365	169	293
366	170	122
367	171	42
368	171	265
369	171	225
370	172	23
371	172	123
372	173	221
373	173	193
374	174	137
375	175	137
376	176	122
377	177	42
378	177	132
379	177	284
380	178	42
381	178	132
382	178	75
383	179	42
384	179	132
385	179	75
386	180	126
387	180	265
388	181	171
389	181	293
390	181	284
391	182	221
392	182	225
393	182	160
394	183	243
395	183	67
396	183	69
397	184	118
398	185	150
399	186	96
400	186	100
401	187	23
402	187	235
403	188	71
404	188	281
405	188	152
406	189	90
407	189	220
408	189	117
409	190	220
410	190	95
411	191	102
412	191	221
413	191	1
414	192	100
415	192	152
416	192	197
417	361	297
418	361	41
419	193	178
420	193	286
421	193	142
422	194	119
423	194	286
424	194	22
425	195	250
426	196	284
427	197	177
428	197	110
429	197	27
430	198	102
431	198	117
432	198	6
433	199	102
434	199	117
435	199	6
436	200	251
437	200	248
438	201	89
439	202	144
440	202	220
441	203	102
442	203	221
443	203	1
444	204	122
445	205	8
446	205	57
447	205	173
448	206	112
449	206	110
450	207	23
451	207	284
452	208	274
453	208	220
454	209	250
455	209	221
456	209	297
457	210	122
458	211	229
459	211	227
460	211	193
461	212	201
462	212	125
463	212	17
464	213	220
465	213	95
466	214	297
467	214	165
468	215	96
469	215	222
470	215	257
471	216	219
472	216	197
473	217	23
474	217	69
475	218	298
476	218	11
477	219	14
478	222	220
479	222	305
480	223	220
481	223	305
482	220	84
483	220	305
484	221	84
485	221	305
486	224	161
487	224	130
488	225	100
489	225	112
490	362	100
491	362	112
492	227	161
493	227	130
494	468	161
495	468	212
496	228	25
497	228	167
498	228	169
499	229	27
500	229	210
501	229	215
502	230	100
503	231	42
504	231	156
505	231	304
506	232	290
507	232	100
508	232	113
509	233	23
510	233	133
511	236	178
512	234	178
513	235	178
514	237	178
515	238	272
516	238	101
517	238	103
518	239	274
519	239	221
520	240	294
521	240	293
522	241	244
523	242	178
524	242	266
525	243	178
526	243	266
527	244	28
528	654	131
529	245	167
530	245	25
531	245	98
532	246	209
533	246	9
534	246	205
535	12	209
536	12	264
537	12	205
538	247	253
539	247	81
540	247	247
541	248	126
542	248	109
543	249	204
544	249	58
545	249	263
546	250	204
547	250	58
548	250	263
549	251	58
550	251	92
551	252	284
552	252	157
553	252	296
554	253	250
555	253	209
556	254	256
557	254	34
558	254	266
559	255	155
560	256	293
561	256	249
562	256	206
563	257	291
564	257	100
565	257	206
566	258	171
567	258	173
568	258	1
569	259	28
570	259	110
571	259	41
572	260	219
573	260	136
574	261	112
575	261	148
576	262	28
577	262	110
578	262	41
579	263	21
580	263	210
581	263	29
582	264	17
583	264	228
584	264	119
585	265	219
586	265	136
587	266	249
588	266	221
589	266	258
590	267	28
591	267	110
592	267	41
593	268	3
594	268	285
595	268	68
596	269	3
597	269	285
598	269	68
599	270	206
600	270	205
601	270	144
602	271	274
603	271	228
604	272	113
605	272	74
606	272	112
607	273	203
608	273	220
609	273	144
610	274	72
611	274	242
612	274	24
613	275	119
614	275	22
615	275	101
616	277	215
617	277	204
618	277	193
619	276	215
620	276	204
621	276	193
622	278	209
623	278	9
624	278	205
625	13	209
626	13	264
627	13	205
628	279	215
629	279	204
630	279	193
631	280	160
632	280	132
633	280	197
634	281	124
635	281	95
636	281	238
637	282	256
638	282	100
639	282	282
640	283	178
641	283	76
642	285	178
643	285	76
644	286	122
645	286	76
646	287	222
647	287	34
648	288	250
649	288	221
650	288	297
651	289	122
652	290	122
653	291	204
654	291	1
655	291	8
656	292	104
657	293	104
658	294	114
659	294	219
660	294	286
661	295	38
662	295	197
663	295	60
664	296	241
665	296	290
666	297	146
667	297	290
668	298	241
669	298	125
670	298	141
671	299	234
672	299	241
673	299	3
674	469	234
675	469	241
676	469	3
677	300	241
678	300	290
679	301	266
680	301	261
681	301	5
682	302	23
683	302	195
684	303	241
685	303	146
686	304	274
687	304	49
688	305	42
689	305	35
690	306	160
691	307	178
692	307	112
693	308	256
694	308	221
695	308	160
696	309	158
697	309	76
698	309	235
699	310	261
700	310	131
701	311	119
702	311	110
703	311	162
704	312	178
705	314	206
706	314	205
707	314	144
708	315	27
709	315	92
710	316	27
711	316	92
712	14	76
713	14	92
714	317	234
715	317	212
716	318	17
717	318	49
718	320	119
719	320	112
720	320	49
721	363	242
722	363	212
723	321	39
724	321	10
725	321	210
726	322	119
727	322	228
728	323	258
729	323	157
730	323	1
731	324	23
732	324	133
733	325	274
734	325	220
735	326	116
736	327	116
737	327	8
738	328	277
739	328	265
740	329	162
741	329	120
742	330	296
743	331	258
744	331	248
745	331	296
746	332	241
747	332	169
748	333	212
749	333	263
750	333	37
751	334	198
752	334	81
753	334	100
754	335	69
755	335	90
756	336	67
757	336	79
758	337	22
759	337	79
760	338	8
761	338	76
762	338	235
763	339	258
764	339	296
765	340	71
766	340	260
767	341	161
768	341	182
769	342	71
770	342	260
771	343	183
772	344	122
773	345	121
774	345	35
775	346	60
776	346	197
777	347	250
778	347	160
779	348	199
780	348	144
781	348	286
782	349	271
783	349	103
784	350	293
785	350	41
786	350	43
787	351	274
788	351	182
789	352	274
790	352	182
791	353	229
792	353	41
793	354	222
794	354	105
795	356	23
796	356	284
797	357	78
798	358	204
799	358	119
800	358	76
801	359	209
802	359	203
803	377	242
804	377	218
805	377	118
806	655	112
807	378	34
808	378	286
809	378	256
810	379	246
811	379	297
812	379	3
813	380	209
814	380	203
815	656	205
816	381	261
817	381	279
818	381	266
819	657	168
820	382	187
821	382	250
822	382	28
823	383	122
824	384	247
825	384	248
826	384	205
827	385	53
828	386	41
829	658	217
830	387	201
831	387	250
832	387	209
833	15	135
834	15	250
835	15	80
836	388	82
837	389	209
838	389	203
839	390	250
840	390	208
841	390	205
842	391	193
843	392	204
844	393	112
845	393	58
846	393	210
847	394	178
848	394	266
849	395	122
850	396	229
851	396	103
852	397	112
853	397	103
854	397	145
855	659	196
856	398	126
857	398	162
858	398	119
859	399	26
860	400	102
861	400	209
862	400	108
863	401	278
864	401	36
865	402	278
866	402	36
867	403	102
868	403	209
869	403	170
870	404	27
871	404	246
872	405	210
873	405	85
874	406	112
875	406	110
876	407	258
877	407	296
878	407	125
879	408	43
880	408	29
881	408	258
882	409	201
883	409	250
884	409	209
885	16	135
886	16	250
887	16	80
888	410	117
889	410	120
890	410	155
891	411	64
892	412	117
893	412	120
894	412	155
895	413	210
896	413	101
897	413	83
898	470	210
899	470	221
900	470	83
901	414	210
902	414	101
903	414	83
904	415	258
905	415	101
906	416	38
907	416	197
908	416	60
909	417	76
910	417	33
911	417	217
912	418	76
913	418	33
914	418	217
915	419	76
916	419	33
917	419	217
918	420	183
919	421	167
920	421	76
921	421	113
922	423	167
923	423	76
924	423	113
925	422	167
926	422	76
927	422	113
928	424	167
929	424	76
930	424	113
931	425	285
932	425	173
933	425	177
934	426	114
935	426	191
936	426	193
937	427	126
938	427	265
939	428	201
940	428	250
941	428	209
942	17	135
943	17	250
944	17	80
945	429	183
946	430	167
947	430	72
948	431	25
949	431	81
950	432	274
951	432	182
952	58	18
953	433	246
954	433	247
955	433	173
956	18	173
957	18	81
958	18	175
959	434	177
960	434	76
961	434	166
962	435	161
963	435	86
964	436	161
965	436	221
966	437	56
967	836	51
968	438	161
969	438	285
970	439	114
971	439	69
972	439	118
973	471	114
974	471	69
975	471	201
976	440	256
977	441	272
978	441	162
979	441	81
980	442	128
981	442	247
982	442	81
983	443	249
984	443	236
985	443	1
986	444	90
987	444	220
988	444	117
989	445	20
990	446	114
991	446	147
992	660	144
993	447	24
994	447	234
995	447	160
996	448	152
997	448	215
998	448	75
999	449	272
1000	449	90
1001	449	220
1002	450	93
1003	450	8
1004	450	131
1005	451	93
1006	451	8
1007	451	131
1008	452	93
1009	452	8
1010	452	131
1011	453	122
1012	454	126
1013	454	285
1014	454	144
1015	455	199
1016	455	144
1017	455	286
1018	457	81
1019	457	69
1020	457	299
1021	458	69
1022	458	67
1023	459	57
1024	459	209
1025	459	231
1026	460	57
1027	460	209
1028	460	231
1029	461	256
1030	461	90
1031	461	147
1032	661	225
1033	462	114
1034	462	206
1035	462	212
1036	463	208
1037	463	205
1038	464	208
1039	464	205
1040	481	119
1041	481	117
1042	481	112
1043	482	126
1044	482	195
1045	482	285
1046	483	114
1047	483	265
1048	483	242
1049	484	178
1050	484	197
1051	485	113
1052	485	252
1053	485	147
1054	486	155
1055	487	133
1056	488	133
1057	489	113
1058	489	119
1059	489	273
1060	490	27
1061	490	121
1062	490	110
1063	491	258
1064	491	228
1065	491	43
1066	492	58
1067	492	69
1068	492	286
1069	662	231
1070	493	58
1071	493	69
1072	493	286
1073	494	206
1074	494	72
1075	495	258
1076	495	296
1077	496	253
1078	496	197
1079	496	247
1080	497	122
1081	498	113
1082	498	74
1083	498	112
1084	499	42
1085	499	33
1086	499	75
1087	500	157
1088	500	273
1089	500	177
1090	501	177
1091	501	76
1092	501	166
1093	502	23
1094	502	114
1095	504	112
1096	504	261
1097	504	184
1098	503	162
1099	503	261
1100	503	184
1101	505	23
1102	505	117
1103	506	35
1104	506	251
1105	506	110
1106	507	274
1107	507	228
1108	508	188
1109	509	188
1110	510	188
1111	511	188
1112	512	188
1113	513	188
1114	514	188
1115	515	188
1116	516	188
1117	517	188
1118	518	161
1119	518	27
1120	519	24
1121	519	234
1122	519	160
1123	520	293
1124	520	41
1125	520	43
1126	521	42
1127	521	33
1128	521	75
1129	522	215
1130	523	291
1131	523	191
1132	524	34
1133	524	286
1134	524	256
1135	525	27
1136	525	121
1137	525	110
1138	526	157
1139	526	74
1140	526	57
1141	527	258
1142	527	17
1143	527	297
1144	528	258
1145	528	17
1146	528	297
1147	529	261
1148	529	112
1149	529	132
1150	530	219
1151	531	58
1152	531	212
1153	531	112
1154	663	163
1155	532	256
1156	532	219
1157	532	155
1158	533	20
1159	534	30
1160	534	182
1161	535	118
1162	536	118
1163	537	301
1164	537	291
1165	537	33
1166	538	49
1167	538	254
1168	538	178
1169	539	258
1170	539	228
1171	539	43
1172	540	102
1173	540	221
1174	540	220
1175	541	261
1176	541	279
1177	541	266
1178	542	169
1179	542	141
1180	542	28
1181	543	7
1182	543	221
1183	543	197
1184	544	256
1185	544	220
1186	544	218
1187	545	177
1188	545	133
1189	546	169
1190	546	141
1191	546	28
1192	547	169
1193	547	141
1194	547	28
1195	548	122
1196	548	154
1197	548	246
1198	549	31
1199	550	24
1200	550	234
1201	550	160
1202	551	159
1203	552	102
1204	552	221
1205	552	220
1206	553	219
1207	553	204
1208	554	256
1209	554	265
1210	555	114
1211	555	147
1212	555	6
1213	556	114
1214	556	147
1215	556	6
1216	557	112
1217	558	55
1218	837	179
1219	559	178
1220	1161	283
1221	95	270
1222	560	250
1223	560	201
1224	560	95
1225	561	69
1226	561	67
1227	561	110
1228	562	205
1229	562	220
1230	563	114
1231	564	291
1232	564	106
1233	564	293
1234	565	293
1235	565	221
1236	565	101
1237	566	67
1238	566	256
1239	567	90
1240	567	209
1241	568	122
1242	664	122
1243	569	122
1244	665	122
1245	570	121
1246	570	27
1247	571	256
1248	571	27
1249	571	160
1250	572	11
1251	572	81
1252	572	272
1253	573	256
1254	573	58
1255	573	117
1256	574	256
1257	574	58
1258	574	193
1259	575	162
1260	575	157
1261	575	29
1262	576	162
1263	576	157
1264	576	29
1265	577	126
1266	577	285
1267	577	177
1268	578	251
1269	578	248
1270	579	27
1271	579	162
1272	579	121
1273	472	27
1274	472	100
1275	472	121
1276	580	290
1277	580	167
1278	580	204
1279	581	167
1280	581	81
1281	581	191
1282	364	167
1283	364	81
1284	364	191
1285	582	199
1286	582	286
1287	582	147
1288	583	23
1289	583	114
1290	584	69
1291	584	67
1292	584	110
1293	585	256
1294	585	273
1295	586	258
1296	586	192
1297	586	162
1298	587	42
1299	587	120
1300	587	126
1301	666	212
1302	588	258
1303	588	192
1304	588	162
1305	589	234
1306	589	212
1307	590	242
1308	590	112
1309	590	118
1310	667	1
1311	591	258
1312	591	192
1313	591	162
1314	592	178
1315	592	148
1316	593	258
1317	593	248
1318	593	296
1319	594	216
1320	595	122
1321	596	121
1322	596	35
1323	597	258
1324	597	101
1325	598	199
1326	598	114
1327	598	90
1328	599	199
1329	599	114
1330	599	90
1331	601	119
1332	601	206
1333	601	242
1334	602	119
1335	602	290
1336	602	155
1337	600	275
1338	603	114
1339	603	88
1340	603	236
1341	604	90
1342	604	155
1343	604	242
1344	605	90
1345	605	155
1346	605	242
1347	606	90
1348	606	155
1349	606	242
1350	607	67
1351	607	290
1352	608	134
1353	608	67
1354	608	297
1355	609	233
1356	610	258
1357	610	193
1358	611	67
1359	611	290
1360	612	67
1361	612	290
1362	613	135
1363	613	250
1364	613	5
1365	614	135
1366	614	250
1367	614	5
1368	615	135
1369	615	250
1370	615	5
1371	616	272
1372	616	90
1373	616	220
1374	617	35
1375	617	251
1376	617	110
1377	618	157
1378	618	229
1379	618	272
1380	619	101
1381	620	22
1382	620	160
1383	620	297
1384	621	241
1385	621	125
1386	621	141
1387	668	114
1388	622	290
1389	622	6
1390	622	49
1391	623	258
1392	623	293
1393	623	296
1394	624	258
1395	624	293
1396	624	296
1397	625	293
1398	625	27
1399	625	248
1400	626	138
1401	626	126
1402	626	197
1403	627	241
1404	627	169
1405	628	272
1406	628	98
1407	628	210
1408	629	201
1409	629	125
1410	629	17
1411	19	41
1412	19	125
1413	19	201
1414	630	265
1415	631	274
1416	631	43
1417	632	114
1418	632	204
1419	632	236
1420	633	114
1421	633	286
1422	634	75
1423	634	25
1424	634	265
1425	635	75
1426	635	25
1427	635	265
1428	636	102
1429	636	114
1430	636	220
1431	669	98
1432	637	186
1433	637	266
1434	670	186
1435	638	186
1436	638	266
1437	687	161
1438	687	121
1439	688	117
1440	689	215
1441	690	215
1442	691	135
1443	692	161
1444	692	182
1445	694	119
1446	694	110
1447	694	177
1448	693	119
1449	693	110
1450	693	33
1451	695	167
1452	695	265
1453	695	286
1454	20	167
1455	20	265
1456	20	193
1457	365	167
1458	365	275
1459	365	286
1460	696	122
1461	697	28
1462	697	124
1463	671	275
1464	698	28
1465	698	124
1466	699	219
1467	700	261
1468	701	178
1469	701	286
1470	672	242
1471	673	113
1472	702	112
1473	702	197
1474	702	195
1475	703	112
1476	703	197
1477	703	195
1478	704	114
1479	704	191
1480	704	147
1481	705	257
1482	705	11
1483	706	136
1484	706	33
1485	706	42
1486	707	272
1487	707	212
1488	707	210
1489	708	52
1490	709	42
1491	709	265
1492	709	225
1493	711	223
1494	710	223
1495	712	141
1496	712	291
1497	713	91
1498	714	122
1499	715	122
1500	716	178
1501	716	67
1502	366	21
1503	717	23
1504	717	117
1505	718	106
1506	718	60
1507	718	192
1508	719	177
1509	719	76
1510	719	166
1511	720	99
1512	721	99
1513	722	256
1514	722	273
1515	724	162
1516	724	239
1517	724	112
1518	725	274
1519	725	43
1520	726	162
1521	726	239
1522	726	112
1523	727	246
1524	727	247
1525	727	173
1526	21	173
1527	21	81
1528	21	175
1529	728	167
1530	728	272
1531	728	81
1532	729	277
1533	729	76
1534	730	74
1535	730	261
1536	730	266
1537	731	113
1538	731	252
1539	731	177
1540	732	74
1541	732	261
1542	732	266
1543	733	187
1544	733	250
1545	733	28
1546	734	187
1547	734	250
1548	734	28
1549	735	20
1550	736	261
1551	736	58
1552	736	131
1553	737	180
1554	284	180
1555	226	180
1556	1110	153
1557	738	204
1558	738	285
1559	738	236
1560	739	171
1561	739	199
1562	739	220
1563	740	171
1564	740	199
1565	740	220
1566	741	171
1567	741	199
1568	741	100
1569	742	171
1570	742	199
1571	742	100
1572	743	20
1573	744	34
1574	744	204
1575	745	69
1576	745	56
1577	22	229
1578	22	230
1579	746	235
1580	746	110
1581	747	113
1582	747	119
1583	747	273
1584	748	76
1585	748	110
1586	748	266
1587	749	76
1588	749	110
1589	749	266
1590	750	250
1591	750	135
1592	750	205
1593	751	157
1594	751	224
1595	751	162
1596	752	27
1597	752	58
1598	752	166
1599	753	256
1600	753	273
1601	754	195
1602	754	90
1603	754	49
1604	755	251
1605	755	228
1606	755	145
1607	756	27
1608	756	204
1609	759	49
1610	760	293
1611	758	144
1612	757	250
1613	762	127
1614	762	81
1615	762	272
1616	761	11
1617	761	81
1618	761	272
1619	763	277
1620	763	88
1621	764	258
1622	764	221
1623	764	297
1624	765	258
1625	765	221
1626	765	297
1627	766	201
1628	766	250
1629	766	297
1630	767	112
1631	767	266
1632	767	260
1633	768	256
1634	768	76
1635	768	266
1636	769	44
1637	771	44
1638	770	44
1639	772	44
1640	773	59
1641	773	209
1642	774	274
1643	774	221
1644	775	171
1645	775	258
1646	775	114
1647	777	204
1648	777	167
1649	777	291
1650	779	306
1651	778	306
1652	781	178
1653	781	266
1654	782	178
1655	782	266
1656	783	295
1657	783	209
1658	784	258
1659	784	101
1660	784	293
1661	785	117
1662	785	144
1663	785	212
1664	786	117
1665	786	144
1666	786	212
1667	787	81
1668	787	274
1669	788	81
1670	788	161
1671	789	81
1672	789	23
1673	790	60
1674	790	57
1675	790	43
1676	791	60
1677	791	57
1678	791	43
1679	794	194
1680	794	49
1681	795	204
1682	795	119
1683	795	5
1684	796	241
1685	796	152
1686	796	117
1687	797	291
1688	797	152
1689	797	117
1690	798	291
1691	798	152
1692	798	117
1693	799	49
1694	799	112
1695	799	178
1696	800	172
1697	801	119
1698	801	55
1699	801	192
1700	802	17
1701	802	275
1702	802	245
1703	803	126
1704	803	265
1705	803	286
1706	23	78
1707	23	265
1708	23	193
1709	804	27
1710	804	162
1711	804	121
1712	805	167
1713	805	209
1714	806	152
1715	806	76
1716	806	92
1717	807	20
1718	808	101
1719	809	241
1720	809	125
1721	810	119
1722	810	263
1723	810	22
1724	674	155
1725	811	119
1726	811	263
1727	811	22
1728	812	119
1729	812	263
1730	812	22
1731	813	22
1732	813	252
1733	813	199
1734	814	23
1735	814	272
1736	815	241
1737	815	125
1738	816	119
1739	816	225
1740	816	167
1741	817	157
1742	817	229
1743	817	272
1744	818	125
1745	818	61
1746	819	250
1747	819	160
1748	820	102
1749	820	144
1750	820	147
1751	675	2
1752	821	274
1753	821	49
1754	822	169
1755	822	125
1756	823	20
1757	824	293
1758	824	43
1759	824	55
1760	825	293
1761	825	43
1762	825	258
1763	826	293
1764	826	43
1765	826	258
1766	827	293
1767	827	43
1768	827	258
1769	828	97
1770	828	94
1771	829	297
1772	829	41
1773	830	204
1774	830	69
1775	830	67
1776	367	204
1777	367	164
1778	367	8
1779	831	204
1780	831	191
1781	831	193
1782	832	274
1783	832	129
1784	833	279
1785	833	53
1786	833	5
1787	834	1
1788	834	53
1789	834	5
1790	835	279
1791	835	53
1792	835	5
1793	838	274
1794	838	129
1795	839	290
1796	839	6
1797	839	49
1798	840	274
1799	840	49
1800	841	250
1801	841	135
1802	841	205
1803	842	43
1804	842	29
1805	842	258
1806	843	167
1807	843	76
1808	843	113
1809	845	167
1810	845	76
1811	845	113
1812	844	167
1813	844	76
1814	844	113
1815	846	167
1816	846	76
1817	846	113
1818	847	219
1819	848	126
1820	848	285
1821	848	177
1822	849	272
1823	849	162
1824	849	49
1825	850	199
1826	850	286
1827	850	147
1828	851	111
1829	851	284
1830	852	43
1831	852	293
1832	852	284
1833	853	274
1834	853	147
1835	854	274
1836	854	147
1837	855	274
1838	855	147
1839	856	23
1840	856	69
1841	857	161
1842	857	24
1843	858	171
1844	858	258
1845	858	114
1846	473	171
1847	473	258
1848	473	114
1849	859	23
1850	859	123
1851	860	261
1852	860	266
1853	861	183
1854	862	241
1855	862	125
1856	24	255
1857	863	178
1858	863	112
1859	864	261
1860	864	279
1861	864	266
1862	865	144
1863	865	220
1864	866	204
1865	866	69
1866	866	67
1867	368	204
1868	368	164
1869	368	8
1870	867	204
1871	867	90
1872	867	100
1873	25	81
1874	25	100
1875	25	272
1876	868	204
1877	868	90
1878	868	100
1879	26	81
1880	26	100
1881	26	272
1882	869	4
1883	676	50
1884	870	28
1885	870	103
1886	871	54
1887	872	280
1888	873	226
1889	874	28
1890	874	250
1891	875	28
1892	875	124
1893	876	258
1894	876	201
1895	876	250
1896	877	34
1897	877	219
1898	878	100
1899	878	228
1900	878	145
1901	879	283
1902	880	160
1903	880	132
1904	880	197
1905	881	160
1906	881	66
1907	882	125
1908	882	201
1909	882	195
1910	883	125
1911	883	201
1912	883	195
1913	884	125
1914	884	232
1915	884	195
1916	885	96
1917	885	222
1918	885	257
1919	886	161
1920	886	86
1921	887	242
1922	887	112
1923	887	177
1924	888	183
1925	889	119
1926	889	290
1927	889	242
1928	776	162
1929	890	250
1930	890	297
1931	890	205
1932	891	243
1933	891	94
1934	891	69
1935	892	119
1936	892	286
1937	892	22
1938	893	152
1939	893	171
1940	893	121
1941	894	152
1942	894	171
1943	894	265
1944	895	122
1945	456	122
1946	1150	122
1947	355	122
1948	319	122
1949	723	122
1950	896	161
1951	896	130
1952	897	119
1953	897	220
1954	897	100
1955	898	292
1956	899	119
1957	899	237
1958	899	177
1959	677	131
1960	900	114
1961	900	147
1962	678	2
1963	901	36
1964	901	157
1965	902	36
1966	902	157
1967	903	274
1968	903	221
1969	474	274
1970	474	218
1971	904	207
1972	904	219
1973	904	209
1974	905	114
1975	905	147
1976	905	6
1977	906	209
1978	906	206
1979	27	229
1980	27	227
1981	907	209
1982	907	206
1983	28	229
1984	28	227
1985	908	183
1986	909	295
1987	909	209
1988	910	250
1989	910	112
1990	910	144
1991	911	27
1992	911	210
1993	911	215
1994	912	222
1995	912	34
1996	912	75
1997	913	161
1998	913	285
1999	679	125
2000	914	256
2001	914	265
2002	914	124
2003	680	265
2004	915	171
2005	915	256
2006	915	235
2007	916	23
2008	916	123
2009	917	27
2010	917	113
2011	917	145
2012	918	219
2013	918	147
2014	918	114
2015	919	219
2016	919	147
2017	919	114
2018	920	183
2019	921	256
2020	921	265
2021	921	242
2022	922	171
2023	922	228
2024	922	43
2025	923	258
2026	923	296
2027	923	125
2028	924	272
2029	924	103
2030	924	157
2031	925	27
2032	925	58
2033	925	166
2034	926	272
2035	926	101
2036	926	103
2037	927	258
2038	927	173
2039	927	293
2040	928	204
2041	928	119
2042	928	76
2043	929	161
2044	929	35
2045	930	161
2046	930	35
2047	931	219
2048	931	110
2049	932	256
2050	932	27
2051	932	160
2052	933	203
2053	933	235
2054	681	249
2055	934	152
2056	935	215
2057	936	303
2058	937	201
2059	937	160
2060	938	221
2061	938	225
2062	938	160
2063	939	247
2064	939	248
2065	939	205
2066	940	101
2067	940	221
2068	940	160
2069	941	250
2070	941	234
2071	942	27
2072	942	58
2073	942	166
2074	943	106
2075	943	60
2076	943	192
2077	944	199
2078	944	114
2079	944	90
2080	945	285
2081	945	166
2082	945	177
2083	946	60
2084	946	170
2085	946	191
2086	947	250
2087	947	81
2088	947	35
2089	948	113
2090	948	76
2091	948	41
2092	949	304
2093	949	132
2094	949	273
2095	950	219
2096	951	207
2097	951	219
2098	951	209
2099	952	200
2100	953	81
2101	953	274
2102	954	81
2103	954	161
2104	955	81
2105	955	23
2106	956	97
2107	956	94
2108	957	297
2109	957	41
2110	958	69
2111	958	299
2112	958	67
2113	959	119
2114	959	250
2115	959	297
2116	960	23
2117	960	284
2118	961	210
2119	961	85
2120	962	27
2121	962	121
2122	962	110
2123	963	42
2124	963	156
2125	963	304
2126	964	17
2127	964	228
2128	964	119
2129	965	171
2130	965	173
2131	965	1
2132	966	246
2133	966	3
2134	966	119
2135	967	25
2136	967	81
2137	968	282
2138	969	282
2139	970	210
2140	970	101
2141	970	83
2142	475	210
2143	475	221
2144	475	83
2145	971	183
2146	972	157
2147	972	162
2148	972	197
2149	682	221
2150	369	190
2151	369	162
2152	369	197
2153	973	157
2154	973	162
2155	973	197
2156	370	40
2157	370	162
2158	370	197
2159	974	157
2160	974	162
2161	974	197
2162	371	81
2163	371	162
2164	371	197
2165	975	134
2166	975	67
2167	975	297
2168	976	257
2169	976	285
2170	977	162
2171	977	265
2172	977	145
2173	978	58
2174	978	92
2175	979	157
2176	979	74
2177	979	101
2178	980	112
2179	980	119
2180	980	166
2181	476	112
2182	476	119
2183	476	166
2184	981	178
2185	981	285
2186	981	173
2187	982	161
2188	982	35
2189	983	222
2190	983	105
2191	984	108
2192	984	272
2193	984	81
2194	985	112
2195	985	103
2196	985	145
2197	986	230
2198	986	234
2199	987	114
2200	987	204
2201	987	193
2202	988	274
2203	988	228
2204	989	77
2205	990	160
2206	990	132
2207	990	197
2208	991	122
2209	992	119
2210	992	228
2211	993	87
2212	994	219
2213	994	75
2214	995	272
2215	995	103
2216	995	157
2217	996	113
2218	996	236
2219	997	256
2220	997	113
2221	997	228
2222	998	162
2223	998	263
2224	998	35
2225	999	178
2226	999	110
2227	1000	272
2228	1000	162
2229	1000	81
2230	1001	161
2231	1001	182
2232	1002	93
2233	1002	11
2234	1004	114
2235	1004	100
2236	1004	90
2237	1003	114
2238	1003	100
2239	1003	90
2240	1006	114
2241	1006	100
2242	1006	220
2243	1005	114
2244	1005	100
2245	1005	220
2246	1007	274
2247	1007	192
2248	1008	20
2249	1009	114
2250	1009	76
2251	1009	210
2252	1010	114
2253	1010	195
2254	1011	114
2255	1011	195
2256	1012	119
2257	1012	195
2258	1013	106
2259	1013	152
2260	1013	5
2261	1014	106
2262	1014	152
2263	1014	5
2264	1015	201
2265	1015	250
2266	1015	220
2267	683	205
2268	1016	121
2269	1016	157
2270	1016	257
2271	1017	176
2272	1018	114
2273	1018	206
2274	1018	212
2275	1019	72
2276	1019	120
2277	1019	42
2278	1020	241
2279	1020	126
2280	1020	209
2281	372	139
2282	1021	246
2283	1021	3
2284	1021	119
2285	1022	250
2286	1022	201
2287	1022	193
2288	1023	178
2289	1023	112
2290	1024	27
2291	1024	231
2292	1024	58
2293	1025	27
2294	1025	231
2295	1025	58
2296	1026	258
2297	1026	192
2298	1027	152
2299	1027	29
2300	1028	121
2301	1028	27
2302	1028	160
2303	1029	128
2304	1029	247
2305	1029	81
2306	1030	274
2307	1030	43
2308	684	258
2309	1031	119
2310	1031	22
2311	1031	101
2312	1032	90
2313	1032	212
2314	1033	157
2315	1033	229
2316	1033	272
2317	1034	257
2318	1034	285
2319	1035	284
2320	1035	120
2321	1035	224
2322	1036	42
2323	1036	168
2324	1037	162
2325	1037	241
2326	1037	43
2327	1038	90
2328	1038	212
2329	1039	67
2330	1039	79
2331	1040	204
2332	1040	167
2333	1040	162
2334	1041	27
2335	1041	121
2336	1041	197
2337	1042	27
2338	1042	121
2339	1042	197
2340	1043	86
2341	1043	266
2342	1044	143
2343	1044	266
2344	1045	61
2345	1045	266
2346	1046	184
2347	1046	266
2348	1047	113
2349	1047	236
2350	1048	32
2351	1048	248
2352	1051	114
2353	1051	6
2354	1051	220
2355	1054	114
2356	1054	6
2357	1054	39
2358	1053	114
2359	1053	6
2360	1053	39
2361	1052	114
2362	1052	6
2363	1052	39
2364	1055	167
2365	1055	191
2366	1055	96
2367	1056	28
2368	1056	128
2369	1056	192
2370	1057	28
2371	1057	128
2372	1057	192
2373	1058	23
2374	1058	272
2375	1059	268
2376	1061	267
2377	1060	269
2378	1062	118
2379	1063	204
2380	1063	285
2381	1063	236
2382	1064	90
2383	1064	112
2384	1064	144
2385	1065	177
2386	1065	49
2387	1066	291
2388	1067	161
2389	1067	86
2390	1068	90
2391	1068	220
2392	1068	117
2393	1069	288
2394	1070	144
2395	1070	162
2396	1070	166
2397	1071	144
2398	1071	162
2399	1071	166
2400	1072	144
2401	1072	162
2402	1072	166
2403	1073	232
2404	1073	250
2405	1073	258
2406	1074	151
2407	1075	151
2408	1076	116
2409	1076	125
2410	1076	250
2411	1077	100
2412	1077	215
2413	1077	252
2414	1078	100
2415	1078	215
2416	1078	252
2417	1079	100
2418	1079	215
2419	1079	252
2420	1080	23
2421	1080	235
2422	1081	299
2423	1081	56
2424	1081	221
2425	1082	177
2426	1082	49
2427	1083	197
2428	1084	23
2429	1084	114
2430	1085	161
2431	1085	221
2432	1086	274
2433	1086	220
2434	1087	119
2435	1087	225
2436	1087	220
2437	1088	138
2438	1088	126
2439	1088	197
2440	1089	193
2441	1089	241
2442	1089	120
2443	1090	8
2444	1090	57
2445	1090	173
2446	1091	185
2447	1091	169
2448	1091	265
2449	1092	185
2450	1092	141
2451	1092	265
2452	1093	22
2453	1093	252
2454	1093	199
2455	1094	102
2456	1094	9
2457	1094	220
2458	1095	161
2459	1095	285
2460	1096	152
2461	1096	76
2462	1096	92
2463	1097	27
2464	1097	231
2465	1097	92
2466	1098	246
2467	1098	247
2468	1098	3
2469	1099	119
2470	1099	225
2471	1099	167
2472	1100	121
2473	1100	189
2474	1100	257
2475	1101	221
2476	1102	161
2477	1102	221
2478	1103	258
2479	1103	101
2480	1103	293
2481	1104	122
2482	1105	23
2483	1105	69
2484	477	23
2485	477	76
2486	1106	208
2487	1106	286
2488	685	208
2489	1107	249
2490	1107	201
2491	1108	90
2492	1108	242
2493	1108	290
2494	1109	249
2495	1109	250
2496	1111	261
2497	1111	112
2498	1112	22
2499	1112	252
2500	1112	199
2501	1113	122
2502	1114	90
2503	1114	24
2504	1114	286
2505	1115	140
2506	1116	90
2507	1116	191
2508	1116	286
2509	1118	287
2510	1117	287
2511	1119	122
2512	1120	103
2513	1120	229
2514	1120	297
2515	1121	103
2516	1121	229
2517	1121	297
2518	1122	103
2519	1122	230
2520	1122	297
2521	1123	293
2522	1123	101
2523	1124	160
2524	1124	226
2525	1125	144
2526	1125	218
2527	1126	171
2528	1126	256
2529	1126	235
2530	1127	222
2531	1127	273
2532	1127	304
2533	1128	34
2534	1128	273
2535	1128	204
2536	1129	161
2537	1129	27
2538	686	272
2539	1130	178
2540	1130	286
2541	1131	122
2542	1132	289
2543	1133	27
2544	1133	81
2545	1134	290
2546	1135	122
2547	1136	27
2548	1136	60
2549	1137	118
2550	1138	222
2551	1138	34
2552	1138	75
2553	1139	106
2554	1139	256
2555	1139	177
2556	1140	293
2557	1141	67
2558	1141	256
2559	1142	234
2560	1142	241
2561	1142	3
2562	478	234
2563	478	241
2564	478	3
2565	1143	22
2566	1143	160
2567	1143	297
2568	1144	69
2569	1144	56
2570	29	229
2571	29	230
2572	1145	296
2573	1145	157
2574	1145	178
2575	1146	296
2576	1146	157
2577	1146	178
2578	1147	183
2579	1148	272
2580	1148	103
2581	1148	157
2582	1149	274
2583	1149	192
2584	1151	106
2585	1151	119
2586	1151	5
2587	1152	301
2588	1152	291
2589	1152	33
2590	1153	178
2591	1153	166
2592	1154	222
2593	1154	204
2594	1155	27
2595	1155	81
2596	1156	122
2597	1156	154
2598	1156	246
2599	373	122
2600	373	154
2601	373	143
2602	1157	177
2603	1157	110
2604	1157	27
2605	1158	171
2606	1158	256
2607	1158	235
2608	1159	157
2609	1159	8
2610	1159	101
2611	1160	234
2612	1160	193
2613	1162	42
2614	1162	33
2615	1162	76
2616	1163	83
2617	1163	193
2618	1163	209
2619	1164	300
2620	1165	119
2621	1165	101
2622	1165	192
2623	1167	211
2624	1166	211
2625	1168	262
2626	1169	217
2627	1169	266
2628	1170	284
2629	1170	120
2630	1170	224
2631	1171	72
2632	1171	204
2633	1171	24
2634	1172	43
2635	1172	293
2636	1172	284
2637	780	171
2638	780	293
2639	780	284
2640	1173	8
2641	1173	160
2642	1174	8
2643	1174	160
2644	1175	8
2645	1175	160
2646	1176	83
2647	1176	193
2648	1176	209
2649	1177	222
2650	1177	204
2651	1178	217
2652	1178	266
2653	1179	114
2654	1179	76
2655	1179	210
2656	1180	261
2657	1180	58
2658	1180	131
2659	1181	65
2660	1182	20
2661	1183	150
2662	374	292
2663	1184	15
2664	1184	193
2665	1185	235
2666	1185	34
2667	1185	76
2668	1186	235
2669	1186	273
2670	1186	76
2671	1187	249
2672	1187	236
2673	1187	1
2674	1188	45
2675	1190	115
2676	1189	115
2677	1192	46
2678	1191	46
2679	1193	108
2680	1193	276
2681	1194	178
2682	1194	241
2683	375	49
2684	1195	121
2685	1196	125
2686	1196	146
2687	1196	210
2688	1197	270
2689	1198	291
2690	1199	167
2691	1199	81
2692	1199	191
2693	376	167
2694	376	81
2695	376	191
2696	1200	107
2697	479	107
2698	1201	107
2699	480	107
2700	1202	112
2701	1202	110
2702	1203	100
2703	1205	13
2704	1205	174
2705	1204	13
2706	1204	174
2707	1206	174
\.


--
-- Data for Name: pokemons_genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemons_genders (id, pokemon_id, gender_id, percent) FROM stdin;
1	1	2	50
2	1	1	50
3	639	2	50
4	639	1	50
5	2	2	75
6	2	1	25
7	3	2	50
8	3	1	50
9	640	2	50
10	640	1	50
11	4	2	50
12	4	1	50
13	6	2	50
14	6	1	50
15	5	2	50
16	5	1	50
17	7	2	87.5
18	7	1	12.5
19	641	2	87.5
20	641	1	12.5
21	8	2	50
22	8	1	50
23	642	2	50
24	642	1	50
25	9	2	50
26	9	1	50
27	10	2	75
28	10	1	25
29	643	2	75
30	643	1	25
31	11	2	0
32	11	1	100
33	30	2	50
34	30	1	50
35	31	2	50
36	31	1	50
37	644	2	50
38	644	1	50
39	32	2	87.5
40	32	1	12.5
41	33	2	50
42	33	1	50
43	34	2	50
44	34	1	50
45	35	2	50
46	35	1	50
47	645	2	50
48	645	1	50
49	36	2	50
50	36	1	50
51	37	2	87.5
52	37	1	12.5
53	38	2	50
54	38	1	50
55	39	2	50
56	39	1	50
57	40	2	50
58	40	1	50
59	41	2	50
60	41	1	50
61	42	2	50
62	42	1	50
63	43	2	75
64	43	1	25
65	465	2	75
66	465	1	25
67	45	2	50
68	45	1	50
69	46	2	87.5
70	46	1	12.5
71	47	2	87.5
72	47	1	12.5
73	48	2	50
74	48	1	50
75	51	2	50
76	51	1	50
77	52	2	87.5
78	52	1	12.5
79	53	2	50
80	53	1	50
81	54	2	50
82	54	1	50
83	55	2	50
84	55	1	50
85	56	2	50
86	56	1	50
87	59	2	50
88	59	1	50
89	646	2	50
90	646	1	50
91	60	2	87.5
92	60	1	12.5
93	61	2	50
94	61	1	50
95	466	2	50
96	466	1	50
97	62	2	50
98	62	1	50
99	64	2	50
100	64	1	50
101	65	2	25
102	65	1	75
103	66	2	50
104	66	1	50
105	68	2	50
106	68	1	50
107	647	2	50
108	647	1	50
109	69	2	50
110	69	1	50
111	70	2	50
112	70	1	50
113	71	2	50
114	71	1	50
115	73	2	100
116	73	1	0
117	72	2	0
118	72	1	100
119	75	2	50
120	75	1	50
121	74	2	50
122	74	1	50
123	76	2	50
124	76	1	50
125	77	2	87.5
126	77	1	12.5
127	78	2	50
128	78	1	50
129	79	2	87.5
130	79	1	12.5
131	80	2	50
132	80	1	50
133	81	2	50
134	81	1	50
135	82	2	50
136	82	1	50
137	648	2	50
138	648	1	50
139	83	2	50
140	83	1	50
141	85	2	50
142	85	1	50
143	86	2	50
144	86	1	50
145	87	2	50
146	87	1	50
147	88	2	50
148	88	1	50
149	89	2	50
150	89	1	50
151	90	2	50
152	90	1	50
153	91	2	50
154	91	1	50
155	92	2	50
156	92	1	50
157	93	2	50
158	93	1	50
159	96	2	87.5
160	96	1	12.5
161	649	2	87.5
162	649	1	12.5
163	97	2	87.5
164	97	1	12.5
165	650	2	87.5
166	650	1	12.5
167	98	2	50
168	98	1	50
169	99	2	0
170	99	1	100
171	100	2	50
172	100	1	50
173	101	2	50
174	101	1	50
175	102	2	50
176	102	1	50
177	103	2	50
178	103	1	50
179	104	2	50
180	104	1	50
181	105	2	50
182	105	1	50
183	106	2	0
184	106	1	100
185	107	2	87.5
186	107	1	12.5
187	108	2	50
188	108	1	50
189	109	2	50
190	109	1	50
191	110	2	100
192	110	1	0
193	467	2	100
194	467	1	0
195	111	2	50
196	111	1	50
197	112	2	87.5
198	112	1	12.5
199	116	2	50
200	116	1	50
201	117	2	50
202	117	1	50
203	118	2	50
204	118	1	50
205	119	2	87.5
206	119	1	12.5
207	120	2	50
208	120	1	50
209	121	2	50
210	121	1	50
211	122	2	50
212	122	1	50
213	123	2	50
214	123	1	50
215	124	2	50
216	124	1	50
217	125	2	50
218	125	1	50
219	127	2	50
220	127	1	50
221	128	2	50
222	128	1	50
223	132	2	50
224	132	1	50
225	651	2	50
226	651	1	50
227	133	2	50
228	133	1	50
229	135	2	50
230	135	1	50
231	136	2	50
232	136	1	50
233	137	2	87.5
234	137	1	12.5
235	138	2	50
236	138	1	50
237	139	2	50
238	139	1	50
239	140	2	50
240	140	1	50
241	143	2	50
242	143	1	50
243	141	2	50
244	141	1	50
245	142	2	50
246	142	1	50
247	144	2	50
248	144	1	50
249	147	2	50
250	147	1	50
251	148	2	50
252	148	1	50
253	149	2	50
254	149	1	50
255	150	2	50
256	150	1	50
257	151	2	50
258	151	1	50
259	152	2	0
260	152	1	100
261	153	2	50
262	153	1	50
263	154	2	87.5
264	154	1	12.5
265	652	2	87.5
266	652	1	12.5
267	653	2	87.5
268	653	1	12.5
269	155	2	50
270	155	1	50
271	156	2	87.5
272	156	1	12.5
273	157	2	87.5
274	157	1	12.5
275	158	2	50
276	158	1	50
277	159	2	50
278	159	1	50
279	160	2	50
280	160	1	50
281	161	2	87.5
282	161	1	12.5
283	162	2	87.5
284	162	1	12.5
285	163	2	50
286	163	1	50
287	166	2	87.5
288	166	1	12.5
289	167	2	87.5
290	167	1	12.5
291	168	2	50
292	168	1	50
293	169	2	50
294	169	1	50
295	170	2	50
296	170	1	50
297	171	2	25
298	171	1	75
299	172	2	87.5
300	172	1	12.5
301	173	2	50
302	173	1	50
303	174	2	50
304	174	1	50
305	175	2	50
306	175	1	50
307	177	2	25
308	177	1	75
309	178	2	25
310	178	1	75
311	179	2	25
312	179	1	75
313	180	2	50
314	180	1	50
315	181	2	50
316	181	1	50
317	182	2	50
318	182	1	50
319	183	2	50
320	183	1	50
321	185	2	50
322	185	1	50
323	186	2	87.5
324	186	1	12.5
325	187	2	87.5
326	187	1	12.5
327	188	2	25
328	188	1	75
329	189	2	75
330	189	1	25
331	190	2	50
332	190	1	50
333	191	2	50
334	191	1	50
335	192	2	25
336	192	1	75
337	361	2	25
338	361	1	75
339	193	2	50
340	193	1	50
341	194	2	50
342	194	1	50
343	197	2	50
344	197	1	50
345	198	2	50
346	198	1	50
347	199	2	50
348	199	1	50
349	200	2	87.5
350	200	1	12.5
351	201	2	50
352	201	1	50
353	202	2	87.5
354	202	1	12.5
355	203	2	50
356	203	1	50
357	204	2	0
358	204	1	100
359	205	2	50
360	205	1	50
361	206	2	50
362	206	1	50
363	207	2	87.5
364	207	1	12.5
365	208	2	87.5
366	208	1	12.5
367	209	2	50
368	209	1	50
369	211	2	50
370	211	1	50
371	212	2	50
372	212	1	50
373	213	2	50
374	213	1	50
375	214	2	25
376	214	1	75
377	215	2	50
378	215	1	50
379	216	2	50
380	216	1	50
381	217	2	87.5
382	217	1	12.5
383	218	2	50
384	218	1	50
385	222	2	50
386	222	1	50
387	223	2	50
388	223	1	50
389	220	2	50
390	220	1	50
391	221	2	50
392	221	1	50
393	224	2	87.5
394	224	1	12.5
395	225	2	50
396	225	1	50
397	362	2	50
398	362	1	50
399	227	2	87.5
400	227	1	12.5
401	468	2	87.5
402	468	1	12.5
403	228	2	50
404	228	1	50
405	229	2	50
406	229	1	50
407	230	2	50
408	230	1	50
409	231	2	25
410	231	1	75
411	232	2	50
412	232	1	50
413	233	2	87.5
414	233	1	12.5
415	238	2	50
416	238	1	50
417	239	2	87.5
418	239	1	12.5
419	240	2	50
420	240	1	50
421	245	2	50
422	245	1	50
423	246	2	50
424	246	1	50
425	12	2	50
426	12	1	50
427	247	2	50
428	247	1	50
429	249	2	50
430	249	1	50
431	250	2	50
432	250	1	50
433	251	2	50
434	251	1	50
435	252	2	50
436	252	1	50
437	253	2	50
438	253	1	50
439	254	2	50
440	254	1	50
441	255	2	50
442	255	1	50
443	258	2	50
444	258	1	50
445	259	2	50
446	259	1	50
447	260	2	50
448	260	1	50
449	261	2	50
450	261	1	50
451	262	2	50
452	262	1	50
453	263	2	50
454	263	1	50
455	264	2	50
456	264	1	50
457	265	2	50
458	265	1	50
459	266	2	50
460	266	1	50
461	267	2	50
462	267	1	50
463	268	2	50
464	268	1	50
465	269	2	50
466	269	1	50
467	270	2	50
468	270	1	50
469	271	2	87.5
470	271	1	12.5
471	272	2	50
472	272	1	50
473	273	2	50
474	273	1	50
475	274	2	50
476	274	1	50
477	275	2	50
478	275	1	50
479	277	2	50
480	277	1	50
481	276	2	50
482	276	1	50
483	278	2	50
484	278	1	50
485	13	2	50
486	13	1	50
487	279	2	50
488	279	1	50
489	280	2	50
490	280	1	50
491	281	2	50
492	281	1	50
493	282	2	50
494	282	1	50
495	283	2	50
496	283	1	50
497	285	2	50
498	285	1	50
499	286	2	50
500	286	1	50
501	287	2	50
502	287	1	50
503	288	2	50
504	288	1	50
505	289	2	50
506	289	1	50
507	290	2	50
508	290	1	50
509	291	2	87.5
510	291	1	12.5
511	792	2	87.5
512	792	1	12.5
513	292	2	50
514	292	1	50
515	293	2	50
516	293	1	50
517	294	2	50
518	294	1	50
519	295	2	50
520	295	1	50
521	296	2	75
522	296	1	25
523	297	2	75
524	297	1	25
525	298	2	50
526	298	1	50
527	300	2	75
528	300	1	25
529	301	2	50
530	301	1	50
531	302	2	87.5
532	302	1	12.5
533	303	2	50
534	303	1	50
535	304	2	87.5
536	304	1	12.5
537	305	2	0
538	305	1	100
539	306	2	0
540	306	1	100
541	308	2	50
542	308	1	50
543	309	2	50
544	309	1	50
545	310	2	87.5
546	310	1	12.5
547	311	2	50
548	311	1	50
549	314	2	50
550	314	1	50
551	315	2	50
552	315	1	50
553	316	2	50
554	316	1	50
555	14	2	50
556	14	1	50
557	317	2	50
558	317	1	50
559	320	2	50
560	320	1	50
561	363	2	50
562	363	1	50
563	321	2	50
564	321	1	50
565	322	2	50
566	322	1	50
567	323	2	50
568	323	1	50
569	324	2	87.5
570	324	1	12.5
571	325	2	87.5
572	325	1	12.5
573	326	2	50
574	326	1	50
575	327	2	50
576	327	1	50
577	328	2	100
578	328	1	0
579	329	2	50
580	329	1	50
581	330	2	50
582	330	1	50
583	331	2	50
584	331	1	50
585	332	2	50
586	332	1	50
587	333	2	50
588	333	1	50
589	334	2	50
590	334	1	50
591	335	2	87.5
592	335	1	12.5
593	336	2	50
594	336	1	50
595	337	2	50
596	337	1	50
597	338	2	50
598	338	1	50
599	339	2	50
600	339	1	50
601	340	2	0
602	340	1	100
603	341	2	87.5
604	341	1	12.5
605	342	2	0
606	342	1	100
607	344	2	50
608	344	1	50
609	345	2	50
610	345	1	50
611	346	2	50
612	346	1	50
613	347	2	50
614	347	1	50
615	348	2	50
616	348	1	50
617	349	2	50
618	349	1	50
619	350	2	50
620	350	1	50
621	351	2	87.5
622	351	1	12.5
623	352	2	87.5
624	352	1	12.5
625	353	2	0
626	353	1	100
627	354	2	50
628	354	1	50
629	356	2	87.5
630	356	1	12.5
631	357	2	50
632	357	1	50
633	358	2	50
634	358	1	50
635	359	2	50
636	359	1	50
637	377	2	100
638	377	1	0
639	655	2	100
640	655	1	0
641	378	2	50
642	378	1	50
643	379	2	50
644	379	1	50
645	380	2	50
646	380	1	50
647	656	2	50
648	656	1	50
649	381	2	50
650	381	1	50
651	657	2	50
652	657	1	50
653	382	2	50
654	382	1	50
655	383	2	50
656	383	1	50
657	384	2	50
658	384	1	50
659	386	2	50
660	386	1	50
661	658	2	50
662	658	1	50
663	387	2	50
664	387	1	50
665	15	2	50
666	15	1	50
667	389	2	50
668	389	1	50
669	390	2	50
670	390	1	50
671	393	2	50
672	393	1	50
673	396	2	87.5
674	396	1	12.5
675	397	2	50
676	397	1	50
677	659	2	50
678	659	1	50
679	398	2	25
680	398	1	75
681	400	2	50
682	400	1	50
683	401	2	50
684	401	1	50
685	402	2	50
686	402	1	50
687	403	2	50
688	403	1	50
689	404	2	50
690	404	1	50
691	405	2	50
692	405	1	50
693	406	2	50
694	406	1	50
695	407	2	50
696	407	1	50
697	408	2	50
698	408	1	50
699	409	2	50
700	409	1	50
701	16	2	50
702	16	1	50
703	411	2	50
704	411	1	50
705	413	2	50
706	413	1	50
707	470	2	50
708	470	1	50
709	414	2	50
710	414	1	50
711	415	2	50
712	415	1	50
713	416	2	50
714	416	1	50
715	417	2	25
716	417	1	75
717	418	2	25
718	418	1	75
719	419	2	25
720	419	1	75
721	421	2	50
722	421	1	50
723	423	2	50
724	423	1	50
725	422	2	50
726	422	1	50
727	424	2	50
728	424	1	50
729	425	2	50
730	425	1	50
731	426	2	25
732	426	1	75
733	427	2	50
734	427	1	50
735	428	2	50
736	428	1	50
737	17	2	50
738	17	1	50
739	430	2	50
740	430	1	50
741	431	2	50
742	431	1	50
743	432	2	87.5
744	432	1	12.5
745	58	2	100
746	58	1	0
747	433	2	50
748	433	1	50
749	18	2	50
750	18	1	50
751	434	2	100
752	434	1	0
753	435	2	87.5
754	435	1	12.5
755	436	2	87.5
756	436	1	12.5
757	438	2	87.5
758	438	1	12.5
759	439	2	75
760	439	1	25
761	471	2	75
762	471	1	25
763	440	2	50
764	440	1	50
765	441	2	50
766	441	1	50
767	442	2	50
768	442	1	50
769	443	2	50
770	443	1	50
771	444	2	75
772	444	1	25
773	446	2	50
774	446	1	50
775	660	2	50
776	660	1	50
777	447	2	50
778	447	1	50
779	448	2	0
780	448	1	100
781	449	2	75
782	449	1	25
783	450	2	0
784	450	1	100
785	451	2	0
786	451	1	100
787	452	2	0
788	452	1	100
789	453	2	50
790	453	1	50
791	454	2	50
792	454	1	50
793	455	2	50
794	455	1	50
795	457	2	50
796	457	1	50
797	458	2	50
798	458	1	50
799	459	2	50
800	459	1	50
801	460	2	50
802	460	1	50
803	461	2	50
804	461	1	50
805	661	2	50
806	661	1	50
807	462	2	50
808	462	1	50
809	463	2	50
810	463	1	50
811	464	2	50
812	464	1	50
813	481	2	100
814	481	1	0
815	482	2	100
816	482	1	0
817	483	2	100
818	483	1	0
819	485	2	50
820	485	1	50
821	486	2	50
822	486	1	50
823	489	2	50
824	489	1	50
825	490	2	50
826	490	1	50
827	491	2	50
828	491	1	50
829	492	2	50
830	492	1	50
831	662	2	50
832	662	1	50
833	493	2	50
834	493	1	50
835	494	2	50
836	494	1	50
837	495	2	50
838	495	1	50
839	496	2	50
840	496	1	50
841	497	2	50
842	497	1	50
843	498	2	50
844	498	1	50
845	499	2	25
846	499	1	75
847	500	2	0
848	500	1	100
849	501	2	100
850	501	1	0
851	502	2	87.5
852	502	1	12.5
853	504	2	100
854	504	1	0
855	503	2	0
856	503	1	100
857	505	2	87.5
858	505	1	12.5
859	506	2	50
860	506	1	50
861	507	2	87.5
862	507	1	12.5
863	518	2	87.5
864	518	1	12.5
865	519	2	50
866	519	1	50
867	520	2	50
868	520	1	50
869	521	2	25
870	521	1	75
871	523	2	87.5
872	523	1	12.5
873	524	2	50
874	524	1	50
875	525	2	50
876	525	1	50
877	526	2	0
878	526	1	100
879	527	2	87.5
880	527	1	12.5
881	528	2	87.5
882	528	1	12.5
883	529	2	75
884	529	1	25
885	530	2	50
886	530	1	50
887	531	2	0
888	531	1	100
889	663	2	0
890	663	1	100
891	532	2	50
892	532	1	50
893	534	2	50
894	534	1	50
895	537	2	50
896	537	1	50
897	538	2	50
898	538	1	50
899	539	2	50
900	539	1	50
901	540	2	50
902	540	1	50
903	541	2	50
904	541	1	50
905	543	2	50
906	543	1	50
907	544	2	50
908	544	1	50
909	545	2	50
910	545	1	50
911	548	2	50
912	548	1	50
913	549	2	50
914	549	1	50
915	550	2	50
916	550	1	50
917	552	2	50
918	552	1	50
919	553	2	50
920	553	1	50
921	554	2	50
922	554	1	50
923	555	2	50
924	555	1	50
925	556	2	50
926	556	1	50
927	557	2	87.5
928	557	1	12.5
929	560	2	50
930	560	1	50
931	561	2	50
932	561	1	50
933	562	2	100
934	562	1	0
935	563	2	100
936	563	1	0
937	564	2	50
938	564	1	50
939	565	2	50
940	565	1	50
941	566	2	50
942	566	1	50
943	567	2	50
944	567	1	50
945	568	2	0
946	568	1	100
947	664	2	0
948	664	1	100
949	569	2	100
950	569	1	0
951	665	2	100
952	665	1	0
953	570	2	87.5
954	570	1	12.5
955	571	2	50
956	571	1	50
957	572	2	50
958	572	1	50
959	573	2	50
960	573	1	50
961	574	2	50
962	574	1	50
963	575	2	50
964	575	1	50
965	576	2	50
966	576	1	50
967	577	2	50
968	577	1	50
969	578	2	87.5
970	578	1	12.5
971	579	2	0
972	579	1	100
973	472	2	0
974	472	1	100
975	580	2	50
976	580	1	50
977	581	2	50
978	581	1	50
979	364	2	50
980	364	1	50
981	582	2	12.5
982	582	1	87.5
983	583	2	87.5
984	583	1	12.5
985	584	2	50
986	584	1	50
987	585	2	50
988	585	1	50
989	586	2	50
990	586	1	50
991	587	2	50
992	587	1	50
993	666	2	50
994	666	1	50
995	588	2	50
996	588	1	50
997	589	2	50
998	589	1	50
999	590	2	87.5
1000	590	1	12.5
1001	667	2	87.5
1002	667	1	12.5
1003	591	2	50
1004	591	1	50
1005	593	2	50
1006	593	1	50
1007	596	2	50
1008	596	1	50
1009	597	2	25
1010	597	1	75
1011	598	2	50
1012	598	1	50
1013	599	2	50
1014	599	1	50
1015	601	2	50
1016	601	1	50
1017	602	2	50
1018	602	1	50
1019	600	2	50
1020	600	1	50
1021	603	2	50
1022	603	1	50
1023	604	2	75
1024	604	1	25
1025	605	2	75
1026	605	1	25
1027	606	2	75
1028	606	1	25
1029	607	2	75
1030	607	1	25
1031	608	2	50
1032	608	1	50
1033	610	2	50
1034	610	1	50
1035	611	2	75
1036	611	1	25
1037	612	2	75
1038	612	1	25
1039	616	2	75
1040	616	1	25
1041	617	2	50
1042	617	1	50
1043	618	2	50
1044	618	1	50
1045	620	2	0
1046	620	1	100
1047	621	2	50
1048	621	1	50
1049	668	2	50
1050	668	1	50
1051	622	2	50
1052	622	1	50
1053	623	2	50
1054	623	1	50
1055	624	2	50
1056	624	1	50
1057	625	2	50
1058	625	1	50
1059	626	2	50
1060	626	1	50
1061	627	2	50
1062	627	1	50
1063	628	2	50
1064	628	1	50
1065	629	2	50
1066	629	1	50
1067	19	2	50
1068	19	1	50
1069	631	2	87.5
1070	631	1	12.5
1071	632	2	50
1072	632	1	50
1073	633	2	50
1074	633	1	50
1075	636	2	50
1076	636	1	50
1077	669	2	50
1078	669	1	50
1079	637	2	50
1080	637	1	50
1081	670	2	50
1082	670	1	50
1083	638	2	50
1084	638	1	50
1085	687	2	87.5
1086	687	1	12.5
1087	692	2	87.5
1088	692	1	12.5
1089	694	2	100
1090	694	1	0
1091	693	2	0
1092	693	1	100
1093	695	2	50
1094	695	1	50
1095	20	2	50
1096	20	1	50
1097	365	2	50
1098	365	1	50
1099	699	2	50
1100	699	1	50
1101	702	2	50
1102	702	1	50
1103	703	2	50
1104	703	1	50
1105	704	2	50
1106	704	1	50
1107	705	2	0
1108	705	1	100
1109	706	2	50
1110	706	1	50
1111	707	2	0
1112	707	1	100
1113	708	2	50
1114	708	1	50
1115	709	2	25
1116	709	1	75
1117	712	2	50
1118	712	1	50
1119	714	2	50
1120	714	1	50
1121	715	2	50
1122	715	1	50
1123	717	2	87.5
1124	717	1	12.5
1125	718	2	50
1126	718	1	50
1127	719	2	100
1128	719	1	0
1129	720	2	50
1130	720	1	50
1131	721	2	50
1132	721	1	50
1133	722	2	100
1134	722	1	0
1135	724	2	50
1136	724	1	50
1137	725	2	87.5
1138	725	1	12.5
1139	726	2	50
1140	726	1	50
1141	727	2	50
1142	727	1	50
1143	21	2	50
1144	21	1	50
1145	728	2	87.5
1146	728	1	12.5
1147	729	2	100
1148	729	1	0
1149	730	2	50
1150	730	1	50
1151	731	2	50
1152	731	1	50
1153	732	2	50
1154	732	1	50
1155	733	2	50
1156	733	1	50
1157	734	2	50
1158	734	1	50
1159	736	2	50
1160	736	1	50
1161	738	2	50
1162	738	1	50
1163	739	2	100
1164	739	1	0
1165	740	2	0
1166	740	1	100
1167	741	2	0
1168	741	1	100
1169	742	2	100
1170	742	1	0
1171	744	2	50
1172	744	1	50
1173	745	2	25
1174	745	1	75
1175	22	2	25
1176	22	1	75
1177	746	2	50
1178	746	1	50
1179	747	2	50
1180	747	1	50
1181	748	2	50
1182	748	1	50
1183	749	2	50
1184	749	1	50
1185	750	2	50
1186	750	1	50
1187	751	2	50
1188	751	1	50
1189	752	2	50
1190	752	1	50
1191	753	2	50
1192	753	1	50
1193	754	2	50
1194	754	1	50
1195	755	2	50
1196	755	1	50
1197	756	2	50
1198	756	1	50
1199	759	2	0
1200	759	1	100
1201	760	2	0
1202	760	1	100
1203	758	2	0
1204	758	1	100
1205	757	2	0
1206	757	1	100
1207	762	2	100
1208	762	1	0
1209	761	2	0
1210	761	1	100
1211	763	2	100
1212	763	1	0
1213	764	2	87.5
1214	764	1	12.5
1215	765	2	87.5
1216	765	1	12.5
1217	766	2	50
1218	766	1	50
1219	767	2	50
1220	767	1	50
1221	768	2	50
1222	768	1	50
1223	769	2	25
1224	769	1	75
1225	771	2	25
1226	771	1	75
1227	770	2	25
1228	770	1	75
1229	772	2	25
1230	772	1	75
1231	773	2	50
1232	773	1	50
1233	774	2	87.5
1234	774	1	12.5
1235	775	2	50
1236	775	1	50
1237	777	2	50
1238	777	1	50
1239	779	2	50
1240	779	1	50
1241	778	2	50
1242	778	1	50
1243	783	2	50
1244	783	1	50
1245	784	2	50
1246	784	1	50
1247	785	2	50
1248	785	1	50
1249	786	2	50
1250	786	1	50
1251	787	2	87.5
1252	787	1	12.5
1253	788	2	87.5
1254	788	1	12.5
1255	789	2	87.5
1256	789	1	12.5
1257	790	2	50
1258	790	1	50
1259	791	2	50
1260	791	1	50
1261	794	2	50
1262	794	1	50
1263	795	2	50
1264	795	1	50
1265	796	2	50
1266	796	1	50
1267	797	2	50
1268	797	1	50
1269	798	2	50
1270	798	1	50
1271	799	2	50
1272	799	1	50
1273	801	2	50
1274	801	1	50
1275	802	2	50
1276	802	1	50
1277	803	2	50
1278	803	1	50
1279	23	2	50
1280	23	1	50
1281	804	2	0
1282	804	1	100
1283	805	2	50
1284	805	1	50
1285	806	2	50
1286	806	1	50
1287	809	2	50
1288	809	1	50
1289	810	2	50
1290	810	1	50
1291	674	2	50
1292	674	1	50
1293	811	2	50
1294	811	1	50
1295	812	2	50
1296	812	1	50
1297	813	2	50
1298	813	1	50
1299	814	2	87.5
1300	814	1	12.5
1301	815	2	50
1302	815	1	50
1303	793	2	50
1304	793	1	50
1305	816	2	50
1306	816	1	50
1307	817	2	50
1308	817	1	50
1309	818	2	50
1310	818	1	50
1311	819	2	50
1312	819	1	50
1313	820	2	50
1314	820	1	50
1315	675	2	50
1316	675	1	50
1317	821	2	87.5
1318	821	1	12.5
1319	822	2	50
1320	822	1	50
1321	824	2	50
1322	824	1	50
1323	825	2	50
1324	825	1	50
1325	826	2	50
1326	826	1	50
1327	827	2	50
1328	827	1	50
1329	830	2	50
1330	830	1	50
1331	367	2	50
1332	367	1	50
1333	831	2	50
1334	831	1	50
1335	832	2	87.5
1336	832	1	12.5
1337	838	2	87.5
1338	838	1	12.5
1339	839	2	50
1340	839	1	50
1341	840	2	87.5
1342	840	1	12.5
1343	841	2	50
1344	841	1	50
1345	842	2	50
1346	842	1	50
1347	843	2	50
1348	843	1	50
1349	845	2	50
1350	845	1	50
1351	844	2	50
1352	844	1	50
1353	846	2	50
1354	846	1	50
1355	847	2	50
1356	847	1	50
1357	848	2	50
1358	848	1	50
1359	849	2	25
1360	849	1	75
1361	850	2	12.5
1362	850	1	87.5
1363	851	2	50
1364	851	1	50
1365	852	2	50
1366	852	1	50
1367	853	2	87.5
1368	853	1	12.5
1369	854	2	87.5
1370	854	1	12.5
1371	855	2	87.5
1372	855	1	12.5
1373	856	2	87.5
1374	856	1	12.5
1375	857	2	87.5
1376	857	1	12.5
1377	858	2	50
1378	858	1	50
1379	473	2	50
1380	473	1	50
1381	859	2	87.5
1382	859	1	12.5
1383	860	2	50
1384	860	1	50
1385	862	2	50
1386	862	1	50
1387	24	2	50
1388	24	1	50
1389	864	2	50
1390	864	1	50
1391	865	2	87.5
1392	865	1	12.5
1393	866	2	50
1394	866	1	50
1395	368	2	50
1396	368	1	50
1397	867	2	50
1398	867	1	50
1399	25	2	50
1400	25	1	50
1401	868	2	50
1402	868	1	50
1403	26	2	50
1404	26	1	50
1405	876	2	87.5
1406	876	1	12.5
1407	877	2	50
1408	877	1	50
1409	878	2	50
1410	878	1	50
1411	880	2	50
1412	880	1	50
1413	881	2	50
1414	881	1	50
1415	882	2	50
1416	882	1	50
1417	883	2	50
1418	883	1	50
1419	884	2	50
1420	884	1	50
1421	885	2	50
1422	885	1	50
1423	886	2	87.5
1424	886	1	12.5
1425	887	2	87.5
1426	887	1	12.5
1427	889	2	50
1428	889	1	50
1429	776	2	50
1430	776	1	50
1431	890	2	50
1432	890	1	50
1433	891	2	50
1434	891	1	50
1435	892	2	50
1436	892	1	50
1437	893	2	50
1438	893	1	50
1439	894	2	50
1440	894	1	50
1441	896	2	87.5
1442	896	1	12.5
1443	897	2	100
1444	897	1	0
1445	898	2	50
1446	898	1	50
1447	899	2	50
1448	899	1	50
1449	677	2	50
1450	677	1	50
1451	900	2	50
1452	900	1	50
1453	678	2	50
1454	678	1	50
1455	901	2	87.5
1456	901	1	12.5
1457	902	2	0
1458	902	1	100
1459	903	2	87.5
1460	903	1	12.5
1461	474	2	87.5
1462	474	1	12.5
1463	904	2	50
1464	904	1	50
1465	905	2	50
1466	905	1	50
1467	906	2	50
1468	906	1	50
1469	27	2	50
1470	27	1	50
1471	907	2	50
1472	907	1	50
1473	28	2	50
1474	28	1	50
1475	909	2	50
1476	909	1	50
1477	910	2	100
1478	910	1	0
1479	911	2	50
1480	911	1	50
1481	912	2	50
1482	912	1	50
1483	913	2	87.5
1484	913	1	12.5
1485	679	2	87.5
1486	679	1	12.5
1487	914	2	50
1488	914	1	50
1489	680	2	50
1490	680	1	50
1491	915	2	50
1492	915	1	50
1493	916	2	87.5
1494	916	1	12.5
1495	917	2	50
1496	917	1	50
1497	918	2	50
1498	918	1	50
1499	919	2	50
1500	919	1	50
1501	921	2	50
1502	921	1	50
1503	922	2	50
1504	922	1	50
1505	923	2	50
1506	923	1	50
1507	924	2	50
1508	924	1	50
1509	925	2	50
1510	925	1	50
1511	926	2	50
1512	926	1	50
1513	927	2	50
1514	927	1	50
1515	928	2	50
1516	928	1	50
1517	929	2	87.5
1518	929	1	12.5
1519	930	2	87.5
1520	930	1	12.5
1521	931	2	50
1522	931	1	50
1523	932	2	50
1524	932	1	50
1525	933	2	50
1526	933	1	50
1527	681	2	50
1528	681	1	50
1529	937	2	50
1530	937	1	50
1531	938	2	50
1532	938	1	50
1533	939	2	50
1534	939	1	50
1535	940	2	50
1536	940	1	50
1537	941	2	87.5
1538	941	1	12.5
1539	942	2	50
1540	942	1	50
1541	943	2	50
1542	943	1	50
1543	944	2	50
1544	944	1	50
1545	945	2	50
1546	945	1	50
1547	946	2	50
1548	946	1	50
1549	947	2	50
1550	947	1	50
1551	948	2	50
1552	948	1	50
1553	949	2	50
1554	949	1	50
1555	950	2	50
1556	950	1	50
1557	951	2	50
1558	951	1	50
1559	953	2	87.5
1560	953	1	12.5
1561	954	2	87.5
1562	954	1	12.5
1563	955	2	87.5
1564	955	1	12.5
1565	958	2	50
1566	958	1	50
1567	959	2	50
1568	959	1	50
1569	960	2	87.5
1570	960	1	12.5
1571	961	2	50
1572	961	1	50
1573	962	2	50
1574	962	1	50
1575	963	2	25
1576	963	1	75
1577	964	2	50
1578	964	1	50
1579	965	2	50
1580	965	1	50
1581	966	2	50
1582	966	1	50
1583	967	2	50
1584	967	1	50
1585	968	2	50
1586	968	1	50
1587	969	2	50
1588	969	1	50
1589	970	2	50
1590	970	1	50
1591	475	2	50
1592	475	1	50
1593	972	2	50
1594	972	1	50
1595	682	2	50
1596	682	1	50
1597	369	2	50
1598	369	1	50
1599	973	2	50
1600	973	1	50
1601	370	2	50
1602	370	1	50
1603	974	2	50
1604	974	1	50
1605	371	2	50
1606	371	1	50
1607	975	2	50
1608	975	1	50
1609	976	2	50
1610	976	1	50
1611	977	2	50
1612	977	1	50
1613	978	2	50
1614	978	1	50
1615	979	2	0
1616	979	1	100
1617	980	2	50
1618	980	1	50
1619	476	2	50
1620	476	1	50
1621	981	2	50
1622	981	1	50
1623	982	2	87.5
1624	982	1	12.5
1625	983	2	50
1626	983	1	50
1627	984	2	87.5
1628	984	1	12.5
1629	985	2	50
1630	985	1	50
1631	986	2	50
1632	986	1	50
1633	987	2	25
1634	987	1	75
1635	988	2	87.5
1636	988	1	12.5
1637	990	2	50
1638	990	1	50
1639	992	2	50
1640	992	1	50
1641	994	2	50
1642	994	1	50
1643	995	2	50
1644	995	1	50
1645	996	2	50
1646	996	1	50
1647	997	2	50
1648	997	1	50
1649	998	2	50
1650	998	1	50
1651	999	2	50
1652	999	1	50
1653	1000	2	50
1654	1000	1	50
1655	1001	2	87.5
1656	1001	1	12.5
1657	1002	2	50
1658	1002	1	50
1659	1004	2	50
1660	1004	1	50
1661	1003	2	50
1662	1003	1	50
1663	1006	2	50
1664	1006	1	50
1665	1005	2	50
1666	1005	1	50
1667	1007	2	87.5
1668	1007	1	12.5
1669	1009	2	50
1670	1009	1	50
1671	1010	2	50
1672	1010	1	50
1673	1011	2	50
1674	1011	1	50
1675	1012	2	50
1676	1012	1	50
1677	1015	2	50
1678	1015	1	50
1679	683	2	50
1680	683	1	50
1681	1016	2	0
1682	1016	1	100
1683	1017	2	50
1684	1017	1	50
1685	1018	2	50
1686	1018	1	50
1687	1019	2	50
1688	1019	1	50
1689	1020	2	50
1690	1020	1	50
1691	372	2	50
1692	372	1	50
1693	1021	2	50
1694	1021	1	50
1695	1022	2	50
1696	1022	1	50
1697	1024	2	50
1698	1024	1	50
1699	1025	2	50
1700	1025	1	50
1701	1026	2	50
1702	1026	1	50
1703	1027	2	50
1704	1027	1	50
1705	1028	2	50
1706	1028	1	50
1707	1029	2	50
1708	1029	1	50
1709	1030	2	87.5
1710	1030	1	12.5
1711	684	2	87.5
1712	684	1	12.5
1713	1031	2	50
1714	1031	1	50
1715	1032	2	50
1716	1032	1	50
1717	1033	2	50
1718	1033	1	50
1719	1034	2	50
1720	1034	1	50
1721	1035	2	50
1722	1035	1	50
1723	1036	2	87.5
1724	1036	1	12.5
1725	1037	2	50
1726	1037	1	50
1727	1038	2	50
1728	1038	1	50
1729	1039	2	50
1730	1039	1	50
1731	1041	2	50
1732	1041	1	50
1733	1042	2	50
1734	1042	1	50
1735	1047	2	50
1736	1047	1	50
1737	1048	2	50
1738	1048	1	50
1739	1049	2	50
1740	1049	1	50
1741	1050	2	50
1742	1050	1	50
1743	1051	2	100
1744	1051	1	0
1745	1054	2	100
1746	1054	1	0
1747	1053	2	100
1748	1053	1	0
1749	1052	2	100
1750	1052	1	0
1751	1055	2	50
1752	1055	1	50
1753	1056	2	50
1754	1056	1	50
1755	1057	2	50
1756	1057	1	50
1757	1058	2	87.5
1758	1058	1	12.5
1759	1059	2	50
1760	1059	1	50
1761	1061	2	50
1762	1061	1	50
1763	1060	2	50
1764	1060	1	50
1765	1063	2	50
1766	1063	1	50
1767	1064	2	100
1768	1064	1	0
1769	1065	2	100
1770	1065	1	0
1771	1066	2	100
1772	1066	1	0
1773	1067	2	87.5
1774	1067	1	12.5
1775	1068	2	75
1776	1068	1	25
1777	1070	2	0
1778	1070	1	100
1779	1071	2	0
1780	1071	1	100
1781	1072	2	0
1782	1072	1	100
1783	1073	2	87.5
1784	1073	1	12.5
1785	1074	2	50
1786	1074	1	50
1787	1075	2	50
1788	1075	1	50
1789	1076	2	50
1790	1076	1	50
1791	1077	2	87.5
1792	1077	1	12.5
1793	1078	2	87.5
1794	1078	1	12.5
1795	1079	2	87.5
1796	1079	1	12.5
1797	1080	2	87.5
1798	1080	1	12.5
1799	1081	2	50
1800	1081	1	50
1801	1082	2	100
1802	1082	1	0
1803	1083	2	100
1804	1083	1	0
1805	1084	2	87.5
1806	1084	1	12.5
1807	1085	2	87.5
1808	1085	1	12.5
1809	1086	2	87.5
1810	1086	1	12.5
1811	1087	2	50
1812	1087	1	50
1813	1088	2	50
1814	1088	1	50
1815	1089	2	50
1816	1089	1	50
1817	1090	2	50
1818	1090	1	50
1819	1091	2	50
1820	1091	1	50
1821	1092	2	50
1822	1092	1	50
1823	1093	2	50
1824	1093	1	50
1825	1094	2	50
1826	1094	1	50
1827	1095	2	87.5
1828	1095	1	12.5
1829	1096	2	50
1830	1096	1	50
1831	1097	2	50
1832	1097	1	50
1833	1098	2	50
1834	1098	1	50
1835	1099	2	50
1836	1099	1	50
1837	1100	2	0
1838	1100	1	100
1839	1101	2	50
1840	1101	1	50
1841	1102	2	87.5
1842	1102	1	12.5
1843	1103	2	50
1844	1103	1	50
1845	1104	2	50
1846	1104	1	50
1847	1105	2	87.5
1848	1105	1	12.5
1849	477	2	87.5
1850	477	1	12.5
1851	1106	2	50
1852	1106	1	50
1853	685	2	50
1854	685	1	50
1855	1107	2	87.5
1856	1107	1	12.5
1857	1108	2	100
1858	1108	1	0
1859	1109	2	87.5
1860	1109	1	12.5
1861	1111	2	87.5
1862	1111	1	12.5
1863	1112	2	50
1864	1112	1	50
1865	1114	2	50
1866	1114	1	50
1867	1115	2	100
1868	1115	1	0
1869	1116	2	50
1870	1116	1	50
1871	1118	2	87.5
1872	1118	1	12.5
1873	1117	2	87.5
1874	1117	1	12.5
1875	1120	2	50
1876	1120	1	50
1877	1121	2	50
1878	1121	1	50
1879	1122	2	50
1880	1122	1	50
1881	1123	2	87.5
1882	1123	1	12.5
1883	1124	2	50
1884	1124	1	50
1885	1125	2	50
1886	1125	1	50
1887	1126	2	50
1888	1126	1	50
1889	1127	2	50
1890	1127	1	50
1891	1128	2	50
1892	1128	1	50
1893	1129	2	87.5
1894	1129	1	12.5
1895	686	2	87.5
1896	686	1	12.5
1897	1130	2	0
1898	1130	1	100
1899	1131	2	50
1900	1131	1	50
1901	1133	2	50
1902	1133	1	50
1903	1134	2	50
1904	1134	1	50
1905	1135	2	50
1906	1135	1	50
1907	1136	2	50
1908	1136	1	50
1909	1138	2	50
1910	1138	1	50
1911	1139	2	100
1912	1139	1	0
1913	1141	2	50
1914	1141	1	50
1915	1143	2	0
1916	1143	1	100
1917	1144	2	25
1918	1144	1	75
1919	29	2	25
1920	29	1	75
1921	1145	2	50
1922	1145	1	50
1923	1146	2	50
1924	1146	1	50
1925	1148	2	50
1926	1148	1	50
1927	1149	2	87.5
1928	1149	1	12.5
1929	1151	2	50
1930	1151	1	50
1931	1152	2	50
1932	1152	1	50
1933	1153	2	50
1934	1153	1	50
1935	1154	2	50
1936	1154	1	50
1937	1155	2	50
1938	1155	1	50
1939	1156	2	50
1940	1156	1	50
1941	373	2	50
1942	373	1	50
1943	1157	2	50
1944	1157	1	50
1945	1158	2	50
1946	1158	1	50
1947	1159	2	50
1948	1159	1	50
1949	1160	2	50
1950	1160	1	50
1951	1162	2	25
1952	1162	1	75
1953	1163	2	50
1954	1163	1	50
1955	1164	2	50
1956	1164	1	50
1957	1165	2	50
1958	1165	1	50
1959	1167	2	50
1960	1167	1	50
1961	1166	2	50
1962	1166	1	50
1963	1169	2	50
1964	1169	1	50
1965	1170	2	50
1966	1170	1	50
1967	1171	2	50
1968	1171	1	50
1969	1172	2	50
1970	1172	1	50
1971	780	2	50
1972	780	1	50
1973	1173	2	0
1974	1173	1	100
1975	1174	2	0
1976	1174	1	100
1977	1175	2	0
1978	1175	1	100
1979	1176	2	50
1980	1176	1	50
1981	1177	2	50
1982	1177	1	50
1983	1178	2	50
1984	1178	1	50
1985	1179	2	50
1986	1179	1	50
1987	1180	2	50
1988	1180	1	50
1989	1183	2	50
1990	1183	1	50
1991	374	2	50
1992	374	1	50
1993	1184	2	50
1994	1184	1	50
1995	1185	2	50
1996	1185	1	50
1997	1186	2	50
1998	1186	1	50
1999	1187	2	50
2000	1187	1	50
2001	1193	2	50
2002	1193	1	50
2003	1196	2	50
2004	1196	1	50
2005	1199	2	50
2006	1199	1	50
2007	376	2	50
2008	376	1	50
2009	1200	2	87.5
2010	1200	1	12.5
2011	479	2	87.5
2012	479	1	12.5
2013	1201	2	87.5
2014	1201	1	12.5
2015	480	2	87.5
2016	480	1	12.5
2017	1202	2	50
2018	1202	1	50
2019	1203	2	50
2020	1203	1	50
\.


--
-- Data for Name: pokemons_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemons_types (id, pokemon_id, type_id) FROM stdin;
1	1	10
2	1	12
3	639	10
4	639	12
5	2	15
6	3	2
7	640	2
8	4	1
9	6	17
10	6	9
11	5	17
12	5	9
13	7	16
14	7	8
15	641	16
16	641	8
17	8	17
18	8	16
19	642	17
20	9	13
21	10	15
22	643	15
23	11	5
24	30	18
25	31	3
26	31	8
27	644	3
28	644	5
29	32	16
30	32	12
31	33	13
32	34	10
33	34	14
34	35	4
35	645	4
36	645	3
37	36	6
38	36	9
39	37	16
40	37	1
41	38	10
42	38	3
43	39	10
44	39	3
45	40	18
46	40	1
47	41	14
48	42	10
49	42	13
50	43	7
51	465	7
52	465	16
53	44	13
54	45	17
55	45	3
56	46	16
57	46	8
58	47	16
59	47	8
60	48	3
61	48	12
62	49	18
63	49	12
64	50	4
65	50	12
66	51	1
67	51	14
68	52	16
69	52	1
70	53	7
71	53	15
72	54	5
73	55	17
74	55	16
75	56	18
76	57	12
77	57	8
78	360	15
79	360	8
80	59	13
81	646	13
82	646	5
83	60	16
84	60	12
85	61	12
86	466	12
87	466	16
88	62	3
89	63	15
90	64	18
91	64	5
92	65	13
93	65	5
94	66	3
95	67	11
96	67	15
97	68	9
98	647	9
99	69	16
100	69	18
101	70	18
102	70	11
103	71	18
104	73	18
105	73	9
106	72	18
107	72	9
108	75	18
109	74	18
110	76	18
111	77	16
112	77	17
113	78	3
114	78	12
115	79	10
116	80	12
117	81	1
118	81	8
119	82	1
120	82	14
121	648	1
122	648	14
123	83	15
124	84	17
125	84	15
126	85	4
127	86	10
128	87	10
129	87	14
130	88	12
131	89	13
132	89	6
133	90	13
134	90	18
135	91	13
136	92	16
137	92	18
138	93	2
139	93	17
140	94	7
141	94	9
142	96	18
143	649	18
144	97	7
145	97	6
146	650	7
147	650	6
148	98	1
149	99	13
150	100	4
151	101	16
152	102	4
153	103	8
154	103	2
155	104	16
156	105	13
157	106	10
158	107	7
159	108	10
160	108	9
161	109	10
162	109	9
163	110	13
164	110	8
165	467	15
166	467	8
167	111	10
168	111	6
169	112	18
170	113	17
171	113	15
172	114	17
173	114	15
174	115	10
175	115	2
176	116	18
177	116	15
178	117	10
179	117	14
180	118	18
181	119	10
182	119	14
183	120	13
184	121	13
185	122	1
186	123	1
187	124	1
188	125	1
189	125	8
190	126	1
191	126	6
192	127	10
193	128	10
194	128	2
195	129	15
196	129	10
197	130	15
198	130	12
199	131	15
200	131	9
201	132	7
202	132	11
203	651	7
204	651	11
205	133	10
206	134	16
207	134	5
208	135	16
209	135	7
210	136	10
211	137	18
212	137	16
213	138	18
214	138	2
215	139	1
216	140	13
217	143	7
218	141	18
219	142	12
220	144	1
221	145	15
222	145	10
223	146	17
224	146	8
225	147	7
226	147	1
227	148	7
228	148	9
229	149	12
230	150	12
231	151	9
232	151	7
233	152	13
234	153	7
235	154	7
236	154	8
237	652	7
238	652	3
239	653	7
240	653	8
241	155	1
242	155	4
243	156	7
244	157	7
245	158	13
246	158	8
247	159	10
248	160	10
249	161	10
250	161	6
251	162	10
252	163	18
253	164	2
254	164	7
255	165	2
256	165	12
257	166	10
258	167	7
259	168	15
260	169	18
261	169	4
262	170	15
263	171	13
264	172	7
265	173	18
266	174	18
267	175	18
268	176	11
269	176	15
270	177	5
271	178	5
272	179	5
273	180	6
274	181	14
275	181	11
276	182	18
277	182	12
278	183	16
279	183	7
280	184	17
281	184	6
282	185	9
283	186	1
284	186	8
285	187	7
286	187	6
287	188	5
288	189	6
289	190	17
290	191	18
291	192	18
292	192	16
293	361	9
294	193	8
295	193	17
296	194	8
297	195	15
298	196	15
299	197	10
300	197	5
301	198	6
302	198	12
303	199	6
304	200	16
305	200	10
306	201	8
307	201	18
308	202	16
309	203	18
310	203	2
311	204	15
312	205	14
313	205	6
314	206	14
315	206	8
316	207	7
317	208	18
318	209	1
319	209	16
320	210	12
321	211	12
322	212	11
323	213	17
324	214	9
325	215	1
326	215	5
327	216	3
328	216	13
329	217	7
330	218	5
331	219	2
332	222	7
333	223	7
334	223	15
335	220	12
336	221	12
337	221	7
338	224	10
339	224	8
340	225	7
341	362	12
342	227	10
343	227	9
344	468	10
345	468	6
346	228	4
347	228	5
348	229	13
349	229	10
350	230	2
351	230	3
352	231	13
353	232	12
354	232	8
355	233	7
356	233	15
357	236	15
358	234	15
359	235	15
360	237	15
361	238	18
362	238	12
363	239	18
364	240	18
365	240	1
366	241	9
367	241	10
368	242	17
369	242	3
370	243	17
371	243	3
372	244	16
373	244	5
374	654	16
375	654	5
376	245	13
377	245	11
378	246	11
379	12	11
380	12	17
381	247	10
382	247	3
383	248	13
384	249	13
385	249	8
386	250	13
387	250	8
388	251	10
389	251	13
390	252	18
391	253	11
392	254	1
393	254	15
394	255	17
395	255	9
396	256	18
397	256	3
398	257	4
399	257	3
400	258	14
401	258	3
402	259	3
403	259	9
404	260	3
405	261	3
406	261	8
407	262	3
408	262	9
409	263	13
410	263	3
411	264	14
412	264	2
413	265	3
414	266	18
415	266	16
416	267	3
417	267	9
418	268	9
419	268	8
420	269	9
421	269	8
422	270	11
423	271	18
424	272	15
425	273	3
426	274	13
427	275	18
428	275	8
429	277	13
430	276	13
431	278	11
432	13	11
433	13	17
434	279	13
435	280	15
436	281	17
437	281	3
438	282	1
439	282	17
440	283	9
441	285	9
442	286	9
443	287	1
444	287	14
445	288	1
446	288	16
447	289	4
448	290	4
449	291	13
450	792	13
451	292	12
452	293	12
453	294	14
454	295	10
455	296	4
456	297	4
457	298	4
458	299	4
459	469	4
460	469	10
461	300	4
462	301	15
463	302	7
464	302	6
465	303	4
466	303	8
467	304	18
468	304	17
469	305	5
470	305	8
471	306	5
472	306	8
473	307	7
474	308	1
475	308	17
476	309	15
477	310	15
478	311	15
479	312	14
480	312	3
481	313	14
482	313	3
483	314	11
484	314	17
485	315	10
486	315	15
487	316	10
488	316	15
489	14	10
490	14	3
491	317	13
492	318	6
493	320	13
494	320	8
495	363	6
496	321	13
497	321	15
498	322	13
499	322	8
500	323	18
501	324	7
502	325	18
503	326	10
504	326	17
505	327	10
506	327	17
507	328	14
508	328	5
509	329	5
510	330	18
511	331	18
512	332	4
513	333	8
514	333	6
515	334	10
516	334	3
517	335	7
518	336	7
519	336	8
520	337	13
521	337	8
522	338	15
523	339	18
524	340	5
525	341	10
526	342	5
527	343	9
528	343	5
529	344	11
530	344	3
531	345	10
532	346	10
533	346	14
534	347	1
535	347	17
536	348	3
537	349	3
538	349	12
539	350	18
540	350	9
541	351	18
542	352	18
543	353	12
544	353	9
545	354	12
546	354	1
547	356	7
548	357	13
549	358	13
550	359	3
551	359	11
552	377	15
553	377	6
554	655	15
555	655	6
556	378	1
557	378	4
558	379	14
559	380	3
560	380	11
561	656	3
562	656	11
563	381	15
564	381	5
565	657	15
566	657	5
567	382	16
568	383	9
569	383	14
570	384	18
571	384	11
572	385	1
573	385	17
574	386	9
575	386	14
576	658	9
577	658	14
578	387	16
579	387	11
580	15	16
581	15	4
582	388	17
583	388	9
584	389	3
585	389	11
586	390	16
587	391	9
588	392	9
589	393	13
590	393	15
591	394	9
592	394	3
593	395	9
594	395	3
595	396	12
596	397	12
597	659	12
598	398	13
599	399	12
600	400	11
601	400	8
602	401	16
603	401	14
604	402	16
605	402	14
606	403	11
607	403	8
608	404	10
609	404	14
610	405	10
611	406	14
612	406	8
613	407	18
614	408	18
615	409	16
616	409	11
617	16	16
618	16	4
619	410	11
620	410	9
621	411	1
622	411	18
623	412	11
624	412	9
625	413	3
626	470	17
627	470	3
628	414	3
629	415	18
630	416	10
631	417	15
632	418	15
633	419	15
634	420	7
635	420	3
636	421	9
637	421	10
638	423	9
639	423	10
640	422	9
641	422	10
642	424	9
643	424	10
644	425	14
645	425	13
646	426	5
647	427	6
648	428	16
649	428	11
650	17	16
651	17	4
652	429	11
653	429	6
654	430	9
655	431	13
656	432	18
657	432	2
658	58	18
659	58	2
660	433	14
661	18	14
662	18	2
663	434	2
664	434	5
665	435	10
666	436	10
667	437	11
668	836	11
669	836	7
670	438	10
671	439	7
672	471	7
673	471	16
674	440	1
675	441	15
676	442	14
677	443	13
678	444	6
679	445	2
680	445	3
681	446	18
682	446	8
683	660	18
684	660	2
685	447	3
686	447	6
687	448	13
688	449	6
689	450	15
690	451	15
691	451	5
692	452	15
693	453	9
694	453	14
695	454	6
696	454	8
697	455	3
698	457	7
699	458	7
700	458	17
701	459	4
702	459	13
703	460	4
704	460	13
705	461	1
706	461	6
707	661	1
708	661	6
709	462	13
710	463	11
711	464	11
712	481	6
713	482	6
714	483	6
715	484	7
716	484	8
717	485	2
718	485	8
719	486	17
720	486	9
721	487	15
722	487	9
723	488	15
724	488	2
725	489	13
726	489	8
727	490	10
728	490	8
729	491	18
730	492	2
731	492	7
732	662	2
733	662	7
734	493	2
735	493	7
736	494	9
737	495	18
738	496	10
739	496	3
740	497	2
741	497	3
742	498	15
743	499	13
744	499	5
745	500	1
746	501	2
747	501	5
748	502	7
749	502	2
750	504	15
751	504	13
752	503	15
753	503	13
754	505	7
755	505	6
756	506	2
757	506	15
758	507	18
759	508	16
760	508	15
761	509	12
762	509	18
763	510	17
764	510	15
765	511	6
766	511	4
767	512	2
768	512	8
769	513	10
770	513	15
771	514	7
772	514	14
773	515	16
774	515	4
775	516	11
776	516	17
777	517	5
778	517	6
779	518	10
780	518	14
781	519	3
782	520	18
783	520	9
784	521	13
785	521	5
786	522	17
787	522	15
788	523	4
789	524	1
790	524	4
791	525	10
792	525	8
793	526	12
794	526	15
795	527	16
796	527	18
797	528	16
798	528	18
799	529	15
800	530	1
801	530	14
802	531	13
803	663	13
804	532	1
805	533	10
806	533	17
807	534	13
808	535	18
809	535	6
810	536	18
811	536	6
812	537	4
813	537	8
814	538	2
815	538	17
816	539	18
817	539	3
818	540	18
819	541	15
820	541	5
821	542	17
822	543	16
823	544	1
824	544	16
825	545	17
826	545	5
827	546	17
828	547	17
829	548	14
830	549	13
831	550	3
832	550	6
833	551	6
834	551	3
835	552	18
836	553	1
837	554	1
838	555	11
839	555	2
840	556	11
841	556	2
842	557	6
843	558	18
844	837	18
845	559	3
846	559	12
847	1161	3
848	1161	12
849	95	3
850	95	12
851	560	17
852	560	16
853	561	9
854	561	7
855	562	11
856	562	8
857	563	11
858	563	8
859	564	18
860	564	4
861	565	18
862	565	12
863	566	1
864	566	7
865	567	16
866	567	11
867	568	3
868	568	15
869	664	3
870	664	15
871	569	3
872	569	15
873	665	3
874	665	15
875	570	10
876	571	1
877	571	10
878	572	13
879	573	1
880	573	8
881	574	1
882	574	8
883	575	13
884	576	13
885	577	2
886	578	16
887	578	10
888	579	10
889	472	10
890	472	6
891	580	13
892	581	13
893	364	2
894	364	13
895	582	7
896	582	13
897	583	7
898	584	9
899	584	7
900	585	1
901	585	2
902	586	18
903	586	10
904	587	13
905	666	13
906	666	6
907	588	18
908	588	10
909	589	13
910	590	6
911	590	17
912	667	6
913	667	17
914	591	18
915	591	10
916	592	15
917	592	8
918	593	18
919	594	15
920	594	9
921	595	16
922	595	15
923	596	10
924	597	18
925	598	4
926	599	4
927	601	16
928	602	16
929	600	16
930	603	2
931	604	6
932	605	6
933	606	6
934	607	7
935	608	7
936	608	16
937	609	17
938	609	5
939	610	18
940	611	7
941	612	7
942	613	4
943	613	17
944	614	4
945	614	17
946	615	4
947	615	17
948	616	6
949	617	2
950	617	15
951	618	12
952	618	11
953	619	18
954	620	2
955	620	8
956	621	4
957	668	4
958	622	6
959	623	18
960	623	8
961	624	18
962	624	8
963	625	10
964	626	14
965	626	18
966	627	4
967	628	18
968	628	5
969	629	11
970	19	7
971	19	9
972	630	6
973	630	9
974	631	18
975	631	11
976	632	2
977	633	1
978	633	8
979	634	13
980	635	13
981	636	17
982	636	5
983	669	17
984	669	5
985	637	6
986	637	15
987	670	6
988	670	15
989	638	6
990	638	15
991	687	10
992	688	17
993	689	13
994	689	15
995	690	13
996	690	6
997	691	17
998	692	10
999	692	2
1000	694	15
1001	693	15
1002	695	13
1003	20	2
1004	365	17
1005	696	15
1006	697	17
1007	697	15
1008	671	17
1009	671	15
1010	698	17
1011	698	15
1012	699	1
1013	700	15
1014	701	15
1015	672	15
1016	672	6
1017	673	15
1018	702	6
1019	703	6
1020	704	2
1021	705	5
1022	706	18
1023	707	13
1024	708	9
1025	708	5
1026	709	13
1027	711	16
1028	711	8
1029	710	16
1030	710	8
1031	712	4
1032	713	4
1033	713	3
1034	714	9
1035	715	9
1036	716	7
1037	716	8
1038	366	2
1039	366	8
1040	717	7
1041	717	6
1042	718	10
1043	718	5
1044	719	2
1045	719	5
1046	720	4
1047	720	2
1048	721	4
1049	721	2
1050	722	1
1051	722	8
1052	724	11
1053	725	18
1054	726	11
1055	727	14
1056	21	14
1057	21	2
1058	728	13
1059	729	14
1060	729	15
1061	730	15
1062	731	2
1063	731	8
1064	732	15
1065	733	16
1066	734	16
1067	735	14
1068	735	3
1069	736	15
1070	736	8
1071	737	15
1072	284	15
1073	284	17
1074	226	15
1075	226	9
1076	1110	15
1077	1110	3
1078	738	2
1079	739	14
1080	739	11
1081	740	14
1082	740	11
1083	741	14
1084	742	14
1085	743	16
1086	743	14
1087	744	1
1088	744	11
1089	745	7
1090	22	12
1091	22	5
1092	746	1
1093	746	8
1094	747	13
1095	747	8
1096	748	8
1097	748	3
1098	749	8
1099	749	3
1100	750	16
1101	751	7
1102	751	11
1103	752	10
1104	752	2
1105	753	1
1106	754	2
1107	754	13
1108	755	18
1109	756	10
1110	756	14
1111	759	10
1112	760	10
1113	760	18
1114	758	10
1115	758	7
1116	757	10
1117	757	16
1118	762	13
1119	761	13
1120	763	14
1121	763	6
1122	764	16
1123	764	18
1124	765	16
1125	765	18
1126	766	16
1127	766	11
1128	767	13
1129	767	15
1130	768	1
1131	768	15
1132	769	7
1133	769	8
1134	771	4
1135	771	8
1136	770	15
1137	770	8
1138	772	9
1139	772	8
1140	773	17
1141	774	18
1142	775	2
1143	775	14
1144	777	4
1145	779	18
1146	778	18
1147	781	18
1148	781	3
1149	782	18
1150	782	3
1151	783	9
1152	783	11
1153	784	18
1154	784	11
1155	785	6
1156	786	6
1157	786	2
1158	787	18
1159	788	10
1160	789	7
1161	790	1
1162	790	10
1163	791	1
1164	791	10
1165	794	6
1166	795	13
1167	796	4
1168	797	4
1169	797	6
1170	798	4
1171	798	6
1172	799	2
1173	799	17
1174	800	14
1175	800	9
1176	801	18
1177	801	8
1178	802	17
1179	803	13
1180	23	2
1181	804	10
1182	805	11
1183	806	9
1184	806	10
1185	807	1
1186	807	6
1187	808	18
1188	809	4
1189	810	13
1190	810	8
1191	674	13
1192	674	8
1193	811	13
1194	811	8
1195	812	13
1196	812	8
1197	813	13
1198	813	8
1199	814	7
1200	814	6
1201	815	4
1202	793	4
1203	816	13
1204	816	8
1205	817	12
1206	817	11
1207	818	4
1208	819	1
1209	820	1
1210	675	1
1211	675	8
1212	821	18
1213	822	4
1214	823	14
1215	824	18
1216	825	18
1217	826	18
1218	827	18
1219	827	6
1220	828	10
1221	828	9
1222	829	9
1223	830	7
1224	367	15
1225	831	2
1226	832	18
1227	833	13
1228	834	13
1229	835	13
1230	838	18
1231	838	5
1232	839	6
1233	840	18
1234	841	16
1235	841	17
1236	842	18
1237	843	9
1238	843	10
1239	845	9
1240	845	10
1241	844	9
1242	844	10
1243	846	9
1244	846	10
1245	847	16
1246	847	11
1247	848	2
1248	849	13
1249	850	7
1250	850	13
1251	851	18
1252	852	18
1253	852	11
1254	853	18
1255	853	6
1256	854	18
1257	855	18
1258	856	7
1259	857	10
1260	858	18
1261	858	14
1262	473	2
1263	473	14
1264	859	7
1265	860	1
1266	860	15
1267	861	4
1268	861	3
1269	862	4
1270	24	4
1271	24	15
1272	863	4
1273	864	15
1274	864	5
1275	865	16
1276	866	7
1277	368	15
1278	368	5
1279	867	13
1280	25	2
1281	25	13
1282	868	13
1283	26	2
1284	26	13
1285	869	3
1286	869	8
1287	676	3
1288	676	8
1289	870	12
1290	871	3
1291	872	4
1292	873	13
1293	874	16
1294	875	17
1295	876	18
1296	876	16
1297	877	1
1298	878	18
1299	879	3
1300	879	7
1301	880	15
1302	881	17
1303	881	14
1304	882	11
1305	882	16
1306	883	11
1307	883	16
1308	884	11
1309	884	16
1310	885	1
1311	885	5
1312	886	10
1313	887	6
1314	888	3
1315	888	2
1316	889	16
1317	776	16
1318	890	16
1319	891	16
1320	892	8
1321	893	10
1322	893	14
1323	894	10
1324	894	14
1325	895	4
1326	895	9
1327	456	4
1328	456	7
1329	1150	4
1330	1150	18
1331	355	4
1332	355	12
1333	319	4
1334	319	8
1335	723	4
1336	723	10
1337	896	10
1338	896	8
1339	897	13
1340	897	8
1341	898	11
1342	898	9
1343	899	2
1344	899	9
1345	677	2
1346	677	9
1347	900	3
1348	900	8
1349	678	3
1350	678	8
1351	901	14
1352	901	7
1353	902	14
1354	902	7
1355	903	18
1356	474	18
1357	474	2
1358	904	11
1359	905	11
1360	905	2
1361	906	11
1362	27	12
1363	27	17
1364	907	11
1365	28	12
1366	28	17
1367	908	4
1368	908	11
1369	909	9
1370	909	11
1371	910	6
1372	911	13
1373	911	10
1374	912	1
1375	913	10
1376	679	10
1377	679	3
1378	914	1
1379	914	17
1380	680	1
1381	680	17
1382	915	1
1383	915	14
1384	916	7
1385	917	10
1386	917	7
1387	918	2
1388	918	6
1389	919	2
1390	919	6
1391	920	5
1392	920	15
1393	921	1
1394	921	8
1395	922	18
1396	923	18
1397	924	12
1398	924	18
1399	925	10
1400	926	18
1401	927	18
1402	927	11
1403	928	13
1404	929	10
1405	930	10
1406	931	14
1407	932	1
1408	932	10
1409	933	18
1410	933	2
1411	681	18
1412	681	2
1413	934	10
1414	935	10
1415	935	8
1416	936	1
1417	936	9
1418	937	3
1419	938	18
1420	939	18
1421	940	1
1422	941	16
1423	941	17
1424	942	10
1425	942	2
1426	943	10
1427	943	5
1428	944	4
1429	945	14
1430	945	13
1431	946	10
1432	947	1
1433	947	16
1434	948	9
1435	949	15
1436	949	8
1437	950	1
1438	951	11
1439	952	13
1440	953	18
1441	954	10
1442	955	7
1443	956	10
1444	956	9
1445	957	9
1446	958	7
1447	958	1
1448	959	17
1449	959	8
1450	960	7
1451	960	9
1452	961	10
1453	962	10
1454	962	8
1455	963	13
1456	964	14
1457	964	1
1458	965	14
1459	965	18
1460	966	14
1461	966	2
1462	967	13
1463	968	13
1464	969	13
1465	970	3
1466	475	17
1467	475	3
1468	971	1
1469	971	6
1470	972	18
1471	972	15
1472	682	18
1473	682	15
1474	369	14
1475	369	15
1476	973	18
1477	973	15
1478	370	14
1479	370	15
1480	974	18
1481	974	15
1482	371	15
1483	975	7
1484	976	5
1485	977	13
1486	978	10
1487	978	13
1488	979	12
1489	979	15
1490	980	2
1491	980	12
1492	476	6
1493	476	14
1494	981	6
1495	981	14
1496	982	10
1497	983	12
1498	983	1
1499	984	13
1500	985	12
1501	986	10
1502	986	12
1503	987	5
1504	988	18
1505	989	15
1506	989	17
1507	990	15
1508	991	16
1509	991	15
1510	992	13
1511	992	8
1512	993	9
1513	994	1
1514	995	12
1515	995	18
1516	996	1
1517	997	1
1518	997	14
1519	998	13
1520	999	9
1521	999	2
1522	1000	15
1523	1001	10
1524	1002	5
1525	1004	13
1526	1004	8
1527	1003	13
1528	1003	8
1529	1006	13
1530	1006	8
1531	1005	13
1532	1005	8
1533	1007	18
1534	1008	16
1535	1008	17
1536	1009	13
1537	1010	13
1538	1010	8
1539	1011	13
1540	1011	8
1541	1012	13
1542	1012	8
1543	1013	18
1544	1013	15
1545	1014	18
1546	1015	17
1547	1015	11
1548	683	17
1549	683	11
1550	1016	10
1551	1017	16
1552	1018	13
1553	1019	13
1554	1019	6
1555	1020	11
1556	1020	4
1557	372	11
1558	372	17
1559	1021	14
1560	1021	2
1561	1022	16
1562	1023	18
1563	1024	10
1564	1025	10
1565	1026	1
1566	1026	18
1567	1027	13
1568	1027	8
1569	1028	1
1570	1028	10
1571	1029	14
1572	1030	18
1573	1030	11
1574	684	18
1575	684	11
1576	1031	18
1577	1031	8
1578	1032	13
1579	1032	8
1580	1033	12
1581	1033	11
1582	1034	5
1583	1035	15
1584	1035	8
1585	1036	5
1586	1037	4
1587	1038	13
1588	1038	8
1589	1039	7
1590	1039	8
1591	1040	13
1592	1041	10
1593	1042	10
1594	1043	10
1595	1043	5
1596	1044	18
1597	1044	5
1598	1045	4
1599	1045	5
1600	1046	15
1601	1046	5
1602	1047	1
1603	1048	3
1604	1048	18
1605	1049	3
1606	1049	18
1607	1050	3
1608	1050	18
1609	1051	13
1610	1054	6
1611	1053	6
1612	1053	7
1613	1052	6
1614	1052	18
1615	1055	13
1616	1056	18
1617	1056	14
1618	1057	18
1619	1057	14
1620	1058	7
1621	1059	13
1622	1061	13
1623	1060	13
1624	1062	16
1625	1062	6
1626	1063	2
1627	1064	6
1628	1065	4
1629	1065	8
1630	1066	4
1631	1066	8
1632	1067	10
1633	1068	6
1634	1069	2
1635	1069	11
1636	1070	5
1637	1070	17
1638	1071	5
1639	1071	17
1640	1072	5
1641	1072	17
1642	1073	18
1643	1073	16
1644	1074	11
1645	1074	10
1646	1075	11
1647	1075	10
1648	1076	4
1649	1076	17
1650	1077	5
1651	1077	8
1652	1078	5
1653	1079	5
1654	1079	8
1655	1080	7
1656	1081	7
1657	1082	8
1658	1083	8
1659	1084	7
1660	1085	10
1661	1085	11
1662	1086	18
1663	1087	13
1664	1087	8
1665	1088	14
1666	1088	18
1667	1089	4
1668	1089	14
1669	1090	14
1670	1090	6
1671	1091	4
1672	1091	14
1673	1092	4
1674	1092	14
1675	1093	13
1676	1093	8
1677	1094	11
1678	1095	10
1679	1096	9
1680	1096	10
1681	1097	10
1682	1097	8
1683	1098	14
1684	1099	13
1685	1099	8
1686	1100	10
1687	1101	7
1688	1101	3
1689	1102	10
1690	1103	18
1691	1104	4
1692	1105	7
1693	477	7
1694	477	9
1695	1106	16
1696	1106	2
1697	685	16
1698	685	2
1699	1107	16
1700	1107	3
1701	1108	6
1702	1109	16
1703	1109	3
1704	1111	2
1705	1112	13
1706	1112	8
1707	1113	15
1708	1114	11
1709	1114	13
1710	1115	11
1711	1115	13
1712	1116	13
1713	1118	6
1714	1118	2
1715	1117	6
1716	1117	18
1717	1119	15
1718	1120	12
1719	1121	12
1720	1122	12
1721	1123	18
1722	1124	17
1723	1124	14
1724	1125	18
1725	1125	15
1726	1126	1
1727	1126	14
1728	1127	1
1729	1127	14
1730	1128	1
1731	1128	14
1732	1129	10
1733	1129	14
1734	686	10
1735	686	14
1736	1130	1
1737	1130	8
1738	1131	11
1739	1131	3
1740	1132	15
1741	1132	7
1742	1133	10
1743	1133	14
1744	1134	13
1745	1135	1
1746	1135	4
1747	1136	10
1748	1136	14
1749	1137	10
1750	1137	6
1751	1138	1
1752	1138	8
1753	1139	1
1754	1140	7
1755	1140	18
1756	1141	1
1757	1141	7
1758	1142	4
1759	478	4
1760	478	10
1761	1143	2
1762	1143	8
1763	1144	7
1764	29	12
1765	1145	18
1766	1146	18
1767	1147	18
1768	1147	3
1769	1148	12
1770	1148	18
1771	1149	18
1772	1151	13
1773	1152	4
1774	1152	8
1775	1153	2
1776	1153	12
1777	1154	1
1778	1154	14
1779	1155	10
1780	1155	14
1781	1156	14
1782	373	14
1783	373	5
1784	1157	10
1785	1157	5
1786	1158	1
1787	1158	14
1788	1159	18
1789	1159	11
1790	1160	13
1791	1162	13
1792	1162	5
1793	1163	18
1794	1164	1
1795	1164	18
1796	1165	18
1797	1165	8
1798	1167	18
1799	1166	18
1800	1168	2
1801	1168	10
1802	1169	15
1803	1170	15
1804	1170	8
1805	1171	13
1806	1172	18
1807	1172	11
1808	780	14
1809	780	11
1810	1173	1
1811	1173	10
1812	1174	1
1813	1174	11
1814	1175	1
1815	1175	17
1816	1176	18
1817	1177	1
1818	1178	15
1819	1179	13
1820	1179	15
1821	1180	15
1822	1180	8
1823	1181	5
1824	1182	4
1825	1183	9
1826	374	11
1827	374	9
1828	1184	4
1829	1185	1
1830	1185	8
1831	1186	1
1832	1186	8
1833	1187	13
1834	1188	2
1835	1188	8
1836	1190	5
1837	1189	5
1838	1189	17
1839	1192	6
1840	1191	6
1841	1191	17
1842	1193	13
1843	1194	4
1844	1194	8
1845	375	6
1846	375	8
1847	1195	2
1848	1195	10
1849	1196	4
1850	1197	3
1851	1197	4
1852	1198	4
1853	1199	13
1854	376	2
1855	376	13
1856	1200	2
1857	479	13
1858	479	9
1859	1201	2
1860	480	13
1861	480	9
1862	1202	14
1863	1202	8
1864	1203	2
1865	1203	3
1866	1205	3
1867	1205	11
1868	1204	3
1869	1204	11
1870	1206	3
1871	1206	11
\.


--
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating (id, pokemon_id, user_id, stars, "createdAt", "updatedAt") FROM stdin;
2	815	1	5	2024-02-27 08:06:22.959+03	2024-02-27 08:06:22.959+03
1	815	2	5	2024-02-27 08:06:22.959+03	2024-03-01 06:31:12.031+03
3	123	3	5	2024-03-01 06:31:12.031+03	2024-03-01 06:31:12.031+03
5	123	1	4	2024-03-01 06:31:12.031+03	2024-03-01 06:31:12.031+03
4	124	3	3	2024-03-01 06:31:12.031+03	2024-03-01 06:31:12.031+03
7	111	1	5	2024-03-15 06:31:12.031+03	2024-03-15 06:31:12.031+03
8	777	2	5	2024-03-15 06:31:12.031+03	2024-03-15 06:31:12.031+03
9	777	3	5	2024-03-15 06:31:12.031+03	2024-03-15 06:31:12.031+03
\.


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats (stat_id, stat_hp, stat_attack, stat_defense, stat_sp_attack, stat_sp_defense, stat_speed) FROM stdin;
1	90	92	75	92	85	60
2	25	20	15	105	55	90
3	65	130	60	75	60	75
4	80	70	40	100	60	145
5	60	140	50	140	50	60
6	60	50	140	50	140	60
7	80	105	65	60	75	130
8	70	110	180	60	60	50
9	55	70	55	40	55	85
10	55	50	45	135	95	120
11	65	60	75	110	121	64
12	10	55	30	35	45	90
13	35	100	60	50	70	110
14	95	105	85	125	75	45
15	40	80	100	30	30	20
16	80	120	130	55	65	45
17	55	95	115	45	45	35
18	80	80	50	40	50	25
19	60	80	110	50	80	45
20	40	35	35	50	40	90
21	105	105	75	65	100	50
22	73	67	75	81	100	109
23	65	60	60	75	65	115
24	60	85	50	95	85	110
25	75	71	70	40	80	77
26	30	56	35	25	35	72
27	50	75	90	10	35	40
28	75	100	120	25	65	65
29	38	41	40	50	65	65
30	165	75	80	40	45	65
31	75	70	90	70	105	80
32	77	59	50	67	63	46
33	75	100	66	60	66	115
34	114	85	70	85	80	30
35	90	75	85	115	90	55
36	110	115	80	50	90	90
37	45	95	50	40	50	75
38	110	85	80	100	80	30
39	40	40	80	40	40	20
40	68	70	92	50	132	42
41	60	95	69	65	79	80
42	78	69	90	125	109	39
43	90	110	80	100	80	95
44	120	120	120	120	120	120
45	90	105	130	125	65	85
46	55	112	45	74	45	70
47	75	140	65	112	65	110
48	90	95	66	45	65	62
49	90	90	100	80	90	55
50	90	100	90	90	80	55
51	70	90	70	60	70	40
52	75	125	100	70	80	45
53	85	60	100	125	80	75
54	101	72	72	99	89	29
55	50	70	100	40	40	30
56	41	63	40	40	30	66
57	90	85	100	95	125	85
58	72	145	67	153	71	132
59	103	60	86	60	86	50
60	123	77	72	99	92	58
61	95	117	184	44	46	28
62	46	87	60	30	40	57
63	75	125	70	125	70	115
64	100	50	80	60	80	50
65	50	20	40	20	40	20
66	45	75	60	40	30	50
67	40	40	55	40	70	55
68	64	115	65	83	63	65
69	72	105	115	54	86	68
70	50	48	43	46	41	60
71	61	123	60	60	50	136
72	120	92	65	100	75	78
73	120	112	65	80	75	78
74	70	92	65	80	55	98
75	70	92	65	80	55	98
76	70	92	65	80	55	98
77	60	52	168	47	138	30
78	115	145	92	75	86	87
79	60	62	80	63	80	60
80	95	130	80	70	80	50
81	60	70	50	100	50	65
82	65	90	40	45	80	75
83	75	75	75	125	95	40
84	40	55	80	35	60	30
85	109	64	91	103	83	45
86	75	80	95	90	100	50
87	50	75	35	70	30	40
88	55	69	85	32	35	28
89	120	125	80	55	60	60
90	79	85	60	55	60	71
91	59	45	40	35	40	31
92	42	52	67	39	56	50
93	65	125	100	60	70	70
94	53	127	53	151	79	107
95	125	170	100	120	90	95
96	79	83	100	85	105	78
97	80	120	70	110	70	80
98	25	20	20	25	45	45
99	255	10	10	75	135	55
100	45	60	32	50	32	76
101	70	105	105	50	40	20
102	69	90	60	90	60	121
103	70	103	85	60	85	82
104	50	80	95	10	45	10
105	95	110	95	40	95	55
106	42	30	38	30	38	32
107	59	59	58	90	70	73
108	55	115	70	80	70	90
109	40	65	30	45	35	60
110	100	123	75	57	75	80
111	60	130	80	60	60	70
112	60	69	69	91	81	50
113	67	89	116	79	116	33
114	57	24	86	24	86	23
115	111	127	99	79	99	55
116	68	105	70	70	70	92
117	40	30	35	50	70	55
118	55	65	35	60	30	85
119	45	49	49	65	65	45
120	55	66	44	44	56	85
121	38	36	38	32	36	57
122	40	29	45	29	45	36
123	40	29	45	29	45	36
124	40	29	45	29	45	36
125	60	45	50	90	80	70
126	107	139	139	53	53	79
127	50	85	40	85	40	35
128	70	115	60	115	60	55
129	100	80	80	80	80	80
130	100	165	150	85	130	50
131	100	85	80	165	100	150
132	70	100	70	105	75	40
133	50	62	40	62	40	50
134	50	50	150	50	150	50
135	80	60	90	60	70	50
136	74	100	72	90	72	46
137	74	108	133	83	65	32
138	45	90	20	65	20	65
139	50	35	55	25	25	15
140	70	70	70	70	70	70
141	70	70	70	70	70	70
142	70	70	70	70	70	70
143	70	70	70	70	70	70
144	45	30	35	20	20	45
145	100	100	100	100	100	100
146	97	101	103	107	101	61
147	100	115	65	90	90	65
148	75	125	80	60	100	85
149	170	113	65	45	55	73
150	108	68	45	30	40	43
151	60	55	90	145	90	80
152	250	5	5	35	105	50
153	40	50	40	50	40	35
154	78	84	78	109	85	100
155	57	82	95	55	75	36
156	39	52	43	60	50	65
157	58	64	58	80	65	80
158	76	65	45	92	42	91
159	70	60	70	87	78	85
160	45	35	45	62	53	35
161	88	107	122	74	75	64
162	56	61	65	48	45	38
163	50	64	50	38	38	44
164	55	80	80	135	120	100
165	80	120	80	90	65	135
166	45	49	65	49	65	45
167	44	58	44	58	44	61
168	75	50	80	95	90	65
169	75	38	38	56	56	67
170	45	30	50	65	50	45
171	75	95	60	65	60	115
172	80	116	75	65	75	119
173	35	64	85	74	55	32
174	50	53	62	58	63	44
175	71	73	88	120	89	59
176	60	70	105	70	120	75
177	95	70	73	95	90	60
178	70	45	48	60	65	35
179	50	25	28	45	55	15
180	50	68	60	50	50	32
181	130	75	60	45	100	20
182	50	95	180	85	45	70
183	110	80	120	80	90	30
184	91	90	129	90	72	108
185	58	50	145	95	105	30
186	30	30	42	30	42	70
187	60	85	60	85	60	55
188	51	52	90	82	110	100
189	105	140	95	55	65	45
190	122	130	69	80	69	30
191	43	80	65	50	35	35
192	65	55	95	65	95	35
193	98	87	105	53	85	67
194	68	67	55	43	55	77
195	43	29	131	29	131	37
196	43	29	31	29	31	37
197	40	27	60	37	50	66
198	97	132	77	62	67	43
199	47	82	57	42	47	63
200	86	81	97	81	107	43
201	70	85	55	85	95	85
202	67	125	40	30	30	58
203	63	120	85	90	55	55
204	120	70	110	75	120	85
205	48	61	40	61	40	50
206	85	90	80	70	80	130
207	81	55	78	90	58	49
208	65	80	80	59	63	58
209	70	105	125	65	75	45
210	80	50	50	95	135	105
211	55	70	40	60	40	40
212	50	50	95	40	50	35
213	72	80	49	40	49	40
214	60	95	50	145	130	30
215	40	45	40	55	40	84
216	70	95	65	85	65	121
217	39	52	43	60	50	65
218	57	80	115	50	80	95
219	70	90	90	135	90	125
220	105	140	55	30	55	95
221	105	160	55	30	55	135
222	105	140	55	30	55	95
223	105	30	105	140	105	55
224	78	75	75	70	70	52
225	70	90	45	15	45	50
226	97	113	109	157	127	77
227	78	107	75	100	100	70
228	67	58	57	81	67	101
229	60	60	50	40	50	75
230	52	65	50	45	50	38
231	70	65	65	55	55	90
232	45	55	45	65	45	75
233	75	69	72	114	100	104
234	50	180	20	180	20	150
235	50	70	160	70	160	90
236	50	150	50	150	50	150
237	50	95	90	95	90	180
238	90	70	80	70	95	70
239	75	75	60	83	60	60
240	38	40	52	40	72	27
241	70	131	100	86	90	40
242	100	120	120	150	100	90
243	100	100	120	150	120	90
244	50	100	150	100	150	50
245	85	56	77	50	77	78
246	10	55	25	35	45	95
247	80	80	110	95	80	40
248	48	48	48	48	48	48
249	60	110	70	60	60	110
250	35	85	45	35	35	75
251	52	53	60	78	78	33
252	150	100	115	65	65	35
253	90	120	120	60	60	50
254	50	35	80	50	90	30
255	59	110	150	45	49	35
256	90	90	100	70	80	75
257	90	100	90	80	70	75
258	65	75	90	97	123	44
259	88	120	75	100	75	142
260	61	84	65	70	70	70
261	91	134	95	100	100	80
262	68	80	50	60	50	102
263	78	60	85	135	91	36
264	70	90	110	60	75	95
265	41	64	45	50	50	50
266	90	115	90	48	68	74
267	28	60	30	40	30	82
268	150	80	44	90	54	80
269	90	50	34	60	44	70
270	60	85	40	30	45	68
271	65	60	55	95	55	90
272	60	48	45	43	90	42
273	77	120	90	60	90	48
274	72	80	100	60	90	88
275	62	44	50	44	50	55
276	125	100	80	85	75	55
277	125	100	80	85	75	55
278	35	100	50	50	70	120
279	100	70	70	65	65	45
280	65	40	50	125	60	30
281	70	95	115	120	50	85
282	58	109	112	48	48	109
283	40	70	130	60	130	25
284	97	157	127	113	109	77
285	45	100	135	65	135	45
286	20	40	90	30	90	25
287	60	50	70	50	90	65
288	50	65	85	35	35	55
289	65	85	70	75	70	40
290	85	115	80	105	80	50
291	55	55	50	45	65	55
292	75	80	110	65	90	50
293	75	80	70	65	50	130
294	35	60	44	40	54	55
295	60	50	90	80	120	60
296	65	83	57	95	85	105
297	75	123	67	95	85	95
298	40	45	40	65	40	65
299	60	50	70	80	80	150
300	45	63	37	65	55	95
301	55	55	55	85	55	30
302	110	123	65	100	65	65
303	55	75	60	75	60	103
304	84	86	88	111	101	60
305	74	115	70	135	80	106
306	74	115	110	135	100	46
307	115	115	85	90	75	100
308	70	135	105	60	105	20
309	95	60	60	101	60	105
310	65	65	60	130	95	110
311	62	48	54	63	60	68
312	140	85	95	145	95	130
313	255	115	250	125	250	130
314	110	135	60	50	65	88
315	60	40	80	60	45	40
316	95	95	85	125	75	55
317	104	91	63	91	73	68
318	65	100	100	70	60	75
319	50	65	107	105	107	86
320	52	90	55	58	62	60
321	120	90	70	110	70	60
322	65	90	65	61	61	100
323	20	15	20	10	55	80
324	40	45	40	62	60	60
325	85	105	100	79	83	78
326	44	50	91	24	86	10
327	74	94	131	54	116	20
328	88	91	82	70	125	99
329	37	55	70	30	55	65
330	70	45	40	45	40	75
331	49	49	56	49	61	66
332	70	55	55	80	60	45
333	82	115	74	75	64	90
334	70	110	80	95	60	70
335	65	130	60	95	110	65
336	62	73	55	56	52	84
337	45	50	43	40	38	62
338	30	35	30	55	30	75
339	85	105	55	85	50	115
340	54	45	47	75	98	52
341	61	80	63	60	63	83
342	78	65	68	112	154	75
343	55	55	55	135	135	135
344	80	100	80	80	80	100
345	40	55	35	50	35	35
346	69	55	45	55	55	15
347	75	90	140	60	60	40
348	66	117	70	40	50	67
349	65	75	45	35	45	55
350	55	40	50	65	85	40
351	41	56	40	62	44	71
352	54	63	52	83	56	97
353	70	80	70	80	70	110
354	70	65	60	125	90	65
355	50	65	107	105	107	86
356	67	45	59	63	40	36
357	75	80	60	65	90	102
358	85	76	64	45	55	90
359	68	90	65	50	55	82
360	90	85	85	125	100	95
361	60	55	100	65	100	30
362	70	90	45	15	45	50
363	52	95	55	58	62	55
364	78	70	61	50	61	100
365	50	65	55	40	40	40
366	90	85	90	100	125	90
367	50	85	55	65	65	90
368	65	100	70	80	80	105
369	95	100	95	100	70	30
370	95	65	80	110	110	30
371	90	65	65	40	40	15
372	109	81	99	66	84	32
373	65	90	120	85	70	60
374	38	55	85	30	65	30
375	90	125	90	85	90	100
376	38	30	41	30	41	60
377	68	125	65	65	115	80
378	70	77	60	97	60	108
379	80	95	82	60	82	75
380	108	130	95	80	85	102
381	68	65	65	125	115	80
382	100	100	130	45	90	35
383	30	35	30	100	35	80
384	111	83	68	92	82	39
385	71	120	95	120	95	99
386	60	65	60	130	75	110
387	40	80	100	30	30	20
388	87	60	95	133	91	84
389	58	70	45	40	45	42
390	85	135	130	60	80	25
391	45	30	70	75	70	10
392	45	30	25	75	45	80
393	70	80	65	90	65	85
394	150	100	120	100	120	90
395	150	120	100	120	100	90
396	65	60	110	130	95	65
397	80	80	80	80	80	80
398	49	55	42	42	37	85
399	100	145	130	65	110	30
400	65	75	105	35	65	85
401	48	35	42	105	60	60
402	83	55	90	130	81	86
403	75	95	125	45	75	95
404	60	65	70	85	75	40
405	123	100	62	97	81	68
406	75	80	70	65	75	90
407	45	67	60	35	50	63
408	80	82	78	95	80	85
409	80	120	130	55	65	45
410	59	74	50	35	50	35
411	75	125	140	60	90	40
412	89	124	80	55	80	55
413	90	100	70	110	150	80
414	45	50	35	55	75	40
415	55	84	105	114	75	52
416	40	40	60	40	60	10
417	45	30	50	55	65	45
418	70	55	95	95	110	65
419	60	45	70	75	85	55
420	105	115	121	65	93	91
421	65	90	122	58	75	84
422	75	95	122	58	75	69
423	55	85	122	58	75	99
424	85	100	122	58	75	54
425	63	95	65	80	72	110
426	90	120	75	60	60	45
427	80	118	90	70	80	42
428	55	95	115	45	45	35
429	115	131	131	53	53	87
430	50	61	60	30	55	34
431	120	95	95	55	75	20
432	72	95	67	103	71	122
433	80	80	50	40	50	25
434	95	120	65	95	75	60
435	50	65	50	40	40	65
436	75	89	85	55	65	36
437	100	150	140	100	90	90
438	50	65	45	85	65	95
439	55	70	45	70	50	60
440	47	62	45	55	45	46
441	80	45	65	90	110	80
442	70	43	53	43	53	40
443	88	110	60	55	60	45
444	85	105	85	40	50	40
445	223	101	53	97	53	43
446	95	125	79	60	100	81
447	55	75	90	65	70	65
448	100	5	5	15	65	30
449	144	120	60	40	60	50
450	42	30	45	56	53	39
451	57	90	95	136	103	29
452	57	40	65	86	73	49
453	45	50	45	115	55	95
454	78	92	75	74	63	118
455	76	147	90	60	70	97
456	50	65	107	105	107	86
457	85	97	66	105	66	65
458	91	90	106	130	106	77
459	62	55	52	109	94	109
460	44	38	33	61	43	70
461	80	125	75	40	95	85
462	65	80	65	35	65	60
463	68	72	78	38	42	32
464	108	112	118	68	72	47
465	95	115	80	95	80	90
466	95	127	184	34	36	38
467	110	83	70	112	70	65
468	88	112	80	95	95	60
469	60	50	70	80	80	150
470	80	100	100	110	150	60
471	60	75	45	65	50	55
472	70	105	75	50	75	105
473	65	95	85	55	55	85
474	90	108	80	100	65	85
475	58	75	83	83	113	40
476	55	95	55	35	75	115
477	73	84	78	119	85	95
478	40	30	50	55	55	100
479	55	100	60	125	60	110
480	35	60	40	85	40	70
481	50	105	79	35	110	76
482	50	120	53	35	110	87
483	50	95	95	35	110	70
484	106	130	90	110	154	90
485	100	125	52	105	52	71
486	45	80	100	35	37	28
487	80	110	60	150	130	70
488	80	160	60	170	130	80
489	60	30	30	36	56	50
490	35	35	40	35	55	50
491	30	40	70	70	25	60
492	75	90	50	110	80	95
493	45	60	30	80	50	65
494	72	101	100	50	97	68
495	55	104	105	94	75	52
496	106	80	110	120	80	44
497	92	105	90	125	90	98
498	85	73	70	73	115	67
499	90	30	15	40	20	15
500	65	47	75	73	85	85
501	45	45	30	55	40	50
502	95	115	90	80	90	60
503	70	55	65	95	105	85
504	60	65	55	105	95	95
505	76	104	71	104	71	108
506	53	54	53	37	46	45
507	70	85	65	125	65	120
508	90	120	80	68	108	124
509	56	80	114	124	60	136
510	90	72	100	122	108	98
511	154	140	108	50	68	50
512	94	80	86	122	80	108
513	90	130	88	70	108	104
514	80	70	60	140	110	110
515	100	134	110	70	84	72
516	90	112	120	72	70	106
517	74	130	90	120	60	116
518	60	62	63	80	80	60
519	45	55	65	45	45	45
520	100	60	70	85	105	60
521	115	45	20	45	25	20
522	100	100	100	100	100	100
523	65	65	60	110	95	130
524	50	47	50	57	50	65
525	75	55	70	55	95	110
526	65	50	35	115	95	95
527	30	80	90	55	45	55
528	60	115	105	65	70	80
529	40	35	30	120	70	105
530	45	25	50	25	25	35
531	105	95	80	40	80	90
532	50	75	45	40	45	60
533	59	181	131	59	31	109
534	60	90	70	60	120	40
535	91	72	90	129	90	108
536	91	72	90	129	90	108
537	70	70	60	105	60	125
538	100	135	120	60	85	50
539	75	95	95	95	95	85
540	55	130	115	50	50	75
541	38	35	35	65	55	50
542	60	80	95	70	85	50
543	70	100	115	35	55	75
544	70	135	95	45	70	85
545	57	80	91	80	87	75
546	40	55	70	45	60	30
547	60	100	115	70	85	90
548	40	65	95	60	45	35
549	65	115	65	75	95	65
550	75	110	125	100	105	85
551	100	135	115	85	100	135
552	30	105	90	25	25	50
553	37	25	41	25	41	25
554	77	85	51	55	51	65
555	60	82	45	45	45	74
556	95	117	80	65	70	92
557	60	90	60	53	50	72
558	100	100	90	150	140	90
559	125	130	90	130	90	95
560	60	90	140	50	50	40
561	60	40	60	95	60	55
562	89	125	90	115	80	101
563	89	145	90	105	80	91
564	125	58	58	76	76	67
565	130	85	80	85	95	60
566	55	85	55	50	55	60
567	50	64	50	45	50	41
568	80	80	90	110	130	110
569	80	90	80	130	110	110
570	65	110	130	60	65	95
571	75	103	80	70	80	92
572	54	45	40	35	45	35
573	55	35	50	55	110	85
574	40	20	30	40	80	55
575	110	85	95	80	95	50
576	90	55	75	60	75	30
577	64	88	50	88	50	106
578	66	41	77	61	87	23
579	70	60	75	110	75	90
580	45	60	45	25	45	55
581	78	70	61	50	61	100
582	62	50	58	73	54	72
583	45	65	40	60	40	70
584	50	30	55	65	55	20
585	71	102	78	52	55	92
586	60	50	50	60	70	50
587	65	76	84	54	96	105
588	40	30	30	40	50	30
589	84	71	43	71	43	48
590	70	110	70	115	70	90
591	80	70	70	90	100	70
592	106	90	130	90	154	110
593	69	69	76	69	86	91
594	137	113	89	137	107	97
595	90	55	65	95	85	70
596	70	105	90	80	90	45
597	43	30	55	40	65	97
598	60	85	49	60	49	60
599	80	120	79	95	79	70
600	75	117	65	55	65	110
601	75	115	65	55	65	112
602	85	115	75	55	75	82
603	80	120	90	60	70	85
604	90	130	80	65	85	55
605	80	100	70	50	60	45
606	70	80	50	35	35	35
607	45	75	37	70	55	83
608	60	50	120	90	80	30
609	80	95	115	130	115	65
610	20	10	55	15	20	80
611	65	95	57	100	85	93
612	75	95	67	125	95	83
613	25	35	70	95	55	45
614	50	60	95	120	70	70
615	70	70	115	130	90	60
616	72	60	30	20	30	25
617	86	92	88	68	75	73
618	110	130	80	70	60	80
619	100	100	100	100	100	100
620	110	65	105	55	95	80
621	70	75	60	105	60	105
622	40	80	35	35	45	70
623	85	40	70	80	140	70
624	45	20	50	60	120	50
625	75	86	67	106	67	60
626	50	53	62	43	52	45
627	55	40	40	65	45	35
628	70	20	50	20	50	40
629	60	80	110	50	80	45
630	90	125	80	90	90	125
631	70	85	70	60	70	50
632	60	78	60	40	51	51
633	70	60	62	100	82	80
634	74	75	70	65	75	111
635	74	75	70	65	75	111
636	50	85	85	55	55	50
637	60	60	75	60	75	80
638	30	40	55	40	55	60
639	90	132	105	132	105	30
640	65	150	60	115	60	115
641	80	135	85	70	95	150
642	70	140	230	60	80	50
643	55	50	65	175	105	150
644	75	110	110	110	105	80
645	90	95	105	165	110	45
646	103	60	126	80	126	50
647	64	165	75	93	83	75
648	65	150	40	15	80	145
649	79	103	120	135	115	78
650	80	160	80	130	80	100
651	70	120	100	145	105	20
652	78	130	111	130	85	100
653	78	104	78	159	115	100
654	50	160	110	160	110	110
655	68	165	95	65	115	110
656	108	170	115	120	95	92
657	68	85	65	165	135	100
658	60	65	80	170	95	130
659	80	120	80	120	80	100
660	95	155	109	70	130	81
661	80	185	115	40	105	75
662	75	90	90	140	90	115
663	105	125	100	60	100	100
664	80	100	120	140	150	110
665	80	130	100	160	120	110
666	65	136	94	54	96	135
667	70	145	88	140	70	112
668	70	75	80	135	80	135
669	50	105	125	55	95	50
670	60	100	85	80	85	100
671	80	145	150	105	110	110
672	106	190	100	154	100	130
673	106	150	70	194	120	140
674	83	80	80	135	80	121
675	65	155	120	65	90	105
676	105	180	100	180	100	115
677	50	85	125	85	115	20
678	95	145	130	120	90	120
679	70	110	75	145	85	145
680	70	150	140	65	100	75
681	70	140	70	110	65	105
682	95	75	180	130	80	30
683	75	125	230	55	95	30
684	100	150	110	95	110	70
685	100	164	150	95	120	71
686	80	100	123	122	120	80
687	80	82	100	83	100	80
688	135	143	143	80	65	34
689	100	77	77	128	128	90
690	100	128	90	77	77	128
691	46	65	65	55	35	34
692	76	110	70	81	70	123
693	74	48	76	83	81	104
694	74	48	76	83	81	104
695	40	45	35	40	40	90
696	80	105	105	105	105	80
697	80	135	130	95	90	70
698	60	75	100	55	80	50
699	50	20	55	25	25	30
700	100	100	100	100	100	100
701	106	110	90	154	90	130
702	45	85	50	55	50	65
703	65	125	60	95	60	105
704	70	90	70	60	60	70
705	45	40	40	50	61	34
706	95	60	79	100	125	81
707	95	80	105	40	70	100
708	55	90	80	50	105	96
709	55	50	40	40	40	75
710	60	100	60	100	60	120
711	60	60	100	60	100	60
712	60	40	50	75	85	95
713	100	85	100	135	115	135
714	60	60	60	85	85	85
715	60	60	60	105	105	105
716	90	100	90	125	85	90
717	64	78	52	78	52	81
718	40	35	55	65	75	15
719	65	60	45	75	55	70
720	58	95	58	70	58	97
721	58	95	58	70	58	97
722	70	94	50	94	50	66
723	50	65	107	105	107	86
724	70	100	70	45	55	45
725	50	70	50	50	50	40
726	100	125	100	55	85	35
727	105	105	75	65	100	50
728	135	85	40	40	85	5
729	88	75	66	130	90	106
730	76	25	45	67	55	24
731	60	85	42	85	42	91
732	116	55	85	107	95	29
733	55	55	75	35	35	25
734	60	60	100	35	65	35
735	73	73	73	127	73	121
736	40	50	45	70	45	70
737	97	107	101	127	89	79
738	40	28	28	47	52	50
739	81	102	77	85	75	85
740	90	92	87	75	85	76
741	70	62	67	55	55	56
742	61	72	57	55	55	65
743	109	53	47	127	131	103
744	31	45	90	30	30	40
745	73	76	75	81	100	100
746	61	90	45	50	50	160
747	100	50	50	86	96	70
748	40	30	35	45	40	55
749	85	70	80	97	80	123
750	30	45	135	45	90	30
751	60	60	40	65	45	35
752	70	70	40	60	40	60
753	33	46	40	21	25	45
754	93	90	101	60	81	95
755	75	105	75	105	75	45
756	45	50	55	75	65	30
757	80	120	84	60	96	110
758	80	120	84	60	96	110
759	80	120	84	60	96	110
760	80	120	84	60	96	110
761	115	90	70	59	90	65
762	110	100	75	59	80	65
763	88	128	115	58	86	80
764	35	40	100	90	55	35
765	70	60	125	115	70	55
766	35	45	160	30	45	70
767	90	60	80	90	110	60
768	60	45	110	80	120	90
769	75	70	70	98	70	93
770	75	70	70	98	70	93
771	75	70	70	98	70	93
772	75	70	70	98	70	93
773	70	85	145	60	55	65
774	55	55	45	63	45	45
775	85	115	95	65	65	85
776	45	65	40	30	40	60
777	60	45	70	45	90	95
778	100	160	97	106	87	100
779	100	70	72	53	62	100
780	55	45	45	25	25	15
781	90	120	100	150	120	100
782	90	100	100	150	120	120
783	85	75	110	100	75	35
784	75	65	55	65	55	69
785	67	82	62	46	48	43
786	95	124	78	69	71	58
787	50	53	48	53	48	64
788	50	53	48	53	48	64
789	50	53	48	53	48	64
790	35	70	55	45	55	25
791	60	95	80	60	80	30
792	65	75	70	65	85	75
793	45	80	50	75	60	120
794	100	120	90	40	60	80
795	45	55	39	35	39	42
796	45	50	20	40	25	60
797	60	75	40	50	40	85
798	70	115	70	70	60	105
799	45	85	70	40	40	60
800	88	88	160	88	88	88
801	60	50	100	95	70	65
802	70	110	100	50	60	50
803	65	70	60	65	65	115
804	45	35	50	70	50	30
805	90	60	60	40	40	40
806	43	70	48	50	60	38
807	71	137	37	137	37	151
808	80	80	80	80	80	80
809	20	40	15	35	35	60
810	83	80	75	70	70	101
811	63	60	55	50	50	71
812	40	45	40	35	35	56
813	50	55	50	36	30	43
814	90	93	55	70	55	55
815	35	55	40	50	50	90
816	35	75	30	30	30	65
817	100	100	80	60	60	50
818	48	101	95	91	85	15
819	50	65	90	35	35	15
820	65	125	100	55	70	85
821	53	51	53	61	56	40
822	60	50	40	85	75	95
823	67	73	67	73	67	73
824	90	75	75	90	100	70
825	40	50	40	40	40	90
826	65	65	65	50	50	90
827	90	95	95	70	90	70
828	40	45	45	74	54	50
829	60	65	65	134	114	70
830	50	85	55	65	65	90
831	35	55	35	30	30	35
832	50	54	54	66	56	40
833	65	60	70	85	75	40
834	85	80	70	135	75	90
835	85	80	90	105	95	60
836	100	180	160	150	90	90
837	100	150	90	180	160	90
838	80	74	74	126	116	60
839	65	105	60	60	70	95
840	64	66	68	81	76	50
841	60	55	145	75	150	40
842	50	52	48	65	50	55
843	49	66	70	44	55	51
844	54	66	70	44	55	46
845	44	66	70	44	55	56
846	59	66	70	44	55	41
847	70	84	70	65	70	51
848	41	50	37	50	37	66
849	71	82	64	64	59	112
850	86	68	72	109	66	106
851	55	60	130	30	130	5
852	95	85	85	65	65	35
853	85	120	80	85	75	85
854	55	65	45	50	45	50
855	70	85	65	65	60	65
856	58	64	58	80	65	80
857	61	78	95	56	58	57
858	65	95	85	55	55	85
859	65	86	60	55	60	94
860	75	50	85	115	100	45
861	125	73	91	137	89	75
862	60	90	55	90	80	110
863	90	85	75	115	100	115
864	28	25	25	45	35	40
865	97	165	60	65	50	58
866	65	100	70	80	80	105
867	55	81	60	50	70	97
868	30	56	35	25	35	72
869	105	150	90	150	90	95
870	80	50	100	100	200	50
871	200	100	50	100	50	80
872	80	100	50	100	50	200
873	110	160	110	80	110	100
874	80	100	200	50	100	50
875	80	75	150	75	150	50
876	100	90	130	45	65	55
877	41	50	60	31	58	30
878	35	65	35	65	35	65
879	100	120	100	150	120	90
880	110	65	75	125	85	30
881	80	119	90	54	67	90
882	105	130	120	45	45	40
883	80	85	95	30	30	25
884	115	140	130	55	55	40
885	60	55	60	95	70	124
886	100	125	90	60	70	85
887	40	70	40	35	40	60
888	105	139	71	55	101	119
889	45	65	40	30	40	60
890	55	75	85	25	25	15
891	30	40	50	40	50	30
892	38	47	35	33	35	57
893	50	60	45	100	80	65
894	60	70	65	125	105	90
895	50	50	77	95	77	91
896	68	55	55	50	50	42
897	70	83	50	37	50	60
898	58	95	145	50	105	30
899	50	75	75	65	65	50
900	95	135	80	110	80	100
901	48	44	40	71	40	77
902	68	64	60	111	60	117
903	95	100	85	108	70	70
904	72	107	125	65	70	71
905	50	72	35	35	35	65
906	50	75	85	20	30	40
907	75	100	110	45	55	65
908	85	81	97	121	85	101
909	55	55	80	70	45	15
910	75	125	75	30	75	85
911	80	100	70	60	70	95
912	38	35	40	27	25	35
913	70	85	65	105	85	120
914	70	130	100	55	80	65
915	60	100	89	55	69	112
916	50	71	40	40	40	69
917	65	108	65	108	65	75
918	65	90	115	45	115	58
919	50	75	70	35	70	48
920	115	65	99	65	115	111
921	70	110	80	55	80	105
922	55	65	95	95	45	85
923	80	92	65	65	80	68
924	90	60	70	75	70	45
925	40	40	50	30	30	30
926	65	45	55	45	70	45
927	105	95	75	85	75	74
928	35	46	34	35	45	20
929	75	75	95	75	95	113
930	60	60	75	60	75	83
931	73	100	60	100	60	65
932	45	53	70	40	60	42
933	70	120	40	95	40	95
934	100	100	100	100	100	100
935	100	103	75	120	75	127
936	1	90	45	30	30	40
937	65	95	100	60	50	50
938	30	65	100	45	25	40
939	76	48	48	57	62	34
940	50	40	85	40	65	25
941	30	42	118	42	88	30
942	90	100	60	90	60	80
943	60	45	80	90	100	30
944	45	65	34	40	34	45
945	40	65	35	40	35	75
946	60	40	60	40	60	35
947	20	10	230	10	230	5
948	44	75	35	63	33	45
949	72	58	80	103	80	97
950	50	35	55	25	25	15
951	52	57	75	35	50	46
952	95	95	95	95	95	95
953	75	98	63	98	63	101
954	75	98	63	98	63	101
955	75	98	63	98	63	101
956	71	60	106	121	80	70
957	40	45	45	74	54	50
958	50	65	45	50	50	45
959	65	80	140	40	70	70
960	104	75	100	110	75	66
961	66	65	48	62	57	52
962	55	45	50	45	65	80
963	50	45	45	35	35	50
964	40	50	90	30	55	65
965	50	60	60	60	60	30
966	103	93	67	71	61	84
967	70	55	55	35	35	25
968	150	160	100	95	65	100
969	60	60	60	35	35	30
970	68	75	53	83	113	60
971	85	135	79	85	105	81
972	95	75	110	100	80	30
973	95	75	80	100	110	30
974	90	65	65	40	40	15
975	40	40	40	70	40	20
976	82	80	86	85	75	72
977	55	20	35	20	45	75
978	41	35	45	58	51	30
979	45	30	15	85	65	65
980	55	95	55	35	75	115
981	80	130	60	40	80	120
982	45	45	55	45	55	63
983	30	25	35	45	30	20
984	160	110	65	65	110	30
985	50	50	50	50	50	50
986	60	62	50	62	60	40
987	60	80	50	40	40	30
988	50	40	40	70	40	70
989	137	137	107	113	89	97
990	45	30	40	105	50	20
991	90	95	85	55	65	70
992	40	60	30	31	31	70
993	100	65	60	145	80	130
994	45	22	60	27	30	29
995	70	40	50	55	50	25
996	60	79	92	52	86	35
997	40	60	40	40	40	30
998	60	60	60	60	60	60
999	50	92	108	92	108	35
1000	60	25	35	70	80	60
1001	40	61	54	45	45	65
1002	78	52	60	63	65	23
1003	82	96	51	45	51	92
1004	82	96	51	45	51	92
1005	82	96	51	45	51	92
1006	82	96	51	45	51	92
1007	44	48	65	50	64	43
1008	61	131	211	53	101	13
1009	73	95	62	85	65	85
1010	85	120	70	50	60	100
1011	55	75	50	40	40	80
1012	40	55	30	30	30	60
1013	60	75	85	100	85	115
1014	30	45	55	70	55	85
1015	75	85	200	55	65	30
1016	52	40	48	40	48	62
1017	100	125	135	20	20	70
1018	85	110	90	45	90	80
1019	70	75	50	45	50	50
1020	109	66	84	81	99	32
1021	63	63	47	41	41	74
1022	70	100	115	30	65	30
1023	100	75	115	90	115	85
1024	75	75	55	105	85	30
1025	30	30	30	30	30	30
1026	40	30	32	50	52	65
1027	45	40	60	40	75	50
1028	55	63	90	50	80	42
1029	100	73	83	73	83	55
1030	100	110	90	85	90	60
1031	75	87	63	87	63	98
1032	60	85	60	75	50	125
1033	50	50	40	30	30	50
1034	62	48	66	59	57	49
1035	67	57	55	77	55	114
1036	95	65	65	110	130	60
1037	61	31	41	59	35	45
1038	40	55	30	30	30	85
1039	78	81	71	74	69	126
1040	50	50	45	40	45	75
1041	65	55	115	100	40	60
1042	100	100	125	110	50	50
1043	70	130	115	85	95	75
1044	70	75	115	95	130	85
1045	70	115	85	95	75	130
1046	70	85	75	130	115	95
1047	35	41	45	29	40	20
1048	68	50	60	120	95	82
1049	68	50	60	120	95	82
1050	68	50	60	120	95	82
1051	75	100	95	40	70	110
1052	75	110	105	30	70	100
1053	75	110	105	30	70	100
1054	75	110	105	30	70	100
1055	60	80	50	50	50	40
1056	40	40	35	50	100	70
1057	80	70	65	80	120	100
1058	65	63	45	45	45	45
1059	90	65	85	65	85	60
1060	160	105	110	130	110	85
1061	95	95	110	105	110	85
1062	91	129	90	72	90	108
1063	70	58	58	87	92	90
1064	120	100	85	30	85	45
1065	79	115	70	125	80	111
1066	79	105	70	145	80	101
1067	70	85	70	55	60	80
1068	75	80	55	25	35	35
1069	155	110	125	55	80	45
1070	50	45	45	35	64	58
1071	85	75	77	70	105	94
1072	65	55	55	45	82	78
1073	54	78	103	53	45	22
1074	40	40	35	50	100	70
1075	80	70	65	80	120	100
1076	65	98	63	40	73	96
1077	85	50	95	120	115	80
1078	35	20	65	40	65	20
1079	55	40	85	80	105	40
1080	45	60	40	70	50	45
1081	70	85	140	85	70	20
1082	79	115	70	125	80	111
1083	79	100	80	110	90	121
1084	65	85	50	80	50	90
1085	95	109	105	75	85	56
1086	50	65	64	44	48	43
1087	80	120	75	75	75	60
1088	50	63	152	53	142	35
1089	40	38	35	54	35	40
1090	83	106	65	86	65	85
1091	75	98	70	114	70	75
1092	75	98	70	114	70	75
1093	62	77	62	50	42	65
1094	45	100	45	45	45	10
1095	40	45	35	65	55	70
1096	85	110	76	65	82	56
1097	99	68	83	72	87	51
1098	50	50	62	40	62	65
1099	55	85	50	40	50	75
1100	72	120	98	50	98	72
1101	60	78	135	91	85	36
1102	55	68	64	45	55	31
1103	50	50	40	50	40	64
1104	35	55	40	45	40	60
1105	78	84	78	109	85	100
1106	100	134	110	95	100	61
1107	82	121	119	69	59	71
1108	35	35	35	35	35	35
1109	58	89	77	45	45	48
1110	97	167	97	167	97	129
1111	95	65	110	60	130	65
1112	80	115	80	65	55	93
1113	48	72	48	72	48	48
1114	130	140	105	45	80	50
1115	113	70	120	135	65	52
1116	90	130	75	75	75	55
1117	100	130	100	63	60	97
1118	100	130	100	63	60	97
1119	75	75	130	75	130	95
1120	51	65	65	80	75	59
1121	36	50	50	65	60	44
1122	71	95	85	110	95	79
1123	130	65	60	110	95	65
1124	45	70	63	30	45	47
1125	90	102	73	78	65	70
1126	30	45	59	30	39	57
1127	70	65	60	90	75	90
1128	60	55	50	40	55	45
1129	80	82	83	100	100	80
1130	70	80	102	80	102	40
1131	50	70	50	50	50	70
1132	100	100	100	100	100	100
1133	80	105	65	100	70	70
1134	80	80	80	55	55	90
1135	77	70	90	145	75	43
1136	75	80	85	110	90	50
1137	91	90	72	90	129	108
1138	80	52	50	90	50	89
1139	65	73	75	47	85	85
1140	80	110	120	130	90	70
1141	85	60	65	135	105	100
1142	40	30	50	55	55	100
1143	70	55	75	45	65	60
1144	38	41	40	50	65	65
1145	130	70	35	70	35	60
1146	170	90	45	90	45	60
1147	99	83	91	125	83	109
1148	110	80	90	95	90	65
1149	59	63	80	65	80	58
1150	50	65	107	105	107	86
1151	60	85	69	60	69	77
1152	40	40	35	55	40	70
1153	70	120	65	45	85	125
1154	40	35	30	20	20	50
1155	65	90	50	85	45	55
1156	65	90	120	85	70	60
1157	60	67	85	77	75	116
1158	40	55	99	40	79	47
1159	110	78	73	76	71	60
1160	64	51	23	51	23	28
1161	125	120	90	170	100	95
1162	140	70	45	85	50	45
1163	10	55	25	35	25	95
1164	25	35	40	20	30	80
1165	40	30	30	55	30	85
1166	45	140	130	140	135	30
1167	45	20	20	25	25	40
1168	85	85	100	95	135	70
1169	190	33	58	33	58	33
1170	65	45	43	55	43	72
1171	42	40	55	40	45	48
1172	55	45	45	25	25	15
1173	60	59	85	79	105	36
1174	60	79	105	59	85	36
1175	60	69	95	69	95	36
1176	35	100	50	50	70	120
1177	45	45	35	20	30	20
1178	95	23	48	23	48	23
1179	103	105	72	105	75	65
1180	65	75	70	95	70	95
1181	126	131	95	131	98	99
1182	83	89	71	173	71	83
1183	38	30	85	55	65	30
1184	59	45	50	40	50	26
1185	65	65	45	75	45	95
1186	86	76	86	116	56	95
1187	48	70	30	30	30	45
1188	126	131	95	131	98	99
1189	92	150	115	80	115	148
1190	92	120	115	80	115	138
1191	92	120	140	80	140	128
1192	92	120	115	80	115	138
1193	73	115	60	60	60	90
1194	90	90	85	125	90	100
1195	105	120	105	70	95	105
1196	75	100	63	80	63	116
1197	100	150	120	120	100	90
1198	88	112	75	102	80	143
1199	38	30	41	30	41	60
1200	60	105	60	120	60	105
1201	40	65	40	80	40	65
1202	40	45	35	30	40	55
1203	72	85	70	65	70	58
1204	54	100	71	61	85	115
1205	108	100	121	81	95	95
1206	216	100	121	91	95	85
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tokens (token_id, refresh_token, user_id) FROM stdin;
7	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5pY2tuYW1lIjoic2RhYXNkIiwiaWF0IjoxNzA5MDA3ODMxLCJleHAiOjE3MTE1OTk4MzF9.0uJBhrz5nmLe6x0NZbTbwGwWO44NMPABUdvlKJuwfAQ	1
6	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5pY2tuYW1lIjoicXdlcXdlIiwiaWF0IjoxNzA5MjYzNDU4LCJleHAiOjE3MTE4NTU0NTh9.z-FdHroA54mEoh96YHm2OjkStcBBiQoYWUiCKuN7MFg	2
8	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5pY2tuYW1lIjoidGVzdHRlc3QiLCJpYXQiOjE3MDkyNjc3MDAsImV4cCI6MTcxMTg1OTcwMH0.bMaQLfM26L28lpM2GjD1Vr-hycOMe_c20M3yWz1H10U	3
\.


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type (type_id, type_name) FROM stdin;
1	Bug
2	Dark
3	Dragon
4	Electric
5	Fairy
6	Fighting
7	Fire
8	Flying
9	Ghost
10	Grass
11	Ground
12	Ice
13	Normal
14	Poison
15	Psychic
16	Rock
17	Steel
18	Water
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, nickname, password) FROM stdin;
1	sdaasd	$2b$10$TCqsxMc2mSCVtJ099rRLz.8cUuPi3nhZXeQf6/TrlyVSGHG4nRwjq
2	qweqwe	$2b$10$Y3ypZprJRAdfiu5IYTONoeimRRycXKmD/YrVusvyUAnx4fqDNJBZ2
3	testtest	$2b$10$giVGIyuRIxAErW5LijQPV.2w8ZmNTLS80v2uHhzpmv7HDd9NuOz3S
\.


--
-- Name: abilities_ability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abilities_ability_id_seq', 306, true);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 704, true);


--
-- Name: evolutions_evolution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evolutions_evolution_id_seq', 3, true);


--
-- Name: genders_gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genders_gender_id_seq', 1, false);


--
-- Name: pokemons_abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemons_abilities_id_seq', 2707, true);


--
-- Name: pokemons_genders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemons_genders_id_seq', 2020, true);


--
-- Name: pokemons_pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemons_pokemon_id_seq', 1206, true);


--
-- Name: pokemons_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemons_types_id_seq', 1871, true);


--
-- Name: rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_id_seq', 2, true);


--
-- Name: stats_stat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_stat_id_seq', 1206, true);


--
-- Name: tokens_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tokens_token_id_seq', 8, true);


--
-- Name: type_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_type_id_seq', 18, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 3, true);


--
-- Name: abilities abilities_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abilities
    ADD CONSTRAINT abilities_pk PRIMARY KEY (ability_id);


--
-- Name: categories categories_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pk PRIMARY KEY (category_id);


--
-- Name: evolutions evolutions_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evolutions
    ADD CONSTRAINT evolutions_pk PRIMARY KEY (evolution_id);


--
-- Name: genders genders_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_pk PRIMARY KEY (gender_id);


--
-- Name: pokemons_abilities pokemons_abilities_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_abilities
    ADD CONSTRAINT pokemons_abilities_pk PRIMARY KEY (id);


--
-- Name: pokemons_genders pokemons_genders_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_genders
    ADD CONSTRAINT pokemons_genders_pk PRIMARY KEY (id);


--
-- Name: pokemons pokemons_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_pk PRIMARY KEY (pokemon_id);


--
-- Name: pokemons_types pokemons_types_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_pk PRIMARY KEY (id);


--
-- Name: pokemons pokemons_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_unique UNIQUE (stat_id);


--
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);


--
-- Name: stats stats_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pk PRIMARY KEY (stat_id);


--
-- Name: tokens tokens_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pk PRIMARY KEY (token_id);


--
-- Name: type type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pk PRIMARY KEY (type_id);


--
-- Name: users users_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (user_id);


--
-- Name: rating_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX rating_pk ON public.rating USING btree (id);


--
-- Name: pokemons_abilities pokemons_abilities_abilities_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_abilities
    ADD CONSTRAINT pokemons_abilities_abilities_fk FOREIGN KEY (ability_id) REFERENCES public.abilities(ability_id);


--
-- Name: pokemons_abilities pokemons_abilities_pokemons_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_abilities
    ADD CONSTRAINT pokemons_abilities_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);


--
-- Name: pokemons pokemons_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_categories_fk FOREIGN KEY (category_id) REFERENCES public.categories(category_id);


--
-- Name: pokemons pokemons_evolutions_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_evolutions_fk FOREIGN KEY (evolution_id) REFERENCES public.evolutions(evolution_id);


--
-- Name: pokemons_genders pokemons_genders_genders_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_genders
    ADD CONSTRAINT pokemons_genders_genders_fk FOREIGN KEY (gender_id) REFERENCES public.genders(gender_id);


--
-- Name: pokemons_genders pokemons_genders_pokemons_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_genders
    ADD CONSTRAINT pokemons_genders_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);


--
-- Name: pokemons pokemons_stats_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_stats_fk FOREIGN KEY (stat_id) REFERENCES public.stats(stat_id);


--
-- Name: pokemons_types pokemons_types_pokemons_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_pokemons_fk FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id);


--
-- Name: pokemons_types pokemons_types_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_type_fk FOREIGN KEY (type_id) REFERENCES public.type(type_id);


--
-- Name: rating rating_pokemon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pokemon_id_fkey FOREIGN KEY (pokemon_id) REFERENCES public.pokemons(pokemon_id) ON UPDATE CASCADE;


--
-- Name: rating rating_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE;


--
-- Name: tokens tokens_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_users_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

