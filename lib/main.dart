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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  textBaseline: TextBaseline.alphabetic,
                  height: 1.5,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.rotate(
            angle: -0.1,
            child: Container(
              width: 160,
              height: 220,
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
          ),

          Transform.rotate(
            angle: 0.1,
            child: Container(
              width: 160,
              height: 220,
              margin: EdgeInsets.only(top: 30, left: 20),
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.purpleAccent],
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/157527738?v=4',
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Ini adalah text di dalam container dengan gambar network',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            activeIcon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
