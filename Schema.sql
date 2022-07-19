CREATE TABLE `students` (
  `id` integer PRIMARY KEY,
  `StuName` varchar(255),
  `age` integer,
  `sex` varchar(255),
  `telephone` integer
);

CREATE TABLE `Finance` (
  `AccNo` integer PRIMARY KEY,
  `Fees` integer
);

CREATE TABLE `Faculty` (
  `RegNo` integer PRIMARY KEY,
  `Programme` varchar(255),
  `Time` integer,
  `member_id` integer
);

CREATE TABLE `Link` (
  `member_id` integer,
  `faculty_id` integer
);

ALTER TABLE `students` ADD FOREIGN KEY (`id`) REFERENCES `Link` (`member_id`);

ALTER TABLE `Faculty` ADD FOREIGN KEY (`RegNo`) REFERENCES `Link` (`faculty_id`);

ALTER TABLE `Finance` ADD FOREIGN KEY (`AccNo`) REFERENCES `Link` (`faculty_id`);

ALTER TABLE `students` ADD FOREIGN KEY (`id`) REFERENCES `Faculty` (`member_id`);
