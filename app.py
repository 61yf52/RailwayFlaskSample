import os
from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def hello():
    message = None
    if request.method == 'POST':
        user_input = request.form.get('user_input', '')
        if user_input:
            message = f'{user_input} Hello World!!'
    return render_template('index.html', message=message)

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)
