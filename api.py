#!flask/bin/python
from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/predict', methods=['GET'])
def get_tasks():
    args = request.args
    return jsonify({'tasks': args['name']})

if __name__ == '__main__':
    app.run(debug=True)
