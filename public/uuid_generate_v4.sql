create function public.uuid_generate_v4() returns uuid
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.uuid_generate_v4() owner to streaming_user;

