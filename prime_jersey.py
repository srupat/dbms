import psycopg2
import os
import sys

def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True


def select():
    conn = None
    try:
        conn = psycopg2.connect(database=sys.argv[1],
        user=os.environ.get("PGUSER"),
        password=os.environ.get("PGPASSWORD"),
        host=os.environ.get("PGHOST"),
        port=os.environ.get("PGPORT"))
        cur = conn.cursor()
        cur.execute("select p.name, t.name, p.jersey_no from players p inner join teams t on p.team_id = t.team_id order by p.name desc, t.name desc")
        rows = cur.fetchall()
        for row in rows:
            if is_prime(row[2]):
                print(row[0]+', '+row[1])
        cur.close()
    except(Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        conn.close()

select()
