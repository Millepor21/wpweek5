CREATE OR REPLACE PROCEDURE addCar(
	_color VARCHAR,
	_doors INTEGER,
	_fuel_type VARCHAR,
	_engine VARCHAR
) LANGUAGE plpgsql AS $$
	BEGIN
		INSERT INTO car(
			color,
			doors,
			fuel_type,
			engine
			) VALUES(
				_color,
				_doors,
				_fuel_type,
				_engine
			);
		COMMIT;
	END
$$;

CALL addCar('red',2,'E85','V8 twin turbo charged and naturally aspirated');
CALL addCAR('blue',4,'gasoline','V8');

CREATE OR REPLACE PROCEDURE addSale(
	_customer_id INTEGER,
	_vin INTEGER,
	_ammount NUMERIC,
	_staff_id INTEGER
) LANGUAGE plpgsql AS $$
	BEGIN
		INSERT INTO sales(
			customer_id,
			vin,
			ammount,
			staff_id
			)VALUES(
				_customer_id,
				_vin,
				_ammount,
				_staff_id
			);
		COMMIT;
	END
$$;

CALL addSale(1,3,20000.00,4);
CALL addSale(2,4,400000.00,2);