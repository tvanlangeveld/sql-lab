
create table users (
	id serial primary key,
	email varchar(32) unique not null,
	passwords varchar(32)
);

create table recipes (
	id serial primary key,
	ingredients varchar(500) not null,
	instructions varchar(500) not null,
	private boolean,
	users_id INT NOT NULL unique REFERENCES users(id)
);

create table grocery (
	id serial primary key,
	recipes_id int not null unique REFERENCES recipes(id),
	users_id int not null unique REFERENCES users(id)
);

create table occasion (
	id serial primary key,
	users_id int not null unique REFERENCES users(id),
	occasions varchar(50) not null,
	recipes_id int not null unique REFERENCES recipes(id)
);
