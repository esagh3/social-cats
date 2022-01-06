create function public.gbt_uuid_same(gbtreekey32, gbtreekey32, internal) returns internal
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.gbt_uuid_same(gbtreekey32, gbtreekey32, internal) owner to streaming_user;

