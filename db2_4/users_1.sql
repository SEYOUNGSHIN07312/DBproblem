CREATE TABLE users (
    id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT NOT NULL,
    age INT NOT NULL,
    country TEXT NOT NULL,
    phone TEXT,
    balance INT NOT NULL
);

INSERT INTO users
VALUES
    (1, '미현', '김', 19, '경기도', '011-211-8482', 300),
    (2, '', '최', 33, '제주특별자치도', '', 300),
    (3, '미숙', '이', 21, '서울특별시', '010-2122-4958', 480),
    (4, '남석', '박', 18, '경기도', '011-484-8667', 260),
    (5, '철수', '박', 22, '경상남도', '016-295-8989', 500),
    (6, '', '박', 45, '전라북도', '', 320),
    (7, '민준', '이', 35, '전라남도', '019-965-8833', 350),
    (8, '', '남', 24, '충청남도', '010-5882-5969', 210),
    (9, '신', '유', 29, '경상북도', '010-4949-2848', 290),
    (10, '', '김', 18, '대전광역시', '', 300);

SELECT id, age, balance
FROM users
WHERE age < 25
ORDER BY age DESC, balance;

SELECT first_name, balance
FROM users
WHERE first_name != '' AND balance > 400;

UPDATE users
SET phone = '알 수 없음'
WHERE phone = '';

SELECT *
FROM users;