import 'package:flutter/material.dart';

class HalamanDua extends StatefulWidget {
  final String message;

  const HalamanDua({Key? key, required this.message}) : super(key: key);
  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.message),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Balik Ke Halaman 1")),
        ],
      )),
    );
  }
}
