create database task2;

create table students(
    id serial primary key,
    name varchar(255) not null,
    birth_date date not null,
    email varchar(255) not null unique,
    phone varchar(20) unique,
    entry_year int not null
);

create table disciplines(
    id serial primary key,
    name varchar(255) not null,
    description text,
    credits int not null check(credits > 0),
    hours int not null check(hours > 0)
);

create table student_discipline(
    student_id int references students(id) on delete cascade,
    discipline_id int references disciplines(id) on delete cascade,
    group_num int not null check(group_num > 0),

    primary key (student_id, discipline_id)
);
