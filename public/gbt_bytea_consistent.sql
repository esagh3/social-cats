create function public.gbt_bytea_consistent(internal, bytea, smallint, oid, internal) returns boolean
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.gbt_bytea_consistent(internal, bytea, smallint, oid, internal) owner to streaming_user;

