# APP SETUP
from flask import Flask

app = Flask(__name__)

# INCLUDE ROUTES
with app.app_context():
    from api.matcher import matcher
    app.register_blueprint(matcher, url_prefix='/matcher')

if __name__ == '__main__':
    app.run(debug=True)