DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    description VARCHAR(255),
    visited BOOLEAN
);

CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    description VARCHAR (255),
    country_id INT NOT NULL REFERENCES countries(id) ON DELETE CASCADE,
    visited BOOLEAN
);