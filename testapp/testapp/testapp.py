from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World!"


app.config.update(
    DEBUG=True,
    SECRET_KEY='development key',
    USERNAME='admin',
    PASSWORD='default'
)
