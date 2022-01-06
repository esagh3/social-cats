create function public.armor(bytea) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.armor(bytea) owner to streaming_user;

create function public.armor(bytea, text[], text[]) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.armor(bytea, text[], text[]) owner to streaming_user;

