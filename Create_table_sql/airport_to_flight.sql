-- Table: public.airport_to_flight

-- DROP TABLE IF EXISTS public.airport_to_flight;

CREATE TABLE IF NOT EXISTS public.airport_to_flight
(
    ticket_price numeric(50,5),
    airline character varying(100) COLLATE pg_catalog."default",
    landing_airport_iata character varying(5) COLLATE pg_catalog."default",
    date numeric(20,0),
    departure_time numeric(10,0),
    duration numeric(10,0),
    landing_time numeric(10,0),
    indice numeric(10,0) NOT NULL,
    CONSTRAINT airport_to_flight_pkey PRIMARY KEY (indice),
    CONSTRAINT airport_to_flight_landing_airport_iata_fkey FOREIGN KEY (landing_airport_iata)
        REFERENCES public.airport (iata) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.airport_to_flight
    OWNER to postgres;
