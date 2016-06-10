/** create user, database and grant auths */
create user 'bloguser'@'localhost' identified by 'bloguser';
create database blogdb default character set 'utf8';
grant all privileges on blogdb.* to 'bloguser'@'localhost';


/** create user table */
create table cm_user (
  id int primary key auto_increment,
  login_id varchar(40) not null,
  password varchar(255) not null,
  name varchar(80) not null,
  role varchar(40) not null
) engine=innodb default character set 'utf8';


/** create blog table */
create table cm_article (
  id int primary key auto_increment,
  title varchar(40) not null,
  contents varchar(255) not null,
  created_at datetime not null,
  creator int not null
) engine=innodb default character set 'utf8';


/** init test data */
insert into cm_user (login_id, password, name, role) values
  ('admin', '1234', 'Blog Admin', 'ROLE_ADMIN');

insert into cm_article(title, contents, created_at, creator) values
('제목', '내용', now(), 1),
('제목2', '내용2', now(), 1),
('제목3', '내용3', now(), 1);