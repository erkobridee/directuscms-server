--
-- PostgreSQL database dump
--

\restrict 8e0bm2jTGFLSPDt49uij4E9znHaEettjJaaeEaKfCaiRjXrRsdXsYfPyIyCHBRg

-- Dumped from database version 17.7
-- Dumped by pg_dump version 17.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_updated_foreign;
ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_created_foreign;
ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_collection_foreign;
ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_role_foreign;
ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_user_created_foreign;
ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_role_foreign;
ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_collection_foreign;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_storage_default_folder_foreign;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_registration_role_foreign;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_foreground_foreign;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_favicon_foreign;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_background_foreign;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_project_logo_foreign;
ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_user_foreign;
ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_share_foreign;
ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_parent_foreign;
ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_version_foreign;
ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_parent_foreign;
ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_activity_foreign;
ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_user_foreign;
ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_role_foreign;
ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_policy_foreign;
ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_user_created_foreign;
ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_dashboard_foreign;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_user_created_foreign;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_foreign;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_foreign;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_flow_foreign;
ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_sender_foreign;
ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_recipient_foreign;
ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_parent_foreign;
ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_user_created_foreign;
ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_uploaded_by_foreign;
ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_modified_by_foreign;
ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_folder_foreign;
ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_user_created_foreign;
ALTER TABLE ONLY public.directus_comments DROP CONSTRAINT directus_comments_user_updated_foreign;
ALTER TABLE ONLY public.directus_comments DROP CONSTRAINT directus_comments_user_created_foreign;
ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_group_foreign;
ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_user_foreign;
ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_role_foreign;
ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_policy_foreign;
DROP INDEX public.directus_revisions_parent_index;
DROP INDEX public.directus_revisions_activity_index;
DROP INDEX public.directus_activity_timestamp_index;
ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_pkey;
ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_token_unique;
ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_pkey;
ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_external_identifier_unique;
ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_email_unique;
ALTER TABLE ONLY public.directus_translations DROP CONSTRAINT directus_translations_pkey;
ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_pkey;
ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_pkey;
ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_pkey;
ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_pkey;
ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_pkey;
ALTER TABLE ONLY public.directus_relations DROP CONSTRAINT directus_relations_pkey;
ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_pkey;
ALTER TABLE ONLY public.directus_policies DROP CONSTRAINT directus_policies_pkey;
ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_pkey;
ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_pkey;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_unique;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_unique;
ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_pkey;
ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_pkey;
ALTER TABLE ONLY public.directus_migrations DROP CONSTRAINT directus_migrations_pkey;
ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_pkey;
ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_pkey;
ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_operation_unique;
ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_pkey;
ALTER TABLE ONLY public.directus_fields DROP CONSTRAINT directus_fields_pkey;
ALTER TABLE ONLY public.directus_extensions DROP CONSTRAINT directus_extensions_pkey;
ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_pkey;
ALTER TABLE ONLY public.directus_comments DROP CONSTRAINT directus_comments_pkey;
ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_pkey;
ALTER TABLE ONLY public.directus_activity DROP CONSTRAINT directus_activity_pkey;
ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_pkey;
ALTER TABLE public.directus_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_revisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_relations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_presets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.directus_activity ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.directus_versions;
DROP TABLE public.directus_users;
DROP TABLE public.directus_translations;
DROP TABLE public.directus_shares;
DROP SEQUENCE public.directus_settings_id_seq;
DROP TABLE public.directus_settings;
DROP TABLE public.directus_sessions;
DROP TABLE public.directus_roles;
DROP SEQUENCE public.directus_revisions_id_seq;
DROP TABLE public.directus_revisions;
DROP SEQUENCE public.directus_relations_id_seq;
DROP TABLE public.directus_relations;
DROP SEQUENCE public.directus_presets_id_seq;
DROP TABLE public.directus_presets;
DROP TABLE public.directus_policies;
DROP SEQUENCE public.directus_permissions_id_seq;
DROP TABLE public.directus_permissions;
DROP TABLE public.directus_panels;
DROP TABLE public.directus_operations;
DROP SEQUENCE public.directus_notifications_id_seq;
DROP TABLE public.directus_notifications;
DROP TABLE public.directus_migrations;
DROP TABLE public.directus_folders;
DROP TABLE public.directus_flows;
DROP TABLE public.directus_files;
DROP SEQUENCE public.directus_fields_id_seq;
DROP TABLE public.directus_fields;
DROP TABLE public.directus_extensions;
DROP TABLE public.directus_dashboards;
DROP TABLE public.directus_comments;
DROP TABLE public.directus_collections;
DROP SEQUENCE public.directus_activity_id_seq;
DROP TABLE public.directus_activity;
DROP TABLE public.directus_access;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: directus_access; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_access (
    id uuid NOT NULL,
    role uuid,
    "user" uuid,
    policy uuid NOT NULL,
    sort integer
);


