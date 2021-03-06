from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return "Hello World!"


@app.route('/<name>')
def hello(name):
    return "Hello {}!".format(name.capitalize())
