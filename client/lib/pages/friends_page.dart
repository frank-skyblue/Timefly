import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class People {
  final String name;
  final String handle;
  final List<String> placesVisited;
  final int age;
  final bool inContacts;

  People({
    required this.name,
    required this.handle,
    required this.placesVisited,
    required this.age,
    required this.inContacts,
  });

  factory People.fromJson(Map<String, dynamic> json) {
    return People(
      name: json['name'],
      handle: json['handle'],
      placesVisited: List<String>.from(json['places_visited']),
      age: json['age'],
      inContacts: json['in_contacts'],
    );
  }
}

Future<List<People>> fetchContacts() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:5000/people/contacts'));

  if (response.statusCode == 200) {
    Iterable i = jsonDecode(response.body);
    List<People> people =
        List<People>.from(i.map((model) => People.fromJson(model)));

    return people;
  } else {
    throw Exception('Failed to load People');
  }
}

Future<List<People>> fetchRecommendations() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:5000/matcher/recommendations'));

  if (response.statusCode == 200) {
    Iterable i = jsonDecode(response.body);
    List<People> people =
        List<People>.from(i.map((model) => People.fromJson(model)));

    return people;
  } else {
    throw Exception('Failed to load People');
  }
}

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  late Future<List<People>> futureContacts;
  late Future<List<People>> futureRecommendations;

  @override
  void initState() {
    super.initState();
    futureContacts = fetchContacts();
    futureRecommendations = fetchRecommendations();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3E2CD),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
                const SizedBox(width: 36),
                Image.asset('lib/images/timeflysmall.png')
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'ArchivoBlack',
                        ),
                        child: Text('Recommended'),
                      ),
                      FutureBuilder<List<People>>(
                          future: futureRecommendations,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                padding: const EdgeInsets.all(0),
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      title: Text(snapshot.data![index].name),
                                      subtitle:
                                          Text(snapshot.data![index].handle),
                                      trailing: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            }

                            return const CircularProgressIndicator();
                          }),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'ArchivoBlack',
                          ),
                          child: Text('Contacts'),
                        ),
                        FutureBuilder<List<People>>(
                            future: futureContacts,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                  padding: const EdgeInsets.all(0),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      child: ListTile(
                                        title: Text(snapshot.data![index].name),
                                        subtitle:
                                            Text(snapshot.data![index].handle),
                                        trailing: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.black,
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 36,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }

                              return const CircularProgressIndicator();
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
