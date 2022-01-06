create function public.pgp_sym_decrypt(bytea, text) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_sym_decrypt(bytea, text) owner to streaming_user;

create function public.pgp_sym_decrypt(bytea, text, text) returns text
	immutable
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_sym_decrypt(bytea, text, text) owner to streaming_user;

