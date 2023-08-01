from flask import Flask, render_template, request, url_for

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/find<name>', methods=['GET', 'POST'])
def findName(name):
    return f"The name is {name}"

@app.route('/marks<marks>', methods=['GET','POST'])
def findMarks(marks):
    return f"The marks is {marks}"

# @app.route('/student', methods=['GET','POST'])
# def findStudent():
#     return url_for('findName')

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')

