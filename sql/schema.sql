drop schema if exists fitness;
create schema fitness;
use fitness;

create table user(
    email varchar(64) not null,
    password varchar(64),
    full_name varchar(64),
    dob date,
    primary key(email)
);

create table tracker(
    date date not null,
    type_of_exercise varchar(128),
    duration float,
    calories int,
    muscle_group varchar(128),
    email varchar(64) not null,

    primary key(date),
    constraint fk_email
        foreign key(email)
        references user(email)
);