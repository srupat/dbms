import psycopg2
import os
import sys

def encode(s):
    e = ""
    for i in range(len(s)):
        if s[i].isdigit():
            e = e + str((int(s[i]) + 7) % 10)
        elif s[i].isalpha():
            if 'a' <= s[i] <= 'z':
                e = e + chr(((ord(s[i]) - ord('a') + 1) + 7) % 26 + ord('a') - 1)
            elif 'A' <= s[i] <= 'Z':
                e = e + chr(((ord(s[i]) - ord('A') + 1) + 7) % 26 + ord('A') - 1)
    return e



def select():
    conn = None
    try:
        conn = psycopg2.connect(database=sys.argv[1],
        user=os.environ.get("PGUSER"),
        password=os.environ.get("PGPASSWORD"),
        host=os.environ.get("PGHOST"),
        port=os.environ.get("PGPORT"))
        cur = conn.cursor()
        cur.execute('select team_id from teams where jersey_home_color <> jersey_away_color')
        rows = cur.fetchall()
        for row in rows:
            print(encode(row))
        cur.close()
    except(Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        conn.close()

select()