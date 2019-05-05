import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new StartPage(),
  ));
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  String url = "https://randomuser.me/api/?results=500";
  List data; // for users

  // ignore: missing_return
  Future<String> makeRequest() async {
    var response = await http.get(
        Uri.encodeFull(url),
        headers: {"Accept": "application/json"}
        );

    setState(() {
      var res = json.decode(response.body);
      data = res["results"];
    });
    print("size = ${data.length}");
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Json sample app"),
      ),
      body: new ListView.builder(
        physics: const AlwaysScrollableScrollPhysics (),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i) {
          return new ListTile(
            title: new Text(data[i]["name"]["first"], style: TextStyle(fontSize: 18.0),),
            subtitle: new Text(data[i]["phone"], style: TextStyle(color: Colors.black54),),
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(data[i]["picture"]["thumbnail"]),
              radius: 25.0,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context)=> new SecondPage(data[i])));
            },
          );
        },
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  final data;
  SecondPage(this.data);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('Second Page')),
        body: new Center(
          child: new Container(
            width: 150.0,
            height: 150.0,
            decoration: new BoxDecoration(
              color: const Color(0xff7c94b6),
              image: new DecorationImage(
                image: new NetworkImage(widget.data["picture"]["large"]),
                fit: BoxFit.cover,
              ),
              borderRadius: new BorderRadius.all(new Radius.circular(75.0)),
              border: new Border.all(
                color: Colors.red,
                width: 4.0,
              ),
            ),
          ),
        ));
  }
}