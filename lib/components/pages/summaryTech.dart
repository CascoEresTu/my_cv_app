import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Repo {
  final String full_name;
  final String language;
  final String clone_url;
  Repo({this.full_name, this.language, this.clone_url});

  factory Repo.fromJson(Map<String, dynamic> json) {
    return Repo(
      full_name: json['full_name'],
      language: json['language'],
      clone_url: json['clone_url'],
    );
  }
}

Future<Repo> fetchRepo() async {
  final response =
      await http.get('https://api.github.com/users/CascoEresTu/repos');

  if (response.statusCode == 200) {
    return Repo.fromJson(json.decode(response.body));
  } else {
    throw Exception('no pude encontrar los repos :(');
  }
}

class SummaryWidget extends StatelessWidget {
  Future<Repo> repos;
  @override
  void initState() {
    repos = fetchRepo();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Repo>(
            future: repos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.full_name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
