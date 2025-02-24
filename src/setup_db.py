import psycopg2

db_host = "localhost"
db_name = "casa_roja"
db_user = "jime_zerboni"
db_password = "Tor&paca01" 

conn = psycopg2.connect(
    host=db_host,
    database=db_name,
    user=db_user,
    password=db_password
)

cur = conn.cursor()

with open('./src/sql/create.sql', 'r') as file:
    create_sql = file.read()
    cur.execute(create_sql)

with open('./src/sql/insert.sql', 'r') as file:
    insert_sql = file.read()
    cur.execute(insert_sql)

conn.commit()

cur.close()
conn.close()

print("Tablas creadas e información insertada correctamente.")

