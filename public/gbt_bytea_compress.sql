create function public.gbt_bytea_compress(internal) returns internal
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.gbt_bytea_compress(internal) owner to streaming_user;
