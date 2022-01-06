create function public.update_updated_at_column() returns trigger
	language plpgsql
as $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$;

alter function public.update_updated_at_column() owner to streaming_user;

