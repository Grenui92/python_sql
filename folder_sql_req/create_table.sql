DROP TABLE IF EXISTS students;
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name TEXT NOT NULL,
    student_group_id INTEGER NOT NULL,
    FOREIGN KEY (student_group_id) REFERENCES study_groups (group_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS study_groups;
CREATE TABLE study_groups (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name TEXT NOT NULL
);

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    teacher_id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher_name TEXT NOT NULL
);

DROP TABLE IF EXISTS lessons;
CREATE TABLE lessons (
    lesson_id INTEGER PRIMARY KEY AUTOINCREMENT,
    lesson_name TEXT NOT NULL,
    teacher_id TEXT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers (id)
        ON DELETE SET NULL
        ON UPDATE SET CASCADE
);

DROP TABLE IF EXISTS students_grade;
CREATE TABLE students_grade (
    mark_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    lesson_id INTEGER NOT NULL,
    grade INTEGER NOT NULL,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students (student_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
    FOREIGN KEY (lesson_id) REFERENCES lessons (lesson_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

