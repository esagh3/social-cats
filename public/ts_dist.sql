create function public.ts_dist(timestamp, timestamp) returns interval
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.ts_dist(timestamp, timestamp) owner to streaming_user;

