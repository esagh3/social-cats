create function public.gbt_macad_consistent(internal, macaddr, smallint, oid, internal) returns boolean
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.gbt_macad_consistent(internal, macaddr, smallint, oid, internal) owner to streaming_user;

