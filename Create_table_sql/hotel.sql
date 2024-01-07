-- Table: public.hotel

-- DROP TABLE IF EXISTS public.hotel;

CREATE TABLE IF NOT EXISTS public.hotel
(
    hotel_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    fixed_price numeric(10,0),
    recommendation numeric(10,5),
    jr_station character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT hotel_pkey PRIMARY KEY (hotel_name, jr_station),
    CONSTRAINT hotel_jr_station_fkey FOREIGN KEY (jr_station)
        REFERENCES public.jr_station (jr_station) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.hotel
    OWNER to postgres;
