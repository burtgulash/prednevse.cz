drop table if exists pages cascade;
create table pages (
    page_id text primary key,
    name text,
    web text
);

drop table if exists locations cascade;
create table locations (
    location_id serial primary key,
    country text,
    city text,
    street text,
    lat double precision,
    lon double precision,
    zip text
);

drop table if exists events cascade;
create table events (
    event_id serial primary key,
    fb_id text,
    page_id text references pages(page_id),
    name text,
    description text,
    start_time timestamp with time zone,
    place_name text,
    location_id integer references locations(location_id)
);
