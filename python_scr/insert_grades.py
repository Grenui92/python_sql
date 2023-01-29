import random
import sqlite3
def generate_grades():
    result = []
    for student in range(1, 31):
        for lesson in range(1, 6):
            for _ in range(5):
                result.append([student, lesson, random.randrange(1, 6)])
    return result

def main():
    grades = generate_grades()
    with sqlite3.connect('../school_db.db') as conn:
        cur = conn.cursor()
        scr = """
        INSERT INTO students_grade (student_id, lesson_id, grade)
        VALUES (?, ?, ?);
        """
        cur.executemany(scr, grades)

if __name__ == '__main__':
    main()
