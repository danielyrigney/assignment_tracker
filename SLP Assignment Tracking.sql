CREATE TABLE `slps` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `bilingual` varchar(3),
  `contract` varchar(255),
  `parttime` varchar(3),
  `special` varchar(255),
  `qateam` varchar(255)
);

CREATE TABLE `schools` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `caseload` int
);

CREATE TABLE `assignments` (
  `slp_id` int,
  `school_id` int,
  `percentage` int
);

ALTER TABLE `assignments` ADD FOREIGN KEY (`slp_id`) REFERENCES `slps` (`id`);
ALTER TABLE `assignments` ADD FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);



