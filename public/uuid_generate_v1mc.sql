create function public.uuid_generate_v1mc() returns uuid
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.uuid_generate_v1mc() owner to streaming_user;

