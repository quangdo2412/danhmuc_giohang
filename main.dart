
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currenIndex = 0;
  List hp = [
    HomePages(),
    HomePages(),
    HomePages(),
    HomePages(),
    HomePages(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Kells'),
          leading: Icon(
            Icons.filter_alt_outlined,
            color: Colors.white,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          ],
          backgroundColor: Color.fromARGB(255, 50, 183, 54),
        ),
        body: hp[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          currentIndex: _currenIndex,
          selectedItemColor: Colors.green[800],
          onTap: (int index) {
            setState(() {
              _currenIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Store',
              icon: Icon(
                Icons.store,
              ),
            ),
            BottomNavigationBarItem(
              label: 'My Cart',
              icon: Icon(
                Icons.card_travel_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favourites',
              icon: Icon(
                Icons.favorite_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.account_circle,
              ),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(
                Icons.more_horiz_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}