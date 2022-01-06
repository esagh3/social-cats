create function public.gbt_time_consistent(internal, time, smallint, oid, internal) returns boolean
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.gbt_time_consistent(internal, time, smallint, oid, internal) owner to streaming_user;

