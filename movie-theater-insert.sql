INSERT INTO movie
	(movie_title, movie_description)
VALUES
	('Copshop', 'A small town police station becomes battle ground'),
	('Cry Macho', 'Based on the book Cry Macho'),
	('Malignant', 'A horror movie');
	
INSERT INTO screen
	(capacity)
VALUES
	(50),
	(100),
	(20);
	
INSERT INTO customer
	(customer_name, customer_contact)
VALUES
	('Albert Einstein', '844-901-3263'),
	('Kate Mara', '224-221-3345'),
	('Post Malone', '224-231-3925');
	
INSERT INTO concession
	(item, price)
VALUES
	('popcorn', 7.00),
	('courmet pizza', 8.00),
	('hot dog', 5.00);
	
INSERT INTO employee
	(employee_name)
VALUES
	('Dmitri Ivanovsky'),
	('Jenny Slate');
	
INSERT INTO seat
	(screen_id)
VALUES
	(1),
	(1),
	(2),
	(2),
	(3);
	
INSERT INTO show
	(start_date, end_date, start_time, movie_id, screen_id)
VALUES
	('2021-09-17', '2021-10-30', '16:55:00', 1, 1),
	('2021-09-17', '2021-10-30', '19:50:00', 1, 2),
	('2021-09-17', '2021-11-11', '15:20:00', 2, 3),
	('2021-09-10', '2021-10-20', '16:30:00', 3, 2);

INSERT INTO booking
	(book_date, customer_id, show_id)
VALUES
	('2021-09-05 19:10:25', 1, 1),
	('2021-09-15 15:20:45', 2, 1),
	('2021-09-19 12:30:04', 3, 2);

INSERT INTO seat_reserve
	(seat_id, booking_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3);
	
INSERT INTO concession_sold
	(amount, concession_id, customer_id, employ_id)
VALUES
	(2, 1, 1, 2),
	(1, 2, 2, 1),
	(1, 3, 1, 2),
	(2, 3, 3, 1);

	