CREATE DATABASE message;
CREATE DATABASE message_test;
-- in both databases execute this command:
CREATE TABLE messages (id SERIAL PRIMARY KEY,  message VARCHAR(240), ch_user VARCHAR(30), created_at TIMESTAMP);\q