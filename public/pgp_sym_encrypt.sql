create function public.pgp_sym_encrypt(text, text) returns bytea
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_sym_encrypt(text, text) owner to streaming_user;

create function public.pgp_sym_encrypt(text, text, text) returns bytea
	strict
	parallel safe
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.pgp_sym_encrypt(text, text, text) owner to streaming_user;

