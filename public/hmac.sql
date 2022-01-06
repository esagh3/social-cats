create function public.hmac(text, text, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.hmac(text, text, text) owner to streaming_user;

create function public.hmac(bytea, bytea, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.hmac(bytea, bytea, text) owner to streaming_user;

