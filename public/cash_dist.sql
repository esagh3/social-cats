create function public.cash_dist(money, money) returns money
	immutable
	strict
	language c
as $$
begin
-- missing source code
end;
$$;

alter function public.cash_dist(money, money) owner to streaming_user;

