CREATE TABLE movie (
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(50),
	movie_description VARCHAR(150)
);

CREATE TABLE screen (
	screen_id SERIAL PRIMARY KEY,
	capacity INTEGER
);

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(50),
	customer_contact VARCHAR(20)
);

CREATE TABLE concession (
	concession_id SERIAL PRIMARY KEY,
	item VARCHAR(20),
	price NUMERIC(4,2)
);

CREATE TABLE employee (
	employ_id SERIAL PRIMARY KEY,
	employee_name VARCHAR(50)
);

CREATE TABLE seat (
	seat_id SERIAL PRIMARY KEY,
	screen_id INTEGER NOT NULL,
	FOREIGN KEY(screen_id) REFERENCES screen(screen_id)
);

CREATE TABLE show (
	show_id SERIAL PRIMARY KEY,
	start_date DATE NOT NULL DEFAULT CURRENT_DATE,
	end_date DATE NOT NULL DEFAULT CURRENT_DATE,
	start_time TIME,
	movie_id INTEGER NOT NULL,
	screen_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY(screen_id) REFERENCES screen(screen_id)
);

CREATE TABLE booking (
	booking_id SERIAL PRIMARY KEY,
	book_date TIMESTAMP NOT NULL DEFAULT CURRENT_DATE,
	customer_id INTEGER NOT NULL,
	show_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(show_id) REFERENCES show(show_id)
);

CREATE TABLE concession_sold (
	sold_id SERIAL PRIMARY KEY,
	amount INTEGER,
	concession_id INTEGER,
	customer_id INTEGER,
	employ_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(concession_id) REFERENCES concession(concession_id),
	FOREIGN KEY(employ_id) REFERENCES employee(employ_id)
);

CREATE TABLE seat_reserve (
	reserve_id SERIAL PRIMARY KEY,
	seat_id INTEGER,
	booking_id INTEGER,
	FOREIGN KEY(seat_id) REFERENCES seat(seat_id),
	FOREIGN KEY(booking_id) REFERENCES booking(booking_id)
);