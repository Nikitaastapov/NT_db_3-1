create table if not exists Staff (
id serial primary key,
staff_name varchar(40) not null
);

create table if not exists Department (
id serial primary key,
dept_name varchar(40) not null
);

create table if not exists Position_list (
id serial primary key,
pos_name varchar(40) not null
);

create table if not exists Dep_pos (
id serial primary key,
Dep_name_ID integer references Department (id),
Pos_name integer references Position_list (id)
);

create table if not exists Employee (
Staff_id integer references Staff (id),
Supervisor_id integer references dep_pos (id),
Position_id integer references dep_pos (id),
constraint Empl primary key (staff_id, supervisor_id, position_id)
)






