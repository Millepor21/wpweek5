CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	job VARCHAR(100)
);
	
CREATE TABLE mechanic(
	job VARCHAR,
	staff_id INTEGER NOT NULL,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE salesperson(
	job VARCHAR,
	staff_id INTEGER NOT NULL,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE car(
	vin SERIAl PRIMARY KEY,
	color VARCHAR(100),
	doors INTEGER,
	fuel_type VARCHAR(100),
	engine VARCHAR(150)
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150)
);

CREATE TABLE sales(
	transaction_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	vin INTEGER NOT NULL,
	ammount NUMERIC(10,2),
	staff_id INTEGER NOT NULL,
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
	FOREIGN KEY(vin) REFERENCES car(vin),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	vin INTEGER NOT NULL,
	staff_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	service_date DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(vin) REFERENCES car(vin),
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
