import sqlite3
import faker
import random

def generate_students():
    result = []
    fak_data = faker.Faker()
    for _ in range(5):
        result.append([fak_data.name()])
    return result

def main():
    students = generate_students()

    with sqlite3.connect('../school_db.db') as con:
        cur = con.cursor()
        sql = """
        INSERT INTO teachers (teacher_name)
        VALUES (?);
        """

        cur.executemany(sql, students)
        cur.close()

if __name__ == '__main__':
    main()