ALTER TABLE public.directus_access OWNER TO admin;

--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    origin character varying(255)
);


ALTER TABLE public.directus_activity OWNER TO admin;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_activity_id_seq OWNER TO admin;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(64),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_collections OWNER TO admin;

--
-- Name: directus_comments; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_comments (
    id uuid NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


ALTER TABLE public.directus_comments OWNER TO admin;

--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


ALTER TABLE public.directus_dashboards OWNER TO admin;

--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);


ALTER TABLE public.directus_extensions OWNER TO admin;

--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text,
    searchable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.directus_fields OWNER TO admin;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_fields_id_seq OWNER TO admin;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    created_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json,
    uploaded_on timestamp with time zone
);


ALTER TABLE public.directus_files OWNER TO admin;

--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_flows OWNER TO admin;

--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


ALTER TABLE public.directus_folders OWNER TO admin;

--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.directus_migrations OWNER TO admin;

--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


ALTER TABLE public.directus_notifications OWNER TO admin;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_notifications_id_seq OWNER TO admin;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_operations OWNER TO admin;

--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(64) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_panels OWNER TO admin;

--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text,
    policy uuid NOT NULL
);


ALTER TABLE public.directus_permissions OWNER TO admin;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_permissions_id_seq OWNER TO admin;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_policies; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_policies (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'badge'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_policies OWNER TO admin;

--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(64) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


ALTER TABLE public.directus_presets OWNER TO admin;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_presets_id_seq OWNER TO admin;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


ALTER TABLE public.directus_relations OWNER TO admin;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_relations_id_seq OWNER TO admin;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


ALTER TABLE public.directus_revisions OWNER TO admin;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_revisions_id_seq OWNER TO admin;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    parent uuid
);


ALTER TABLE public.directus_roles OWNER TO admin;

--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);


ALTER TABLE public.directus_sessions OWNER TO admin;

--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json,
    visual_editor_urls json,
    project_id uuid,
    mcp_enabled boolean DEFAULT false NOT NULL,
    mcp_allow_deletes boolean DEFAULT false NOT NULL,
    mcp_prompts_collection character varying(255) DEFAULT NULL::character varying,
    mcp_system_prompt_enabled boolean DEFAULT true NOT NULL,
    mcp_system_prompt text,
    project_owner character varying(255),
    project_usage character varying(255),
    org_name character varying(255),
    product_updates boolean,
    project_status character varying(255),
    ai_openai_api_key text,
    ai_anthropic_api_key text,
    ai_system_prompt text
);


ALTER TABLE public.directus_settings OWNER TO admin;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_settings_id_seq OWNER TO admin;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


ALTER TABLE public.directus_shares OWNER TO admin;

--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.directus_translations OWNER TO admin;

--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json,
    text_direction character varying(255) DEFAULT 'auto'::character varying NOT NULL
);


ALTER TABLE public.directus_users OWNER TO admin;

--
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid,
    delta json
);


ALTER TABLE public.directus_versions OWNER TO admin;

--
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Data for Name: directus_access; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_access (id, role, "user", policy, sort) FROM stdin;
5e84dfc2-eb7f-49b5-ada8-6038f8a8c2a3	\N	\N	abf8a154-5b1c-4a46-ac9c-7300570f4f17	1
9f552855-3c38-4416-b7b0-01504cef2db0	3f3cef21-b0a7-4b77-b21d-e92931e80672	\N	540ee00f-5e8d-45e9-b737-2594631eaf88	\N
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, origin) FROM stdin;
1	login	6f80ba49-1630-403d-811a-9a0e0c119dbb	2026-01-27 15:21:57.197+00	172.19.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	directus_users	6f80ba49-1630-403d-811a-9a0e0c119dbb	http://localhost:8055
2	update	6f80ba49-1630-403d-811a-9a0e0c119dbb	2026-01-27 15:22:31.535+00	172.19.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	directus_settings	1	http://localhost:8055
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
\.


--
-- Data for Name: directus_comments; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_comments (id, collection, item, comment, date_created, date_updated, user_created, user_updated) FROM stdin;
\.


