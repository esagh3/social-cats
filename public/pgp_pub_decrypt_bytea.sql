create function public.pgp_pub_decrypt_bytea(bytea, bytea) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_decrypt_bytea(bytea, bytea) owner to streaming_user;

create function public.pgp_pub_decrypt_bytea(bytea, bytea, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_decrypt_bytea(bytea, bytea, text) owner to streaming_user;

create function public.pgp_pub_decrypt_bytea(bytea, bytea, text, text) returns bytea
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_pub_decrypt_bytea(bytea, bytea, text, text) owner to streaming_user;

