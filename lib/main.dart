import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'latihan flutter week5',
      home: Myhome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan flutter week5'),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('buton berhasil di klik');
            },
          ),
          IconButton(
            icon: Icon(Icons.people_alt),
            onPressed: () {
              print('icon profil berhasil di klik');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 300,
            margin: EdgeInsets.only(top: 30, left: 20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.amberAccent, Colors.blueAccent],
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/contoh.png'),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text('Ini adalah text di dalam container'),
          ),
          Container(
            width: 200,
            height: 300,
            margin: EdgeInsets.only(top: 30, left: 20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text('Ini adalah text di dalam container'),
          ),
        ],
      ),
    );
  }
}
