#app
from flask import Flask 

app = Flask(__name__)


@app.route('/user/<name>')
def user(name):
    return '<h1> Hello,{}!</h1>'.format(name)
 

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')