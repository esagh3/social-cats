create function public.digest(text, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.digest(text, text) owner to streaming_user;

create function public.digest(bytea, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.digest(bytea, text) owner to streaming_user;

