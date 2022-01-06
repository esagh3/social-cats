create function public.uuid_ns_url() returns uuid
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.uuid_ns_url() owner to streaming_user;

