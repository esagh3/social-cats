create function public.uuid_ns_x500() returns uuid
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.uuid_ns_x500() owner to streaming_user;

