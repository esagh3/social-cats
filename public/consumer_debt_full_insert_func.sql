create function public.consumer_debt_full_insert_func() returns trigger
	language plpgsql
as $$
BEGIN
    insert into repos.consumer_debt(person_id, debt_id) VALUES (NEW.person_id, NEW.internal_id);
    select * into NEW from repos.consumer_debt_full where internal_id = NEW.internal_id;
    return NEW;
end;
$$;

alter function public.consumer_debt_full_insert_func() owner to streaming_user;

