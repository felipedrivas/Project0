--This schema will model a School system (sounds good for a P0!)

--This will be a one-to-many relationship which is minimum you'll need for P0.
CREATE TABLE roles (
	role_id serial PRIMARY KEY,
	role_title TEXT UNIQUE,
	role_balance int check(role_balance > -1)
);


INSERT INTO roles (role_title,role_balance)
VALUES ('Student',20000 ), ('Faculty', 0), ('Admin', 0);

SELECT * FROM roles;


CREATE TABLE users (
	user_id serial PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	role_id_fk int REFERENCES roles (role_id)
);

INSERT INTO users (first_name, last_name, role_id_fk)
VALUES ('Felipe', 'Rivas', 1),
	   ('John', 'doe', 2),
	   ('Ada', 'Lovelace', 3);


SELECT * FROM users;