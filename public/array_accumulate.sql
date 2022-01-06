create aggregate public.array_accumulate(anyarray) (
sfunc = pg_catalog.array_cat,
stype = anyarray,
initcond = '{}'
);

alter aggregate public.array_accumulate(anyarray) owner to streaming_user;

