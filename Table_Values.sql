-- Insert Values Into Customer Table --
INSERT INTO customer(
	first_name,
	last_name,
	phone_number,
	email_address,
	loyalty_member
) VALUES
('Tainn','Marconi','5551115555','tainnmar@careful-organics.org', TRUE),
('Zenia','Barton','5552225555','zeni.bart@arketmay.com', FALSE),
('Ciar','Bjerke','5553335555','cia_bjerk@progressenergyinc.info', TRUE),
('Zenia','Narvaez','5554445555','zen.narvaez@autozone-inc.info', FALSE),
('Kanya','Barnette','5555555555','ka-bar@diaperstack.com', TRUE),
('Gene','August','5556665555','gen.aug@consolidated-farm-research.net', FALSE),
('Bernardo','List','5557775555','bern-lis@arvinmeritor.info', TRUE),
('Gene','Naik','5558885555','ge.nai@progressenergyinc.info', FALSE),
('Herrick','Malone','5559995555','herri.na@arvinmeritor.info', TRUE),
('Kadisha','Farmer','5550005555','kad_farme@autozone-inc.info', FALSE);
-- Test Customer Table:
SELECT *
FROM customer;



-- Insert Values Into Customer Table --
INSERT INTO ticket(
	customer_id,
	ticket_price,
	movie_id,
	ticket_date
) VALUES
('1','599','2','08092022120621'),
('2','599','2','08092022025266'),
('3','1499','9','08092022204525'),
('4','1999','10','08092022150139'),
('5','1499','9','08092022125345'),
('6','799','8','08092022114522'),
('7','599','7','08092022234918'),
('8','999','6','08092022201344'),
('9','899','5','08092022013217'),
('10','799','4','08092022205637'),
('7','699','3','08092022073337'),
('4','599','2','08092022045847'),
('7','499','1','08092022000000');
-- Test Ticket Table:
SELECT *
FROM ticket;



-- Insert Values Into Movie Table --

-- Test Movie Table:
SELECT *
FROM movie;



-- Insert Values Into Country Table --

-- Test Country Table:
SELECT *
FROM country;



-- Insert Values Into Genera Table --

-- Test Genera Table:
SELECT *
FROM genera;