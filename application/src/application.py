from flask import Flask, render_template, request
from flask_mysqldb import MySQL


app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'register'
mysql = MySQL(app)
@app.route('/', methods=['GET', 'POST'])
def register():
    if request.method == "POST":
         msg=[]
         details = request.form
         full_name = details['name']
         topic_name = details['topic']
         session_date = details['sdate']
         cur_year,cur_month,cur_date=session_date.split("-")
         real_date=[cur_date,cur_month,cur_year]
         session_date="-".join(real_date)
         cur = mysql.connection.cursor()
         cur.execute("SELECT * FROM register.test_schedule WHERE session_date=%s",(session_date,))
         data=cur.fetchall()
         if len(data) > 0:
            return render_template('index.html',message="failed")
         else:
            cur.execute("INSERT INTO test_schedule(full_name,topic_name,session_date) VALUES(%s,%s,%s)", (full_name,topic_name,session_date))
            mysql.connection.commit()
            cur.close()
            return render_template('index.html',message="success")
    return render_template('index.html')

@app.route('/schedule', methods=['GET', 'POST'])
def schedule():
    if request.method == "GET":
         cur = mysql.connection.cursor()
         cur.execute("SELECT row_number() OVER(ORDER BY ID) AS ID,session_date,topic_name,full_name FROM register.test_schedule ORDER BY id")
         data = cur.fetchall()
    return render_template('schedule.html', value=data)

if __name__ == '__main__':
    app.run(host='localhost',debug=True,port=8080)
