INSERT INTO customer(first_name, last_name, phone)
VALUES('Jojo', 'Rabbit', '(609)891-8293'),('Emily', 'Darling', '(709)778-8656');

INSERT INTO mechanic(first_name, last_name)
VALUES('Ian', 'McCalister'),('Anita', 'Bollinger');

INSERT INTO vehicle(make, model, price, year, used, sold)
VALUES('Toyota', 'Prius', 15000.00, 2018, False, False),('Ford', 'Ranger', 24000.00, 2021, False, False);

INSERT INTO sales_person(first_name, last_name)
VALUES('Mia', 'Gardner'),('Alice', 'Mill');

INSERT INTO parts(name, price)
VALUES('Continental Tires', 25.00),('breaks', 78.00);

INSERT INTO services(amount, task)
VALUES(59.00, 'Oil Change'),(89.00, 'Brake Fluid Change');

INSERT INTO sale(amount, loan_sale, serial_num)
VALUES(15000.00, 0.0, 1),(15000.00, 7000.00, 1);

INSERT INTO mechanic_services(mech_staff_id, service_id)
VALUES(1,2),(1,3);

INSERT INTO invoice(sales_person_id, sale_id, customer_id, service_id)
VALUES(1,2,1,2),(2,1,2,3);


