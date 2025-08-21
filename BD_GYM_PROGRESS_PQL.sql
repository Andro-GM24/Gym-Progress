-- Crear base de datos (esto se ejecuta fuera del script si estás en psql)
-- CREATE DATABASE gym_progress;

-- Conectarse a la base de datos
-- \c gym_progress;

-- Crear tablas
CREATE TABLE IF NOT EXISTS porpuse (
    porpuse_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS ngm ( -- name_group_muscular
    ngm_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS tm ( -- type_machine
    tm_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS te ( -- type_exercise
    te_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS users (
    users_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    nickname VARCHAR(30) UNIQUE,
    age INTEGER,
    weight REAL,
    height REAL,
    description VARCHAR(100),
    passwordd VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE,
    porpuse_fk INTEGER REFERENCES porpuse(porpuse_id),
    CONSTRAINT good_data CHECK (age >= 6 AND weight >= 0 AND height >= 0)
);

CREATE TABLE IF NOT EXISTS exercise (
    exercise_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    description VARCHAR(100),
    ngm_fk INTEGER REFERENCES ngm(ngm_id),
    tm_fk INTEGER REFERENCES tm(tm_id),
    te_fk INTEGER REFERENCES te(te_id)
);

CREATE TABLE IF NOT EXISTS routine (
    routine_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    number_series INTEGER,
    users_fk INTEGER REFERENCES users(users_id),
    ngm_fk INTEGER REFERENCES ngm(ngm_id)
);

CREATE TABLE IF NOT EXISTS routine_exercise_break (
    routine_fk INTEGER REFERENCES routine(routine_id),
    exercise_fk INTEGER REFERENCES exercise(exercise_id),
    PRIMARY KEY (routine_fk, exercise_fk)
);

-- Insertar usuario de prueba
INSERT INTO users (name, weight, height, passwordd)
VALUES ('ALEJANDRO', 62, 1.73, 'VIGA2024');

-- Consultar usuarios
SELECT * FROM users;
