import mariadb as db
import dbcreds


def connect_db():
    conn = None
    cursor = None
    try:
        conn = db.connect(user=dbcreds.user, password=dbcreds.password,
                          host=dbcreds.host, port=dbcreds.port, database=dbcreds.database)
        cursor = conn.cursor()
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except:
        print("Something went wrong!")
    return conn, cursor


def disconnect_db(conn, cursor):
    try:
        cursor.close()
    except:
        print("The issue with cursor")
    try:
        conn.close()
    except:
        print("The issue with connection")


def add_new_post(username, content):
    id = None
    blog_post = False
    conn, cursor = connect_db()
    try:
        cursor.execute(
            "insert into post(username, content) values(?, ?)", [username, content, ])
        conn.commit()
        if(cursor.rowcount == 1):
            blog_post = True
            id = cursor.lastrowid
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except db.ProgrammingError:
        print("Error running DB query, please file bug report")
    except:
        print("Something went wrong!")
    disconnect_db(conn, cursor)
    return blog_post, id


def get_all_posts():
    blog_posts = []
    conn, cursor = connect_db()
    try:
        cursor.execute(
            "select id, username, content, created_at from post")
        blog_posts = cursor.fetchall()
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except db.ProgrammingError:
        print("Error running DB query, please file bug report")
    except:
        print("Something went wrong!")
    disconnect_db(conn, cursor)
    return blog_posts
