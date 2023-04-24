CREATE TABLE users (
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL
);

CREATE TABLE contacts (
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE users2(
    name TEXT NOT NULL,
    phoneNumber TEXT NOT NULL,
    balance TEXT NOT NULL,
    age INTEGER,
    gender TEXT
);