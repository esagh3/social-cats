create schema public;

comment on schema public is 'standard public schema';

alter schema public owner to streaming_user;

grant create, usage on schema public to public;

