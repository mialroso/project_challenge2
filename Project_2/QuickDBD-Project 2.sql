-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Dgwh18
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `campaign` (
    `cf_id` Int  NOT NULL ,
    `contact_id` int  NOT NULL ,
    `company_name` VARCHAR  NOT NULL ,
    `description` VARCHAR  NOT NULL ,
    `goal` float  NOT NULL ,
    `pledged` float  NOT NULL ,
    `outcome` VARCHAR  NOT NULL ,
    `backer_count` int  NOT NULL ,
    `country` VARCHAR  NOT NULL ,
    `currency` VARCHAR  NOT NULL ,
    `Launched_date` VARCHAR  NOT NULL ,
    `end_date` VARCHAR  NOT NULL ,
    `category_id` VARCHAR  NOT NULL ,
    `subcategory_id` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `cf_id`
    )
);

CREATE TABLE `category` (
    `category_id` VARCHAR  NOT NULL ,
    `cetegory` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `category_id`
    )
);

CREATE TABLE `contacts` (
    `contact_id` int  NOT NULL ,
    `first_name` VARCHAR  NOT NULL ,
    `last_name` VARCHAR  NOT NULL ,
    `email` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `contact_id`
    )
);

CREATE TABLE `subcategory` (
    `subcategory_id` VARCHAR  NOT NULL ,
    `subcategory` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `subcategory_id`
    )
);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_contact_id` FOREIGN KEY(`contact_id`)
REFERENCES `contacts` (`contact_id`);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_category_id` FOREIGN KEY(`category_id`)
REFERENCES `category` (`category_id`);

ALTER TABLE `campaign` ADD CONSTRAINT `fk_campaign_subcategory_id` FOREIGN KEY(`subcategory_id`)
REFERENCES `subcategory` (`subcategory_id`);

