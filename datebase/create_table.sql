use newservlethoclaptrinh;
CREATE TABLE role(
id bigint NOT NULL PRIMARY KEY auto_increment,
name VARCHAR(255) NOT NULL,
code VARCHAR(255) NOT NULL,
createddate TIMESTAMP NULL,
modifieddate TIMESTAMP NULL,
createdby VARCHAR(255) NULL,
modefiedby VARCHAR(255) NULL
);

CREATE TABLE user (
id bigint NOT NULL PRIMARY KEY auto_increment ,
name VARCHAR(255) NOT NULL,
password VARCHAR (255) NOT NULL,
fullname VARCHAR(255) NOT NULL,
roleid bigint NOT NULL,
status int NOT NULL,
createddate TIMESTAMP NULL,
modifieddate TIMESTAMP NULL,
createdby VARCHAR(255) NULL,
modefiedby VARCHAR(255) NULL
);
ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES role(id);

CREATE TABLE news (
id bigint NOT NULL PRIMARY KEY auto_increment ,
categoryid bigint NOT NULL ,
title VARCHAR(255) NULL,
thumbnail VARCHAR(255) NULL,
shortdescription TEXT NULL,
content TEXT NULL,
createddate TIMESTAMP NULL,
modifieddate TIMESTAMP NULL,
createdby VARCHAR(255) NULL,
modefiedby VARCHAR(255) NULL
);

CREATE TABLE category(
id bigint NOT NULL PRIMARY KEY auto_increment,
name VARCHAR(255) NOT NULL,
code VARCHAR(255) NOT NULL,
createddate TIMESTAMP NULL,
modifieddate TIMESTAMP NULL,
createdby VARCHAR(255) NULL,
modefiedby VARCHAR(255) NULL
);

ALTER TABLE news ADD CONSTRAINT fk_news_category FOREIGN KEY (categoryid) REFERENCES category(id);

CREATE TABLE comment(
id bigint NOT NULL PRIMARY KEY auto_increment,
content Text NULL,
user_id bigint NOT NULL,
news_id bigint NOT NULL,
createddate TIMESTAMP NULL,
modifieddate TIMESTAMP NULL,
createdby VARCHAR(255) NULL,
modefiedby VARCHAR(255) NULL
);

ALTER TABLE comment ADD CONSTRAINT fk_comment_news FOREIGN KEY (news_id) REFERENCES news(id);
ALTER TABLE comment ADD CONSTRAINT fk_comment_user FOREIGN KEY (user_id) REFERENCES user(id);
