DROP DATABASE IF EXISTS 19WH1A1281;
CREATE SCHEMA 19WH1A1281;
USE 19WH1A1281;
CREATE TABLE passenger(pid INT NOT NULL AUTO_INCREMENT,Name VARCHAR(20),gender VARCHAR(20),City VARCHAR(15),age INT,amount INT,PRIMARY KEY(pid));
CREATE TRIGGER calculate
before INSERT 
ON passenger
FOR EACH ROW
SET new.amount = 1000;
create table Final_amount(per int );
CREATE TRIGGER total_amount
after insert 
ON passenger
FOR EACH ROW
insert into Final_amount values(new.amount);

INSERT INTO passenger Values(3451,"Ravi","Male","Hyderabad","20",500);
INSERT INTO passenger Values(2342, "Lakshmi","Female", "Warangal", "19", 800);
INSERT INTO passenger Values(3450,"Swapna","Female","Kanigiri","18",200);
select * from passenger;