--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
\.


--
-- Data for Name: directus_extensions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
\.


--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message, searchable) FROM stdin;
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, created_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data, uploaded_on) FROM stdin;
\.


--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_folders; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_folders (id, name, parent) FROM stdin;
\.


--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
20201028A	Remove Collection Foreign Keys	2026-01-27 15:21:18.106509+00
20201029A	Remove System Relations	2026-01-27 15:21:18.113913+00
20201029B	Remove System Collections	2026-01-27 15:21:18.122521+00
20201029C	Remove System Fields	2026-01-27 15:21:18.135033+00
20201105A	Add Cascade System Relations	2026-01-27 15:21:18.213763+00
20201105B	Change Webhook URL Type	2026-01-27 15:21:18.224262+00
20210225A	Add Relations Sort Field	2026-01-27 15:21:18.232303+00
20210304A	Remove Locked Fields	2026-01-27 15:21:18.237319+00
20210312A	Webhooks Collections Text	2026-01-27 15:21:18.247963+00
20210331A	Add Refresh Interval	2026-01-27 15:21:18.252881+00
20210415A	Make Filesize Nullable	2026-01-27 15:21:18.263996+00
20210416A	Add Collections Accountability	2026-01-27 15:21:18.27023+00
20210422A	Remove Files Interface	2026-01-27 15:21:18.27367+00
20210506A	Rename Interfaces	2026-01-27 15:21:18.305444+00
20210510A	Restructure Relations	2026-01-27 15:21:18.329745+00
20210518A	Add Foreign Key Constraints	2026-01-27 15:21:18.33888+00
20210519A	Add System Fk Triggers	2026-01-27 15:21:18.384558+00
20210521A	Add Collections Icon Color	2026-01-27 15:21:18.389347+00
20210525A	Add Insights	2026-01-27 15:21:18.407603+00
20210608A	Add Deep Clone Config	2026-01-27 15:21:18.412392+00
20210626A	Change Filesize Bigint	2026-01-27 15:21:18.427587+00
20210716A	Add Conditions to Fields	2026-01-27 15:21:18.432422+00
20210721A	Add Default Folder	2026-01-27 15:21:18.440637+00
20210802A	Replace Groups	2026-01-27 15:21:18.446345+00
20210803A	Add Required to Fields	2026-01-27 15:21:18.452057+00
20210805A	Update Groups	2026-01-27 15:21:18.457121+00
20210805B	Change Image Metadata Structure	2026-01-27 15:21:18.462051+00
20210811A	Add Geometry Config	2026-01-27 15:21:18.466572+00
20210831A	Remove Limit Column	2026-01-27 15:21:18.471133+00
20210903A	Add Auth Provider	2026-01-27 15:21:18.492243+00
20210907A	Webhooks Collections Not Null	2026-01-27 15:21:18.502429+00
20210910A	Move Module Setup	2026-01-27 15:21:18.508909+00
20210920A	Webhooks URL Not Null	2026-01-27 15:21:18.519238+00
20210924A	Add Collection Organization	2026-01-27 15:21:18.528353+00
20210927A	Replace Fields Group	2026-01-27 15:21:18.540291+00
20210927B	Replace M2M Interface	2026-01-27 15:21:18.543985+00
20210929A	Rename Login Action	2026-01-27 15:21:18.547475+00
20211007A	Update Presets	2026-01-27 15:21:18.556157+00
20211009A	Add Auth Data	2026-01-27 15:21:18.560527+00
20211016A	Add Webhook Headers	2026-01-27 15:21:18.564552+00
20211103A	Set Unique to User Token	2026-01-27 15:21:18.569464+00
20211103B	Update Special Geometry	2026-01-27 15:21:18.573101+00
20211104A	Remove Collections Listing	2026-01-27 15:21:18.577966+00
20211118A	Add Notifications	2026-01-27 15:21:18.595631+00
20211211A	Add Shares	2026-01-27 15:21:18.620242+00
20211230A	Add Project Descriptor	2026-01-27 15:21:18.6253+00
20220303A	Remove Default Project Color	2026-01-27 15:21:18.636595+00
20220308A	Add Bookmark Icon and Color	2026-01-27 15:21:18.641798+00
20220314A	Add Translation Strings	2026-01-27 15:21:18.646297+00
20220322A	Rename Field Typecast Flags	2026-01-27 15:21:18.651223+00
20220323A	Add Field Validation	2026-01-27 15:21:18.655864+00
20220325A	Fix Typecast Flags	2026-01-27 15:21:18.660736+00
20220325B	Add Default Language	2026-01-27 15:21:18.673723+00
20220402A	Remove Default Value Panel Icon	2026-01-27 15:21:18.684653+00
20220429A	Add Flows	2026-01-27 15:21:18.716901+00
20220429B	Add Color to Insights Icon	2026-01-27 15:21:18.721711+00
20220429C	Drop Non Null From IP of Activity	2026-01-27 15:21:18.726827+00
20220429D	Drop Non Null From Sender of Notifications	2026-01-27 15:21:18.733032+00
20220614A	Rename Hook Trigger to Event	2026-01-27 15:21:18.737305+00
20220801A	Update Notifications Timestamp Column	2026-01-27 15:21:18.748146+00
20220802A	Add Custom Aspect Ratios	2026-01-27 15:21:18.752477+00
20220826A	Add Origin to Accountability	2026-01-27 15:21:18.758875+00
20230401A	Update Material Icons	2026-01-27 15:21:18.774817+00
20230525A	Add Preview Settings	2026-01-27 15:21:18.780234+00
20230526A	Migrate Translation Strings	2026-01-27 15:21:18.79195+00
20230721A	Require Shares Fields	2026-01-27 15:21:18.805405+00
20230823A	Add Content Versioning	2026-01-27 15:21:18.851958+00
20230927A	Themes	2026-01-27 15:21:18.886388+00
20231009A	Update CSV Fields to Text	2026-01-27 15:21:18.894595+00
20231009B	Update Panel Options	2026-01-27 15:21:18.899035+00
20231010A	Add Extensions	2026-01-27 15:21:18.905853+00
20231215A	Add Focalpoints	2026-01-27 15:21:18.911233+00
20240122A	Add Report URL Fields	2026-01-27 15:21:18.916733+00
20240204A	Marketplace	2026-01-27 15:21:18.954844+00
20240305A	Change Useragent Type	2026-01-27 15:21:18.974344+00
20240311A	Deprecate Webhooks	2026-01-27 15:21:18.989043+00
20240422A	Public Registration	2026-01-27 15:21:18.998573+00
20240515A	Add Session Window	2026-01-27 15:21:19.003177+00
20240701A	Add Tus Data	2026-01-27 15:21:19.008926+00
20240716A	Update Files Date Fields	2026-01-27 15:21:19.019707+00
20240806A	Permissions Policies	2026-01-27 15:21:19.074972+00
20240817A	Update Icon Fields Length	2026-01-27 15:21:19.12091+00
20240909A	Separate Comments	2026-01-27 15:21:19.134637+00
20240909B	Consolidate Content Versioning	2026-01-27 15:21:19.139309+00
20240924A	Migrate Legacy Comments	2026-01-27 15:21:19.147826+00
20240924B	Populate Versioning Deltas	2026-01-27 15:21:19.15292+00
20250224A	Visual Editor	2026-01-27 15:21:19.15839+00
20250609A	License Banner	2026-01-27 15:21:19.164205+00
20250613A	Add Project ID	2026-01-27 15:21:19.177313+00
20250718A	Add Direction	2026-01-27 15:21:19.182102+00
20250813A	Add MCP	2026-01-27 15:21:19.188585+00
20251012A	Add Field Searchable	2026-01-27 15:21:19.193541+00
20251014A	Add Project Owner	2026-01-27 15:21:19.245264+00
20251028A	Add Retention Indexes	2026-01-27 15:21:19.301425+00
20251103A	Add AI Settings	2026-01-27 15:21:19.307275+00
20251224A	Remove Webhooks	2026-01-27 15:21:19.316879+00
20260113A	Add Revisions Index	2026-01-27 15:21:19.338204+00
\.


