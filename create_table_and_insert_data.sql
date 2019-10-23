create sequence if not exists main_sequence start 1;

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


INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'CLOSED', 1, '2019-09-01');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'OPEN', 1, '2019-09-02');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'CLOSED', 3, '2019-09-03');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed table', 'OPEN', 1, '2019-09-01');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed table', 'CLOSED', 3, '2019-09-02');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed shelf', 'CLOSED', 1, '2019-09-01');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'CLOSED', 1, '2019-08-31');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed shelf', 'OPEN', 3, '2019-08-10');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'CLOSED', 3, '2019-09-01');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'OPEN', 1, '2019-08-12');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'OPEN', 3, '2019-07-21');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed table', 'CLOSED', 1, '2019-09-06');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'CLOSED', 1, '2019-09-04');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed chair', 'OPEN', 3, '2019-09-02');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ANATR', 'destroyed chair', 'CLOSED', 1, '2019-09-01');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ANATR', 'destroyed shelf', 'OPEN', 1, '2019-09-04');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ANTON', 'destroyed chair', 'OPEN', 3, '2019-09-03');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed table', 'OPEN', 3, '2019-09-04');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ALFKI', 'destroyed bed', 'CLOSED', 1, '2019-08-13');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ANATR', 'destroyed bed', 'OPEN', 1, '2019-07-29');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ANATR', 'destroyed table', 'OPEN', 3, '2019-08-19');
INSERT INTO eshop.complain VALUES ((select nextval('eshop."main_sequence"')), 'ANTON', 'destroyed chair', 'OPEN', 3, '2019-09-06');

