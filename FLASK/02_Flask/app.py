from flask import Flask, redirect, url_for, render_template, request

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1> Home page </h1>"

@app.route('/welcome')
def welcome():
    return "Welcome to the flask tutorial"

@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/success/<int:score>')
def success(score):
    return "The score is " + str(score)

@app.route('/fail/<int:score>')
def fail(score):
    return "The score is "+str(score)

@app.route('/calculate', methods=['GET', 'POST'])
def calculate():
    if request.method == 'GET':
        return render_template('calculate.html')
    else:
        maths=float(request.form['maths'])
        science=float(request.form['science'])
        history=float(request.form['history'])

        avg_marks = (maths+science+history) / 3
        # result = ''
        if avg_marks >= 50:
            result = 'success'
        else:
            result = 'fail'
        
        # return redirect(url_for(result, score=avg_marks))

        return render_template('result.html',results=avg_marks)

        # return render_template('')



if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
    