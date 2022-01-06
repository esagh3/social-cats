create function public.gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal) returns boolean
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal) owner to streaming_user;

