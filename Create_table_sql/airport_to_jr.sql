-- Table: public.airport_to_jr

-- DROP TABLE IF EXISTS public.airport_to_jr;

CREATE TABLE IF NOT EXISTS public.airport_to_jr
(
    airport_iata character varying(100) COLLATE pg_catalog."default" NOT NULL,
    jr_station_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    ticket_price_jyp numeric(50,5),
    duration_minute numeric(50,5),
    CONSTRAINT airport_to_jr_pkey PRIMARY KEY (airport_iata, jr_station_name),
    CONSTRAINT airport_to_jr_airport_iata_fkey FOREIGN KEY (airport_iata)
        REFERENCES public.airport (iata) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT airport_to_jr_jr_station_name_fkey FOREIGN KEY (jr_station_name)
        REFERENCES public.jr_station (jr_station) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.airport_to_jr
    OWNER to postgres;
