CREATE TABLE `parks` (
  `prk_id` int NOT NULL AUTO_INCREMENT,
  `prk_facility` varchar(45) NOT NULL,
  `prk_field` varchar(45) NOT NULL,
  `prk_start_time` varchar(45) NOT NULL,
  `prk_end_time` varchar(45) NOT NULL,
  `prk_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `facilities` (
  `fac_id` int NOT NULL AUTO_INCREMENT,
  `fac_name` varchar(45) NOT NULL,
  `fac_location` varchar(100) NOT NULL,
  `fac_numfields` int NOT NULL,
  PRIMARY KEY (`fac_id`),
  UNIQUE KEY `fac_id_UNIQUE` (`fac_id`),
  UNIQUE KEY `fac_name_UNIQUE` (`fac_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `parkreservations`.`applicant` (
  `app_id` INT NOT NULL AUTO_INCREMENT,
  `app_name` VARCHAR(45) NOT NULL,
  `app_org_name` VARCHAR(100) NOT NULL,
  `app_address` VARCHAR(100) NOT NULL,
  `app_phone` VARCHAR(45) NOT NULL,
  `app_email` VARCHAR(75) NOT NULL,
  `app_tier` INT NOT NULL,
  `app_field_req` VARCHAR(45) NOT NULL,
  `app_date_req` VARCHAR(45) NOT NULL,
  `app_days` VARCHAR(45) NOT NULL,
  `app_start_name` VARCHAR(45) NOT NULL,
  `app_end_time` VARCHAR(45) NOT NULL,
  `app_desc` VARCHAR(200) NULL,
  `app_est_people` INT NOT NULL,
  PRIMARY KEY (`app_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  
  
  
