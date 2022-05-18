create database jorgo_taxi;
\c jorgo_taxi
create table car (
    id bigserial not null primary key,
	brand VARCHAR(50),
	model VARCHAR(50),
	fuel VARCHAR(50),
	engine_capacity VARCHAR(50),
	gearbox_type VARCHAR(50),
	year_of_issue VARCHAR(50),
	color VARCHAR(50)
);
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('BMW', 'x5', 'бензин', '2,5 l.', 'механика', '2018', 'Blue');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('BMW', 'x5', 'дизель', '2,5 l.', 'механика', '2022', 'Crimson');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('BMW', 'x5', 'электричество', '18 kW', 'автомат', '2018', 'Teal');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Mercedes', 's350', 'бензин', '3,0 l.', 'механика', '2020', 'Yellow');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Mercedes', 's350', 'дизель', '1,9 l.', 'механика', '2022', 'Indigo');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Mercedes', 's350', 'электричество', '18 kW', 'автомат', '2021', 'Goldenrod');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Mercedes', 's350', 'электричество', '16 kW', 'механика', '2020', 'Aquamarine');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Toyota', 'Camry', 'бензин', '2,6 l.', 'автомат', '2018', 'Red');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Toyota', 'Camry', 'дизель', '2,2 l.', 'автомат', '2019', 'Yellow');
insert into car (brand, model, fuel, engine_capacity, gearbox_type, year_of_issue, color) values ('Toyota', 'Camry', 'электричество', '15 kW', 'механика', '2019', 'Maroon');

create table driver (
	id bigserial not null primary key,
	name VARCHAR(50),
	surname VARCHAR(50),
	date_of_birth DATE,
	driving_experience int,
	gender VARCHAR(50),
    car integer references car(id)
);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Nell', 'Roxburgh', '17/05/1992', 7, 'Female', 1);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Tonya', 'Dublin', '17/03/1993', 5, 'Female', 2);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Ellie', 'Dorie', '11/12/1997', 13, 'Male', 3);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Henriette', 'Mohun', '25/05/1991', 11, 'Male', 4);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Mariana', 'Worsalls', '23/11/1984', 9, 'Female', 5);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Andie', 'Whoolehan', '17/01/1982', 10, 'Male', 6);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Rae', 'Rodmell', '27/01/1999', 15, 'Female', 7);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Rikki', 'Tomich', '17/12/1987', 16, 'Female', 8);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Andras', 'Tynewell', '01/11/1991', 9, 'Male', 9);
insert into driver (name, surname, date_of_birth, driving_experience, gender, car) values ('Megan', 'Cuttler', '02/02/1988', 8, 'Female', 10);

create table call_center (
	id bigserial not null primary key,
	name VARCHAR(50),
	surname VARCHAR(50),
	date_of_birth DATE,
	gender VARCHAR(50)
);
insert into call_center (name, surname, date_of_birth, gender) values ('Nell', 'Roxburgh', '17/05/1992','Female');
insert into call_center (name, surname, date_of_birth, gender) values ('Tonya', 'Dublin', '17/03/1993', 'Female');
insert into call_center (name, surname, date_of_birth, gender) values ('Ellie', 'Dorie', '11/12/1997', 'Male');
insert into call_center (name, surname, date_of_birth, gender) values ('Henriette', 'Mohun', '25/05/1991', 'Male');
insert into call_center (name, surname, date_of_birth, gender) values ('Mariana', 'Worsalls', '23/11/1984', 'Female');
insert into call_center (name, surname, date_of_birth, gender) values ('Andie', 'Whoolehan', '17/01/1982', 'Male');
insert into call_center (name, surname, date_of_birth, gender) values ('Rae', 'Rodmell', '27/01/1999', 'Female');
insert into call_center (name, surname, date_of_birth, gender) values ('Rikki', 'Tomich', '17/12/1987', 'Female');
insert into call_center (name, surname, date_of_birth, gender) values ('Andras', 'Tynewell', '01/11/1991', 'Male');
insert into call_center (name, surname, date_of_birth, gender) values ('Megan', 'Cuttler', '02/02/1988', 'Female');

select * from car where brand = 'Toyota' order by year_of_issue desc;
select distinct name from call_center order by name desc limit 10;
update car set brand = 'Mersus' where brand = 'Mercedes';
select * from car;
delete from call_center where name = 'Tonya' and surname = 'Dublin';
select * from driver where driving_experience > 10 and gender = 'Female';
select avg(driving_experience) from driver where date_of_birth > '10/10/1975';
select brand, name , surname from car join driver on car.id = driver.car;
select count(brand) from car where brand = 'BMW';
select count(brand) from car where brand = 'Mersus';
select count(brand) from car where brand = 'Toyota';
