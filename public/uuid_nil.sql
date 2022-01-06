create function public.uuid_nil() returns uuid
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.uuid_nil() owner to streaming_user;

