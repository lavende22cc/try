-- Table: public.airport

-- DROP TABLE IF EXISTS public.airport;

CREATE TABLE IF NOT EXISTS public.airport
(
    iata character varying(5) COLLATE pg_catalog."default" NOT NULL,
    full_name character varying(100) COLLATE pg_catalog."default",
    full_name_mandarin character varying(100) COLLATE pg_catalog."default",
    city character varying(100) COLLATE pg_catalog."default",
    island character varying(100) COLLATE pg_catalog."default",
    "Coordinates" character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT airport_pkey PRIMARY KEY (iata)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.airport
    OWNER to postgres;