--
-- Data for Name: directus_notifications; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
\.


--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_permissions (id, collection, action, permissions, validation, presets, fields, policy) FROM stdin;
\.


--
-- Data for Name: directus_policies; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_policies (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
abf8a154-5b1c-4a46-ac9c-7300570f4f17	$t:public_label	public	$t:public_description	\N	f	f	f
540ee00f-5e8d-45e9-b737-2594631eaf88	Administrator	verified	$t:admin_description	\N	f	t	t
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
1	\N	6f80ba49-1630-403d-811a-9a0e0c119dbb	\N	directus_users	\N	cards	{"cards":{"sort":["email"],"page":1}}	{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#6644FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":null,"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_error_url":null,"report_bug_url":null,"report_feature_url":null,"public_registration":false,"public_registration_verify_email":true,"public_registration_role":null,"public_registration_email_filter":null,"visual_editor_urls":null,"project_id":"019c000b-7e46-757d-b8b7-c230f69f7af6","mcp_enabled":false,"mcp_allow_deletes":false,"mcp_prompts_collection":null,"mcp_system_prompt_enabled":true,"mcp_system_prompt":null,"project_owner":"admin@directus.io","project_usage":"personal","org_name":null,"product_updates":false,"project_status":null,"ai_openai_api_key":null,"ai_anthropic_api_key":null,"ai_system_prompt":null}	{"project_owner":"admin@directus.io","project_usage":"personal","org_name":null,"product_updates":false,"project_status":null}	\N	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_roles (id, name, icon, description, parent) FROM stdin;
3f3cef21-b0a7-4b77-b21d-e92931e80672	Administrator	verified	$t:admin_description	\N
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
RaVMGC1FZ_JgkofYwi_M-moYjJG9xKyfSqJGDl09GApY2OlpO53YsQhyxiO699kM	6f80ba49-1630-403d-811a-9a0e0c119dbb	2026-01-28 10:29:05.517+00	172.19.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	\N	http://localhost:8055	nHXVqltdMZzX0EizJqp91pmh6GxOaD6--00A5_cpcWmvZ8GO5Dce0iONdFjjS0Lq
nHXVqltdMZzX0EizJqp91pmh6GxOaD6--00A5_cpcWmvZ8GO5Dce0iONdFjjS0Lq	6f80ba49-1630-403d-811a-9a0e0c119dbb	2026-01-29 10:28:55.517+00	172.19.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter, visual_editor_urls, project_id, mcp_enabled, mcp_allow_deletes, mcp_prompts_collection, mcp_system_prompt_enabled, mcp_system_prompt, project_owner, project_usage, org_name, product_updates, project_status, ai_openai_api_key, ai_anthropic_api_key, ai_system_prompt) FROM stdin;
1	Directus	\N	#6644FF	\N	\N	\N	\N	25	\N	all	\N	\N	\N	\N	\N	\N	\N	en-US	\N	\N	auto	\N	\N	\N	\N	\N	\N	\N	f	t	\N	\N	\N	019c000b-7e46-757d-b8b7-c230f69f7af6	f	f	\N	t	\N	admin@directus.io	personal	\N	f	\N	\N	\N	\N
\.


--
-- Data for Name: directus_shares; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
\.


--
-- Data for Name: directus_translations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_translations (id, language, key, value) FROM stdin;
\.


--
-- Data for Name: directus_users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides, text_direction) FROM stdin;
6f80ba49-1630-403d-811a-9a0e0c119dbb	Admin	User	admin@directus.io	$argon2id$v=19$m=65536,t=3,p=4$oujjgTaZvT3p79FRgIVolg$pO8cVVZruVptG4km3YqtA19/+P7YbSV6/r5uawNF4pg	\N	\N	\N	\N	\N	\N	\N	active	3f3cef21-b0a7-4b77-b21d-e92931e80672	\N	2026-01-28 10:28:55.525+00	/content	default	\N	\N	t	\N	\N	\N	\N	\N	auto
\.


--
-- Data for Name: directus_versions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated, delta) FROM stdin;
\.


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 2, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 1, false);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 1, false);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 1, false);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 1, false);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 1, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);


--
-- Name: directus_access directus_access_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_comments directus_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_pkey PRIMARY KEY (id);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_policies directus_policies_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_policies
    ADD CONSTRAINT directus_policies_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);


--
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_activity_timestamp_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX directus_activity_timestamp_index ON public.directus_activity USING btree ("timestamp");


--
-- Name: directus_revisions_activity_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX directus_revisions_activity_index ON public.directus_revisions USING btree (activity);


--
-- Name: directus_revisions_parent_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX directus_revisions_parent_index ON public.directus_revisions USING btree (parent);


--
-- Name: directus_access directus_access_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_comments directus_comments_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_comments directus_comments_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_roles directus_roles_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_roles(id);


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_registration_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict 8e0bm2jTGFLSPDt49uij4E9znHaEettjJaaeEaKfCaiRjXrRsdXsYfPyIyCHBRg

