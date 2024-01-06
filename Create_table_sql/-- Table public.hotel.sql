-- Table: public.hotel

-- DROP TABLE IF EXISTS public.hotel;

CREATE TABLE IF NOT EXISTS public.hotel
(
    hotel_name character varying(100) COLLATE pg_catalog."default",
    fixed_price numeric(10,0),
    recommendation numeric(10,5),
    jr_station_mandarin character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.hotel
    OWNER to postgres;