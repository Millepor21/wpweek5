INSERT INTO customer(
	first_name,
	last_name,
	address
) VALUES(
	'Porter',
	'MillerWright',
	'657 Longfellow rd. Detroit, Mi'
);

INSERT INTO customer(
	first_name,
	last_name,
	address
) VALUES(
	'Milad',
	'Jangjoo',
	'1794 Crest View ln. Seatle, Wa'
);

INSERT INTO staff(
	job
) VALUES( 'Brake Specialist');

INSERT INTO staff(
	job
) VALUES('Sales Specialist');

INSERT INTO staff(
	job
) VALUES('Sales Specialist');

INSERT INTO staff(
	job
) VALUES('Tuning Specialist');

INSERT INTO mechanic(
	job,
	staff_id,
	first_name,
	last_name,
	address
) VALUES(
	'Brake Specialist',
	1,
	'Jordan',
	'McAlister',
	'42 Wallaby wy. Sydney, AUS'
);

INSERT INTO mechanic(
	job,
	staff_id,
	first_name,
	last_name,
	address
) VALUES(
	'Tuning Specialist',
	3,
	'Jack',
	'Anthony',
	'724 Thresher dr. Miami, Fl'
);

INSERT INTO salesperson(
	job,
	staff_id,
	first_name,
	last_name,
	address
) VALUES(
	'Sales Specialist',
	2,
	'Tony',
	'Jambarri',
	'4562 West Ridge rd. Portland, Or'
);

INSERT INTO salesperson(
	job,
	staff_id,
	first_name,
	last_name,
	address
) VALUES(
	'Sales Specialist',
	4,
	'Jason',
	'Borne',
	'Unavailable'
);

INSERT INTO service(
	vin,
	staff_id,
	customer_id
)VALUES(
	3,
	3,
	1
);

INSERT INTO service(
	vin,
	staff_id,
	customer_id
)VALUES(
	4,
	1,
	2
);