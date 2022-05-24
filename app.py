from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
      return 'Hello from Flask, This is A working Flask-Docker test app by Gods Grace'


if __name__ == '__main__':
      app.run(debug=True)