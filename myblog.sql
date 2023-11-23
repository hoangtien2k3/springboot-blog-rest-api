## create database myblog;
## use myblog;

create table categories (
    id bigint not null auto_increment,
    description varchar(255),
    name varchar(255),
    primary key (id)
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

create table comments (
    id bigint not null auto_increment,
    body varchar(255),
    email varchar(255),
    name varchar(255),
    post_id bigint not null,
    primary key (id),
    foreign key (post_id) references posts (id) on delete cascade
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

create table posts (
    id bigint not null auto_increment,
    content varchar(255) not null,
    description varchar(255) not null,
    title varchar(255) not null,
    category_id bigint,
    primary key (id),
    unique key (title),
    foreign key (category_id) references categories (id) on delete set null
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

create table roles (
    id bigint not null auto_increment,
    name varchar(255),
    primary key (id)
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

create table users (
    id bigint not null auto_increment,
    email varchar(255) not null,
    name varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id),
    unique key (email),
    unique key (username)
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

create table users_roles (
    user_id bigint not null,
    role_id bigint not null,
    primary key (user_id, role_id),
    foreign key (user_id) references users (id) on delete cascade,
    foreign key (role_id) references roles (id) on delete cascade
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

insert into roles values
(1, "ROLE_USER"),
(2, "ROLE_ADMIN");
