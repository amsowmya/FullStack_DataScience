from flask import Flask,render_template,request,jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to the Calculator"

@app.route('/cal', methods=['GET', 'POST'])
def math_operation():
    operation=request.json['operation']
    num1=request.json['num1']
    num2=request.json['num2']

    if operation=='add':
        result=int(num1)+int(num2)
    elif operation=='devision':
        result=int(num1)/int(num2)
    elif operation=='multiply':
        result=int(num1)*int(num2)
    elif operation=='sub':
        result=int(num1)-int(num2)

    return f"The operation is: {operation}. And the result is {result}"
    # return jsonify(result)

if __name__=="__main__":
    app.run(debug=True, host='0.0.0.0')