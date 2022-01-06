create function public.pgp_pub_encrypt(text, bytea) returns bytea
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_encrypt(text, bytea) owner to streaming_user;

create function public.pgp_pub_encrypt(text, bytea, text) returns bytea
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_encrypt(text, bytea, text) owner to streaming_user;

