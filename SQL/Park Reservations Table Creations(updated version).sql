CREATE TABLE `fieldpermit(updated)`.`customers` (
  `cus_id` INT NOT NULL AUTO_INCREMENT,
  `cus_first_name` VARCHAR(45) NOT NULL,
  `cus_last_name` VARCHAR(45) NOT NULL,
  `cus_organization_name` VARCHAR(100) NOT NULL,
  `cus_address` VARCHAR(100) NOT NULL,
  `cus_phone` VARCHAR(45) NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_tier` INT NOT NULL,
  PRIMARY KEY (`cus_id`),
  UNIQUE INDEX `cus_id_UNIQUE` (`cus_id` ASC) VISIBLE);

CREATE TABLE `location` (
  `loc_id` int NOT NULL AUTO_INCREMENT,
  `loc_name` varchar(100) NOT NULL,
  PRIMARY KEY (`loc_id`),
  UNIQUE KEY `cus_id_UNIQUE` (`loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
