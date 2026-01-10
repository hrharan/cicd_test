from flask import Flask

app = Flask(__name__)

# This is our logic function (same as before)
def add(a, b):
    return a + b

# This tells the server: "When someone visits the home page, show this."
@app.route("/")
def home():
    return f"Hello World! The answer is {add(2, 2)}. Deployed via CI/CD!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
