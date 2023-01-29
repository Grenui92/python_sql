import sqlite3

def main():
    with open('folder_sql_req/create_table.sql', 'r') as file:
        scr = file.read()

    with sqlite3.connect('school_db.db') as con:
        cur = con.cursor()
        cur.executemany(scr)

if __name__ == '__main__':
    main()