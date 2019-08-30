CREATE TABLE if not exists eshop.complain (
	complain_id bigint NOT NULL,
	customer_id bpchar NOT NULL,
	description varchar(255) not NULL,
	status varchar(30) not NULL,
	employee_id int2 not NULL,
	creation_date date not NULL,
	CONSTRAINT pk_complain PRIMARY KEY (complain_id),
	CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES eshop.customers(customer_id),
	CONSTRAINT fk_employees FOREIGN KEY (employee_id) REFERENCES eshop.employees(employee_id)
);