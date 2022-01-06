create function public.tstz_dist(timestamp with time zone, timestamp with time zone) returns interval
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.tstz_dist(timestamp with time zone, timestamp with time zone) owner to streaming_user;

