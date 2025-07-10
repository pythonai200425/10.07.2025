CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    mishmeret_id INTEGER,
    FOREIGN KEY(mishmeret_id) REFERENCES mishmeret(id)
);

CREATE TABLE mishmeret (
    id INTEGER PRIMARY KEY,
    day TEXT NOT NULL
);

INSERT INTO employees (id, name, mishmeret_id) VALUES
(1, 'danny', NULL),
(2, 'yossi', 2),
(3, 'suzi', 5),
(4, 'shani', 6),
(5, 'shimon', 1),
(6, 'anatoly', NULL);

INSERT INTO mishmeret (id, day) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday');


