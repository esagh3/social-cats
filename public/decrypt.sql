create function public.decrypt(bytea, bytea, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.decrypt(bytea, bytea, text) owner to streaming_user;

