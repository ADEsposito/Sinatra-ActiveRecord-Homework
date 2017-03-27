CREATE DATABASE vehicles;

\c vehicles;

CREATE TABLE jeeps (id SERIAL PRIMARY KEY, name VARCHAR(255), model VARCHAR(255), color VARCHAR(255), interior VARCHAR(255));
