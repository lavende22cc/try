-- Table: public.airport_to_jr

-- DROP TABLE IF EXISTS public.airport_to_jr;

CREATE TABLE IF NOT EXISTS public.airport_to_jr
(
    airport_name character varying(100) COLLATE pg_catalog."default",
    jr_station_name character varying(100) COLLATE pg_catalog."default",
    ticket_price_jyp numeric(50,5),
    duration_minute numeric(50,5)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.airport_to_jr
    OWNER to postgres;
