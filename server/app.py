# APP SETUP
from flask import Flask

app = Flask(__name__)

# INCLUDE ROUTES
with app.app_context():
    from api.matcher import matcher
    app.register_blueprint(matcher, url_prefix='/matcher')
    from api.people import people
    app.register_blueprint(people, url_prefix='/people')

if __name__ == '__main__':
    app.run(debug=True)