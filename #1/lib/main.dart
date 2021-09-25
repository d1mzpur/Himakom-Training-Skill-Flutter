import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DetailRestoran());
  }
}

class DetailRestoran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                'Raito-YA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(height: 10.0),
                    Text('Buka Setiap Hari'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(height: 10.0),
                    Text('11:00 - 20:00'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(height: 10.0),
                    Text('Kantong Mahasiswa'),
                  ],
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac luctus arcu, venenatis feugiat turpis. Etiam maximus, risus vitae euismod consequat, lacus ante vestibulum metus, ut faucibus mi ante quis nisl. Fusce hendrerit ultricies risus sed cursus. Praesent condimentum sodales elit in condimentum. Maecenas interdum metus dui, id commodo lorem.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text('Menu', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceEvenly,
              spacing: 15.0,
              runSpacing: 20.0,
              children: <Widget>[
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0,),
                    Text('Tamago Ramen'),
                    Text('Rp. 20.000')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0,),
                    Text('Tamago Ramen'),
                    Text('Rp. 20.000')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0,),
                    Text('Tamago Ramen'),
                    Text('Rp. 20.000')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0,),
                    Text('Tamago Ramen'),
                    Text('Rp. 20.000')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0,),
                    Text('Tamago Ramen'),
                    Text('Rp. 20.000')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0,),
                    Text('Tamago Ramen'),
                    Text('Rp. 20.000')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
