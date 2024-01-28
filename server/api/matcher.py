from flask import Blueprint, jsonify
import cohere
from assets.mock import get_mock_data

co = cohere.Client('J3ItjkKM04f4nKm3nV5TmkoFFESwLGqlfE9Df8l9')

matcher = Blueprint('matcher', __name__)

@matcher.route('/recommendations' , methods=['GET'])
def get_recommendations():
    # Simulate a database call
    me = get_mock_data()[0]
    people = get_mock_data()[1:] # Remove signed in user

    response = []

    # Prompt
    query = "I have been to {} and I am {} years old. Who is the most similar to me? They should also be in my contacts.".format(
        me['places_visited'], me['age'])
    docs = ["{} is {} years old and has been to {} and is {} my contacts.".format(
        person['name'], person['age'], person['places_visited'], "in" if person['in_contacts'] else "not in") for person in people]
    results = co.rerank(query=query, documents=docs, top_n=3, model='rerank-english-v2.0')
    for idx, r in enumerate(results):
        print(f"Document Rank: {idx + 1}, Document Index: {r.index}")
        print(f"Document: {r.document['text']}")
        print(f"Relevance Score: {r.relevance_score:.2f}")
        print("\n")
        response.append(people[r.index])

    return jsonify(response), 200

