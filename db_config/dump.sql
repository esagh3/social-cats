create schema if not exists social_cats_schema authorization current_user;

CREATE TABLE if not exists social_cats_schema.cats (
                                    dislikes character varying(500) NULL,
                                    likes character varying(500) NULL,
                                    fur_pattern character varying(255) NOT NULL,
                                    breed character varying(255) NOT NULL,
                                    age integer NULL,
                                    cat_name character varying(255) NOT NULL,
                                    id integer NOT NULL generated always as identity primary key
);