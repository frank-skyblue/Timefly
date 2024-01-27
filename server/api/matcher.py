from flask import Blueprint
import cohere

co = cohere.Client('J3ItjkKM04f4nKm3nV5TmkoFFESwLGqlfE9Df8l9')

matcher = Blueprint('matcher', __name__)

@matcher.route('/' , methods=['GET'])
def index():
    return 'Hello World!'
