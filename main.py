from flask import Flask, request

app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def hello_world():
    if request.method == 'POST':
        return "<p>Hello, World! You just made a POST request.</p>"
    
    return "<p>Hello, World!</p>"


@app.route("/test", methods=['GET'])
def test():
    return "<p>Test</p>"