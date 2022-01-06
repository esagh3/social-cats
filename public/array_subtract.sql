create function public.array_subtract(minuend anyarray, subtrahend anyarray, OUT difference anyarray) returns anyarray
	strict
	language plpgsql
as $$
begin
    execute 'select array(select unnest(undefined) except select unnest(undefined))'
        using minuend, subtrahend
        into difference;
end;
$$;

alter function public.array_subtract(anyarray, anyarray, out anyarray) owner to streaming_user;

