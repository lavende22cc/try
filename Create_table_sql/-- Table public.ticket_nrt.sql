-- Table: public.ticket_nrt

-- DROP TABLE IF EXISTS public.ticket_nrt;

CREATE TABLE IF NOT EXISTS public.ticket_nrt
(
    ticket_price numeric(50,5),
    airline character varying(100) COLLATE pg_catalog."default",
    landing_airport_iata character varying(5) COLLATE pg_catalog."default",
    date numeric(20,0),
    departure_time numeric(10,0),
    duration numeric(10,0),
    landing_time numeric(10,0)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ticket_nrt
    OWNER to postgres;