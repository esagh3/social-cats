create function public.pgp_pub_decrypt(bytea, bytea) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_decrypt(bytea, bytea) owner to streaming_user;

create function public.pgp_pub_decrypt(bytea, bytea, text) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_decrypt(bytea, bytea, text) owner to streaming_user;

create function public.pgp_pub_decrypt(bytea, bytea, text, text) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_decrypt(bytea, bytea, text, text) owner to streaming_user;

