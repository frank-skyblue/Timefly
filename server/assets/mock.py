def get_mock_data():
    people = []

    ###########################
    # Signed in user
    people.append({
        'name': 'John',
        'handle': 'john99',
        'age': 24,
        'places_visited': ['Canada', 'United States', 'Hungary'],
        'in_contacts': True
    })
    ###########################

    # Contact 1
    people.append({
        'name': 'Alice',
        'handle': 'theAlice',
        'age': 21,
        'places_visited': ['France', 'Hungary'],
        'in_contacts': True
    })

    # Contact 2
    people.append({
        'name': 'Bob',
        'handle': 'bob123',
        'age': 19,
        'places_visited': ['Canada', 'Japan', 'Hungary'],
        'in_contacts': True
    })

    # Contact 3
    people.append({
        'name': 'Charlie',
        'handle': 'charlietheunicorn',
        'age': 33,
        'places_visited': ['Spain', 'Germany', 'Japan', "Korea"],
        'in_contacts': True
    })

    # Contact 4
    people.append({
        'name': 'David',
        'handle': 'davidiscool',
        'age': 26,
        'places_visited': ['Canada', 'Germany', 'United States'],
        'in_contacts': True
    })

    # Contact 5
    people.append({
        'name': 'Eve',
        'handle': 'eveeveeve',
        'age': 23,
        'places_visited': ['Canada', 'Hungary', 'United States'],
        'in_contacts': False
    })

    return people


