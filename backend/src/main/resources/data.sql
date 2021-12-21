INSERT INTO tb_user (name, email, password)
VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password)
VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password)
VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority)
VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority)
VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority)
VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id)
VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id)
VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id)
VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id)
VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id)
VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id)
VALUES (3, 3);

INSERT INTO tb_course(name, img_uri, img_gray_uri)
VALUES ('HTML Course', 'https://unsplash.com/', 'https://unsplash.com/gray');

INSERT INTO tb_offer(edition, start_moment, end_moment, course_id)
VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE
        '2021-07-13T20:50:07.12345Z', 1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id)
VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-09-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE
        '2021-09-13T20:50:07.12345Z', 1);

INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id)
VALUES ('Trilha HTML', 'Trilha principal', 1, 'https://unsplash.com/', 1, 1);
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id)
VALUES ('Forum', 'Duvidas da comunidade', 2, 'https://unsplash.com/', 2, 1);
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id)
VALUES ('Aulas ao vivo', 'Lives exclusivas', 3, 'https://unsplash.com/', 0, 1);

INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequiste_id)
VALUES ('Modulo 1', 'Inicio da jornada', 1, 'https://unsplash.com/', 1, null);
INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequiste_id)
VALUES ('Modulo 2', 'HTML básico', 2, 'https://unsplash.com/', 1, 1);
INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequiste_id)
VALUES ('Modulo 3', 'HTML intermediario', 3, 'https://unsplash.com/', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_moment, available, only_update)
VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07',
        null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_moment, available, only_update)
VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07',
        null, true, false);