from flask import Blueprint, jsonify

from assets.mock import get_mock_data

people = Blueprint('people', __name__)

@people.route('/contacts' , methods=['GET'])
def get_contacts():
    # Simulate a database call
    people = get_mock_data()[1:] # Remove signed in user

    # Filter out people who are not in contacts
    people = list(filter(lambda person: person['in_contacts'], people))

    return jsonify(people), 200
    
    
