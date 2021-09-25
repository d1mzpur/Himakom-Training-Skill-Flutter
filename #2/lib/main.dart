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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network("https://b.zmtcdn.com/data/pictures/2/19160162/590ab7f953983bd7965bb6337bf7fb8f.jpg", width: 300, ),
              
              Padding(padding: EdgeInsets.only(top: 20,)),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Raito-YA',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
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
                  )),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Menu',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
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
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Tamago Ramen'),
                        Text('Rp. 20.000')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.menu_book),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Tamago Ramen'),
                        Text('Rp. 20.000')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.menu_book),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Tamago Ramen'),
                        Text('Rp. 20.000')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.menu_book),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Tamago Ramen'),
                        Text('Rp. 20.000')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.menu_book),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Tamago Ramen'),
                        Text('Rp. 20.000')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.menu_book),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Tamago Ramen'),
                        Text('Rp. 20.000')
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT51gRV1enwBGmtuiegB63vofGnbMEJPNs46w&usqp=CAU'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://cdn-2.tstatic.net/bogor/foto/bank/images/raito-resto-bogor.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://i2.wp.com/www.melinasekarsari.com/wp-content/uploads/2018/12/IMG_20181120_151626.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
