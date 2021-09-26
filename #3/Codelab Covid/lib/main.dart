import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Data(),
    );
  }
}

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  void iniState() {
    super.initState();
  }

  String positif = '';
  String sembuh = '';
  String meninggal = '';

  Future<List> getData() async {
    final response =
        await http.get(Uri.parse("https://api.kawalcorona.com/indonesia/"));

    var data = json.decode(response.body);

    print(response.body);

    if (mounted) {
      setState(() {
        positif = data[0]['nama'];
        sembuh = data[0]['sembuh'];
        meninggal = data[0]['meninggal'];
      });
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              "https://www.iconspng.com/clipart/flag-of-indonesia/flag-of-indonesia.svg"),
          Text("Positif"),
          Text(positif),
          Text("Sembuh"),
          Text(sembuh),
          Text("Meninggal"),
          Text(meninggal),
          ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text("Refesh Data"))
        ],
      ),
    );
  }
}
