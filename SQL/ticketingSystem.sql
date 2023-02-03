CREATE TABLE `helpdesk`.`tickets` (
  `tkt_id` INT NOT NULL AUTO_INCREMENT,
  `tkt_problem` LONGTEXT NOT NULL,
  `tkt_priority` INT NOT NULL,
  `tkt_contact_email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`tkt_id`));


use helpdesk;

select * from tickets;