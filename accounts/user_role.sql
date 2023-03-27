DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY (user_id, role_id),
  KEY fk_user_role_roleid_idx (role_id),
  CONSTRAINT fk_user_role_roleid FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_user_role_userid FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE ON UPDATE CASCADE
);


insert into user_role (user_id, role_id) values (1, 1);
insert into user_role (user_id, role_id) values (2, 2);
insert into user_role (user_id, role_id) values (3, 3);
insert into user_role (user_id, role_id) values (4, 4);
insert into user_role (user_id, role_id) values (5, 5);
insert into user_role (user_id, role_id) values (6, 6);
insert into user_role (user_id, role_id) values (7, 7);
insert into user_role (user_id, role_id) values (8, 8);
insert into user_role (user_id, role_id) values (9, 9);
insert into user_role (user_id, role_id) values (10, 10);