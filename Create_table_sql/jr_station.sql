-- Table: public.jr_station

-- DROP TABLE IF EXISTS public.jr_station;

CREATE TABLE IF NOT EXISTS public.jr_station
(
    jr_station character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "jr_mandarin " character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT jr_station_pkey PRIMARY KEY (jr_station)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.jr_station
    OWNER to postgres;
