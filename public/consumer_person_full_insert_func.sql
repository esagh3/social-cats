create function public.consumer_person_full_insert_func() returns trigger
	language plpgsql
as $$
BEGIN
    insert into repos.consumer_person(consumer_id, person_id, linked_by, matched_with)
    VALUES (NEW.consumer_id, NEW.person_id, NEW.linked_by, NEW.matched_with);
    select * into NEW from repos.consumer_person_full where consumer_id = NEW.consumer_id and person_id = NEW.person_id;
    return NEW;
end;
$$;

alter function public.consumer_person_full_insert_func() owner to streaming_user;

