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

INSERT INTO tb_lesson(title, position, section_id)
VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content(id, text_content, video_uri)
VALUES (1, 'Material de apoio', 'http://youtube.com/');
INSERT INTO tb_lesson(title, position, section_id)
VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content(id, text_content, video_uri)
VALUES (2, 'Material de apoio', 'http://youtube.com/');
INSERT INTO tb_lesson(title, position, section_id)
VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content(id, text_content, video_uri)
VALUES (3, 'Material de apoio', 'http://youtube.com/');

INSERT INTO tb_lesson(title, position, section_id)
VALUES ('Tarefa Aula 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date)
VALUES (4, 'Tarefa 1', 5, 4, 2.0, TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id)
VALUES (1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id)
VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id)
VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true,
        '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id)
VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true,
        '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id)
VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true,
        '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id)
VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4,
        1, 1);


INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id)
VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id)
VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id)
VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id)
VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id)
VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id)
VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id)
VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id)
VALUES (2, 1);

