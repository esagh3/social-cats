create function public.uuid_generate_v3(namespace uuid, name text) returns uuid
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.uuid_generate_v3(uuid, text) owner to streaming_user;

