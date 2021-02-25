CREATE TABLE mechanic(mech_staff_id SERIAL PRIMARY KEY, first_name VARCHAR(25), last_name VARCHAR(25));
CREATE TABLE mechanic_services(mech_services_id SERIAL PRIMARY KEY, mech_staff_id INTEGER NOT NULL, FOREIGN KEY(mech_staff_id) REFERENCES mechanic(mech_staff_id),
							  service_id INTEGER NOT NULL, FOREIGN KEY(service_id) REFERENCES services(service_id));

CREATE TABLE vehicle(serial_num SERIAL PRIMARY KEY, make VARCHAR(25), model VARCHAR (25), price NUMERIC(10,2), year INTEGER, used BOOLEAN, sold BOOLEAN);

CREATE TABLE sale(sale_id SERIAL PRIMARY KEY, amount NUMERIC(8,2), loan_sale NUMERIC(8,2), serial_num INTEGER NOT NULL, FOREIGN KEY (serial_num) REFERENCES vehicle (serial_num));

CREATE TABLE parts(part_id SERIAL PRIMARY KEY, name VARCHAR(25), price NUMERIC(6,2));

CREATE TABLE sales_person(sales_person_id SERIAL PRIMARY KEY, first_name VARCHAR(25), last_name VARCHAR(25));

CREATE TABLE customer(customer_id SERIAL PRIMARY KEY, first_name VARCHAR(25), last_name VARCHAR(25), phone VARCHAR(15));

CREATE TABLE invoice(invoice_id SERIAL PRIMARY KEY, sales_person_id INTEGER NOT NULL, FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id), 
					 sale_id INTEGER NOT NULL, FOREIGN KEY (sale_id) REFERENCES sale (sale_id), customer_id INTEGER NOT NULL, FOREIGN KEY (customer_id) REFERENCES customer(customer_id), 
					 service_id INTEGER NOT NULL, FOREIGN KEY (service_id) REFERENCES services(service_id), date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
					 
CREATE TABLE services(service_id SERIAL PRIMARY KEY, amount NUMERIC(4,2), task VARCHAR(25), part_id INTEGER NOT NULL, FOREIGN KEY (part_id) REFERENCES parts(part_id));

ALTER TABLE services ALTER COLUMN part_id DROP NOT NULL;