DROP DATABASE IF EXISTS crud_spring;
CREATE DATABASE crud_spring;

/*---------------------------------------------------------*/

CREATE TABLE employees(
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	last_name VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	position VARCHAR(30) NOT NULL,
	office VARCHAR(30) NOT NULL,
	start_date VARCHAR(30) NOT NULL,
	salary VARCHAR(30) NOT NULL
);

/*---------------------------------------------------------*/

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Ramos', 'Angelica', 'Chief Executive Officer (CEO)', 'London', '2014-06-08', '$1,200,000');

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Satou', 'Airi', 'Accountant', 'Tokyo', '2013-06-08', '$162,700');

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Cox', 'Ashton', 'Junior Technical Author', 'San Francisco', '2013-02-08', '$86,000');

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Greer', 'Bradley', 'Software Engineer', 'London', '2013-02-08', '$132,000');

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Wagner', 'Brenden', 'Software Engineer', 'San Francisco', '2012-02-08', '$106,000');

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Williamson', 'Brielle', 'Integration Specialist', 'New York', '2011-02-08', '$136,000');

INSERT INTO `crud_spring`.`employees` (`id`, `last_name`, `first_name`, `position`, `office`, `start_date`, `salary`) 
VALUES (NULL, 'Nash', 'Bruno', 'Software Engineer', 'London', '2013-07-08', '$101,000');

/*---------------------------------------------------------*/