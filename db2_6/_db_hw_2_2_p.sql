CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

-- 1) 
INSERT INTO zoo VALUES 
(5, 180, 210, 'gorilla', 'omnivore');
-- 속성 순서대로 작성하지 않았으므로 형식 오류가 남
-- ('gorilla', 'omnivore', 210, 180, 5);

-- 2)
INSERT INTO zoo (rowid, name, eat, weight, age) VALUES
(10,'dolphin', 'carnivore', 210, 3),
(10, 'alligator', 'carnivore', 250, 50);
-- rowid는 겹칠 수 없음 -> 11로 변경

-- 3)
INSERT INTO zoo (name, eat, age) VALUES
('dolphin', 'carnivore', 3);
-- weight 값이 NULL이므로 오류 발생 -> defalut값 설정 또는 weight값도 입력